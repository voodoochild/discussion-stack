#!/usr/bin/env bash

#------------#
# Discussion #
#------------#

# Install system packages
apt-get update
apt-get install -y python-setuptools gcc python-dev postgresql libpq-dev python-psycopg2 git
easy_install pip

# Create the python virtual environment
pip install virtualenv
virtualenv --no-site-packages ve
source ve/bin/activate
pip install -r /vagrant/discussion/discussion/requirements.txt

# Setup the database
sudo su postgres -c "createdb discussion"
sudo su postgres -c "createuser -s -e pgowner"
cat > /etc/postgresql/9.1/main/pg_hba.conf <<EOF
local all postgres         peer
local all all              trust
host  all all 127.0.0.1/32 trust
host  all all ::1/128      trust
EOF
/etc/init.d/postgresql restart

# Discussion project setup
mkdir -p /etc/gu
cat > /etc/gu/install_vars <<EOF
STAGE=DEV
INT_SERVICE_DOMAIN=gudev.gnl
EXT_SERVICE_DOMAIN=
EOF
touch /tmp/discussion-comments-application.log
chmod a+rw /tmp/discussion-comments-application.log
cd /vagrant/discussion/discussion/configs/active_config/
./manage.py syncdb --noinput
./manage.py migrate
./manage.py loaddata initial_data
./manage.py createcachetable cachetable
cat > local_settings.py <<EOF
GUARDIAN_DOMAIN="`hostname`.int.gnl/www.guardian.co.uk"
EOF

# Create a run script
cd /home/vagrant
cat > start_discussion.sh <<EOF
source ve/bin/activate
cd /vagrant/discussion/discussion/configs/active_config
./manage.py runserver 0.0.0.0:1337
EOF
chmod a+x start_discussion.sh

# TODO – make local_settings override gudev.py for SQS
# TODO – add the cronjob for discussion__process_sqs_queue
# TODO – create fixtures for tags
# TODO – create fixture for a discussion


#----------------#
# Discussion API #
#----------------#

# Install Oracle JDK
mkdir -p /usr/local/java
cp /vagrant/jdk-7u21-linux-i586.tar.gz /usr/local/java
cd /usr/local/java
tar xvzf jdk-7u21-linux-i586.tar.gz
cat >> /home/vagrant/.profile <<EOF
JAVA_HOME=/usr/local/java/jdk1.7.0_21
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME
export PATH
EOF
update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.7.0_21/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.7.0_21/bin/javac" 1
update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.7.0_21/bin/javaws" 1
update-alternatives --set java /usr/local/java/jdk1.7.0_21/bin/java
update-alternatives --set javac /usr/local/java/jdk1.7.0_21/bin/javac
update-alternatives --set javaws /usr/local/java/jdk1.7.0_21/bin/javaws

# Create a run script
cd /home/vagrant
cat > start_discussion_api.sh <<EOF
export SBT_EXTRA_PARAMS="-Xdebug -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n"
cd /vagrant/discussion-api
./sbt32 "discussion-api/container:start" "shell"
EOF
chmod a+x start_discussion_api.sh
