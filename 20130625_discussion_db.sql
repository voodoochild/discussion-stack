--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: antispam_badword; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE antispam_badword (
    link_urls_only boolean DEFAULT true NOT NULL,
    word character varying(255) NOT NULL,
    id integer NOT NULL,
    created_by_id integer NOT NULL,
    created timestamp with time zone NOT NULL
);


ALTER TABLE public.antispam_badword OWNER TO pgowner;

--
-- Name: antispam_badword_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE antispam_badword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.antispam_badword_id_seq OWNER TO pgowner;

--
-- Name: antispam_badword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE antispam_badword_id_seq OWNED BY antispam_badword.id;


--
-- Name: antispam_badword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('antispam_badword_id_seq', 1, false);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO pgowner;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO pgowner;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO pgowner;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO pgowner;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_message; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE auth_message (
    id integer NOT NULL,
    user_id integer NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.auth_message OWNER TO pgowner;

--
-- Name: auth_message_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE auth_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_message_id_seq OWNER TO pgowner;

--
-- Name: auth_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE auth_message_id_seq OWNED BY auth_message.id;


--
-- Name: auth_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('auth_message_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO pgowner;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO pgowner;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('auth_permission_id_seq', 124, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO pgowner;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO pgowner;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO pgowner;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO pgowner;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO pgowner;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO pgowner;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: avatars_avatar; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE avatars_avatar (
    status character varying(20) DEFAULT 'new'::character varying NOT NULL,
    created_on timestamp with time zone DEFAULT '2011-11-15 14:48:06.835478+00'::timestamp with time zone NOT NULL,
    id integer NOT NULL,
    original_filename character varying(255) DEFAULT ''::character varying NOT NULL,
    image_filename character varying(255) NOT NULL,
    profile_id integer NOT NULL,
    is_communal boolean NOT NULL,
    requires_moderation boolean
);


ALTER TABLE public.avatars_avatar OWNER TO pgowner;

--
-- Name: avatars_avatar_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE avatars_avatar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.avatars_avatar_id_seq OWNER TO pgowner;

--
-- Name: avatars_avatar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE avatars_avatar_id_seq OWNED BY avatars_avatar.id;


--
-- Name: avatars_avatar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('avatars_avatar_id_seq', 1, false);


--
-- Name: cachetable; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE cachetable (
    cache_key character varying(255) NOT NULL,
    value text NOT NULL,
    expires timestamp with time zone NOT NULL
);


ALTER TABLE public.cachetable OWNER TO pgowner;

--
-- Name: comments_comment; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE comments_comment (
    body text NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    discussion_id integer NOT NULL,
    status character varying(20) DEFAULT 'visible'::character varying NOT NULL,
    body_original text,
    is_flagged boolean DEFAULT false NOT NULL,
    created_on timestamp with time zone DEFAULT '2011-11-15 14:48:07.684353+00'::timestamp with time zone NOT NULL,
    posted_by_ip character varying(32),
    id integer NOT NULL,
    posted_by_id integer NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    in_reply_to_id integer,
    dn_total_reply_count integer,
    dn_reply_to_comment_username text,
    dn_reply_to_comment_time timestamp with time zone,
    common_ancestor_id integer,
    dn_in_reply_to_profile_id integer
);


ALTER TABLE public.comments_comment OWNER TO pgowner;

--
-- Name: comments_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comments_comment_id_seq OWNER TO pgowner;

--
-- Name: comments_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE comments_comment_id_seq OWNED BY comments_comment.id;


--
-- Name: comments_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('comments_comment_id_seq', 10608, true);


--
-- Name: comments_commenthighlight; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE comments_commenthighlight (
    id integer NOT NULL,
    comment_id integer NOT NULL,
    highlighted_by_id integer NOT NULL,
    created_on timestamp with time zone DEFAULT '2012-01-30 10:26:04.990247+00'::timestamp with time zone NOT NULL,
    comment_posted_by_id integer NOT NULL
);


ALTER TABLE public.comments_commenthighlight OWNER TO pgowner;

--
-- Name: comments_commenthighlight_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE comments_commenthighlight_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comments_commenthighlight_id_seq OWNER TO pgowner;

--
-- Name: comments_commenthighlight_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE comments_commenthighlight_id_seq OWNED BY comments_commenthighlight.id;


--
-- Name: comments_commenthighlight_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('comments_commenthighlight_id_seq', 172, true);


--
-- Name: comments_commentrecommendations; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE comments_commentrecommendations (
    comment_id integer NOT NULL,
    dn_anonymous_recommendation_count integer DEFAULT 0 NOT NULL,
    dn_registered_recommendation_count integer DEFAULT 0 NOT NULL,
    id integer NOT NULL,
    initial_index boolean
);


ALTER TABLE public.comments_commentrecommendations OWNER TO pgowner;

--
-- Name: comments_commentrecommendations_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE comments_commentrecommendations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comments_commentrecommendations_id_seq OWNER TO pgowner;

--
-- Name: comments_commentrecommendations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE comments_commentrecommendations_id_seq OWNED BY comments_commentrecommendations.id;


--
-- Name: comments_commentrecommendations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('comments_commentrecommendations_id_seq', 10608, true);


--
-- Name: comments_discussion; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE comments_discussion (
    primary_tag_id integer,
    closed_after timestamp with time zone,
    url character varying(200) DEFAULT ''::character varying NOT NULL,
    premoderated boolean DEFAULT false NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    namespace_id integer NOT NULL,
    created_on timestamp with time zone DEFAULT '2011-11-15 14:48:07.514318+00'::timestamp with time zone NOT NULL,
    dn_total_comment_count integer DEFAULT 0 NOT NULL,
    key character varying(255) NOT NULL,
    id integer NOT NULL,
    dn_invisible_comment_count integer NOT NULL,
    anon_user_rating_count integer NOT NULL,
    anon_user_rating_total integer NOT NULL,
    dn_reg_user_rating_count integer NOT NULL,
    dn_reg_user_rating_total integer NOT NULL,
    creating_comment_id integer,
    last_updated timestamp with time zone NOT NULL,
    latest_visible_comment_id integer,
    display_threaded boolean,
    dn_top_level_comment_count integer,
    status character varying(20),
    watched boolean
);


ALTER TABLE public.comments_discussion OWNER TO pgowner;

--
-- Name: comments_discussion_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE comments_discussion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comments_discussion_id_seq OWNER TO pgowner;

--
-- Name: comments_discussion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE comments_discussion_id_seq OWNED BY comments_discussion.id;


--
-- Name: comments_discussion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('comments_discussion_id_seq', 20, true);


--
-- Name: comments_discussion_tags; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE comments_discussion_tags (
    id integer NOT NULL,
    discussion_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.comments_discussion_tags OWNER TO pgowner;

--
-- Name: comments_discussion_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE comments_discussion_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comments_discussion_tags_id_seq OWNER TO pgowner;

--
-- Name: comments_discussion_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE comments_discussion_tags_id_seq OWNED BY comments_discussion_tags.id;


--
-- Name: comments_discussion_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('comments_discussion_tags_id_seq', 166, true);


--
-- Name: comments_namespace; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE comments_namespace (
    description text NOT NULL,
    id integer NOT NULL,
    name character varying(16) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.comments_namespace OWNER TO pgowner;

--
-- Name: comments_namespace_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE comments_namespace_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comments_namespace_id_seq OWNER TO pgowner;

--
-- Name: comments_namespace_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE comments_namespace_id_seq OWNED BY comments_namespace.id;


--
-- Name: comments_namespace_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('comments_namespace_id_seq', 5, true);


--
-- Name: comments_rating; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE comments_rating (
    id integer NOT NULL,
    discussion_id integer NOT NULL,
    rated_by_id integer NOT NULL,
    last_updated timestamp with time zone DEFAULT '2011-11-15 14:48:11.099342+00'::timestamp with time zone NOT NULL,
    rating integer
);


ALTER TABLE public.comments_rating OWNER TO pgowner;

--
-- Name: comments_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE comments_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comments_rating_id_seq OWNER TO pgowner;

--
-- Name: comments_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE comments_rating_id_seq OWNED BY comments_rating.id;


--
-- Name: comments_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('comments_rating_id_seq', 2, true);


--
-- Name: comments_tag; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE comments_tag (
    path character varying(255) NOT NULL,
    default_days_until_close integer,
    namespace_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    forum_allowed boolean NOT NULL
);


ALTER TABLE public.comments_tag OWNER TO pgowner;

--
-- Name: comments_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE comments_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.comments_tag_id_seq OWNER TO pgowner;

--
-- Name: comments_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE comments_tag_id_seq OWNED BY comments_tag.id;


--
-- Name: comments_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('comments_tag_id_seq', 80, true);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO pgowner;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO pgowner;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO pgowner;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO pgowner;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('django_content_type_id_seq', 40, true);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO pgowner;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO pgowner;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO pgowner;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: importer_pluckimportedcomment; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE importer_pluckimportedcomment (
    comment_id integer,
    action_id integer,
    pluck_comment_key character varying(255) NOT NULL,
    id integer NOT NULL,
    imported_on timestamp with time zone NOT NULL
);


ALTER TABLE public.importer_pluckimportedcomment OWNER TO pgowner;

--
-- Name: importer_pluckimportedcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE importer_pluckimportedcomment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.importer_pluckimportedcomment_id_seq OWNER TO pgowner;

--
-- Name: importer_pluckimportedcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE importer_pluckimportedcomment_id_seq OWNED BY importer_pluckimportedcomment.id;


--
-- Name: importer_pluckimportedcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('importer_pluckimportedcomment_id_seq', 1, false);


--
-- Name: importer_pluckimportedrating; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE importer_pluckimportedrating (
    id integer NOT NULL,
    rating_id integer,
    pluck_rating_key character varying(255) NOT NULL,
    imported_on timestamp with time zone NOT NULL
);


ALTER TABLE public.importer_pluckimportedrating OWNER TO pgowner;

--
-- Name: importer_pluckimportedrating_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE importer_pluckimportedrating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.importer_pluckimportedrating_id_seq OWNER TO pgowner;

--
-- Name: importer_pluckimportedrating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE importer_pluckimportedrating_id_seq OWNED BY importer_pluckimportedrating.id;


--
-- Name: importer_pluckimportedrating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('importer_pluckimportedrating_id_seq', 1, false);


--
-- Name: importer_pluckimportedrecommendation; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE importer_pluckimportedrecommendation (
    pluck_recommendation_key character varying(255) NOT NULL,
    id integer NOT NULL,
    imported_on timestamp with time zone NOT NULL,
    recommendation_id integer
);


ALTER TABLE public.importer_pluckimportedrecommendation OWNER TO pgowner;

--
-- Name: importer_pluckimportedrecommendation_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE importer_pluckimportedrecommendation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.importer_pluckimportedrecommendation_id_seq OWNER TO pgowner;

--
-- Name: importer_pluckimportedrecommendation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE importer_pluckimportedrecommendation_id_seq OWNED BY importer_pluckimportedrecommendation.id;


--
-- Name: importer_pluckimportedrecommendation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('importer_pluckimportedrecommendation_id_seq', 1, false);


--
-- Name: importer_pluckimportedreview; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE importer_pluckimportedreview (
    comment_id integer NOT NULL,
    pluck_review_key character varying(255) NOT NULL,
    id integer NOT NULL,
    imported_on timestamp with time zone NOT NULL
);


ALTER TABLE public.importer_pluckimportedreview OWNER TO pgowner;

--
-- Name: importer_pluckimportedreview_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE importer_pluckimportedreview_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.importer_pluckimportedreview_id_seq OWNER TO pgowner;

--
-- Name: importer_pluckimportedreview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE importer_pluckimportedreview_id_seq OWNED BY importer_pluckimportedreview.id;


--
-- Name: importer_pluckimportedreview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('importer_pluckimportedreview_id_seq', 1, false);


--
-- Name: jogging_log; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE jogging_log (
    id integer NOT NULL,
    datetime timestamp with time zone NOT NULL,
    level character varying(128) NOT NULL,
    msg text NOT NULL,
    source character varying(128) NOT NULL,
    host character varying(200)
);


ALTER TABLE public.jogging_log OWNER TO pgowner;

--
-- Name: jogging_log_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE jogging_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.jogging_log_id_seq OWNER TO pgowner;

--
-- Name: jogging_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE jogging_log_id_seq OWNED BY jogging_log.id;


--
-- Name: jogging_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('jogging_log_id_seq', 1, false);


--
-- Name: moderation_abusecategory; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_abusecategory (
    description text NOT NULL,
    reason_required boolean DEFAULT false NOT NULL,
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.moderation_abusecategory OWNER TO pgowner;

--
-- Name: moderation_abusecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_abusecategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_abusecategory_id_seq OWNER TO pgowner;

--
-- Name: moderation_abusecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_abusecategory_id_seq OWNED BY moderation_abusecategory.id;


--
-- Name: moderation_abusecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_abusecategory_id_seq', 9, true);


--
-- Name: moderation_abusereport; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_abusereport (
    category_id integer NOT NULL,
    comment_id integer,
    weight integer DEFAULT 0 NOT NULL,
    reported_by_id integer,
    created_on timestamp with time zone DEFAULT '2011-11-15 14:48:15.532456+00'::timestamp with time zone NOT NULL,
    url character varying(255),
    reason text,
    accused_id integer,
    status character varying(20) DEFAULT 'open'::character varying NOT NULL,
    email_address character varying(255),
    id integer NOT NULL,
    edit_url character varying(255),
    reported_by_ip text
);


ALTER TABLE public.moderation_abusereport OWNER TO pgowner;

--
-- Name: moderation_abusereport_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_abusereport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_abusereport_id_seq OWNER TO pgowner;

--
-- Name: moderation_abusereport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_abusereport_id_seq OWNED BY moderation_abusereport.id;


--
-- Name: moderation_abusereport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_abusereport_id_seq', 106, true);


--
-- Name: moderation_action; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_action (
    comment_id integer,
    profile_id integer,
    note text,
    created_on timestamp with time zone DEFAULT '2011-11-15 14:48:15.700785+00'::timestamp with time zone NOT NULL,
    abuse_report_id integer,
    moderator_id integer NOT NULL,
    avatar_id integer,
    sanction_id integer,
    type character varying(32) NOT NULL,
    id integer NOT NULL,
    discussion_id integer
);


ALTER TABLE public.moderation_action OWNER TO pgowner;

--
-- Name: moderation_action_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_action_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_action_id_seq OWNER TO pgowner;

--
-- Name: moderation_action_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_action_id_seq OWNED BY moderation_action.id;


--
-- Name: moderation_action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_action_id_seq', 224, true);


--
-- Name: moderation_applicationpermissions; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_applicationpermissions (
    id integer NOT NULL,
    do_not_use integer
);


ALTER TABLE public.moderation_applicationpermissions OWNER TO pgowner;

--
-- Name: moderation_applicationpermissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_applicationpermissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_applicationpermissions_id_seq OWNER TO pgowner;

--
-- Name: moderation_applicationpermissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_applicationpermissions_id_seq OWNED BY moderation_applicationpermissions.id;


--
-- Name: moderation_applicationpermissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_applicationpermissions_id_seq', 1, false);


--
-- Name: moderation_ipaddressnotes; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_ipaddressnotes (
    id integer NOT NULL,
    moderator_id integer NOT NULL,
    created_on timestamp with time zone DEFAULT '2011-11-18 11:53:21.297069+00'::timestamp with time zone NOT NULL,
    note text,
    ip_address character varying(32),
    action text
);


ALTER TABLE public.moderation_ipaddressnotes OWNER TO pgowner;

--
-- Name: moderation_ipaddressnotes_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_ipaddressnotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_ipaddressnotes_id_seq OWNER TO pgowner;

--
-- Name: moderation_ipaddressnotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_ipaddressnotes_id_seq OWNED BY moderation_ipaddressnotes.id;


--
-- Name: moderation_ipaddressnotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_ipaddressnotes_id_seq', 1, false);


--
-- Name: moderation_ipsblockedfromreportingabuse; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_ipsblockedfromreportingabuse (
    id integer NOT NULL,
    ip character varying(32),
    block_start timestamp with time zone NOT NULL,
    block_end timestamp with time zone NOT NULL,
    moderator_id integer NOT NULL
);


ALTER TABLE public.moderation_ipsblockedfromreportingabuse OWNER TO pgowner;

--
-- Name: moderation_ipsblockedfromreportingabuse_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_ipsblockedfromreportingabuse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_ipsblockedfromreportingabuse_id_seq OWNER TO pgowner;

--
-- Name: moderation_ipsblockedfromreportingabuse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_ipsblockedfromreportingabuse_id_seq OWNED BY moderation_ipsblockedfromreportingabuse.id;


--
-- Name: moderation_ipsblockedfromreportingabuse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_ipsblockedfromreportingabuse_id_seq', 1, false);


--
-- Name: moderation_moderatorprofile; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_moderatorprofile (
    profile_id integer NOT NULL,
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.moderation_moderatorprofile OWNER TO pgowner;

--
-- Name: moderation_moderatorprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_moderatorprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_moderatorprofile_id_seq OWNER TO pgowner;

--
-- Name: moderation_moderatorprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_moderatorprofile_id_seq OWNED BY moderation_moderatorprofile.id;


--
-- Name: moderation_moderatorprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_moderatorprofile_id_seq', 1, false);


--
-- Name: moderation_queues_moderationqueue; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_queues_moderationqueue (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL
);


ALTER TABLE public.moderation_queues_moderationqueue OWNER TO pgowner;

--
-- Name: moderation_queues_moderationqueue_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_queues_moderationqueue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_queues_moderationqueue_id_seq OWNER TO pgowner;

--
-- Name: moderation_queues_moderationqueue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_queues_moderationqueue_id_seq OWNED BY moderation_queues_moderationqueue.id;


--
-- Name: moderation_queues_moderationqueue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_queues_moderationqueue_id_seq', 5, true);


--
-- Name: moderation_queues_moderationrequest; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_queues_moderationrequest (
    id integer NOT NULL,
    queue_id integer NOT NULL,
    comment_id integer NOT NULL,
    expiry_time timestamp with time zone,
    created_on timestamp with time zone NOT NULL,
    priority integer,
    moderator_id integer,
    request_hash character varying(255),
    discussion_id integer,
    source_created_on timestamp with time zone NOT NULL
);


ALTER TABLE public.moderation_queues_moderationrequest OWNER TO pgowner;

--
-- Name: moderation_queues_moderationrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_queues_moderationrequest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_queues_moderationrequest_id_seq OWNER TO pgowner;

--
-- Name: moderation_queues_moderationrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_queues_moderationrequest_id_seq OWNED BY moderation_queues_moderationrequest.id;


--
-- Name: moderation_queues_moderationrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_queues_moderationrequest_id_seq', 544, true);


--
-- Name: moderation_sanction; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE moderation_sanction (
    created_on timestamp with time zone DEFAULT '2011-11-15 14:48:15.657092+00'::timestamp with time zone NOT NULL,
    sanction_until timestamp with time zone,
    created_by_id integer NOT NULL,
    note text NOT NULL,
    user_id integer NOT NULL,
    id integer NOT NULL,
    sanction_type character varying(20) DEFAULT 'banned'::character varying NOT NULL
);


ALTER TABLE public.moderation_sanction OWNER TO pgowner;

--
-- Name: moderation_sanction_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE moderation_sanction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.moderation_sanction_id_seq OWNER TO pgowner;

--
-- Name: moderation_sanction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE moderation_sanction_id_seq OWNED BY moderation_sanction.id;


--
-- Name: moderation_sanction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('moderation_sanction_id_seq', 17, true);


--
-- Name: profiles_badge; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE profiles_badge (
    abuse_report_weight integer DEFAULT 0 NOT NULL,
    image_url character varying(255) NOT NULL,
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    display_name character varying(80) NOT NULL
);


ALTER TABLE public.profiles_badge OWNER TO pgowner;

--
-- Name: profiles_badge_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE profiles_badge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.profiles_badge_id_seq OWNER TO pgowner;

--
-- Name: profiles_badge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE profiles_badge_id_seq OWNED BY profiles_badge.id;


--
-- Name: profiles_badge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('profiles_badge_id_seq', 3, true);


--
-- Name: profiles_profile; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE profiles_profile (
    username character varying(80) NOT NULL,
    interests text,
    current_avatar_id integer,
    user_id character varying(16) NOT NULL,
    lowercase_username character varying(80) NOT NULL,
    gender character varying(20) DEFAULT 'nodisplay'::character varying,
    last_updated_on timestamp with time zone NOT NULL,
    dob date,
    created_on timestamp with time zone DEFAULT '2011-11-15 14:48:07.091406+00'::timestamp with time zone NOT NULL,
    about_me text,
    location text,
    web_page character varying(255),
    real_name character varying(255),
    id integer NOT NULL,
    last_ip_address character varying(32),
    total_comment_count integer,
    pluck_avatar_url character varying(255),
    vanity_url character varying(80),
    is_social boolean,
    last_exported_on timestamp with time zone
);


ALTER TABLE public.profiles_profile OWNER TO pgowner;

--
-- Name: profiles_profile_badges; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE profiles_profile_badges (
    id integer NOT NULL,
    profile_id integer NOT NULL,
    badge_id integer NOT NULL
);


ALTER TABLE public.profiles_profile_badges OWNER TO pgowner;

--
-- Name: profiles_profile_badges_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE profiles_profile_badges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.profiles_profile_badges_id_seq OWNER TO pgowner;

--
-- Name: profiles_profile_badges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE profiles_profile_badges_id_seq OWNED BY profiles_profile_badges.id;


--
-- Name: profiles_profile_badges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('profiles_profile_badges_id_seq', 21, true);


--
-- Name: profiles_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE profiles_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.profiles_profile_id_seq OWNER TO pgowner;

--
-- Name: profiles_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE profiles_profile_id_seq OWNED BY profiles_profile.id;


--
-- Name: profiles_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('profiles_profile_id_seq', 15, true);


--
-- Name: recommendations_recommendation; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE recommendations_recommendation (
    comment_id integer NOT NULL,
    created_on timestamp with time zone DEFAULT '2010-06-15 11:40:34.949786+01'::timestamp with time zone NOT NULL,
    id integer NOT NULL,
    recommended_by_id integer
);


ALTER TABLE public.recommendations_recommendation OWNER TO pgowner;

--
-- Name: recommendations_recommendation_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE recommendations_recommendation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.recommendations_recommendation_id_seq OWNER TO pgowner;

--
-- Name: recommendations_recommendation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE recommendations_recommendation_id_seq OWNED BY recommendations_recommendation.id;


--
-- Name: recommendations_recommendation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('recommendations_recommendation_id_seq', 136, true);


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO pgowner;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.south_migrationhistory_id_seq OWNER TO pgowner;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 118, true);


--
-- Name: switchboard_state; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE switchboard_state (
    id integer NOT NULL,
    host character varying(80) NOT NULL,
    state boolean DEFAULT true NOT NULL,
    switch_id integer NOT NULL
);


ALTER TABLE public.switchboard_state OWNER TO pgowner;

--
-- Name: switchboard_state_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE switchboard_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.switchboard_state_id_seq OWNER TO pgowner;

--
-- Name: switchboard_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE switchboard_state_id_seq OWNED BY switchboard_state.id;


--
-- Name: switchboard_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('switchboard_state_id_seq', 7, true);


--
-- Name: switchboard_switch; Type: TABLE; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE TABLE switchboard_switch (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    description character varying(200) NOT NULL,
    default_state boolean NOT NULL
);


ALTER TABLE public.switchboard_switch OWNER TO pgowner;

--
-- Name: switchboard_switch_id_seq; Type: SEQUENCE; Schema: public; Owner: pgowner
--

CREATE SEQUENCE switchboard_switch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.switchboard_switch_id_seq OWNER TO pgowner;

--
-- Name: switchboard_switch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgowner
--

ALTER SEQUENCE switchboard_switch_id_seq OWNED BY switchboard_switch.id;


--
-- Name: switchboard_switch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgowner
--

SELECT pg_catalog.setval('switchboard_switch_id_seq', 7, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY antispam_badword ALTER COLUMN id SET DEFAULT nextval('antispam_badword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_message ALTER COLUMN id SET DEFAULT nextval('auth_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY avatars_avatar ALTER COLUMN id SET DEFAULT nextval('avatars_avatar_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_comment ALTER COLUMN id SET DEFAULT nextval('comments_comment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_commenthighlight ALTER COLUMN id SET DEFAULT nextval('comments_commenthighlight_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_commentrecommendations ALTER COLUMN id SET DEFAULT nextval('comments_commentrecommendations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_discussion ALTER COLUMN id SET DEFAULT nextval('comments_discussion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_discussion_tags ALTER COLUMN id SET DEFAULT nextval('comments_discussion_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_namespace ALTER COLUMN id SET DEFAULT nextval('comments_namespace_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_rating ALTER COLUMN id SET DEFAULT nextval('comments_rating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_tag ALTER COLUMN id SET DEFAULT nextval('comments_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedcomment ALTER COLUMN id SET DEFAULT nextval('importer_pluckimportedcomment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedrating ALTER COLUMN id SET DEFAULT nextval('importer_pluckimportedrating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedrecommendation ALTER COLUMN id SET DEFAULT nextval('importer_pluckimportedrecommendation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedreview ALTER COLUMN id SET DEFAULT nextval('importer_pluckimportedreview_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY jogging_log ALTER COLUMN id SET DEFAULT nextval('jogging_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_abusecategory ALTER COLUMN id SET DEFAULT nextval('moderation_abusecategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_abusereport ALTER COLUMN id SET DEFAULT nextval('moderation_abusereport_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_action ALTER COLUMN id SET DEFAULT nextval('moderation_action_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_applicationpermissions ALTER COLUMN id SET DEFAULT nextval('moderation_applicationpermissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_ipaddressnotes ALTER COLUMN id SET DEFAULT nextval('moderation_ipaddressnotes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_ipsblockedfromreportingabuse ALTER COLUMN id SET DEFAULT nextval('moderation_ipsblockedfromreportingabuse_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_moderatorprofile ALTER COLUMN id SET DEFAULT nextval('moderation_moderatorprofile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_queues_moderationqueue ALTER COLUMN id SET DEFAULT nextval('moderation_queues_moderationqueue_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_queues_moderationrequest ALTER COLUMN id SET DEFAULT nextval('moderation_queues_moderationrequest_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_sanction ALTER COLUMN id SET DEFAULT nextval('moderation_sanction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY profiles_badge ALTER COLUMN id SET DEFAULT nextval('profiles_badge_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY profiles_profile ALTER COLUMN id SET DEFAULT nextval('profiles_profile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY profiles_profile_badges ALTER COLUMN id SET DEFAULT nextval('profiles_profile_badges_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY recommendations_recommendation ALTER COLUMN id SET DEFAULT nextval('recommendations_recommendation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY switchboard_state ALTER COLUMN id SET DEFAULT nextval('switchboard_state_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY switchboard_switch ALTER COLUMN id SET DEFAULT nextval('switchboard_switch_id_seq'::regclass);


--
-- Data for Name: antispam_badword; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY antispam_badword (link_urls_only, word, id, created_by_id, created) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_message; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY auth_message (id, user_id, message) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add message	4	add_message
11	Can change message	4	change_message
12	Can delete message	4	delete_message
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add log entry	8	add_logentry
23	Can change log entry	8	change_logentry
24	Can delete log entry	8	delete_logentry
25	Can add migration history	9	add_migrationhistory
26	Can change migration history	9	change_migrationhistory
27	Can delete migration history	9	delete_migrationhistory
28	Can add log	10	add_log
29	Can change log	10	change_log
30	Can delete log	10	delete_log
31	Can add avatar	11	add_avatar
32	Can change avatar	11	change_avatar
33	Can delete avatar	11	delete_avatar
34	Can add badge	12	add_badge
35	Can change badge	12	change_badge
36	Can delete badge	12	delete_badge
37	Can add profile	13	add_profile
38	Can change profile	13	change_profile
39	Can delete profile	13	delete_profile
40	Can add namespace	14	add_namespace
41	Can change namespace	14	change_namespace
42	Can delete namespace	14	delete_namespace
43	Can add tag	15	add_tag
44	Can change tag	15	change_tag
45	Can delete tag	15	delete_tag
46	Can add discussion	16	add_discussion
47	Can change discussion	16	change_discussion
48	Can delete discussion	16	delete_discussion
49	Can add rating	17	add_rating
50	Can change rating	17	change_rating
51	Can delete rating	17	delete_rating
52	Can add comment	18	add_comment
53	Can change comment	18	change_comment
54	Can delete comment	18	delete_comment
55	Can add comment recommendations	19	add_commentrecommendations
56	Can change comment recommendations	19	change_commentrecommendations
57	Can delete comment recommendations	19	delete_commentrecommendations
58	Can add application permissions	20	add_applicationpermissions
59	Can change application permissions	20	change_applicationpermissions
60	Can delete application permissions	20	delete_applicationpermissions
61	Can moderate	20	can_moderate
62	Can run reports	20	can_run_reports
63	Can view moderator actions	20	can_view_moderator_actions
64	Can manage moderators	20	can_manage_moderators
65	Can add abuse category	21	add_abusecategory
66	Can change abuse category	21	change_abusecategory
67	Can delete abuse category	21	delete_abusecategory
68	Can add abuse report	22	add_abusereport
69	Can change abuse report	22	change_abusereport
70	Can delete abuse report	22	delete_abusereport
71	Can add moderator profile	23	add_moderatorprofile
72	Can change moderator profile	23	change_moderatorprofile
73	Can delete moderator profile	23	delete_moderatorprofile
74	Can add sanction	24	add_sanction
75	Can change sanction	24	change_sanction
76	Can delete sanction	24	delete_sanction
77	Can add action	25	add_action
78	Can change action	25	change_action
79	Can delete action	25	delete_action
80	Can add recommendation	26	add_recommendation
81	Can change recommendation	26	change_recommendation
82	Can delete recommendation	26	delete_recommendation
83	Can add bad word	27	add_badword
84	Can change bad word	27	change_badword
85	Can delete bad word	27	delete_badword
86	Can add pluck imported comment	28	add_pluckimportedcomment
87	Can change pluck imported comment	28	change_pluckimportedcomment
88	Can delete pluck imported comment	28	delete_pluckimportedcomment
89	Can add pluck imported review	29	add_pluckimportedreview
90	Can change pluck imported review	29	change_pluckimportedreview
91	Can delete pluck imported review	29	delete_pluckimportedreview
92	Can add pluck imported recommendation	30	add_pluckimportedrecommendation
93	Can change pluck imported recommendation	30	change_pluckimportedrecommendation
94	Can delete pluck imported recommendation	30	delete_pluckimportedrecommendation
95	Can add pluck imported rating	31	add_pluckimportedrating
96	Can change pluck imported rating	31	change_pluckimportedrating
97	Can delete pluck imported rating	31	delete_pluckimportedrating
98	Can add switch	32	add_switch
99	Can change switch	32	change_switch
100	Can delete switch	32	delete_switch
101	Can add state	33	add_state
102	Can change state	33	change_state
103	Can delete state	33	delete_state
104	Can add ips blocked from reporting abuse	34	add_ipsblockedfromreportingabuse
105	Can change ips blocked from reporting abuse	34	change_ipsblockedfromreportingabuse
106	Can delete ips blocked from reporting abuse	34	delete_ipsblockedfromreportingabuse
107	Can add ip address notes	35	add_ipaddressnotes
108	Can change ip address notes	35	change_ipaddressnotes
109	Can delete ip address notes	35	delete_ipaddressnotes
110	Can add comment highlight	36	add_commenthighlight
111	Can change comment highlight	36	change_commenthighlight
112	Can delete comment highlight	36	delete_commenthighlight
113	Can add moderation queue	37	add_moderationqueue
114	Can change moderation queue	37	change_moderationqueue
115	Can delete moderation queue	37	delete_moderationqueue
116	Can add moderation request	38	add_moderationrequest
117	Can change moderation request	38	change_moderationrequest
118	Can delete moderation request	38	delete_moderationrequest
119	Can add moderation queue	39	add_moderationqueue
120	Can change moderation queue	39	change_moderationqueue
121	Can delete moderation queue	39	delete_moderationqueue
122	Can add moderation request	40	add_moderationrequest
123	Can change moderation request	40	change_moderationrequest
124	Can delete moderation request	40	delete_moderationrequest
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
1	admin			kriss.watt@guardian.co.uk	sha1$d37f4$66ac11cb0453c67709a7efa07d3154dfc08bc580	t	t	t	2013-05-31 10:30:24.228031+01	2011-11-15 14:48:00.634067+00
2	pluck_migration	Pluck	Migration	daniel.vydra@guardian.co.uk	sha1$d92c9$bec425da92ed1cbcb7a0d54a30e25988e3cd62c4	t	t	f	2010-03-30 17:54:50+01	2010-03-30 17:54:50+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: avatars_avatar; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY avatars_avatar (status, created_on, id, original_filename, image_filename, profile_id, is_communal, requires_moderation) FROM stdin;
\.


--
-- Data for Name: cachetable; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY cachetable (cache_key, value, expires) FROM stdin;
\.


--
-- Data for Name: comments_comment; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY comments_comment (body, title, discussion_id, status, body_original, is_flagged, created_on, posted_by_ip, id, posted_by_id, last_updated, in_reply_to_id, dn_total_reply_count, dn_reply_to_comment_username, dn_reply_to_comment_time, common_ancestor_id, dn_in_reply_to_profile_id) FROM stdin;
<p>sdsds</p>		18	visible	sdsds	f	2012-09-10 10:45:11.25+01	10.131.81.133	10327	12	2012-09-10 10:45:11.25+01	\N	0	\N	\N	\N	\N
<p>W00T</p>		18	visible	W00T	f	2012-07-18 16:35:19.129308+01	10.131.83.163	10300	9	2012-07-18 16:35:19.129293+01	10296	1	Sayanna	2012-06-13 18:26:09.185871+01	\N	\N
<p>sdsd</p>		18	visible	sdsd	f	2012-07-18 16:37:20.260144+01	10.131.83.163	10301	9	2012-07-18 16:37:20.260129+01	10300	\N	Negligible	2012-07-18 16:35:19.129308+01	\N	\N
<p>WORD</p>		18	visible	WORD	f	2012-08-14 15:12:03.106055+01	10.131.81.35	10303	12	2012-08-14 15:12:03.106028+01	\N	1	\N	\N	\N	\N
<p>DROW</p>		18	visible	DROW	f	2012-08-14 15:12:56.623761+01	10.131.81.35	10304	12	2012-08-14 15:12:56.623733+01	10303	\N	krisstest	2012-08-14 15:12:03.106055+01	\N	\N
<p>NEW COMMENT DERP</p>		18	visible	NEW COMMENT DERP	f	2012-08-14 15:27:12.52873+01	10.131.81.35	10305	12	2012-08-14 15:27:12.528676+01	\N	1	\N	\N	\N	\N
<p>sdasd</p>		18	visible	sdasd	f	2012-08-14 15:29:59.125539+01	10.131.81.35	10306	12	2012-08-14 15:29:59.12551+01	10305	\N	krisstest	2012-08-14 15:27:12.52873+01	\N	\N
<p>asdasd</p>		18	visible	asdasd	f	2012-08-14 15:30:40.305647+01	10.131.81.35	10307	12	2012-08-14 15:30:40.305624+01	\N	\N	\N	\N	\N	\N
<p>asdasd</p>		18	visible	asdasd	f	2012-08-14 15:31:13.080179+01	10.131.81.35	10308	12	2012-08-14 15:31:13.08013+01	\N	\N	\N	\N	\N	\N
<p>Sup guys.</p>		18	blocked	Sup guys.	f	2012-06-14 12:38:13.549401+01	10.131.81.173	10298	7	2012-08-14 15:35:19.816358+01	\N	\N	\N	\N	\N	\N
<p>ANUVA</p>		18	blocked	ANUVA	f	2012-06-13 18:35:06.703472+01	10.131.83.122	10297	7	2012-08-14 15:35:24.023583+01	\N	\N	\N	\N	\N	\N
<p>HOLLA</p>		18	blocked	HOLLA	f	2012-06-13 18:26:09.185871+01	10.131.83.122	10296	7	2012-08-14 15:35:28.770016+01	\N	1	\N	\N	\N	\N
<p>Test post</p>		18	visible	Test post	f	2012-09-06 09:55:54.028+01	10.131.81.251	10309	13	2012-09-06 09:55:54.028+01	\N	0	\N	\N	\N	\N
<p>BACON</p>		18	visible	BACON	f	2012-09-06 12:18:13.271+01	10.131.81.251	10311	13	2012-09-06 12:18:13.271+01	\N	0	\N	\N	\N	\N
<p>BACON</p>		18	visible	BACON	f	2012-09-06 12:19:48.646+01	10.131.81.251	10312	13	2012-09-06 12:19:48.646+01	\N	0	\N	\N	\N	\N
<p>MOAR BACON</p>		18	visible	MOAR BACON	f	2012-09-06 12:24:48.484+01	10.131.81.251	10313	13	2012-09-06 12:24:48.484+01	\N	0	\N	\N	\N	\N
<p>sdsd</p>		18	visible	sdsd	f	2012-09-10 10:51:27.349+01	10.131.81.133	10328	12	2012-09-10 10:51:27.349+01	\N	0	\N	\N	\N	\N
<p>WOOT</p>		18	visible	WOOT	f	2012-09-07 17:44:46.354+01	10.131.81.71	10315	13	2012-09-07 17:44:46.354+01	\N	0	\N	\N	\N	\N
<p>sd</p>		18	visible	sd	f	2012-09-07 17:51:49.483+01	10.131.81.71	10316	13	2012-09-07 17:51:49.483+01	\N	0	\N	\N	\N	\N
<p>sdsd</p>		18	visible	sdsd	f	2012-09-07 17:57:12.589+01	10.131.81.71	10317	13	2012-09-07 17:57:12.589+01	\N	0	\N	\N	\N	\N
<p>BACON</p>		18	visible	BACON	f	2012-09-07 17:57:45.461+01	10.131.81.71	10318	13	2012-09-07 17:57:45.461+01	\N	0	\N	\N	\N	\N
<p>Am I really banned?</p>		18	visible	Am I really banned?	f	2012-09-07 18:00:20.966+01	10.131.81.71	10319	13	2012-09-07 18:00:20.966+01	\N	0	\N	\N	\N	\N
<p>HEY</p>		18	visible	HEY	f	2012-09-10 11:45:51.602+01	10.131.81.133	10343	13	2012-09-10 11:45:51.602+01	\N	2	\N	\N	\N	\N
<p>HHEY MOM</p>		18	visible	HHEY MOM	f	2012-09-10 13:03:29.406+01	10.131.81.133	10352	13	2012-09-10 13:03:29.406+01	\N	0	\N	\N	\N	\N
<p>hey</p>		18	visible	hey	f	2012-09-10 10:38:55.891+01	10.131.81.133	10322	13	2012-09-10 10:38:55.891+01	\N	0	\N	\N	\N	\N
<p>Test comment</p>		18	visible	Test comment	f	2012-09-10 10:39:58.15+01	10.131.81.133	10323	13	2012-09-10 10:39:58.15+01	\N	0	\N	\N	\N	\N
<p>wheee</p>		18	visible	wheee	f	2012-09-10 10:40:41.018+01	10.131.81.133	10324	13	2012-09-10 10:40:41.018+01	\N	0	\N	\N	\N	\N
<p>test</p>		18	visible	test	f	2012-09-10 10:42:36.791+01	10.131.81.133	10325	12	2012-09-10 10:42:36.791+01	\N	0	\N	\N	\N	\N
<p>te</p>		18	visible	te	f	2012-09-10 10:44:07.689+01	10.131.81.133	10326	12	2012-09-10 10:44:07.689+01	\N	0	\N	\N	\N	\N
<p>test</p>		18	visible	test	f	2012-09-10 10:54:02.061+01	10.131.81.133	10329	12	2012-09-10 10:54:02.061+01	\N	0	\N	\N	\N	\N
<p>sdsd</p>		18	visible	sdsd	f	2012-09-10 10:55:07.353+01	10.131.81.133	10330	12	2012-09-10 10:55:07.353+01	\N	0	\N	\N	\N	\N
<p>will this work?</p>		18	visible	will this work?	f	2012-09-10 10:55:49.614+01	10.131.81.133	10331	12	2012-09-10 10:55:49.614+01	\N	0	\N	\N	\N	\N
<p>sd</p>		18	visible	sd	f	2012-09-10 10:57:10.025+01	10.131.81.133	10332	12	2012-09-10 10:57:10.025+01	\N	0	\N	\N	\N	\N
<p>Okay dude</p>		18	visible	Okay dude	f	2012-09-10 10:59:19.931+01	10.131.81.133	10333	12	2012-09-10 10:59:19.931+01	\N	0	\N	\N	\N	\N
<p>bacon!</p>		18	visible	bacon!	f	2012-09-10 11:00:45.817+01	10.131.81.133	10334	12	2012-09-10 11:00:45.817+01	\N	0	\N	\N	\N	\N
<p>why not?</p>		18	visible	why not?	f	2012-09-10 11:03:11.531+01	10.131.81.133	10335	12	2012-09-10 11:03:11.531+01	\N	0	\N	\N	\N	\N
<p>how about now?</p>		18	visible	how about now?	f	2012-09-10 11:11:40.858+01	10.131.81.133	10336	12	2012-09-10 11:11:40.858+01	\N	0	\N	\N	\N	\N
<p>is it a tab thing?</p>		18	visible	is it a tab thing?	f	2012-09-10 11:14:01.409+01	10.131.81.133	10337	12	2012-09-10 11:14:01.409+01	\N	0	\N	\N	\N	\N
<p>WHAT UP</p>		18	visible	WHAT UP	f	2012-09-10 11:31:43.208+01	10.131.81.133	10338	13	2012-09-10 11:31:43.208+01	\N	0	\N	\N	\N	\N
<p>sds</p>		18	visible	sds	f	2012-09-10 11:33:16.774+01	10.131.81.133	10339	13	2012-09-10 11:33:16.774+01	\N	0	\N	\N	\N	\N
<p>WORD</p>		18	visible	WORD	f	2012-09-10 11:42:50.031+01	10.131.81.133	10340	13	2012-09-10 11:42:50.031+01	\N	0	\N	\N	\N	\N
<p>Baaaaaaawwwww</p>		18	visible	Baaaaaaawwwww	f	2012-09-10 11:43:29.581+01	10.131.81.133	10341	13	2012-09-10 11:43:29.581+01	\N	0	\N	\N	\N	\N
<p>OH HAI</p>		18	visible	OH HAI	f	2012-09-10 11:44:15.966+01	10.131.81.133	10342	13	2012-09-10 11:44:15.966+01	\N	0	\N	\N	\N	\N
<p>yay!</p>		18	visible	yay!	f	2012-09-10 11:47:49.501+01	10.131.81.133	10344	13	2012-09-10 11:47:49.501+01	\N	0	\N	\N	\N	\N
<p>paginate me, bitches</p>		18	visible	paginate me, bitches	f	2012-09-10 11:48:46.825+01	10.131.81.133	10345	13	2012-09-10 11:48:46.825+01	\N	0	\N	\N	\N	\N
<p>This is a test comment.</p>		18	visible	This is a test comment.	f	2012-09-10 11:54:48.412+01	10.131.81.133	10346	13	2012-09-10 11:54:48.412+01	\N	0	\N	\N	\N	\N
<p>here's my <b>test</b> comment.</p>		18	visible	here's my <b>test</b> comment.	f	2012-09-10 12:26:12.731+01	10.131.81.133	10347	13	2012-09-10 12:26:12.731+01	\N	0	\N	\N	\N	\N
<p>@Anachronism -</p>		18	visible	@Anachronism -	f	2012-09-07 18:06:54.493+01	10.131.81.71	10321	13	2012-09-07 18:06:54.493+01	10320	1	Anachronism	2012-09-07 18:02:39.702+01	10299	\N
<p>test</p>		18	visible	test	f	2012-09-06 12:15:11.217+01	10.131.81.251	10310	13	2012-09-06 12:15:11.217+01	\N	1	\N	\N	\N	\N
<p>@Anachronism - @Anachronism - @Anachronism -</p>		18	visible	@Anachronism - @Anachronism - @Anachronism -	f	2012-09-10 12:29:13.642+01	10.131.81.133	10349	13	2012-09-10 12:29:13.642+01	10348	0	Anachronism	2012-09-10 12:28:07.151+01	10299	\N
<p>Here's my comment.</p>		18	visible	Here's my comment.	f	2012-09-10 12:49:18.18+01	10.131.81.133	10350	13	2012-09-10 12:49:18.18+01	\N	0	\N	\N	\N	\N
<p>@Anachronism - YAY REPLY</p>		18	visible	@Anachronism - YAY REPLY	f	2012-09-10 12:28:07.151+01	10.131.81.133	10348	13	2012-09-10 12:28:07.151+01	10321	2	Anachronism	2012-09-07 18:06:54.493+01	10299	\N
<p>@Anachronism -</p>		18	visible	@Anachronism -	f	2012-09-10 13:01:21.577+01	10.131.81.133	10351	13	2012-09-10 13:01:21.577+01	10320	0	Anachronism	2012-09-07 18:02:39.702+01	10299	\N
<p>Top post 2</p>		5	visible	Top post 2	f	2013-01-09 11:15:25.152+00	10.131.83.54	10500	7	2013-01-09 11:15:25.152+00	\N	0	\N	\N	\N	\N
<p>Do I die in flames?</p>		18	visible	Do I die in flames?	f	2012-08-14 14:44:50.088945+01	10.131.81.35	10302	12	2012-08-14 15:14:48.940235+01	\N	1	\N	\N	\N	\N
<p>lulz</p>		18	visible	lulz	f	2012-06-14 12:39:45.086932+01	10.131.81.173	10299	9	2012-08-14 15:14:50.880911+01	\N	5	\N	\N	\N	\N
<p>Last page, lol</p>		18	visible	Last page, lol	f	2012-10-15 13:19:45.317+01	10.131.81.144	10443	13	2012-10-15 13:19:45.317+01	\N	0	\N	\N	\N	\N
<p>w00t</p>		18	visible	w00t	f	2012-09-10 13:24:46.67+01	10.131.81.133	10353	13	2012-09-10 13:24:46.67+01	10343	2	Anachronism	2012-09-10 11:45:51.602+01	10343	\N
<p>YAY!</p>		18	visible	YAY!	f	2012-09-07 18:02:39.702+01	10.131.81.71	10320	13	2012-09-07 18:02:39.702+01	10299	4	Negligible	2012-06-14 12:39:45.086932+01	10299	\N
<p>2</p>		5	visible	2	f	2013-01-09 11:16:43.017+00	10.131.83.54	10505	7	2013-01-09 11:16:43.017+00	\N	0	\N	\N	\N	\N
<p>Here's my <b>lovely</b> test <i>comment</i>. Do you like it?</p>		18	visible	Here's my <b>lovely</b> test <i>comment</i>. Do you like it?	f	2012-09-10 14:30:40.457+01	10.131.81.133	10354	13	2012-09-10 14:30:40.457+01	\N	0	\N	\N	\N	\N
<p>@Anachronism - You're super cool, guy.</p>		18	visible	@Anachronism - You're super cool, guy.	f	2012-09-10 14:31:34.318+01	10.131.81.133	10355	13	2012-09-10 14:31:34.318+01	10314	0	Anachronism	2012-09-07 15:55:16.867+01	10299	\N
<p>WOOT</p>		18	visible	WOOT	f	2012-09-10 15:47:17.827+01	10.131.81.133	10356	13	2012-09-10 15:47:17.827+01	\N	0	\N	\N	\N	\N
<p>This is my latest comment.</p>		18	visible	This is my latest comment.	f	2012-09-11 10:13:10.373+01	10.131.81.175	10357	13	2012-09-11 10:13:10.373+01	\N	0	\N	\N	\N	\N
<p>Bacon</p>		18	visible	Bacon	f	2012-09-11 11:22:59.062+01	10.131.81.175	10359	13	2012-09-11 11:22:59.062+01	\N	0	\N	\N	\N	\N
<p>sdsd</p>		18	visible	sdsd	f	2012-09-11 11:52:27.381+01	10.131.81.175	10360	13	2012-09-11 11:52:27.381+01	\N	0	\N	\N	\N	\N
<p>W'evs</p>		18	visible	W'evs	f	2012-09-12 09:57:39.713+01	10.131.81.115	10363	13	2012-09-12 09:57:39.713+01	\N	1	\N	\N	\N	\N
<p>@Anachronism -</p>		18	visible	@Anachronism -	f	2012-09-12 10:28:27.175+01	10.131.81.115	10365	13	2012-09-12 10:28:27.175+01	10353	0	Anachronism	2012-09-10 13:24:46.67+01	10343	\N
<p>Hey!</p>		18	visible	Hey!	f	2012-09-12 10:32:28.511+01	10.131.81.115	10366	13	2012-09-12 10:32:28.511+01	\N	0	\N	\N	\N	\N
<p>@Anachronism -</p>		18	visible	@Anachronism -	f	2012-09-11 15:57:36.743+01	10.131.81.175	10361	13	2012-09-11 15:57:36.743+01	10314	1	Anachronism	2012-09-07 15:55:16.867+01	10299	\N
<p>@Anachronism -</p>		18	visible	@Anachronism -	f	2012-09-12 11:44:50.744+01	10.131.81.115	10367	13	2012-09-12 11:44:50.744+01	10361	0	Anachronism	2012-09-11 15:57:36.743+01	10299	\N
<p>asdasd</p>		18	visible	asdasd	f	2012-09-12 11:47:26.528+01	10.131.81.115	10368	13	2012-09-12 11:47:26.528+01	10299	0	Negligible	2012-06-14 12:39:45.086932+01	10299	\N
<p>@krisstest - Nope. Worked fine, buddy!</p>		18	visible	@krisstest - Nope. Worked fine, buddy!	f	2012-09-11 16:02:40.051+01	10.131.81.175	10362	13	2012-09-11 16:02:40.051+01	10302	1	krisstest	2012-08-14 14:44:50.088945+01	10302	\N
<p>@Anachronism - word</p>		18	visible	@Anachronism - word	f	2012-09-12 12:36:09.412+01	10.131.81.115	10370	13	2012-09-12 12:36:09.412+01	10314	0	Anachronism	2012-09-07 15:55:16.867+01	10299	\N
<p>Here instead then?</p>		18	visible	Here instead then?	f	2012-09-12 12:43:33.045+01	10.131.81.115	10371	13	2012-09-12 12:43:33.045+01	\N	0	\N	\N	\N	\N
<p>reply</p>		18	visible	reply	f	2012-09-12 12:52:43.9+01	10.131.81.115	10372	13	2012-09-12 12:52:43.9+01	10343	0	Anachronism	2012-09-10 11:45:51.602+01	10343	\N
<p>WHAT UP DOG</p>		18	visible	WHAT UP DOG	f	2012-09-12 16:18:32.222+01	10.131.81.115	10373	13	2012-09-12 16:18:32.222+01	\N	0	\N	\N	\N	\N
<p>Test</p>		18	visible	Test	f	2012-09-12 16:19:36.869+01	10.131.81.115	10374	13	2012-09-12 16:19:36.869+01	\N	0	\N	\N	\N	\N
<p>PAGE 3, BITCHES</p>		18	visible	PAGE 3, BITCHES	f	2012-09-12 16:37:30.712+01	10.131.81.115	10375	13	2012-09-12 16:37:30.712+01	\N	0	\N	\N	\N	\N
<p>HAI</p>		18	visible	HAI	f	2012-09-12 10:19:10.667+01	10.131.81.115	10364	13	2012-09-12 10:19:10.667+01	10363	1	Anachronism	2012-09-12 09:57:39.713+01	10363	\N
<p>sdasd<i>sdsd</i></p>		18	visible	sdasd<i>sdsd</i>	f	2012-09-13 15:16:23.433+01	10.131.81.89	10377	13	2012-09-13 15:16:23.433+01	\N	0	\N	\N	\N	\N
<p>POST COMMENT</p>		18	visible	POST COMMENT	f	2012-09-14 11:55:31.192+01	\N	10378	13	2012-09-14 11:55:31.192+01	\N	1	\N	\N	\N	\N
<p>Fancy another, sir?</p>		18	visible	Fancy another, sir?	f	2012-09-14 12:00:06.591+01	\N	10379	13	2012-09-14 12:00:06.591+01	10378	1	Anachronism	2012-09-14 11:55:31.192+01	10378	\N
<p>@Anachronism - You rule.</p>		18	visible	@Anachronism - You rule.	f	2012-09-14 12:50:30.294+01	\N	10381	13	2012-09-14 12:50:30.294+01	10379	0	Anachronism	2012-09-14 12:00:06.591+01	10378	\N
<p>@Anachronism - Sup.</p>		18	visible	@Anachronism - Sup.	f	2012-09-17 11:13:36.206+01	\N	10382	13	2012-09-17 11:13:36.206+01	10320	0	Anachronism	2012-09-07 18:02:39.702+01	10299	\N
<p>COFFEE</p>		18	visible	COFFEE	f	2012-09-27 10:15:07.517+01	\N	10398	12	2012-09-27 10:15:07.517+01	\N	0	\N	\N	\N	\N
<p>Hey!</p>		18	visible	Hey!	f	2012-09-17 12:17:35.813+01	\N	10383	13	2012-09-17 12:17:35.813+01	10380	0	Anachronism	2012-09-14 12:49:58.312+01	10380	\N
<p>Hi there.</p>		18	visible	Hi there.	f	2012-09-17 12:38:10.504+01	\N	10384	13	2012-09-17 12:38:10.504+01	\N	0	\N	\N	\N	\N
<p>Bottom of the second page.</p>		18	visible	Bottom of the second page.	f	2012-09-17 12:47:19.429+01	\N	10385	13	2012-09-17 12:47:19.429+01	\N	0	\N	\N	\N	\N
<p>Top of the first page.</p>		18	visible	Top of the first page.	f	2012-09-17 12:56:12.867+01	\N	10386	13	2012-09-17 12:56:12.867+01	\N	0	\N	\N	\N	\N
<p>A fire tornado, one of nature's rarest weather events, is caught on camera in Curtin Springs, in Australia's Outback. The twister, made of flames reaching around 30 metres off the ground, was caused when a warm, rotating and rising column of air picked up a bushfire.</p>		18	visible	A fire tornado, one of nature's rarest weather events, is caught on camera in Curtin Springs, in Australia's Outback. The twister, made of flames reaching around 30 metres off the ground, was caused when a warm, rotating and rising column of air picked up a bushfire.	f	2012-09-19 14:31:38.376+01	\N	10387	12	2012-09-19 14:31:38.376+01	\N	0	\N	\N	\N	\N
<p>test</p>		18	visible	test	f	2012-09-25 15:18:03.938+01	\N	10388	12	2012-09-25 15:18:03.938+01	\N	0	\N	\N	\N	\N
<p>Sup</p>		18	visible	Sup	f	2012-09-25 15:21:14.393+01	\N	10389	12	2012-09-25 15:21:14.393+01	\N	0	\N	\N	\N	\N
<p>Come find me!</p>		18	visible	Come find me!	f	2012-09-25 15:27:30.604+01	\N	10390	12	2012-09-25 15:27:30.604+01	\N	0	\N	\N	\N	\N
<p>Blah</p>		18	visible	Blah	f	2012-09-25 15:46:22.59+01	\N	10391	12	2012-09-25 15:46:22.59+01	\N	0	\N	\N	\N	\N
<p>Sup you.</p>		18	visible	Sup you.	f	2012-09-26 14:25:23.678+01	\N	10392	12	2012-09-26 14:25:23.678+01	\N	0	\N	\N	\N	\N
<p>Hi <b>there</b> dudes.</p>		18	visible	Hi <b>there</b> dudes.	f	2012-09-14 12:49:58.312+01	\N	10380	13	2012-09-14 12:49:58.312+01	\N	2	\N	\N	\N	\N
<p>Screw it, I'll reply instead then.</p>		18	visible	Screw it, I'll reply instead then.	f	2012-09-26 14:26:07.162+01	\N	10393	12	2012-09-26 14:26:07.162+01	10380	0	Anachronism	2012-09-14 12:49:58.312+01	10380	\N
<p>Test post</p>		18	visible	Test post	f	2012-09-27 10:06:47.538+01	\N	10394	12	2012-09-27 10:06:47.538+01	\N	0	\N	\N	\N	\N
<p>LOL</p>		18	visible	LOL	f	2012-09-27 10:08:44.734+01	\N	10395	12	2012-09-27 10:08:44.734+01	\N	0	\N	\N	\N	\N
<p>HEY YOU GUYS</p>		18	visible	HEY YOU GUYS	f	2012-09-27 10:12:10.183+01	\N	10396	12	2012-09-27 10:12:10.183+01	\N	0	\N	\N	\N	\N
<p>afsdahjf</p>		18	visible	afsdahjf	f	2012-09-27 10:14:26.641+01	\N	10397	12	2012-09-27 10:14:26.641+01	\N	0	\N	\N	\N	\N
<p>W00T</p>		18	visible	W00T	f	2012-09-27 10:32:02.336+01	\N	10399	12	2012-09-27 10:32:02.336+01	\N	0	\N	\N	\N	\N
<p>SUP</p>		18	visible	SUP	f	2012-09-27 11:22:34.679+01	\N	10400	12	2012-09-27 11:22:34.679+01	\N	0	\N	\N	\N	\N
<p>whee!</p>		18	visible	whee!	f	2012-09-27 17:36:00.53+01	\N	10401	12	2012-09-27 17:36:00.53+01	\N	0	\N	\N	\N	\N
<p>sdads</p>		18	visible	sdads	f	2012-09-28 10:29:21.623+01	10.131.83.223	10402	12	2012-09-28 10:29:21.623+01	\N	1	\N	\N	\N	\N
<p>Hi there.</p>		18	visible	Hi there.	f	2012-10-01 11:10:15.002+01	10.131.83.39	10403	13	2012-10-01 11:10:15.002+01	10402	0	krisstest	2012-09-28 10:29:21.623+01	10402	\N
<p>Chips!</p>		18	visible	Chips!	f	2012-09-12 11:48:00.568+01	10.131.81.115	10369	13	2012-09-12 11:48:00.568+01	10362	1	Anachronism	2012-09-11 16:02:40.051+01	10302	\N
<p>test</p>		18	visible	test	f	2012-09-07 15:55:16.867+01	10.131.81.71	10314	13	2012-09-07 15:55:16.867+01	10299	4	Negligible	2012-06-14 12:39:45.086932+01	10299	\N
<p>@Anachronism - YAY</p>		18	visible	@Anachronism - YAY	f	2012-10-15 13:18:34.43+01	10.131.81.144	10442	13	2012-10-15 13:18:34.43+01	10353	1	Anachronism	2012-09-10 13:24:46.67+01	10343	\N
<p>sds</p>		18	visible	sds	f	2012-09-11 10:14:21.997+01	10.131.81.175	10358	13	2012-09-11 10:14:21.997+01	\N	2	\N	\N	\N	\N
<p>@Anachronism - Sup.</p>		18	visible	@Anachronism - Sup.	f	2012-10-15 13:29:35.973+01	10.131.81.144	10444	13	2012-10-15 13:29:35.973+01	10442	0	Anachronism	2012-10-15 13:18:34.43+01	10343	\N
<p>Bottom post 2</p>		5	visible	Bottom post 2	f	2013-01-09 11:15:31.686+00	10.131.83.54	10501	7	2013-01-09 11:15:31.686+00	\N	0	\N	\N	\N	\N
<p>Hi there. <b>This should be bold.&lt;/b<br /></b></p> <blockquote>  <p><b>And this is a block quote.</b></p> </blockquote>  <p><b><a href="http://google.com" rel="nofollow">I'm a link. Huurrrrrrr.</a></b></p>		18	visible	Hi there. <b>This should be bold.</b\n<blockquote>And this is a block quote.</blockquote>\n\n<a href="http://google.com">I'm a link. Huurrrrrrr.</a>	f	2012-10-02 10:09:18.807+01	10.131.83.248	10404	12	2012-10-02 10:09:18.807+01	\N	0	\N	\N	\N	\N
<p><b>Bold</b> <i>Italic</i> <a href="http://google.com" rel="nofollow">Link</a> </p> <blockquote>  <p>Quote</p> </blockquote>		18	visible	<b>Bold</b> <i>Italic</i> <a href="http://google.com">Link</a> <blockquote>Quote</blockquote>	f	2012-10-02 10:30:24.375+01	10.131.83.248	10405	12	2012-10-02 10:30:24.375+01	\N	0	\N	\N	\N	\N
<p>asdsad<br />asdasd<br />adasd<br />adasd</p>		18	visible	asdsad\nasdasd\nadasd\nadasd	f	2012-10-02 10:32:49.647+01	10.131.83.248	10406	12	2012-10-02 10:32:49.647+01	\N	0	\N	\N	\N	\N
<p>New post. Correct time?</p>		18	visible	New post. Correct time?	f	2012-10-02 14:57:57.25+01	10.131.81.203	10407	12	2012-10-02 14:57:57.25+01	\N	1	\N	\N	\N	\N
<p>And again?</p>		18	visible	And again?	f	2012-10-02 15:01:13.948+01	10.131.81.203	10408	12	2012-10-02 15:01:13.948+01	10407	0	krisstest	2012-10-02 14:57:57.25+01	10407	\N
<p>Test the time. It should be around 09:12.</p>		18	visible	Test the time. It should be around 09:12.	f	2012-10-03 09:09:12.66+01	10.131.81.203	10409	12	2012-10-03 09:09:12.66+01	\N	1	\N	\N	\N	\N
<p>0913</p>		18	visible	0913	f	2012-10-03 09:10:11.696+01	10.131.81.203	10410	12	2012-10-03 09:10:11.696+01	10409	0	krisstest	2012-10-03 09:09:12.66+01	10409	\N
<p>@Anachronism - I'm page three too, yo! Grr. Sodding rate limit. Can't we get rid of this yet?</p>		18	visible	@Anachronism - I'm page three too, yo! Grr. Sodding rate limit. Can't we get rid of this yet?	f	2012-09-12 16:38:02.342+01	10.131.81.115	10376	13	2012-09-12 16:38:02.342+01	10364	1	Anachronism	2012-09-12 10:19:10.667+01	10363	\N
<p>@Anachronism - Yo dog.</p>		18	visible	@Anachronism - Yo dog.	f	2012-10-03 10:00:50.212+01	10.131.81.203	10411	12	2012-10-03 10:00:50.212+01	10376	1	Anachronism	2012-09-12 16:38:02.342+01	10363	\N
<p>@krisstest - OH HAI.</p>		18	visible	@krisstest - OH HAI.	f	2012-10-03 10:02:46.785+01	10.131.81.203	10412	12	2012-10-03 10:02:46.785+01	10411	0	krisstest	2012-10-03 10:00:50.212+01	10363	\N
<p>TEST</p>		18	visible	TEST	f	2012-10-03 14:07:14.559+01	10.131.81.203	10413	15	2012-10-03 14:07:14.559+01	\N	0	\N	\N	\N	\N
<p><b>asdasdsad</b>NUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.NUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.NUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.NUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.sdasdsNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.sdasdasNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.dasdasNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdsaNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdasNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdasNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdasNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdasasdsaNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdsadasNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. </p> <p>also, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdsadasdasdNUDE MOD</p> <p>also if you're looking for pretty and want to see what the new rig can handle, crysis 2, sdshdjahsdjhsjkdasjkdhsakjdhlkahflkjdshkshkdhdhfjdshfjkdshfkjdhfjkdhfkjhdjfkhdsjkfhdkjfhsdkjfhdskjfhdskjfhsdkjfhjksdhfjksdhfjsdhfkjsdhfkjdhkjfhsdkjfhsdkjhfkjsdhfkjsdhfkjsdhfkjsdhfkjsdhfkjhsdfjkhdskjfhsdkfhdskjfhkjsdhfjksdhfkjsdhfkjsdhfkjsdhfkjsdhfkjhsdkjfhsdkjfhsdkjfhksdjfhksjdhfksdhfjksdhfkjsdhfksdhfkjshdfkjhsdkjfhsdkjfhsdkjfhjksdhfkjsdhfkjsdhfkjsdhfkjhsdkfhsdkjfhsdkjfhkjsdhfkjsdhfjksdhfkjhsdkfjhsdkjfhsdkjfhskdjhfkjsdhfkjsdhfkjhsdfkjshkdjfhsdkfhskjfhkjsdhfkjsdhfkjsdhfkjsdhfkjshdkfjhsdkjfhsdkjfhsdkjhfjksdhfkjsdhfkjsdhfkjsdhkjfhsdkjfhsdkjfhsdkfhkjhfkjsdhfkjsdhfkjsdhfk</p>		18	visible	<b>asdasdsad</b>NUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.NUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.NUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.NUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.sdasdsNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.sdasdasNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.dasdasNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdsaNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdasNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdasNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdasNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdasasdsaNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdasdsadasNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, civ 5, deus ex, company of heroes, borderlands 2 and of course ex-com when it comes out next tuesday. \n\nalso, head on over to steam and spend more money on games like arkham city, day z, and whatever else yussef comes up with.asdsadasdasdNUDE MOD\n\nalso if you're looking for pretty and want to see what the new rig can handle, crysis 2, sdshdjahsdjhsjkdasjkdhsakjdhlkahflkjdshkshkdhdhfjdshfjkdshfkjdhfjkdhfkjhdjfkhdsjkfhdkjfhsdkjfhdskjfhdskjfhsdkjfhjksdhfjksdhfjsdhfkjsdhfkjdhkjfhsdkjfhsdkjhfkjsdhfkjsdhfkjsdhfkjsdhfkjsdhfkjhsdfjkhdskjfhsdkfhdskjfhkjsdhfjksdhfkjsdhfkjsdhfkjsdhfkjsdhfkjhsdkjfhsdkjfhsdkjfhksdjfhksjdhfksdhfjksdhfkjsdhfksdhfkjshdfkjhsdkjfhsdkjfhsdkjfhjksdhfkjsdhfkjsdhfkjsdhfkjhsdkfhsdkjfhsdkjfhkjsdhfkjsdhfjksdhfkjhsdkfjhsdkjfhsdkjfhskdjhfkjsdhfkjsdhfkjhsdfkjshkdjfhsdkfhskjfhkjsdhfkjsdhfkjsdhfkjsdhfkjshdkfjhsdkjfhsdkjfhsdkjhfjksdhfkjsdhfkjsdhfkjsdhkjfhsdkjfhsdkjfhsdkfhkjhfkjsdhfkjsdhfkjsdhfk	f	2012-10-03 14:47:56.673+01	10.131.81.203	10414	15	2012-10-03 14:47:56.673+01	\N	0	\N	\N	\N	\N
<p>asdasldaskdj</p>		18	visible	asdasldaskdj	f	2012-10-03 15:28:23.44+01	10.131.81.203	10415	15	2012-10-03 15:28:23.44+01	\N	0	\N	\N	\N	\N
<p><b>bacon</b></p>		18	visible	<b>bacon</b>	f	2012-10-04 08:30:51.359+01	10.131.81.62	10416	15	2012-10-04 08:30:51.359+01	\N	0	\N	\N	\N	\N
<p>test</p>		18	visible	test	f	2012-10-04 08:32:03.275+01	10.131.81.62	10417	15	2012-10-04 08:32:03.275+01	\N	0	\N	\N	\N	\N
<p>Test</p>		18	visible	Test	f	2012-10-04 08:32:42.999+01	10.131.81.62	10418	15	2012-10-04 08:32:42.999+01	\N	0	\N	\N	\N	\N
<p>Test</p>		18	visible	Test	f	2012-10-04 14:18:34.67+01	10.131.83.181	10419	15	2012-10-04 14:18:34.67+01	\N	0	\N	\N	\N	\N
<p>I'm posting... or am I?</p>		18	visible	I'm posting... or am I?	f	2012-10-05 12:45:41.532+01	10.131.81.31	10420	15	2012-10-05 12:45:41.532+01	\N	0	\N	\N	\N	\N
<p>YAY</p>		18	visible	YAY	f	2012-10-05 14:13:26.261+01	10.131.81.31	10421	15	2012-10-05 14:13:26.261+01	\N	0	\N	\N	\N	\N
<p>sadsd</p>		18	visible	sadsd	f	2012-10-05 14:22:21.591+01	10.131.81.31	10422	15	2012-10-05 14:22:21.591+01	\N	0	\N	\N	\N	\N
<p>asdasd</p>		18	visible	asdasd	f	2012-10-05 15:07:55.138+01	10.131.81.31	10423	15	2012-10-05 15:07:55.138+01	\N	0	\N	\N	\N	\N
<p>@Anachronism - Test.</p>		18	visible	@Anachronism - Test.	f	2012-10-08 11:26:50.249+01	10.131.83.40	10424	15	2012-10-08 11:26:50.249+01	10348	0	Anachronism	2012-09-10 12:28:07.151+01	10299	\N
<p>WUT WUT</p>		18	visible	WUT WUT	f	2012-10-11 13:06:31.052+01	10.131.81.233	10432	15	2012-10-11 13:06:31.052+01	10310	0	Anachronism	2012-09-06 12:15:11.217+01	10310	\N
<p>@Anachronism - Yay for chippies!</p>		18	visible	@Anachronism - Yay for chippies!	f	2012-10-08 11:28:05.622+01	10.131.83.40	10425	15	2012-10-08 11:28:05.622+01	10369	2	Anachronism	2012-09-12 11:48:00.568+01	10302	\N
<p>Sup</p>		18	visible	Sup	f	2012-10-10 10:17:01.049+01	10.131.81.147	10429	15	2012-10-10 10:17:01.049+01	10299	0	Negligible	2012-06-14 12:39:45.086932+01	10299	\N
<p>@Anachronism - Test, yay!</p>		18	visible	@Anachronism - Test, yay!	f	2012-10-11 09:43:32.695+01	10.131.80.49	10430	15	2012-10-11 09:43:32.695+01	10314	0	Anachronism	2012-09-07 15:55:16.867+01	10299	\N
<p>Wheeeeee</p>		18	visible	Wheeeeee	f	2012-10-11 11:23:00.224+01	10.131.81.233	10431	15	2012-10-11 11:23:00.224+01	10299	0	Negligible	2012-06-14 12:39:45.086932+01	10299	\N
<p>Hi there</p>		18	visible	Hi there	f	2012-10-11 13:59:54.413+01	10.131.81.233	10433	15	2012-10-11 13:59:54.413+01	\N	0	\N	\N	\N	\N
<p>Sup!</p>		18	visible	Sup!	f	2012-10-11 14:02:27.324+01	10.131.81.233	10434	15	2012-10-11 14:02:27.324+01	\N	1	\N	\N	\N	\N
<p>Hi there, me.</p>		18	visible	Hi there, me.	f	2012-10-11 14:02:58.982+01	10.131.81.233	10435	15	2012-10-11 14:02:58.982+01	10434	0	bacondude	2012-10-11 14:02:27.324+01	10434	\N
<p>POST</p>		18	visible	POST	f	2012-10-11 14:24:12.018+01	10.131.81.233	10436	15	2012-10-11 14:24:12.018+01	10358	0	Anachronism	2012-09-11 10:14:21.997+01	10358	\N
<p>SUP</p>		18	visible	SUP	f	2012-10-11 14:27:50.429+01	10.131.81.233	10437	15	2012-10-11 14:27:50.429+01	10358	1	Anachronism	2012-09-11 10:14:21.997+01	10358	\N
<p>@bacondude - Oh hi.</p>		18	visible	@bacondude - Oh hi.	f	2012-10-11 14:28:38.946+01	10.131.81.233	10438	15	2012-10-11 14:28:38.946+01	10437	0	bacondude	2012-10-11 14:27:50.429+01	10358	\N
<p>WOO</p>		18	visible	WOO	f	2012-10-15 10:49:29.252+01	10.131.81.144	10440	15	2012-10-15 10:49:29.252+01	\N	0	\N	\N	\N	\N
<p>flurgle</p>		18	visible	flurgle	f	2012-10-15 13:15:05.252+01	10.131.81.144	10441	13	2012-10-15 13:15:05.252+01	\N	0	\N	\N	\N	\N
<p>Test comment</p>		18	visible	Test comment	f	2012-10-15 13:30:06.676+01	10.131.81.144	10445	13	2012-10-15 13:30:06.676+01	\N	0	\N	\N	\N	\N
<p>@bacondude - sadasd</p>		18	visible	@bacondude - sadasd	f	2012-10-09 08:38:25.36+01	10.131.81.147	10427	15	2013-05-13 11:53:54.51279+01	10425	0	bacondude	2012-10-08 11:28:05.622+01	10302	\N
<p>WHY DOG WHY</p>		18	visible	WHY DOG WHY	f	2012-10-11 15:05:48.737+01	10.131.81.233	10439	15	2013-05-13 11:58:19.443263+01	\N	0	\N	\N	\N	\N
<p>d2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countsdsdd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countsdsdsd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countsdsdsdsd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countsdsdsddsdsdsdsdsd</p>		18	visible	d2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countsdsdd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countsdsdsd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countsdsdsdsd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countd2-post-comment-countsdsdsddsdsdsdsdsd	f	2012-10-22 09:29:30.997+01	10.131.81.114	10446	15	2012-10-22 09:29:30.997+01	\N	0	\N	\N	\N	\N
<p>@Anachronism - YAY</p>		18	visible	@Anachronism - YAY	f	2012-10-22 10:03:15.758+01	10.131.81.114	10447	15	2012-10-22 10:03:15.758+01	10320	0	Anachronism	2012-09-07 18:02:39.702+01	10299	\N
<p>It should say 149</p>		18	visible	It should say 149	f	2012-10-22 10:28:38.233+01	10.131.81.114	10448	15	2012-10-22 10:28:38.233+01	\N	0	\N	\N	\N	\N
<p>sadasd</p>		18	visible	sadasd	f	2012-10-22 12:12:40.938+01	10.131.81.114	10449	15	2012-10-22 12:12:40.938+01	\N	0	\N	\N	\N	\N
<p>New post!</p>		18	visible	New post!	f	2012-10-22 12:14:35.256+01	10.131.81.114	10450	15	2012-10-22 12:14:35.256+01	\N	0	\N	\N	\N	\N
<p>YAY</p>		18	visible	YAY	f	2012-10-22 12:15:06.183+01	10.131.81.114	10451	15	2012-10-22 12:15:06.183+01	\N	0	\N	\N	\N	\N
<p>HOW DO I SHOT IFRAME?</p>		18	visible	HOW DO I SHOT IFRAME?	f	2012-10-22 12:16:47.252+01	10.131.81.114	10452	15	2012-10-22 12:16:47.252+01	\N	0	\N	\N	\N	\N
<p>How about highlighting my new comment?</p>		18	visible	How about highlighting my new comment?	f	2012-10-22 13:14:13.259+01	10.131.81.114	10453	15	2012-10-22 13:14:13.259+01	\N	0	\N	\N	\N	\N
<p>sdasdsd</p>		5	visible	sdasdsd	f	2012-12-05 12:24:13.494+00	10.131.81.50	10459	15	2012-12-05 12:24:13.494+00	\N	0	\N	\N	\N	\N
<p>Yay, here's a comment.</p>		5	visible	Yay, here's a comment.	f	2012-12-05 12:59:24.853+00	10.131.81.50	10460	15	2012-12-05 12:59:24.853+00	\N	1	\N	\N	\N	\N
<p>asdasd</p>		5	visible	asdasd	f	2012-12-05 16:12:41.644+00	10.131.81.50	10462	15	2012-12-05 16:12:41.644+00	\N	0	\N	\N	\N	\N
<p>YO</p>		5	visible	YO	f	2012-12-05 16:12:58.607+00	10.131.81.50	10464	15	2012-12-05 16:12:58.607+00	\N	0	\N	\N	\N	\N
<p>Comment</p>		5	visible	Comment	f	2012-12-11 10:55:43.706+00	12.13.14.15	10465	7	2012-12-11 10:55:43.706+00	\N	1	\N	\N	\N	\N
<p>Reply</p>		5	visible	Reply	f	2012-12-11 10:56:18.329+00	12.13.14.15	10466	7	2012-12-11 10:56:18.329+00	10465	0	Sayanna	2012-12-11 10:55:43.706+00	10465	\N
<p>asdasdasd</p>		5	visible	asdasdasd	f	2012-12-05 16:12:49.119+00	10.131.81.50	10463	15	2012-12-05 16:12:49.119+00	\N	1	\N	\N	\N	\N
<p>saed</p>		5	visible	saed	f	2012-12-11 10:59:41.364+00	12.13.14.15	10468	7	2012-12-11 10:59:41.364+00	10463	1	bacondude	2012-12-05 16:12:49.119+00	10463	\N
<p>sdsad</p>		5	visible	sdsad	f	2012-12-11 10:59:50.771+00	12.13.14.15	10469	7	2012-12-11 10:59:50.771+00	10468	0	Sayanna	2012-12-11 10:59:41.364+00	10463	\N
<p>adasdasd</p>		5	visible	adasdasd	f	2012-12-11 10:59:55.234+00	12.13.14.15	10470	7	2012-12-11 10:59:55.234+00	\N	0	\N	\N	\N	\N
<p>First comment</p>		19	visible	First comment	f	2012-12-12 12:46:26.314+00	10.131.81.34	10471	15	2012-12-12 12:46:26.314+00	\N	1	\N	\N	\N	\N
<p>Reply!</p>		19	visible	Reply!	f	2012-12-12 13:04:48.451+00	10.131.81.34	10472	15	2012-12-12 13:04:48.451+00	10471	1	bacondude	2012-12-12 12:46:26.314+00	10471	\N
<p>@bacondude - Reply!</p>		19	visible	@bacondude - Reply!	f	2012-12-12 13:04:57.553+00	10.131.81.34	10473	15	2012-12-12 13:04:57.553+00	10472	0	bacondude	2012-12-12 13:04:48.451+00	10471	\N
<p>huykh</p>		19	visible	huykh	f	2012-12-12 13:09:13.985+00	10.131.81.34	10474	15	2012-12-12 13:09:13.985+00	\N	0	\N	\N	\N	\N
<p>yay</p>		19	visible	yay	f	2012-12-12 14:42:43.753+00	10.131.81.34	10475	15	2012-12-12 14:42:43.753+00	\N	0	\N	\N	\N	\N
<p>dasdasd</p>		19	visible	dasdasd	f	2012-12-12 14:44:43.775+00	10.131.81.34	10476	15	2012-12-12 14:44:43.775+00	\N	0	\N	\N	\N	\N
<p>&amp;frac34;</p> <p>&amp;frac14;</p> <p>&amp;frac12;</p>		5	visible	¾\n\n¼\n\n½	f	2012-12-13 14:51:12.934+00	10.131.83.85	10477	15	2012-12-13 14:51:12.934+00	\N	0	\N	\N	\N	\N
<p>&amp;frac34;</p> <p>&amp;frac14;</p> <p>&amp;frac12;</p>		5	visible	¾\n\n¼\n\n½	f	2012-12-13 14:52:31.409+00	10.131.83.85	10478	15	2012-12-13 14:52:31.409+00	\N	0	\N	\N	\N	\N
<p>sdsad</p>		19	visible	sdsad	f	2012-12-14 14:24:59.501+00	10.131.81.76	10479	15	2012-12-14 14:24:59.501+00	\N	0	\N	\N	\N	\N
<p>YAY STAFF BADGE</p>		5	visible	YAY STAFF BADGE	f	2012-12-17 12:08:50.803+00	10.131.81.86	10481	7	2012-12-17 12:08:50.803+00	\N	0	\N	\N	\N	\N
<p>New post</p>		5	visible	New post	f	2012-12-17 15:55:03.761+00	12.13.14.15	10483	9	2012-12-17 15:55:03.761+00	\N	0	\N	\N	\N	\N
<p>Test</p>		5	visible	Test	f	2013-01-09 10:38:24.63+00	10.131.83.54	10485	7	2013-01-09 10:38:24.63+00	\N	0	\N	\N	\N	\N
<p>Another test.</p>		5	visible	Another test.	f	2013-01-09 10:38:47.362+00	10.131.83.54	10486	7	2013-01-09 10:38:47.362+00	\N	0	\N	\N	\N	\N
<p>Go to me!</p>		5	visible	Go to me!	f	2013-01-09 10:56:53.178+00	10.131.83.54	10488	7	2013-01-09 10:56:53.178+00	\N	0	\N	\N	\N	\N
<p>Come to me!</p>		5	visible	Come to me!	f	2013-01-09 10:57:08.65+00	10.131.83.54	10489	7	2013-01-09 10:57:08.65+00	\N	0	\N	\N	\N	\N
<p>New comment.</p>		5	visible	New comment.	f	2013-01-09 10:58:24.211+00	10.131.83.54	10490	7	2013-01-09 10:58:24.211+00	\N	0	\N	\N	\N	\N
<p>How about this?</p>		5	visible	How about this?	f	2013-01-09 10:39:11.919+00	10.131.83.54	10487	7	2013-01-09 10:39:11.919+00	\N	1	\N	\N	\N	\N
<p>Reply this, yo.</p>		5	visible	Reply this, yo.	f	2013-01-09 11:00:06.555+00	10.131.83.54	10491	7	2013-01-09 11:00:06.555+00	10487	0	Sayanna	2013-01-09 10:39:11.919+00	10487	\N
<p>This is my new post.</p>		5	visible	This is my new post.	f	2013-01-09 11:04:33.865+00	10.131.83.54	10492	7	2013-01-09 11:04:33.865+00	\N	0	\N	\N	\N	\N
<p>How about another?</p>		5	visible	How about another?	f	2013-01-09 11:04:46.555+00	10.131.83.54	10493	7	2013-01-09 11:04:46.555+00	\N	0	\N	\N	\N	\N
<p>Sup?</p>		5	visible	Sup?	f	2013-01-09 11:06:09.123+00	10.131.83.54	10494	7	2013-01-09 11:06:09.123+00	\N	0	\N	\N	\N	\N
<p>Sup sup.</p>		5	visible	Sup sup.	f	2013-01-09 11:06:18.444+00	10.131.83.54	10495	7	2013-01-09 11:06:18.444+00	\N	0	\N	\N	\N	\N
<p>First post</p>		5	visible	First post	f	2013-01-09 11:10:45.039+00	10.131.83.54	10496	7	2013-01-09 11:10:45.039+00	\N	0	\N	\N	\N	\N
<p>Second post</p>		5	visible	Second post	f	2013-01-09 11:10:52.651+00	10.131.83.54	10497	7	2013-01-09 11:10:52.651+00	\N	0	\N	\N	\N	\N
<p>Top post</p>		5	visible	Top post	f	2013-01-09 11:13:27.726+00	10.131.83.54	10498	7	2013-01-09 11:13:27.726+00	\N	0	\N	\N	\N	\N
<p>Bottom post</p>		5	visible	Bottom post	f	2013-01-09 11:13:35.522+00	10.131.83.54	10499	7	2013-01-09 11:13:35.522+00	\N	0	\N	\N	\N	\N
<p>WOOT</p>		19	visible	WOOT	f	2012-12-18 14:58:49.162+00	10.131.83.211	10484	7	2012-12-18 14:58:49.162+00	\N	1	\N	\N	\N	\N
<p>Test post.</p>		5	visible	Test post.	f	2012-12-05 11:06:46.742+00	10.131.81.50	10454	15	2012-12-05 11:06:46.742+00	\N	3	\N	\N	\N	\N
<p>1</p>		5	visible	1	f	2013-01-09 11:16:00.429+00	10.131.83.54	10502	7	2013-01-09 11:16:00.429+00	\N	0	\N	\N	\N	\N
<p>2</p>		5	visible	2	f	2013-01-09 11:16:06.39+00	10.131.83.54	10503	7	2013-01-09 11:16:06.39+00	\N	0	\N	\N	\N	\N
<p>1</p>		5	visible	1	f	2013-01-09 11:16:37.669+00	10.131.83.54	10504	7	2013-01-09 11:16:37.669+00	\N	0	\N	\N	\N	\N
<p>Posting a comment.</p>		5	blocked	Posting a comment.	f	2012-12-11 10:58:03.286+00	12.13.14.15	10467	7	2013-04-11 09:36:57.409094+01	\N	0	\N	\N	\N	\N
<p>OH HI</p>		5	visible	OH HI	f	2012-12-05 11:57:20.112+00	10.131.81.50	10457	15	2012-12-05 11:57:20.112+00	10454	2	bacondude	2012-12-05 11:06:46.742+00	10454	\N
<p>sdadsad</p> <p>asd</p>		5	visible	sdadsad\n\nasd	f	2012-12-05 12:22:03.613+00	10.131.81.50	10458	15	2012-12-05 12:22:03.613+00	\N	1	\N	\N	\N	\N
<p>Yay, reply!</p>		5	visible	Yay, reply!	f	2012-12-05 11:06:57.145+00	10.131.81.50	10455	15	2013-05-22 12:56:04.710272+01	10454	1	bacondude	2012-12-05 11:06:46.742+00	10454	\N
<p>Test post. Call me back, baby.</p>		5	visible	Test post. Call me back, baby.	f	2013-01-10 11:30:01.768+00	10.131.81.215	10506	7	2013-01-10 11:30:01.768+00	\N	0	\N	\N	\N	\N
<p>So call me maybe?</p>		5	visible	So call me maybe?	f	2013-01-10 11:35:01.866+00	10.131.81.215	10507	7	2013-01-10 11:35:01.866+00	\N	0	\N	\N	\N	\N
<p>SUP!</p>		5	visible	SUP!	f	2013-01-10 11:37:22.538+00	10.131.81.215	10508	7	2013-01-10 11:37:22.538+00	\N	0	\N	\N	\N	\N
<p>First post!</p>		20	visible	First post!	f	2013-01-10 13:59:31.053+00	10.131.81.215	10510	7	2013-01-10 13:59:31.053+00	\N	1	\N	\N	\N	\N
<p>asdsd</p>		5	visible	asdsd	f	2013-01-10 15:08:13.01+00	10.131.81.215	10512	7	2013-01-10 15:08:13.01+00	10509	0	Sayanna	2013-01-10 11:47:14.574+00	10509	\N
<p>New post</p>		5	visible	New post	f	2013-01-10 15:29:05.36+00	10.131.81.215	10515	7	2013-01-10 15:29:05.36+00	\N	0	\N	\N	\N	\N
<p>Cachebust cookie test</p>		5	visible	Cachebust cookie test	f	2013-01-10 15:31:06.673+00	10.131.81.215	10516	7	2013-01-10 15:31:06.673+00	\N	0	\N	\N	\N	\N
<p>Wahey!</p>		5	visible	Wahey!	f	2013-01-10 15:33:10.86+00	10.131.81.215	10517	7	2013-01-10 15:33:10.86+00	\N	0	\N	\N	\N	\N
<p>Let's try that again.</p>		5	visible	Let's try that again.	f	2013-01-10 15:34:58.079+00	10.131.81.215	10518	7	2013-01-10 15:34:58.079+00	\N	0	\N	\N	\N	\N
<p>Cachebust test again</p>		5	visible	Cachebust test again	f	2013-01-10 15:36:25.138+00	10.131.81.215	10519	7	2013-01-10 15:36:25.138+00	\N	0	\N	\N	\N	\N
<p>Yay</p>		5	visible	Yay	f	2013-01-10 15:38:32.66+00	10.131.81.215	10520	7	2013-01-10 15:38:32.66+00	\N	1	\N	\N	\N	\N
<p>Rendered underneath, eh?</p>		20	visible	Rendered underneath, eh?	f	2013-01-10 14:01:04.59+00	10.131.81.215	10511	7	2013-01-10 14:01:04.59+00	10510	1	Sayanna	2013-01-10 13:59:31.053+00	10510	\N
<p>@Sayanna - Hi there, linear.</p>		20	visible	@Sayanna - Hi there, linear.	f	2013-01-10 15:43:48.642+00	10.131.81.215	10522	7	2013-01-10 15:43:48.642+00	10511	0	Sayanna	2013-01-10 14:01:04.59+00	10510	\N
<p>reply</p>		5	visible	reply	f	2012-12-17 15:54:33.663+00	12.13.14.15	10482	9	2012-12-17 15:54:33.663+00	10457	1	bacondude	2012-12-05 11:57:20.112+00	10454	\N
<p>New post, yo.</p>		5	visible	New post, yo.	f	2013-01-11 11:16:03.014+00	12.13.14.15	10524	9	2013-01-11 11:16:03.014+00	\N	1	\N	\N	\N	\N
<p>New post. This should fail.</p>		5	visible	New post. This should fail.	f	2013-01-11 12:06:51.881+00	10.131.81.83	10526	7	2013-01-11 12:06:51.881+00	\N	0	\N	\N	\N	\N
<p>Another faily post.</p>		5	visible	Another faily post.	f	2013-01-11 12:10:09.34+00	10.131.81.83	10527	7	2013-01-11 12:10:09.34+00	\N	0	\N	\N	\N	\N
<p>Oh hi.</p>		5	visible	Oh hi.	f	2013-01-11 12:33:09.822+00	10.131.81.83	10528	7	2013-01-11 12:33:09.822+00	\N	0	\N	\N	\N	\N
<p>Again?</p>		5	visible	Again?	f	2013-01-11 12:33:21.075+00	10.131.81.83	10529	7	2013-01-11 12:33:21.075+00	\N	0	\N	\N	\N	\N
<p>@Negligible - Reply!</p>		5	visible	@Negligible - Reply!	f	2013-01-11 11:17:07.334+00	12.13.14.15	10525	9	2013-01-11 11:17:07.334+00	10524	1	Negligible	2013-01-11 11:16:03.014+00	10524	\N
<p>@Negligible - Reply?</p>		5	visible	@Negligible - Reply?	f	2013-01-11 12:33:32.813+00	10.131.81.83	10530	7	2013-01-11 12:33:32.813+00	10525	0	Negligible	2013-01-11 11:17:07.334+00	10524	\N
<p>Bottom?</p>		5	visible	Bottom?	f	2013-01-11 12:33:40.467+00	10.131.81.83	10531	7	2013-01-11 12:33:40.467+00	\N	0	\N	\N	\N	\N
<p>top post</p>		5	visible	top post	f	2013-01-11 12:45:50.606+00	10.131.81.83	10533	7	2013-01-11 12:45:50.606+00	\N	0	\N	\N	\N	\N
<p>top bpost</p>		5	visible	top bpost	f	2013-01-11 12:48:30.761+00	10.131.81.83	10534	7	2013-01-11 12:48:30.761+00	\N	0	\N	\N	\N	\N
<p>new post</p>		5	visible	new post	f	2013-01-11 12:49:56.592+00	10.131.81.83	10535	7	2013-01-11 12:49:56.592+00	\N	0	\N	\N	\N	\N
<p>top again</p>		5	visible	top again	f	2013-01-11 12:50:43.786+00	10.131.81.83	10536	7	2013-01-11 12:50:43.786+00	\N	0	\N	\N	\N	\N
<p>now?</p>		5	visible	now?	f	2013-01-11 12:50:51.476+00	10.131.81.83	10537	7	2013-01-11 12:50:51.476+00	\N	0	\N	\N	\N	\N
<p>posty!</p>		5	visible	posty!	f	2013-01-11 12:51:43.921+00	10.131.81.83	10538	7	2013-01-11 12:51:43.921+00	\N	0	\N	\N	\N	\N
<p>New post in the top box.</p>		5	visible	New post in the top box.	f	2013-01-11 13:24:44.54+00	10.131.81.83	10540	7	2013-01-11 13:24:44.54+00	\N	0	\N	\N	\N	\N
<p>sdasds</p>		5	visible	sdasds	f	2013-01-11 12:58:11.501+00	10.131.81.83	10539	7	2013-01-11 12:58:11.501+00	\N	1	\N	\N	\N	\N
<p>@Sayanna - Yep!</p>		5	visible	@Sayanna - Yep!	f	2013-01-11 13:27:35.768+00	10.131.81.83	10543	7	2013-01-11 13:27:35.768+00	10542	1	Sayanna	2013-01-11 13:27:29.122+00	10542	\N
<p>@Sayanna - Does that look okay though?</p>		5	visible	@Sayanna - Does that look okay though?	f	2013-01-11 13:27:47.784+00	10.131.81.83	10544	7	2013-01-11 13:27:47.784+00	10543	0	Sayanna	2013-01-11 13:27:35.768+00	10542	\N
<p>top</p>		5	visible	top	f	2013-01-11 13:28:14.672+00	10.131.81.83	10545	7	2013-01-11 13:28:14.672+00	\N	1	\N	\N	\N	\N
<p>@Sayanna - reply</p>		5	visible	@Sayanna - reply	f	2013-01-11 13:28:19.725+00	10.131.81.83	10546	7	2013-01-11 13:28:19.725+00	10545	0	Sayanna	2013-01-11 13:28:14.672+00	10545	\N
<p>top</p>		5	visible	top	f	2013-01-11 13:29:13.168+00	10.131.81.83	10547	7	2013-01-11 13:29:13.168+00	\N	1	\N	\N	\N	\N
<p>@Sayanna - reply</p>		5	visible	@Sayanna - reply	f	2013-01-11 13:29:18.308+00	10.131.81.83	10548	7	2013-01-11 13:29:18.308+00	10547	0	Sayanna	2013-01-11 13:29:13.168+00	10547	\N
<p>Hi there.</p>		5	visible	Hi there.	f	2013-01-11 16:00:02.618+00	10.131.81.83	10549	9	2013-01-11 16:00:02.618+00	\N	0	\N	\N	\N	\N
<p>Still works?</p>		5	visible	Still works?	f	2013-01-14 11:54:24.971+00	10.131.83.79	10550	7	2013-01-14 11:54:24.971+00	\N	1	\N	\N	\N	\N
<p>@Sayanna - Here?</p>		5	visible	@Sayanna - Here?	f	2013-01-14 11:54:51.43+00	10.131.83.79	10551	7	2013-01-14 11:54:51.43+00	10550	0	Sayanna	2013-01-14 11:54:24.971+00	10550	\N
<p>@Sayanna - New post</p>		19	visible	@Sayanna - New post	f	2013-01-15 11:59:10.538+00	10.131.81.216	10552	7	2013-01-15 11:59:10.538+00	10484	1	Sayanna	2012-12-18 14:58:49.162+00	10484	\N
<p>@Sayanna - WUT UP</p>		19	visible	@Sayanna - WUT UP	f	2013-01-15 12:06:42.057+00	10.131.81.216	10553	7	2013-01-15 12:06:42.057+00	10552	1	Sayanna	2013-01-15 11:59:10.538+00	10484	\N
<p>@Sayanna - adsad</p>		19	visible	@Sayanna - adsad	f	2013-01-15 12:07:57.33+00	10.131.81.216	10554	7	2013-01-15 12:07:57.33+00	10553	0	Sayanna	2013-01-15 12:06:42.057+00	10484	\N
<p>sasdsad</p>		5	blocked	sasdsad	f	2013-04-12 15:09:15.836+01	10.131.81.33	10583	9	2013-04-12 15:09:34.328879+01	\N	0	\N	\N	\N	\N
<p>I'm a troll</p>		5	blocked	I'm a troll	f	2013-04-12 15:27:49.241+01	10.131.81.33	10584	9	2013-04-12 15:28:10.478632+01	\N	0	\N	\N	\N	\N
<p>dhjhdljf</p>		5	visible	dhjhdljf	f	2013-04-12 15:28:25.372+01	10.131.81.33	10585	9	2013-04-12 15:28:25.372+01	\N	0	\N	\N	\N	\N
<p>@Negligible - Posty!</p>		5	blocked	@Negligible - Posty!	f	2013-01-11 11:15:26.946+00	12.13.14.15	10523	9	2013-04-16 14:33:56.23103+01	10482	0	Negligible	2012-12-17 15:54:33.663+00	10454	\N
<p>@Sayanna - Whatevs.</p>		5	blocked	@Sayanna - Whatevs.	f	2013-01-10 15:39:07.492+00	10.131.81.215	10521	7	2013-05-01 12:20:56.74001+01	10520	0	Sayanna	2013-01-10 15:38:32.66+00	10520	\N
<p>Just the top, then.</p>		5	visible	Just the top, then.	f	2013-01-11 12:33:47.589+00	10.131.81.83	10532	7	2013-01-11 12:33:47.589+00	\N	2	\N	\N	\N	\N
<p>@Sayanna -</p>		5	visible	@Sayanna -	f	2013-01-10 15:26:26.099+00	10.131.81.215	10514	7	2013-01-10 15:26:26.099+00	10513	1	Sayanna	2013-01-10 15:25:07.767+00	10509	\N
<p>New post!</p>		5	visible	New post!	f	2013-01-10 11:47:14.574+00	10.131.81.215	10509	7	2013-01-10 11:47:14.574+00	\N	3	\N	\N	\N	\N
<p>@Sayanna - asdsd</p>		5	visible	@Sayanna - asdsd	f	2013-01-10 15:25:07.767+00	10.131.81.215	10513	7	2013-01-10 15:25:07.767+00	10509	2	Sayanna	2013-01-10 11:47:14.574+00	10509	\N
<p>Fixed it?</p>		5	blocked	Fixed it?	f	2013-01-11 13:27:29.122+00	10.131.81.83	10542	7	2013-06-10 10:33:29.508861+01	\N	1	\N	\N	\N	\N
<p>Leggings truffaut helvetica irony, ethical bespoke hoodie brooklyn marfa fanny pack beard cray terry richardson. Austin keffiyeh swag tattooed, vegan mumblecore pork belly truffaut pitchfork. Jean shorts selfies cosby sweater post-ironic, mixtape plaid ethical photo booth gastropub semiotics you probably haven't heard of them seitan mustache polaroid. Tofu hella williamsburg, selfies irony bespoke iphone pop-up odd future four loko kale chips gluten-free 90's. Portland hoodie pinterest, yr raw denim tattooed artisan lo-fi pork belly ugh squid. Intelligentsia put a bird on it mumblecore, direct trade banksy pork belly food truck cosby sweater synth sartorial selfies high life freegan whatever banjo. Semiotics photo booth meh, post-ironic Austin retro literally kale chips messenger bag whatever chillwave sustainable hoodie narwhal pinterest.</p>		5	visible	Leggings truffaut helvetica irony, ethical bespoke hoodie brooklyn marfa fanny pack beard cray terry richardson. Austin keffiyeh swag tattooed, vegan mumblecore pork belly truffaut pitchfork. Jean shorts selfies cosby sweater post-ironic, mixtape plaid ethical photo booth gastropub semiotics you probably haven't heard of them seitan mustache polaroid. Tofu hella williamsburg, selfies irony bespoke iphone pop-up odd future four loko kale chips gluten-free 90's. Portland hoodie pinterest, yr raw denim tattooed artisan lo-fi pork belly ugh squid. Intelligentsia put a bird on it mumblecore, direct trade banksy pork belly food truck cosby sweater synth sartorial selfies high life freegan whatever banjo. Semiotics photo booth meh, post-ironic Austin retro literally kale chips messenger bag whatever chillwave sustainable hoodie narwhal pinterest.	f	2013-01-24 16:54:46.162+00	10.131.81.40	10555	7	2013-01-24 16:54:46.162+00	\N	0	\N	\N	\N	\N
<p>@bacondude - Yay</p>		5	visible	@bacondude - Yay	f	2013-01-24 16:56:57.792+00	10.131.81.40	10556	7	2013-01-24 16:56:57.792+00	10456	0	bacondude	2012-12-05 11:07:09.69+00	10454	\N
<p>Sup.</p>		5	pending-user	Sup.	f	2013-01-28 11:41:28.66+00	10.131.81.38	10557	7	2013-01-28 11:41:28.66+00	\N	0	\N	\N	\N	\N
<p>Why me?</p>		5	pending-user	Why me?	f	2013-01-28 11:48:21.093+00	10.131.81.38	10558	7	2013-01-28 11:48:21.093+00	\N	0	\N	\N	\N	\N
<p>@bacondude - How about here?</p>		5	pending-user	@bacondude - How about here?	f	2013-01-28 11:48:36.361+00	10.131.81.38	10559	7	2013-01-28 11:48:36.361+00	10461	0	bacondude	2012-12-05 12:59:42+00	10460	\N
<p>@bacondude - Posting a reply.</p>		5	visible	@bacondude - Posting a reply.	f	2013-01-30 09:25:22.314+00	10.131.81.164	10560	7	2013-01-30 09:25:22.314+00	10454	0	bacondude	2012-12-05 11:06:46.742+00	10454	\N
<p>Sup yo.</p>		5	visible	Sup yo.	f	2013-01-30 09:41:24.336+00	10.131.81.164	10561	7	2013-01-30 09:41:24.336+00	\N	0	\N	\N	\N	\N
<p>REPLY lULZ</p>		5	visible	REPLY lULZ	f	2012-12-05 12:59:42+00	10.131.81.50	10461	15	2012-12-05 12:59:42+00	10460	2	bacondude	2012-12-05 12:59:24.853+00	10460	\N
<p>@bacondude - Yo dog.</p>		5	visible	@bacondude - Yo dog.	f	2013-02-25 10:30:22.078+00	12.13.14.15	10562	9	2013-02-25 10:30:22.078+00	10461	0	bacondude	2012-12-05 12:59:42+00	10460	15
<p>New comment!</p>		5	visible	New comment!	f	2013-02-25 10:30:52.888+00	12.13.14.15	10563	9	2013-02-25 10:30:52.888+00	\N	0	\N	\N	\N	\N
<p>Sup?</p>		5	visible	Sup?	f	2013-02-28 09:40:43.856+00	10.131.81.47	10564	9	2013-02-28 09:40:43.856+00	\N	0	\N	\N	\N	\N
<p>New comment.</p>		5	visible	New comment.	f	2013-02-28 10:42:08.651+00	10.131.81.47	10565	9	2013-02-28 10:42:08.651+00	\N	0	\N	\N	\N	\N
<p>New post</p>		5	visible	New post	f	2013-03-28 10:31:37.835+00	10.131.83.45	10566	9	2013-03-28 10:31:37.835+00	\N	0	\N	\N	\N	\N
<p>Reply to a reply, perhaps?</p>		5	blocked	Reply to a reply, perhaps?	f	2012-12-05 11:07:09.69+00	10.131.81.50	10456	15	2013-04-05 15:25:39.04497+01	10455	1	bacondude	2012-12-05 11:06:57.145+00	10454	\N
<p>Fanny pack brunch brooklyn, godard raw denim shoreditch vinyl literally meh quinoa chillwave selvage whatever flannel twee. YOLO meggings ethical, squid brunch vegan polaroid VHS PBR blog Austin. Cred forage jean shorts, kogi banksy plaid gentrify kale chips thundercats retro. Polaroid mumblecore cosby sweater umami hashtag, post-ironic street art. Pitchfork brooklyn direct trade umami, pour-over kogi art party retro. Craft beer bicycle rights YOLO, art party fixie twee helvetica Austin messenger bag. 3 wolf moon selvage carles tonx 8-bit post-ironic, banksy helvetica you probably haven't heard of them fixie.</p>		5	visible	Fanny pack brunch brooklyn, godard raw denim shoreditch vinyl literally meh quinoa chillwave selvage whatever flannel twee. YOLO meggings ethical, squid brunch vegan polaroid VHS PBR blog Austin. Cred forage jean shorts, kogi banksy plaid gentrify kale chips thundercats retro. Polaroid mumblecore cosby sweater umami hashtag, post-ironic street art. Pitchfork brooklyn direct trade umami, pour-over kogi art party retro. Craft beer bicycle rights YOLO, art party fixie twee helvetica Austin messenger bag. 3 wolf moon selvage carles tonx 8-bit post-ironic, banksy helvetica you probably haven't heard of them fixie.	f	2013-04-11 10:49:23.636+01	10.131.83.130	10567	9	2013-04-11 10:49:23.636+01	\N	0	\N	\N	\N	\N
<p>Another post!</p>		5	visible	Another post!	f	2013-04-11 11:00:06.195+01	10.131.83.130	10568	9	2013-04-11 11:00:06.195+01	\N	0	\N	\N	\N	\N
<p>Irony mumblecore fashion axe, banjo small batch high life blue bottle disrupt brooklyn wayfarers fingerstache fanny pack cliche. Chillwave keffiyeh letterpress, godard pickled PBR ethical. Direct trade hella small batch, echo park 3 wolf moon letterpress twee sriracha fashion axe biodiesel lomo jean shorts. Mixtape helvetica leggings wolf. Mlkshk selfies messenger bag photo booth tattooed. Odd future PBR polaroid carles gentrify. Squid twee DIY viral tousled flannel umami.</p>		5	visible	Irony mumblecore fashion axe, banjo small batch high life blue bottle disrupt brooklyn wayfarers fingerstache fanny pack cliche. Chillwave keffiyeh letterpress, godard pickled PBR ethical. Direct trade hella small batch, echo park 3 wolf moon letterpress twee sriracha fashion axe biodiesel lomo jean shorts. Mixtape helvetica leggings wolf. Mlkshk selfies messenger bag photo booth tattooed. Odd future PBR polaroid carles gentrify. Squid twee DIY viral tousled flannel umami.	f	2013-04-11 11:05:14.403+01	10.131.83.130	10569	9	2013-04-11 11:05:14.403+01	\N	0	\N	\N	\N	\N
<p>sdsdsd</p>		5	visible	sdsdsd	f	2013-04-11 11:06:49.896+01	10.131.83.130	10570	9	2013-04-11 11:06:49.896+01	\N	0	\N	\N	\N	\N
<p>Here's a shiny new comment.</p>		5	visible	Here's a shiny new comment.	f	2013-04-11 11:11:44.078+01	10.131.83.130	10572	9	2013-04-11 11:11:44.078+01	\N	0	\N	\N	\N	\N
<p>sdsd</p>		5	blocked	sdsd	f	2013-04-11 11:09:30.499+01	10.131.83.130	10571	9	2013-04-11 11:16:46.695659+01	\N	0	\N	\N	\N	\N
<p>lame</p>		5	visible	lame	f	2013-04-11 11:17:03.648+01	10.131.83.130	10573	9	2013-04-11 11:17:03.648+01	\N	0	\N	\N	\N	\N
<p>adsad</p>		5	visible	adsad	f	2013-04-11 12:27:47.364+01	10.131.83.130	10574	9	2013-04-11 12:27:47.364+01	\N	0	\N	\N	\N	\N
<p>sdsdsd</p>		5	visible	sdsdsd	f	2013-04-11 12:28:44.516+01	10.131.83.130	10575	9	2013-04-11 12:28:44.516+01	\N	0	\N	\N	\N	\N
<p>sdsdsd</p>		5	visible	sdsdsd	f	2013-04-11 12:28:48.143+01	10.131.83.130	10576	9	2013-04-11 12:28:48.143+01	\N	0	\N	\N	\N	\N
<p>adasdasdasd</p>		5	visible	adasdasdasd	f	2013-04-11 12:28:51.502+01	10.131.83.130	10577	9	2013-04-11 12:28:51.502+01	\N	0	\N	\N	\N	\N
<p>First</p>		5	visible	First	f	2013-04-11 12:33:52.444+01	10.131.83.130	10578	9	2013-04-11 12:33:52.444+01	\N	0	\N	\N	\N	\N
<p>Second</p>		5	visible	Second	f	2013-04-11 12:33:55.612+01	10.131.83.130	10579	9	2013-04-11 12:33:55.612+01	\N	0	\N	\N	\N	\N
<p>Third</p>		5	visible	Third	f	2013-04-11 12:33:59.89+01	10.131.83.130	10580	9	2013-04-11 12:33:59.89+01	\N	0	\N	\N	\N	\N
<p>w00t</p>		5	visible	w00t	f	2013-04-12 12:38:47.4+01	10.131.82.195	10581	9	2013-04-12 12:38:47.4+01	\N	0	\N	\N	\N	\N
<p>NEW comment</p>		5	visible	NEW comment	f	2013-04-12 15:05:03.503+01	10.131.81.33	10582	9	2013-04-12 15:05:03.503+01	\N	0	\N	\N	\N	\N
<p>djasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasdsdasdsadjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasd<br />sadasdasdasdjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasdsadasdasdasdjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasdadasdasduadkjhsjdjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasdslashdjashdjashdkjhas</p>		19	blocked	djasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasdsdasdsadjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasd\nsadasdasdasdjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasdsadasdasdasdjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasdadasdasduadkjhsjdjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasddjasdjasdasdasdasdasdasdasasdslashdjashdjashdkjhas	f	2012-12-14 14:26:21.349+00	10.131.81.76	10480	15	2012-12-14 14:26:21.349+00	\N	0	\N	\N	\N	\N
<p>I love sweet I love halvah cake pastry powder I love wypas. Cheesecake pie brownie muffin. Marshmallow cotton candy I love gummi bears. Ice cream danish I love bonbon cheesecake dragée gingerbread jelly-o carrot cake. Ice cream I love cookie ice cream gummies dessert muffin. Soufflé bear claw ice cream gummies sugar plum oat cake oat cake applicake. Chocolate cake danish pastry tiramisu I love pastry I love. Topping jujubes dessert donut. Cookie pie jelly candy.</p> <p>Bear claw cake oat cake marzipan oat cake. Halvah gummi bears tiramisu gummies chocolate bar candy canes jelly beans brownie. Candy canes gummies icing I love tiramisu I love topping liquorice liquorice. Gingerbread cheesecake sesame snaps sweet roll cookie I love I love. Sweet halvah applicake donut candy I love. Candy sweet jelly-o I love carrot cake I love. Gummies chocolate bar chocolate cake.</p>		5	visible	I love sweet I love halvah cake pastry powder I love wypas. Cheesecake pie brownie muffin. Marshmallow cotton candy I love gummi bears. Ice cream danish I love bonbon cheesecake dragée gingerbread jelly-o carrot cake. Ice cream I love cookie ice cream gummies dessert muffin. Soufflé bear claw ice cream gummies sugar plum oat cake oat cake applicake. Chocolate cake danish pastry tiramisu I love pastry I love. Topping jujubes dessert donut. Cookie pie jelly candy.\n\nBear claw cake oat cake marzipan oat cake. Halvah gummi bears tiramisu gummies chocolate bar candy canes jelly beans brownie. Candy canes gummies icing I love tiramisu I love topping liquorice liquorice. Gingerbread cheesecake sesame snaps sweet roll cookie I love I love. Sweet halvah applicake donut candy I love. Candy sweet jelly-o I love carrot cake I love. Gummies chocolate bar chocolate cake.	f	2013-04-15 15:28:29.764+01	10.131.83.242	10586	9	2013-04-15 15:28:29.764+01	\N	0	\N	\N	\N	\N
<p>@Sayanna - This is fine though.</p>		5	visible	@Sayanna - This is fine though.	f	2013-01-11 13:25:42.797+00	10.131.81.83	10541	7	2013-01-11 13:25:42.797+00	10539	1	Sayanna	2013-01-11 12:58:11.501+00	10539	\N
<p>@Sayanna - Sup.</p>		5	blocked	@Sayanna - Sup.	f	2013-04-19 15:36:47.702+01	10.131.83.120	10588	9	2013-04-23 08:21:59.338741+01	10532	1	Sayanna	2013-01-11 12:33:47.589+00	10532	7
<p>@<i>Negligible</i> - Test</p>		5	blocked	@<i>Negligible</i> - Test	f	2013-04-23 08:18:17.107+01	10.131.83.242	10589	9	2013-04-23 08:22:00.562132+01	10588	0	Negligible	2013-04-19 15:36:47.702+01	10532	9
<p>TEST</p>		5	blocked	TEST	f	2013-04-19 15:36:37.857+01	10.131.83.120	10587	9	2013-04-23 08:22:01.455711+01	\N	0	\N	\N	\N	\N
<p>@Sayanna - Something new.</p>		5	visible	@Sayanna - Something new.	f	2013-04-23 08:26:36.645+01	10.131.83.242	10590	9	2013-04-23 08:26:36.645+01	10532	1	Sayanna	2013-01-11 12:33:47.589+00	10532	7
<p>@<i>Negligible</i> - And another!</p>		5	visible	@<i>Negligible</i> - And another!	f	2013-04-23 08:27:59.635+01	10.131.83.242	10591	9	2013-04-23 08:27:59.635+01	10590	0	Negligible	2013-04-23 08:26:36.645+01	10532	9
<p>I'm premod, herp derp.</p>		5	pending-user	I'm premod, herp derp.	f	2013-04-29 14:05:12.555+01	10.131.83.149	10592	9	2013-04-29 14:05:12.555+01	\N	0	\N	\N	\N	\N
<p>PREMOD COMMENT</p>		5	pending-user	PREMOD COMMENT	f	2013-04-29 14:07:23.088+01	10.131.83.149	10593	9	2013-04-29 14:07:23.088+01	\N	0	\N	\N	\N	\N
<p>New comment.</p>		5	visible	New comment.	f	2013-05-01 09:50:28.4+01	10.131.83.115	10594	9	2013-05-01 09:50:28.4+01	\N	0	\N	\N	\N	\N
<p>New post</p>		5	visible	New post	f	2013-05-02 11:20:08.284+01	10.131.82.37	10595	9	2013-05-02 11:20:08.284+01	\N	0	\N	\N	\N	\N
<p>sdsd</p>		5	visible	sdsd	f	2013-05-02 11:31:57.362+01	10.131.82.37	10596	9	2013-05-02 11:31:57.362+01	\N	0	\N	\N	\N	\N
<p>Premod!</p>		18	visible	Premod!	f	2012-10-09 08:39:50.43+01	10.131.81.147	10428	15	2013-05-13 11:51:56.868739+01	\N	0	\N	\N	\N	\N
<p>@bacondude - I'm being premodded :(</p>		18	visible	@bacondude - I'm being premodded :(	f	2012-10-09 08:34:12.018+01	10.131.81.147	10426	15	2013-05-13 11:52:22.638753+01	10425	0	bacondude	2012-10-08 11:28:05.622+01	10302	\N
<p>@Sayanna - New comment!</p>		5	visible	@Sayanna - New comment!	f	2013-05-17 10:41:40.752+01	10.131.82.114	10598	9	2013-05-17 10:41:40.752+01	10509	0	Sayanna	2013-01-10 11:47:14.574+00	10509	7
<p>@Sayanna - sdasdasdsd</p>		5	visible	@Sayanna - sdasdasdsd	f	2013-05-17 09:57:06.886+01	10.131.82.114	10597	9	2013-05-17 09:57:06.886+01	10514	1	Sayanna	2013-01-10 15:26:26.099+00	10509	7
<p>@Sayanna - Hi there.</p>		5	visible	@Sayanna - Hi there.	f	2013-05-20 09:39:08.765+01	10.131.82.166	10601	9	2013-05-20 09:39:08.765+01	10513	0	Sayanna	2013-01-10 15:25:07.767+00	10509	7
<p>@Negligible - Hi there.</p>		5	visible	@Negligible - Hi there.	f	2013-05-17 11:06:20.093+01	10.131.82.114	10599	9	2013-05-17 11:06:20.093+01	10597	1	Negligible	2013-05-17 09:57:06.886+01	10509	9
<p>@Negligible - Oh hi.</p>		5	visible	@Negligible - Oh hi.	f	2013-05-20 09:54:13.628+01	10.131.82.166	10602	9	2013-05-20 09:54:13.628+01	10599	1	Negligible	2013-05-17 11:06:20.093+01	10509	9
<p>@Negligible - Sup?</p>		5	visible	@Negligible - Sup?	f	2013-05-20 09:54:32.286+01	10.131.82.166	10603	9	2013-05-20 09:54:32.286+01	10602	0	Negligible	2013-05-20 09:54:13.628+01	10509	9
<p>@bacondude - Sup.</p>		5	visible	@bacondude - Sup.	f	2013-05-17 15:48:52.076+01	10.131.82.114	10600	9	2013-05-17 15:48:52.076+01	10457	1	bacondude	2012-12-05 11:57:20.112+00	10454	15
<p>@Negligible - Hi there.</p>		5	visible	@Negligible - Hi there.	f	2013-05-20 11:31:56.274+01	10.131.82.166	10604	9	2013-05-20 11:31:56.274+01	10600	0	Negligible	2013-05-17 15:48:52.076+01	10454	9
<p>@bacondude - WOOP</p>		5	visible	@bacondude - WOOP	f	2013-05-21 11:17:34.07+01	10.131.83.220	10605	9	2013-05-21 11:17:34.07+01	10458	0	bacondude	2012-12-05 12:22:03.613+00	10458	15
<p>@Sayanna - dasdasd</p>		5	visible	@Sayanna - dasdasd	f	2013-05-21 11:55:49.458+01	10.131.83.220	10606	9	2013-05-21 11:55:49.458+01	10541	1	Sayanna	2013-01-11 13:25:42.797+00	10539	7
<p>@Negligible - asdasdsd</p>		5	visible	@Negligible - asdasdsd	f	2013-05-21 11:55:53.975+01	10.131.83.220	10607	9	2013-05-21 11:55:53.975+01	10606	1	Negligible	2013-05-21 11:55:49.458+01	10539	9
<p>@Negligible - asdasds</p>		5	visible	@Negligible - asdasds	f	2013-05-21 11:56:07.783+01	10.131.83.220	10608	9	2013-05-21 11:56:07.783+01	10607	0	Negligible	2013-05-21 11:55:53.975+01	10539	9
\.


--
-- Data for Name: comments_commenthighlight; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY comments_commenthighlight (id, comment_id, highlighted_by_id, created_on, comment_posted_by_id) FROM stdin;
54	10299	7	2012-06-14 12:13:10.54054+01	9
115	10357	15	2012-10-03 14:10:27.731+01	13
117	10320	15	2012-10-05 14:42:48.991+01	13
61	10355	12	2012-09-26 13:00:22.1+01	13
123	10362	15	2012-10-05 15:04:16.474+01	13
124	10302	15	2012-10-05 15:04:17.385+01	12
125	10321	15	2012-10-05 15:11:14.36+01	13
67	10348	12	2012-09-26 15:01:32.328+01	13
68	10314	12	2012-09-28 13:11:03.901+01	13
128	10361	15	2012-10-11 12:20:24.365+01	13
131	10367	15	2012-10-11 12:22:19.774+01	13
132	10368	15	2012-10-11 12:23:05.618+01	13
138	10312	15	2012-10-15 09:30:49.709+01	13
140	10347	15	2012-10-15 10:21:33.191+01	13
143	10480	7	2012-12-18 15:03:04.698+00	15
144	10472	7	2012-12-18 15:30:14.202+00	15
151	10459	7	2012-12-31 15:41:39.979+00	15
104	10358	12	2012-10-01 12:04:54.754+01	13
106	10381	12	2012-10-01 12:26:34.091+01	13
108	10383	12	2012-10-01 12:33:41.632+01	13
163	10455	7	2013-02-06 09:51:29.597+00	15
164	10456	7	2013-02-06 09:53:58.548+00	15
165	10457	7	2013-02-06 09:54:29.558+00	15
166	10482	7	2013-02-06 09:55:01.225+00	9
167	10523	7	2013-02-06 09:55:43.292+00	9
168	10458	7	2013-02-06 09:56:25.167+00	15
171	10528	9	2013-04-15 15:35:30.679+01	7
172	10454	9	2013-04-19 12:41:20.785+01	15
\.


--
-- Data for Name: comments_commentrecommendations; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY comments_commentrecommendations (comment_id, dn_anonymous_recommendation_count, dn_registered_recommendation_count, id, initial_index) FROM stdin;
10297	0	0	10297	\N
10348	0	1	10348	\N
10423	0	0	10423	\N
10424	0	0	10424	\N
10298	1	1	10298	\N
10425	0	0	10425	\N
10296	2	1	10296	\N
10332	0	0	10332	\N
10333	0	0	10333	\N
10350	0	0	10350	\N
10358	0	0	10358	\N
10363	0	0	10363	\N
10364	0	0	10364	\N
10366	0	0	10366	\N
10373	0	0	10373	\N
10374	0	0	10374	\N
10376	0	0	10376	\N
10377	0	0	10377	\N
10378	0	0	10378	\N
10379	0	0	10379	\N
10384	0	0	10384	\N
10385	0	0	10385	\N
10386	0	0	10386	\N
10387	0	0	10387	\N
10388	0	0	10388	\N
10389	0	0	10389	\N
10390	0	0	10390	\N
10391	0	0	10391	\N
10392	0	0	10392	\N
10396	0	0	10396	\N
10397	0	0	10397	\N
10403	0	0	10403	\N
10381	0	1	10381	\N
10383	0	1	10383	\N
10380	0	1	10380	\N
10346	0	1	10346	\N
10360	0	1	10360	\N
10426	0	0	10426	\N
10427	0	0	10427	\N
10428	0	0	10428	\N
10429	0	0	10429	\N
10393	0	1	10393	\N
10430	0	0	10430	\N
10394	0	1	10394	\N
10395	0	1	10395	\N
10320	0	1	10320	\N
10404	0	0	10404	\N
10405	0	0	10405	\N
10375	0	1	10375	\N
10407	0	0	10407	\N
10408	0	0	10408	\N
10409	0	0	10409	\N
10410	0	0	10410	\N
10411	0	0	10411	\N
10412	0	0	10412	\N
10359	0	2	10359	\N
10413	0	0	10413	\N
10406	0	1	10406	\N
10402	0	2	10402	\N
10401	0	1	10401	\N
10398	0	1	10398	\N
10399	0	1	10399	\N
10400	0	1	10400	\N
10414	0	0	10414	\N
10415	0	0	10415	\N
10299	0	4	10299	\N
10302	0	1	10302	\N
10343	0	1	10343	\N
10462	3	1	10462	\N
10305	0	2	10305	\N
10470	0	1	10470	\N
10416	0	0	10416	\N
10417	0	0	10417	\N
10418	0	0	10418	\N
10323	0	1	10323	\N
10419	0	0	10419	\N
10420	0	0	10420	\N
10321	0	1	10321	\N
10349	0	1	10349	\N
10362	0	1	10362	\N
10421	0	0	10421	\N
10422	0	0	10422	\N
10314	0	2	10314	\N
10353	0	1	10353	\N
10431	0	0	10431	\N
10371	0	2	10371	\N
10369	0	1	10369	\N
10310	0	1	10310	\N
10433	0	0	10433	\N
10434	0	0	10434	\N
10435	0	0	10435	\N
10436	0	0	10436	\N
10437	0	0	10437	\N
10438	0	0	10438	\N
10439	0	0	10439	\N
10322	0	1	10322	\N
10315	0	2	10315	\N
10318	0	2	10318	\N
10307	0	2	10307	\N
10319	0	1	10319	\N
10324	0	1	10324	\N
10325	0	1	10325	\N
10327	0	1	10327	\N
10328	0	1	10328	\N
10331	0	1	10331	\N
10330	0	1	10330	\N
10340	0	1	10340	\N
10339	0	1	10339	\N
10338	0	1	10338	\N
10341	0	1	10341	\N
10342	0	1	10342	\N
10344	0	1	10344	\N
10312	0	1	10312	\N
10334	0	1	10334	\N
10352	0	1	10352	\N
10372	0	1	10372	\N
10365	0	1	10365	\N
10354	0	1	10354	\N
10356	0	1	10356	\N
10357	0	1	10357	\N
10337	0	1	10337	\N
10336	0	1	10336	\N
10335	0	1	10335	\N
10329	0	1	10329	\N
10326	0	1	10326	\N
10316	0	2	10316	\N
10313	0	1	10313	\N
10308	0	1	10308	\N
10351	0	1	10351	\N
10361	0	1	10361	\N
10367	0	1	10367	\N
10382	0	1	10382	\N
10459	0	2	10459	\N
10311	0	1	10311	\N
10355	0	1	10355	\N
10317	0	2	10317	\N
10347	0	1	10347	\N
10440	0	0	10440	\N
10441	0	0	10441	\N
10443	0	0	10443	\N
10444	0	0	10444	\N
10445	0	0	10445	\N
10368	0	1	10368	\N
10370	0	1	10370	\N
10442	0	1	10442	\N
10446	0	0	10446	\N
10447	0	0	10447	\N
10432	0	1	10432	\N
10448	0	0	10448	\N
10449	0	0	10449	\N
10450	0	0	10450	\N
10451	0	0	10451	\N
10452	0	0	10452	\N
10453	0	0	10453	\N
10467	1	0	10467	\N
10464	3	2	10464	\N
10457	2	2	10457	\N
10465	0	0	10465	\N
10456	7	2	10456	\N
10300	0	1	10300	\N
10460	3	2	10460	\N
10466	0	0	10466	\N
10468	0	0	10468	\N
10301	0	1	10301	\N
10471	0	0	10471	\N
10463	0	1	10463	\N
10306	0	1	10306	\N
10472	0	0	10472	\N
10458	2	2	10458	\N
10304	0	1	10304	\N
10303	0	2	10303	\N
10455	6	1	10455	\N
10345	0	2	10345	\N
10309	0	2	10309	\N
10469	1	1	10469	\N
10473	0	0	10473	\N
10474	0	0	10474	\N
10475	0	0	10475	\N
10476	0	0	10476	\N
10600	0	0	10600	\N
10601	0	0	10601	\N
10602	0	0	10602	\N
10478	0	0	10478	\N
10479	0	0	10479	\N
10480	0	0	10480	\N
10481	0	0	10481	\N
10484	0	0	10484	\N
10483	0	1	10483	\N
10482	0	1	10482	\N
10485	0	0	10485	\N
10486	0	0	10486	\N
10487	0	0	10487	\N
10489	0	0	10489	\N
10490	0	0	10490	\N
10491	0	0	10491	\N
10492	0	0	10492	\N
10493	0	0	10493	\N
10495	0	0	10495	\N
10496	0	0	10496	\N
10497	0	0	10497	\N
10498	0	0	10498	\N
10499	0	0	10499	\N
10500	0	0	10500	\N
10501	0	0	10501	\N
10502	0	0	10502	\N
10503	0	0	10503	\N
10504	0	0	10504	\N
10505	0	0	10505	\N
10506	0	0	10506	\N
10507	0	0	10507	\N
10508	0	0	10508	\N
10510	0	0	10510	\N
10511	0	0	10511	\N
10512	0	0	10512	\N
10513	0	0	10513	\N
10514	0	0	10514	\N
10515	0	0	10515	\N
10516	0	0	10516	\N
10517	0	0	10517	\N
10518	0	0	10518	\N
10519	0	0	10519	\N
10521	0	0	10521	\N
10522	0	0	10522	\N
10477	0	1	10477	\N
10526	0	0	10526	\N
10527	0	0	10527	\N
10528	0	0	10528	\N
10529	0	0	10529	\N
10530	0	0	10530	\N
10531	0	0	10531	\N
10541	0	0	10541	\N
10542	0	0	10542	\N
10543	0	0	10543	\N
10544	0	0	10544	\N
10545	0	0	10545	\N
10546	0	0	10546	\N
10547	0	0	10547	\N
10548	0	0	10548	\N
10524	0	1	10524	\N
10550	0	0	10550	\N
10551	0	0	10551	\N
10603	0	0	10603	\N
10552	0	0	10552	\N
10553	0	0	10553	\N
10554	0	0	10554	\N
10555	0	0	10555	\N
10557	0	0	10557	\N
10558	0	0	10558	\N
10559	0	0	10559	\N
10560	0	0	10560	\N
10561	0	0	10561	\N
10604	0	0	10604	\N
10605	0	0	10605	\N
10606	0	0	10606	\N
10525	0	1	10525	\N
10549	0	1	10549	\N
10607	0	0	10607	\N
10608	0	0	10608	\N
10454	17	2	10454	\N
10532	2	0	10532	\N
10533	2	0	10533	\N
10534	2	0	10534	\N
10535	2	0	10535	\N
10536	3	0	10536	\N
10537	2	0	10537	\N
10538	1	0	10538	\N
10539	1	0	10539	\N
10540	1	0	10540	\N
10556	1	0	10556	\N
10523	2	0	10523	\N
10488	0	1	10488	\N
10494	0	1	10494	\N
10461	0	2	10461	\N
10562	0	0	10562	\N
10563	0	0	10563	\N
10564	0	0	10564	\N
10565	0	0	10565	\N
10566	0	0	10566	\N
10567	0	0	10567	\N
10568	0	0	10568	\N
10569	0	0	10569	\N
10570	0	0	10570	\N
10571	0	0	10571	\N
10572	0	0	10572	\N
10573	0	0	10573	\N
10574	0	0	10574	\N
10575	0	0	10575	\N
10576	0	0	10576	\N
10577	0	0	10577	\N
10578	0	0	10578	\N
10579	0	0	10579	\N
10580	0	0	10580	\N
10581	0	0	10581	\N
10582	0	0	10582	\N
10583	0	0	10583	\N
10584	0	0	10584	\N
10585	0	0	10585	\N
10586	0	0	10586	\N
10509	0	1	10509	\N
10520	0	1	10520	\N
10587	0	0	10587	\N
10588	0	0	10588	\N
10589	0	0	10589	\N
10590	0	0	10590	\N
10591	0	0	10591	\N
10592	0	0	10592	\N
10593	0	0	10593	\N
10594	0	0	10594	\N
10595	0	0	10595	\N
10596	0	0	10596	\N
10597	0	0	10597	\N
10598	0	0	10598	\N
10599	0	0	10599	\N
\.


--
-- Data for Name: comments_discussion; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY comments_discussion (primary_tag_id, closed_after, url, premoderated, title, namespace_id, created_on, dn_total_comment_count, key, id, dn_invisible_comment_count, anon_user_rating_count, anon_user_rating_total, dn_reg_user_rating_count, dn_reg_user_rating_total, creating_comment_id, last_updated, latest_visible_comment_id, display_threaded, dn_top_level_comment_count, status, watched) FROM stdin;
\N	\N		f		2	2011-12-05 15:57:28.449276+00	0	film:86435	11	0	0	0	2	9	\N	2011-12-05 15:57:28.449368+00	\N	\N	\N	\N	\N
16	2012-09-17 00:00:00+01	http://gnm41149.int.gnl/www.guardian.co.uk/travel/2010/sep/14/souks-middle-east-readers-tips	f	Readers' tips to souks	1	2010-09-14 00:00:00+01	0	/p/2jk3x	3	0	0	0	0	0	\N	2011-11-22 14:02:27.756429+00	\N	\N	\N	\N	\N
79	2013-09-17 00:00:00+01	http://gnm41149.int.gnl/www.guardian.co.uk/society/2010/sep/14/sex-trafficking-gang-young-virgins	f	Sex trafficking gang offered to sell young virgins to wealthy Arabs	1	2010-09-14 00:00:00+01	3	/p/2jy3x	20	0	0	0	0	0	\N	2013-01-10 15:43:48.66+00	10522	f	1	\N	\N
24	2015-01-01 00:00:00+00	http://gnm41149.int.gnl/www.guardian.co.uk/lifeandstyle/2010/sep/04/alcohol-antibiotics-milk-prostate-cancer	f	Doctor, doctor: Alcohol and antibiotics, milk and prostate cancer	1	2010-09-04 00:00:00+01	0	/p/2j275	4	0	0	0	0	0	\N	2011-11-22 14:17:44.372541+00	\N	\N	\N	\N	\N
10	2018-10-17 00:00:00+01	http://gnm41149.int.gnl/www.guardian.co.uk/commentisfree/poll/2010/sep/14/davidmiliband-labourleadership	f	Time to make a stand on cuts?	1	2010-09-14 00:00:00+01	0	/p/2jkd4	2	0	0	0	0	0	\N	2011-11-21 09:32:49.889221+00	\N	\N	\N	\N	\N
43	2018-09-17 00:00:00+01	http://gnm41149.int.gnl/careers.guardian.co.uk/careers-blog/guardian-careers-launches-campaign-to-employ-kyle	f	Guardian Careers launches campaign to employ Kyle	1	2010-09-10 00:00:00+01	0	/p/2jtb2	8	0	0	0	0	0	\N	2011-12-02 15:52:01.120567+00	\N	\N	\N	\N	\N
47	2018-10-01 00:00:00+01	http://gnm41149.int.gnl/www.guardian.co.uk/film/2010/sep/09/tamara-drewe-review	f	Tamara Drewe	1	2010-09-09 00:00:00+01	0	/p/2jgy6	10	0	0	0	0	0	\N	2011-12-05 15:29:47.010973+00	\N	\N	\N	\N	\N
2	2013-09-18 00:00:00+01	http://gnm41149.int.gnl/www.guardian.co.uk/world/2010/sep/15/paedophile-priests-active-church-role	f	Paedophile priests still play active church role	1	2010-09-15 00:00:00+01	12	/p/2jy4y	19	0	0	0	0	0	\N	2013-01-15 12:07:57.389+00	10554	t	7	\N	\N
11	2018-09-18 00:00:00+01	http://gnm41149.int.gnl/www.guardian.co.uk/politics/2010/sep/15/defence-cuts-operations-risk-mps	f	Defence cuts could put operations at risk, MPs warn	1	2010-09-15 00:00:00+01	0	/p/2jy22	15	0	0	0	0	0	\N	2012-04-02 15:56:42.083192+01	\N	t	\N	\N	\N
32	2018-01-01 00:00:00+00	http://gnm41149.int.gnl/www.guardian.co.uk/media/2010/sep/14/sienna-miller-phone-hacking-scandal-legal-action	f	Phone-hacking scandal: Sienna Miller set to join legal action	1	2010-09-14 00:00:00+01	140	/p/2jkmx	5	5	0	0	0	0	\N	2013-06-10 10:33:29.636889+01	10608	t	94	\N	\N
2	2012-11-18 00:00:00+00	http://gnm41149.int.gnl/www.guardian.co.uk/world/2010/sep/15/christine-odonnell-delaware-midterms	f	Christine O'Donnell brings unlikely Tea Party triumph to Delaware	1	2010-09-15 00:00:00+01	158	/p/2jy5h	18	0	0	0	0	0	\N	2013-05-13 11:58:19.462891+01	10453	\N	111	\N	\N
\.


--
-- Data for Name: comments_discussion_tags; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY comments_discussion_tags (id, discussion_id, tag_id) FROM stdin;
9	2	9
10	2	10
11	2	11
12	2	12
13	2	13
143	18	1
144	18	2
145	18	3
146	18	4
147	18	5
148	18	6
149	18	7
150	18	8
22	3	14
23	3	15
24	3	16
25	3	17
26	3	18
27	3	19
28	3	20
29	3	21
30	4	22
31	4	23
32	4	24
33	4	25
151	19	73
152	19	74
153	19	27
154	19	2
155	19	75
156	19	76
43	5	26
44	5	27
45	5	28
46	5	29
47	5	30
48	5	31
49	5	32
50	5	33
51	5	34
162	20	77
163	20	27
164	20	78
165	20	79
166	20	80
59	8	38
60	8	39
61	8	40
62	8	41
63	8	42
64	8	43
66	10	44
67	10	45
68	10	46
69	10	47
70	10	48
71	10	49
98	15	70
99	15	11
100	15	27
101	15	71
102	15	72
\.


--
-- Data for Name: comments_namespace; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY comments_namespace (description, id, name, site_id) FROM stdin;
main guardian website comments	1	guardian.co.uk	1
user submitted film reviews on guardian.co.uk	2	user-film-review	1
football chalkboards on guardian.co.uk	3	chalkboard	1
forums on guardian.co.uk	4	forums	1
user submitted book reviews	5	user-book-review	1
\.


--
-- Data for Name: comments_rating; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY comments_rating (id, discussion_id, rated_by_id, last_updated, rating) FROM stdin;
\.


--
-- Data for Name: comments_tag; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY comments_tag (path, default_days_until_close, namespace_id, id, name, last_updated, forum_allowed) FROM stdin;
http://gnm41149.int.gnl/www.guardian.co.uk/world/delaware	\N	1	1	Delaware	2011-11-18 11:43:12.697887+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world	\N	1	2	World news	2011-11-18 11:43:12.729186+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/republicans	\N	1	3	Republicans	2011-11-18 11:43:12.73488+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/usa	\N	1	4	United States	2011-11-18 11:43:12.740385+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/ewenmacaskill	\N	1	5	Ewen MacAskill	2011-11-18 11:43:12.746019+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/richardadams	\N	1	6	Richard Adams	2011-11-18 11:43:12.751496+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/us-politics	\N	1	7	US politics	2011-11-18 11:43:12.757572+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/tea-party-movement	\N	1	8	Tea Party movement	2011-11-18 11:43:12.763046+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/politics/labourleadership	\N	1	9	Labour party leadership	2011-11-21 09:32:49.894463+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/politics	\N	1	11	Politics	2011-11-21 09:32:49.921085+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/politics/davidmiliband	\N	1	12	David Miliband	2011-11-21 09:32:49.926667+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/politics/tuc	\N	1	13	TUC	2011-11-21 09:32:49.931946+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/guardian-readers	\N	1	14	Guardian readers	2011-11-22 13:59:48.39584+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/travel/shopping-trips	\N	1	15	Shopping trips	2011-11-22 13:59:48.401781+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/travel	\N	1	16	Travel	2011-11-22 13:59:48.407325+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/travel/egypt	\N	1	17	Egypt	2011-11-22 13:59:48.412803+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/travel/africa	\N	1	18	Africa	2011-11-22 13:59:48.418338+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/travel/middleeast	\N	1	19	Middle East	2011-11-22 13:59:48.423834+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/travel/syria	\N	1	20	Syria	2011-11-22 13:59:48.429841+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/travel/morocco	\N	1	21	Morocco	2011-11-22 13:59:48.435395+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/lifeandstyle/health-and-wellbeing	\N	1	22	Health & wellbeing	2011-11-22 14:17:44.374537+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/lifeandstyle/series/doctordoctor	\N	1	23	Doctor, doctor	2011-11-22 14:17:44.377209+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/lifeandstyle	\N	1	24	Life and style	2011-11-22 14:17:44.379554+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/drtomsmith	\N	1	25	Dr Tom Smith	2011-11-22 14:17:44.381912+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media/newspapers	\N	1	26	Newspapers	2011-11-24 09:07:26.070996+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/uk	\N	1	27	UK news	2011-11-24 09:07:26.102285+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media/news-of-the-world-phone-hacking	\N	1	28	News of the World phone-hacking scandal	2011-11-24 09:07:26.107896+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/nickdavies	\N	1	29	Nick Davies	2011-11-24 09:07:26.11341+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/uk/police	\N	1	30	Police	2011-11-24 09:07:26.118945+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media/pressandpublishing	\N	1	31	Newspapers & magazines	2011-11-24 09:07:26.124456+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media	\N	1	32	Media	2011-11-24 09:07:26.129942+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media/newsoftheworld	\N	1	33	News of the World	2011-11-24 09:07:26.135484+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media/national-newspapers	\N	1	34	National newspapers	2011-11-24 09:07:26.140949+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/crosswords/series/quick	\N	1	35	Quick	2011-11-30 16:07:46.36013+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/crosswords	\N	1	36	Crosswords	2011-11-30 16:07:46.402945+00	f
http://gnm41149.int.gnl/browse.guardian.co.uk/search?search=Global	\N	1	37	Global	2011-12-02 11:34:31.249512+00	f
http://gnm41149.int.gnl/careers.guardian.co.uk/graduate-jobs	\N	1	39	Graduate	2011-12-02 15:52:01.131452+00	f
http://gnm41149.int.gnl/careers.guardian.co.uk/application-form	\N	1	40	Applications	2011-12-02 15:52:01.137152+00	f
http://gnm41149.int.gnl/careers.guardian.co.uk/sectors-industry-roles	\N	1	41	All sectors	2011-12-02 15:52:01.142798+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/harriet-minter	\N	1	42	Harriet Minter	2011-12-02 15:52:01.148388+00	f
http://gnm41149.int.gnl/careers.guardian.co.uk	\N	1	43	Guardian careers	2011-12-02 15:52:01.153921+00	f
http://gnm41149.int.gnl/careers.guardian.co.uk/careers-blog	\N	1	38	The Careers Blog	2011-12-02 15:55:55.234222+00	t
http://gnm41149.int.gnl/www.guardian.co.uk/commentisfree	\N	1	10	Comment is free	2011-12-02 16:04:40.617212+00	t
http://gnm41149.int.gnl/www.guardian.co.uk/profile/peterbradshaw	\N	1	44	Peter Bradshaw	2011-12-05 15:29:47.060651+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/film/stephen-frears	\N	1	45	Stephen Frears	2011-12-05 15:29:47.103706+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/posy-simmonds	\N	1	46	Posy Simmonds	2011-12-05 15:29:47.109222+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/film	\N	1	47	Film	2011-12-05 15:29:47.114677+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/film/comedy	\N	1	48	Comedy	2011-12-05 15:29:47.120054+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/culture	\N	1	49	Culture	2011-12-05 15:29:47.125482+00	f
http://www.guardian.co.uk/tone/user-review	\N	1	50	User Review	2011-12-05 15:57:28.445654+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/rorycarroll	\N	1	51	Rory Carroll	2012-01-13 11:20:23.614127+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/business	\N	1	52	Business	2012-01-13 11:20:23.650179+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/communism	\N	1	53	Communism	2012-01-13 11:20:23.656012+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/fidel-castro	\N	1	54	Fidel Castro	2012-01-13 11:20:23.665841+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/cuba	\N	1	55	Cuba	2012-01-13 11:20:23.671377+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/football/championsleague	\N	1	56	Champions League	2012-02-06 11:04:50.148265+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/football	\N	1	57	Football	2012-02-06 11:04:50.189651+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/football/rangers	\N	1	58	Rangers	2012-02-06 11:04:50.194972+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/sport	\N	1	59	Sport	2012-02-06 11:04:50.200584+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/kevinmccarra	\N	1	60	Kevin McCarra	2012-02-06 11:04:50.206231+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/football/manchester-united	\N	1	61	Manchester United	2012-02-06 11:04:50.211816+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/charlesarthur	\N	1	62	Charles Arthur	2012-03-14 12:28:59.82618+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/technology	\N	1	63	Technology	2012-03-14 12:28:59.874242+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/technology/blog	\N	1	64	Technology blog	2012-03-14 12:28:59.879801+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media/social-media	\N	1	65	Social media	2012-03-14 12:28:59.886303+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media/digital-media	\N	1	66	Digital media	2012-03-14 12:28:59.892547+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/technology/twitter	\N	1	67	Twitter	2012-03-14 12:28:59.900621+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/technology/internet	\N	1	68	Internet	2012-03-14 12:28:59.908377+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/media/socialnetworking	\N	1	69	Social networking	2012-03-14 12:28:59.911559+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/uk/trident	\N	1	70	Trident	2012-04-02 15:54:57.01082+01	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/richardnortontaylor	\N	1	71	Richard Norton-Taylor	2012-04-02 15:54:57.060979+01	f
http://gnm41149.int.gnl/www.guardian.co.uk/politics/defence	\N	1	72	Defence policy	2012-04-02 15:54:57.066768+01	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/riazatbutt	\N	1	73	Riazat Butt	2012-12-12 12:46:10.258776+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/catholicism	\N	1	74	Catholicism	2012-12-12 12:46:10.316397+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/religion	\N	1	75	Religion	2012-12-12 12:46:10.330238+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/world/christianity	\N	1	76	Christianity	2012-12-12 12:46:10.335938+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/society/prostitution	\N	1	77	Prostitution	2013-01-10 13:56:53.984081+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/profile/helenpidd	\N	1	78	Helen Pidd	2013-01-10 13:56:54.054339+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/society	\N	1	79	Society	2013-01-10 13:56:54.059871+00	f
http://gnm41149.int.gnl/www.guardian.co.uk/uk/ukcrime	\N	1	80	Crime	2013-01-10 13:56:54.065444+00	f
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	message	auth	message
5	content type	contenttypes	contenttype
6	session	sessions	session
7	site	sites	site
8	log entry	admin	logentry
9	migration history	south	migrationhistory
10	log	jogging	log
11	avatar	avatars	avatar
12	badge	profiles	badge
13	profile	profiles	profile
14	namespace	comments	namespace
15	tag	comments	tag
16	discussion	comments	discussion
17	rating	comments	rating
18	comment	comments	comment
19	comment recommendations	comments	commentrecommendations
20	application permissions	moderation	applicationpermissions
21	abuse category	moderation	abusecategory
22	abuse report	moderation	abusereport
23	moderator profile	moderation	moderatorprofile
24	sanction	moderation	sanction
25	action	moderation	action
26	recommendation	recommendations	recommendation
27	bad word	antispam	badword
28	pluck imported comment	importer	pluckimportedcomment
29	pluck imported review	importer	pluckimportedreview
30	pluck imported recommendation	importer	pluckimportedrecommendation
31	pluck imported rating	importer	pluckimportedrating
32	switch	switchboard	switch
33	state	switchboard	state
34	ips blocked from reporting abuse	moderation	ipsblockedfromreportingabuse
35	ip address notes	moderation	ipaddressnotes
36	comment highlight	comments	commenthighlight
37	moderation queue	moderation	moderationqueue
38	moderation request	moderation	moderationrequest
39	moderation queue	moderation_queues	moderationqueue
40	moderation request	moderation_queues	moderationrequest
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
023a5f75adafd60872f5e756c77b930d	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2011-11-29 14:49:02.193462+00
9fe0c56cc53e5bf4adbfaa849f59838c	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2011-12-02 11:18:01.359042+00
c29ef86a27af4d4973628e74c29f4e58	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2011-12-16 15:15:36.102554+00
b7540af3ba3434fa3872f3d320881fb1	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-02-13 16:20:52.24652+00
d2a89fd1c5b5b126800400572e3336de	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2011-12-30 16:32:15.903759+00
6161986efd59c17fbc55e89f6f92f864	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-01-12 16:22:31.332552+00
e13b074fca9f4b6bbb698c5f46824145	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-01-12 16:44:08.091768+00
c9652824789a2d1b33aa1b3b594ec0e6	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-01-12 16:57:11.266158+00
b26e98cca7d46160afba7564c55a3f6a	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-01-12 16:58:59.175225+00
334204f32c6e54aba5cd21d3765282dd	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-01-12 17:00:48.948333+00
f90be49d78aff9f58c318ad90a570e65	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-01-13 16:34:40.599523+00
526db4803a2ab32d594ef40863110297	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-01-24 16:40:51.778531+00
2269e7dd68660d8dbc68960c13a528d9	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-01-30 14:36:08.255355+00
73ec59e958c10655b8d3517e372c9fbd	gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjNiMGI5MjU2ZTczYTM4NTY1MDhmODliNjMy\nMGE3MjUw\n	2012-02-08 11:54:02.58312+00
7c37b2130d7ecacab8a94af6c3b4a9a9	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-02-14 15:14:01.609601+00
d4b31f2a661dacbf44b292d2405feb90	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-03-23 14:55:38.230845+00
241af4597387767d96d6ee255dae0fba	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-03-28 12:28:12.193414+01
61053f40634c2d19aba06eadd3486245	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-03-29 18:56:17.776758+01
3dcc6bd44bbef347fdd51f74da071c58	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-04-16 15:51:28.581023+01
4b1543c41795c7c265c614bba1af47fb	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-05-28 12:42:07.247347+01
96e0dce8df676fff195db57d9e872c76	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-06-27 18:21:30.352877+01
dd747089253f662225b5590d891a656a	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-08-01 15:57:26.320866+01
47febdca28f0602fc0ce07c5b2d16af2	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-08-28 15:13:28.586214+01
8ce6a1322aefae5b16b2fc3cb632a595	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-09-18 12:29:16.408865+01
fc5d9f702e6aaf5cc84f00c68addf557	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-10-03 11:29:09.912954+01
7d570c75ef25ab424258279aceded329	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-10-10 12:04:04.69487+01
6e9493b758213e089fd8856b0308877b	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-10-15 11:09:06.050786+01
c0fd12729a7240616088959c8c549a0b	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-10-25 14:53:18.150355+01
c4d2db9333fd62e87b9883d4e9c0018d	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2012-12-31 11:44:07.206404+00
18b1a38fa3ad4ed6cfe6994b68a1b63e	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-01-14 14:32:35.789414+00
bd5bfc36ee85b70937248f99e1709168	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-01-31 09:25:14.779787+00
d9c7d1d44a55cf16c3b2b9b93765e453	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-02-21 11:13:14.784051+00
ebc4a6007edd71fce0f8c2a8bbe10197	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-06-13 11:24:53.015338+01
e9b44761710008a18e48a3dcb8afee7c	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-02-26 15:51:13.415932+00
1202b391e79e4909f2ab6ced543c4268	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-02-27 12:07:45.34366+00
64d544d80818bf01c62b40b2d361d338	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-06-13 14:35:44.470669+01
4bb36b70cfe9a0dfd4ff83ad5affee80	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-02-27 15:54:25.573385+00
02e07f630a1b006ebdf030be38185fb6	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-02-27 16:07:55.835189+00
bb316970240cdc10a8f07f43803b5e3a	gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjNiMGI5MjU2ZTczYTM4NTY1MDhmODliNjMy\nMGE3MjUw\n	2013-02-27 16:27:10.332708+00
de457d927d3b99ece642ca5f43a68ed6	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-04-19 15:24:47.718381+01
99aedb2fca57c43e3bfbcb312bd0674e	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-06-14 10:30:24.240138+01
5df02797c487fd26a94949febfe3f4df	gAJ9cQFVCnRlc3Rjb29raWVVBndvcmtlZHECcy5jN2YwNDZhZDZmMTJjMzI5NDUxMWIwNjNmMjc1\nODFhZA==\n	2013-02-27 16:28:43.910064+00
275d4467560227d8744f718bbda98c87	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-03-13 08:25:52.310554+00
dbf0f12f3518182979d07a5ff2215556	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-03-28 12:13:16.666271+00
81ff82bd4b2ec410c44a444e1732d6f6	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-04-03 12:55:10.075705+01
694637809303518c244ec7c4e766172c	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-04-11 14:54:15.05912+01
1cd6403b7bf25c96585bfd968b6779b2	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-04-18 11:24:02.621876+01
01a9339f87a76c73201e2c125bea16d1	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-04-26 13:01:26.48501+01
a24bf92ebee79aa1aab1aa06bc1daa1d	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-05-10 07:21:46.39238+01
d7def920704cf790e0e1deb52d0860d6	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-05-13 10:14:40.530959+01
6045bd0223af6da7125795a9e5767f14	gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LmE0ZjU3NjhjMzVlMDU3NzJiMDk3\nMTVlZjQ4NWJjMTU1\n	2013-05-27 11:38:36.438376+01
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY django_site (id, domain, name) FROM stdin;
1	guardian.co.uk	guardian.co.uk
\.


--
-- Data for Name: importer_pluckimportedcomment; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY importer_pluckimportedcomment (comment_id, action_id, pluck_comment_key, id, imported_on) FROM stdin;
\.


--
-- Data for Name: importer_pluckimportedrating; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY importer_pluckimportedrating (id, rating_id, pluck_rating_key, imported_on) FROM stdin;
\.


--
-- Data for Name: importer_pluckimportedrecommendation; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY importer_pluckimportedrecommendation (pluck_recommendation_key, id, imported_on, recommendation_id) FROM stdin;
\.


--
-- Data for Name: importer_pluckimportedreview; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY importer_pluckimportedreview (comment_id, pluck_review_key, id, imported_on) FROM stdin;
\.


--
-- Data for Name: jogging_log; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY jogging_log (id, datetime, level, msg, source, host) FROM stdin;
\.


--
-- Data for Name: moderation_abusecategory; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_abusecategory (description, reason_required, id, name) FROM stdin;
Personal abuse	f	1	Personal abuse
Off topic	f	2	Off topic
Legal issue	t	3	Legal issue
Trolling	f	4	Trolling
Hate speech	f	5	Hate speech
Offensive/Threatening language	f	6	Offensive/Threatening language
Copyright	f	7	Copyright
Spam	f	8	Spam
Other	t	9	Other
\.


--
-- Data for Name: moderation_abusereport; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_abusereport (category_id, comment_id, weight, reported_by_id, created_on, url, reason, accused_id, status, email_address, id, edit_url, reported_by_ip) FROM stdin;
2	10299	55	7	2012-10-11 10:38:56.443+01	\N	aasd	9	open		15	\N	\N
1	10299	5	15	2012-10-12 11:38:01.191+01	\N	WUT WUT	9	open		16	\N	\N
1	10299	5	15	2012-10-12 11:41:45.634+01	\N	dasdsd	9	open		17	\N	10.131.81.171
1	10299	5	15	2012-10-12 11:43:07.256+01	\N	BAD MAN	9	open		18	\N	10.131.81.171
1	10299	5	15	2012-10-12 11:44:57.044+01	\N	BAD MAN	9	open		19	\N	10.131.81.171
1	10321	5	15	2012-10-12 11:45:23.296+01	\N	LORDY	13	open		20	\N	\N
1	10321	5	15	2012-10-12 11:48:01.137+01	\N	ASDASDASDBAD MANadasdoasjd;lajsdkl;ajskdjaskdjaslkdj;alsdjklasjdl;kASjdlkajsdlkjaslkdjsklBAD MANadasdoasjd;lajsdkl;ajskdjaskdjaslkdj;alsdjklasjdl;kASjdlkajsdlkjaslkdjsklBAD MANadasdoasjd;lajsdkl;ajskdjaskdjaslkdj;alsdjklasjdl;kASjdlkajsdlkjaslkdjsklBAD MANadasdoasjd;lajsdkl;ajskdjaskdjaslkdj;alsdjklasjdl;kASjdlkajsdlkjaslkdjsklBAD MANadasdoasjd;lajsdkl;ajskdjaskdjaslkdj;alsdjklasjdl;kASjdlkajsdlkjaslkdjskl	13	open		21	\N	\N
1	10348	5	15	2012-10-12 11:49:36.847+01	\N	Leggings thundercats williamsburg shoreditch fingerstache, +1 polaroid bicycle rights quinoa occupy gluten-free forage bushwick. Farm-to-table stumptown sriracha keytar echo park master cleanse keffiyeh leggings, cred mumblecore retro polaroid single-origin coffee. Occupy beard mlkshk vinyl, bespoke gluten-free pitchfork bushwick messenger bag hoodie swag. Four loko sustainable ethical wolf. Shoreditch yr pickled direct trade leggings freegan. Fap keffiyeh butcher, ennui sartorial master cleanse high life photo booth wolf twee quinoa post-ironic food truck. VHS retro letterpress stumptown, cred single-origin coffee keytar gastropub fanny pack godard aesthetic.	13	open		22	\N	\N
1	10348	5	15	2012-10-12 11:50:36.201+01	\N	sadsad	13	open		23	\N	\N
2	10349	5	15	2012-10-12 11:50:50.866+01	\N	sdasdasd	13	open		24	\N	\N
1	10348	5	15	2012-10-12 11:51:53.988+01	\N	Leggings thundercats williamsburg shoreditch fingerstache, +1 polaroid bicycle rights quinoa occupy gluten-free forage bushwick. Farm-to-table stumptown sriracha keytar echo park master cleanse keffiyeh leggings, cred mumblecore retro polaroid single-origin coffee. Occupy beard mlkshk vinyl, bespoke gluten-free pitchfork bushwick messenger bag hoodie swag. Four loko sustainable ethical wolf. Shoreditch yr pickled direct trade leggings freegan. Fap keffiyeh butcher, ennui sartorial master cleanse high life photo booth wolf twee quinoa post-ironic food truck. VHS retro letterpress stumptown, cred single-origin coffee keytar gastropub fanny pack godard aesthetic.	13	open		25	\N	\N
8	10299	5	15	2012-10-12 12:03:23.545+01	\N	sadasds	9	open		26	\N	10.131.81.171
1	10299	5	15	2012-10-12 12:04:18.03+01	\N	asdasd	9	open		27	\N	10.131.81.171
8	10299	5	15	2012-10-12 12:05:35.109+01	\N	sdsad	9	open		28	\N	10.131.81.171
1	10314	5	15	2012-10-12 12:08:43.631+01	\N	SUP	13	open		29	\N	\N
5	10320	55	15	2012-10-15 12:03:09.029+01	\N		13	open		30	\N	10.131.81.144
1	10320	55	15	2012-10-15 12:16:43.804+01	\N	asd	13	open		31	\N	10.131.81.144
8	10303	2	\N	2012-12-27 18:52:48.189+00	\N		12	open		36	\N	127.0.0.1
8	10302	2	\N	2012-12-27 19:16:34.242+00	\N		12	open		37	\N	127.0.0.1
8	10302	2	\N	2012-12-27 19:48:20.238+00	\N		12	open		38	\N	127.0.0.1
4	10303	55	7	2012-12-31 09:59:01.528+00	\N		12	open		39	\N	10.131.83.203
1	10299	55	7	2012-12-31 10:41:28.372+00	\N		9	open		40	\N	10.131.83.203
1	10317	55	7	2013-01-07 17:31:30.246+00	\N		13	open		42	\N	10.131.83.118
2	10304	55	7	2013-01-02 11:45:04.728+00	\N		12	ignored		41	\N	10.131.81.122
1	10566	5	9	2013-03-28 10:31:51.627+00	\N		9	open		49	\N	10.131.83.45
1	10566	5	9	2013-03-28 10:34:21.416+00	\N		9	open		50	\N	10.131.83.45
1	10565	5	9	2013-03-28 10:40:55.531+00	\N		9	open		52	\N	10.131.83.45
1	10566	5	9	2013-03-28 10:51:54.288+00	\N		9	open		53	\N	10.131.83.45
2	10566	5	9	2013-03-28 10:53:00.937+00	\N		9	open		54	\N	10.131.83.45
1	10566	5	9	2013-03-28 11:08:18.027+00	\N		9	open		55	\N	10.131.83.45
1	10566	5	9	2013-03-28 11:09:10.028+00	\N		9	open		56	\N	10.131.83.45
2	10565	5	9	2013-03-28 11:10:04.487+00	\N		9	open		57	\N	10.131.83.45
2	10543	5	9	2013-03-28 11:12:21.149+00	\N		7	open		59	\N	10.131.83.45
1	10544	5	9	2013-03-28 11:12:33.426+00	\N		7	open		60	\N	10.131.83.45
2	10544	5	9	2013-03-28 11:15:06.764+00	\N		7	open		61	\N	10.131.83.45
1	10454	5	9	2013-02-25 10:27:30.583+00	\N		15	ignored		46	\N	12.13.14.15
1	10454	5	9	2013-02-25 10:29:49.439+00	\N		15	ignored		47	\N	12.13.14.15
1	10298	5	9	2012-07-18 16:10:52.659151+01	\N		7	actioned		13	\N	10.131.83.163
1	10299	55	7	2012-10-11 10:29:45.092+01	\N	sfd	9	open	sdf	14	\N	\N
1	10454	5	9	2013-03-28 10:05:35.822+00	\N		15	ignored		48	\N	10.131.83.45
2	10454	5	9	2013-04-03 09:35:08.596+01	\N		15	ignored		62	\N	10.131.83.63
1	10454	5	9	2013-04-03 10:08:42.8+01	\N		15	ignored		64	\N	10.131.83.63
1	10455	5	9	2013-04-03 09:49:50.016+01	\N		15	actioned		63	\N	10.131.83.63
1	10455	5	9	2013-04-03 15:25:52.241+01	\N		15	actioned		65	\N	10.131.83.146
2	10523	5	9	2013-04-03 15:33:03.61+01	\N		9	ignored		66	\N	10.131.83.146
8	10457	2	\N	2012-12-10 11:06:44.985+00	\N		15	ignored		32	\N	12.13.14.15
8	10457	5	9	2012-12-17 15:53:09.087+00	\N		15	ignored		35	\N	12.13.14.15
1	10457	5	9	2013-04-04 11:28:13.373+01	\N		15	ignored		67	\N	10.131.83.84
1	10461	5	9	2013-04-04 11:36:56.569+01	\N		15	ignored		68	\N	10.131.83.84
1	10456	2	\N	2012-12-10 11:35:13.874+00	\N		15	actioned		33	\N	12.13.14.15
1	10456	5	9	2013-04-05 12:08:01.468+01	\N		15	actioned		69	\N	10.131.83.121
1	10454	5	9	2013-04-05 12:51:43.53+01	\N		15	ignored		70	\N	10.131.83.121
3	10470	5	9	2013-04-10 12:59:27.02+01	\N	COPYRIGHT, LOL	7	ignored		72	\N	10.131.83.130
8	10467	5	9	2013-04-10 12:59:34+01	\N		7	actioned		73	\N	10.131.83.130
1	10478	5	9	2013-04-10 12:49:43.069+01	\N		15	ignored		71	\N	10.131.83.130
1	10567	5	9	2013-04-11 10:49:29.201+01	\N		9	ignored		74	\N	10.131.83.130
1	10580	55	9	2013-04-11 12:34:55.735+01	\N		9	ignored		75	\N	10.131.83.130
1	10454	55	9	2013-04-15 10:03:38.927+01	\N		15	open		76	\N	10.131.83.242
2	10459	55	7	2012-12-11 11:00:20.04+00	\N		15	ignored		34	\N	12.13.14.15
1	10525	5	9	2013-01-11 11:17:17.61+00	\N		9	ignored		43	\N	12.13.14.15
1	10494	5	9	2013-02-25 10:25:24.496+00	\N		7	ignored		45	\N	12.13.14.15
1	10550	55	7	2013-01-14 11:54:43.247+00	\N		7	ignored		44	\N	10.131.83.79
1	10542	5	9	2013-03-28 11:12:08.043+00	\N		7	actioned		58	\N	10.131.83.45
1	10460	55	9	2013-04-15 11:36:07.986+01	\N		15	ignored		78	\N	10.131.83.242
1	10461	55	9	2013-04-15 10:06:07.387+01	\N		15	ignored		77	\N	10.131.83.242
2	10562	55	9	2013-04-15 11:36:19.135+01	\N		9	ignored		80	\N	10.131.83.242
1	10459	55	9	2013-04-15 11:36:14.49+01	\N		15	ignored		79	\N	10.131.83.242
1	10528	55	9	2013-04-15 15:35:34.385+01	\N		7	ignored		81	\N	10.131.83.242
1	10523	55	9	2013-04-16 14:33:46.359+01	\N		9	actioned		83	\N	10.131.83.149
1	10555	55	9	2013-04-16 11:34:26.652+01	\N		7	ignored		82	\N	10.131.83.149
1	10588	55	9	2013-04-23 08:18:23.549+01	\N		9	actioned		84	\N	10.131.83.242
1	10560	55	9	2013-04-25 09:54:40.267+01	\N		7	open		85	\N	10.131.83.60
1	10459	55	9	2013-04-25 09:54:46.357+01	\N		15	open		86	\N	10.131.83.60
4	10562	55	9	2013-04-25 09:54:56.056+01	\N		9	open		88	\N	10.131.83.60
1	10464	55	9	2013-04-25 09:55:02.48+01	\N		15	open		89	\N	10.131.83.60
1	10462	55	9	2013-04-25 09:54:50.836+01	\N		15	ignored		87	\N	10.131.83.60
1	10454	55	9	2013-04-29 14:03:25.668+01	\N		15	open		90	\N	10.131.83.149
2	10457	55	9	2013-04-29 14:03:35.724+01	\N		15	open		91	\N	10.131.83.149
2	10521	55	9	2013-05-01 12:19:54.365+01	\N		7	actioned		92	\N	10.131.83.115
1	10454	55	9	2013-05-02 10:37:22.316+01	\N		15	open		93	\N	10.131.82.37
1	10454	55	9	2013-05-02 10:41:12.625+01	\N		15	open		94	\N	10.131.82.37
1	10454	55	9	2013-05-02 10:49:37.144+01	\N		15	open		95	\N	10.131.82.37
1	10454	55	9	2013-05-02 10:50:35.606+01	\N		15	open		96	\N	10.131.82.37
1	10586	55	9	2013-05-02 13:19:51.209+01	\N		9	ignored		100	\N	10.131.82.37
1	10595	55	9	2013-05-02 11:31:45.348+01	\N		9	ignored		97	\N	10.131.82.37
1	10595	55	9	2013-05-02 13:19:45.879+01	\N		9	ignored		99	\N	10.131.82.37
1	10582	55	9	2013-05-02 13:23:25.97+01	\N		9	ignored		103	\N	10.131.82.37
1	10585	55	9	2013-05-02 13:23:21.537+01	\N		9	ignored		102	\N	10.131.82.37
1	10586	55	9	2013-05-02 13:23:16.207+01	\N		9	ignored		101	\N	10.131.82.37
1	10454	55	9	2013-05-02 15:35:01.047+01	\N		15	open		104	\N	10.131.82.37
1	10454	55	9	2013-05-02 15:38:03.836+01	\N		15	open		105	\N	10.131.82.37
1	10464	55	9	2013-05-02 15:38:30.468+01	\N		15	open		106	\N	10.131.82.37
1	10596	55	9	2013-05-02 13:19:39.99+01	\N		9	ignored		98	\N	10.131.82.37
1	10564	5	9	2013-03-28 10:39:05.887+00	\N		9	ignored		51	\N	10.131.83.45
\.


--
-- Data for Name: moderation_action; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_action (comment_id, profile_id, note, created_on, abuse_report_id, moderator_id, avatar_id, sanction_id, type, id, discussion_id) FROM stdin;
\N	7	Staff	2012-06-13 18:21:35.446609+01	\N	1	\N	\N	added-badge	35	\N
\N	7	Staff	2012-06-13 18:28:58.06331+01	\N	1	\N	\N	removed-badge	36	\N
\N	7	Staff	2012-06-13 18:29:11.213287+01	\N	1	\N	\N	added-badge	37	\N
10299	9		2012-07-18 15:57:51.431586+01	\N	1	\N	\N	blocked	38	\N
10297	7		2012-07-18 16:02:29.485049+01	\N	1	\N	\N	removed	39	\N
10302	12		2012-08-14 15:13:45.108404+01	\N	1	\N	\N	blocked	40	\N
10302	12		2012-08-14 15:13:57.923387+01	\N	1	\N	\N	unblocked	41	\N
10302	12		2012-08-14 15:14:01.029467+01	\N	1	\N	\N	removed	42	\N
10302	12		2012-08-14 15:14:46.03847+01	\N	1	\N	\N	unremoved-and-blocked	43	\N
10302	12		2012-08-14 15:14:48.957293+01	\N	1	\N	\N	unblocked	44	\N
10299	9		2012-08-14 15:14:50.89833+01	\N	1	\N	\N	unblocked	45	\N
10297	7		2012-08-14 15:14:52.589369+01	\N	1	\N	\N	unremoved-and-blocked	46	\N
10297	7		2012-08-14 15:14:53.372434+01	\N	1	\N	\N	unblocked	47	\N
10296	7		2012-08-14 15:27:29.880252+01	\N	1	\N	\N	blocked	48	\N
10296	7		2012-08-14 15:27:35.872381+01	\N	1	\N	\N	removed	49	\N
10296	7		2012-08-14 15:32:45.957803+01	\N	1	\N	\N	unremoved-and-blocked	50	\N
10296	7		2012-08-14 15:35:02.789945+01	\N	1	\N	\N	removed	51	\N
10297	7		2012-08-14 15:35:09.235813+01	\N	1	\N	\N	removed	52	\N
\N	9	\N	2012-08-14 15:35:15.423532+01	13	1	\N	\N	actioned	53	\N
10298	7		2012-08-14 15:35:15.475567+01	\N	1	\N	\N	removed	54	\N
10298	7		2012-08-14 15:35:19.839027+01	\N	1	\N	\N	unremoved-and-blocked	55	\N
10297	7		2012-08-14 15:35:24.046039+01	\N	1	\N	\N	unremoved-and-blocked	56	\N
10296	7		2012-08-14 15:35:28.792686+01	\N	1	\N	\N	unremoved-and-blocked	57	\N
\N	13	Staff	2012-09-19 11:29:15.792626+01	\N	1	\N	\N	added-badge	58	\N
\N	12	Staff	2012-09-26 12:04:10.58771+01	\N	1	\N	\N	added-badge	59	\N
\N	13	Staff	2012-09-26 12:04:27.844318+01	\N	1	\N	\N	removed-badge	60	\N
\N	13	Staff	2012-10-01 11:09:11.89429+01	\N	1	\N	\N	added-badge	61	\N
\N	15	Staff	2012-10-03 12:59:01.756982+01	\N	1	\N	\N	added-badge	62	\N
\N	15	Staff	2012-10-03 14:49:52.908416+01	\N	1	\N	\N	removed-badge	63	\N
\N	15	Staff	2012-10-05 14:42:38.884196+01	\N	1	\N	\N	added-badge	64	\N
\N	15	DICK	2012-10-05 15:25:27.319801+01	\N	1	\N	4	banned	65	\N
\N	15		2012-10-05 16:31:02.94857+01	\N	1	\N	4	sanction-ended	66	\N
\N	15	Watch this dude	2012-10-09 08:29:04.701108+01	\N	1	\N	5	premoderated	67	\N
\N	15	LOSER	2012-10-09 08:47:13.37169+01	\N	1	\N	6	banned	68	\N
\N	15		2012-10-09 08:55:59.475185+01	\N	1	\N	6	sanction-ended	69	\N
\N	15		2012-10-09 13:27:21.427027+01	\N	1	\N	5	sanction-ended	70	\N
\N	15	Staff	2012-10-11 14:53:21.173003+01	\N	1	\N	\N	removed-badge	71	\N
\N	15	ballbag	2012-10-11 15:05:36.906403+01	\N	1	\N	7	premoderated	72	\N
\N	15		2012-10-11 15:10:43.69424+01	\N	1	\N	7	sanction-ended	73	\N
\N	15	Staff	2012-10-15 09:30:09.092297+01	\N	1	\N	\N	added-badge	74	\N
\N	15	sdsd	2012-10-22 09:10:59.032089+01	\N	1	\N	8	premoderated	75	\N
\N	15		2012-10-22 09:11:12.119211+01	\N	1	\N	8	sanction-ended	76	\N
\N	15	sdsd	2012-10-22 09:11:14.962168+01	\N	1	\N	9	banned	77	\N
\N	15		2012-10-22 09:11:25.909341+01	\N	1	\N	9	sanction-ended	78	\N
\N	15	Staff	2012-12-17 11:50:06.451652+00	\N	1	\N	\N	removed-badge	79	\N
\N	15	Staff	2012-12-17 11:50:10.66931+00	\N	1	\N	\N	added-badge	80	\N
\N	15	Contributor	2012-12-17 11:51:54.78613+00	\N	1	\N	\N	added-badge	81	\N
\N	15	Contributor	2012-12-17 12:08:38.99647+00	\N	1	\N	\N	removed-badge	82	\N
\N	7	Contributor	2012-12-18 14:54:03.781995+00	\N	1	\N	\N	added-badge	83	\N
\N	7	Contributor	2012-12-18 14:54:09.129125+00	\N	1	\N	\N	removed-badge	84	\N
\N	7	Staff	2012-12-18 14:54:10.010465+00	\N	1	\N	\N	removed-badge	85	\N
\N	7	Staff (Moderator)	2012-12-18 14:54:12.69549+00	\N	1	\N	\N	added-badge	86	\N
\N	7	Staff (Moderator)	2012-12-18 14:54:17.21709+00	\N	1	\N	\N	removed-badge	87	\N
\N	7	Staff	2012-12-18 14:54:23.417228+00	\N	1	\N	\N	added-badge	88	\N
\N	7	asdsad	2013-01-28 11:41:18.502604+00	\N	1	\N	10	premoderated	89	\N
\N	7	dsf	2013-01-28 11:49:07.945851+00	\N	1	\N	11	banned	90	\N
\N	7		2013-01-28 12:27:28.531939+00	\N	1	\N	11	sanction-ended	91	\N
\N	7		2013-01-28 12:27:30.43464+00	\N	1	\N	10	sanction-ended	92	\N
\N	7	wqewe	2013-01-28 12:35:59.046601+00	\N	1	\N	12	banned	93	\N
\N	7		2013-01-28 15:55:39.823245+00	\N	1	\N	12	sanction-ended	94	\N
\N	7	Staff	2013-02-27 08:26:06.050725+00	\N	1	\N	\N	removed-badge	95	\N
\N	7	Staff (Moderator)	2013-02-27 08:26:09.15984+00	\N	1	\N	\N	added-badge	96	\N
\N	7	Staff (Moderator)	2013-02-27 10:00:58.051979+00	\N	1	\N	\N	removed-badge	97	\N
\N	7	Staff	2013-02-27 10:01:28.635738+00	\N	1	\N	\N	added-badge	98	\N
\N	7	actioned with the queue tool	2013-03-18 12:12:56.41836+00	41	1	\N	\N	ignored	99	\N
10304	12	actioned with the queue tool	2013-03-18 12:12:56.604399+00	\N	1	\N	\N	kept	100	\N
\N	9	actioned with the queue tool	2013-04-03 15:23:00.607084+01	64	1	\N	\N	ignored	101	\N
\N	9	actioned with the queue tool	2013-04-03 15:23:00.718558+01	62	1	\N	\N	ignored	102	\N
\N	9	actioned with the queue tool	2013-04-03 15:23:00.721914+01	48	1	\N	\N	ignored	103	\N
\N	9	actioned with the queue tool	2013-04-03 15:23:00.725505+01	47	1	\N	\N	ignored	104	\N
\N	9	actioned with the queue tool	2013-04-03 15:23:00.728903+01	46	1	\N	\N	ignored	105	\N
10454	15	actioned with the queue tool	2013-04-03 15:23:00.733288+01	\N	1	\N	\N	kept	106	\N
\N	9	actioned with the queue tool	2013-04-03 15:30:45.308818+01	65	1	\N	\N	actioned	107	\N
\N	9	actioned with the queue tool	2013-04-03 15:30:45.312759+01	63	1	\N	\N	actioned	108	\N
10455	15	actioned with the queue tool	2013-04-03 15:30:45.315751+01	\N	1	\N	\N	blocked	109	\N
\N	9	actioned with the queue tool	2013-04-04 11:27:06.299711+01	66	1	\N	\N	ignored	110	\N
10523	9	actioned with the queue tool	2013-04-04 11:27:06.305449+01	\N	1	\N	\N	kept	111	\N
\N	9	actioned with the queue tool	2013-04-04 11:28:54.253877+01	67	1	\N	\N	ignored	112	\N
\N	9	actioned with the queue tool	2013-04-04 11:28:54.258085+01	35	1	\N	\N	ignored	113	\N
\N	\N	actioned with the queue tool	2013-04-04 11:28:54.259924+01	32	1	\N	\N	ignored	114	\N
10457	15	actioned with the queue tool	2013-04-04 11:28:54.264451+01	\N	1	\N	\N	kept	115	\N
\N	9	Actioned with the queue tool.	2013-04-05 15:25:37.025518+01	68	1	\N	\N	ignored	116	\N
10461	15	Actioned with the queue tool.	2013-04-05 15:25:37.033153+01	\N	1	\N	\N	kept	117	\N
\N	9	Actioned with the queue tool.	2013-04-05 15:25:39.073341+01	69	1	\N	\N	actioned	118	\N
\N	\N	Actioned with the queue tool.	2013-04-05 15:25:39.075748+01	33	1	\N	\N	actioned	119	\N
10456	15	Actioned with the queue tool.	2013-04-05 15:25:39.080541+01	\N	1	\N	\N	blocked	120	\N
\N	9	Actioned with the queue tool.	2013-04-05 15:25:40.264944+01	70	1	\N	\N	ignored	121	\N
10454	15	Actioned with the queue tool.	2013-04-05 15:25:40.272348+01	\N	1	\N	\N	kept	122	\N
\N	9	Actioned with the queue tool.	2013-04-11 09:36:48.64897+01	72	1	\N	\N	ignored	123	\N
10470	7	Actioned with the queue tool.	2013-04-11 09:36:48.756392+01	\N	1	\N	\N	kept	124	\N
\N	9	Actioned with the queue tool.	2013-04-11 09:36:57.451838+01	73	1	\N	\N	actioned	125	\N
10467	7	Actioned with the queue tool.	2013-04-11 09:36:57.45711+01	\N	1	\N	\N	blocked	126	\N
\N	\N	/p/2jkmx	2013-04-11 10:59:55.950238+01	\N	1	\N	\N	discussion-watched	127	5
\N	9	Actioned with the queue tool.	2013-04-11 11:16:39.888493+01	71	1	\N	\N	ignored	128	\N
10478	15	Actioned with the queue tool.	2013-04-11 11:16:39.896152+01	\N	1	\N	\N	kept	129	\N
10571	9	Actioned with the queue tool.	2013-04-11 11:16:46.725347+01	\N	1	\N	\N	blocked	130	\N
10572	9	Actioned with the queue tool.	2013-04-11 11:16:48.775294+01	\N	1	\N	\N	kept	131	\N
10573	9	Actioned with the queue tool.	2013-04-11 11:17:15.094493+01	\N	1	\N	\N	kept	132	\N
\N	\N	/p/2jkmx	2013-04-11 11:22:51.82872+01	\N	1	\N	\N	discussion-unwatched	133	5
\N	\N	/p/2jkmx	2013-04-11 11:23:04.258723+01	\N	1	\N	\N	discussion-watched	134	5
\N	\N	/p/2jkmx	2013-04-11 11:23:12.64618+01	\N	1	\N	\N	discussion-unwatched	135	5
\N	\N	/p/2jkmx	2013-04-11 12:27:54.263764+01	\N	1	\N	\N	discussion-watched	136	5
\N	9	Staff	2013-04-11 12:28:36.151718+01	\N	1	\N	\N	added-badge	137	\N
\N	\N	/p/2jkmx	2013-04-11 12:31:55.342203+01	\N	1	\N	\N	discussion-unwatched	138	5
\N	\N	/p/2jkmx	2013-04-11 12:33:46.484942+01	\N	1	\N	\N	discussion-watched	139	5
\N	\N	/p/2jkmx	2013-04-11 12:35:16.079054+01	\N	1	\N	\N	discussion-unwatched	140	5
\N	9	Actioned with the queue tool.	2013-04-12 15:06:33.876243+01	74	1	\N	\N	ignored	141	\N
10567	9	Actioned with the queue tool.	2013-04-12 15:06:33.883651+01	\N	1	\N	\N	kept	142	\N
\N	9	Actioned with the queue tool.	2013-04-12 15:06:34.818529+01	75	1	\N	\N	ignored	143	\N
10580	9	Actioned with the queue tool.	2013-04-12 15:06:34.825902+01	\N	1	\N	\N	kept	144	\N
\N	\N	/p/2jkmx	2013-04-12 15:09:11.489577+01	\N	1	\N	\N	discussion-watched	145	5
10583	9	Actioned with the queue tool.	2013-04-12 15:09:34.358461+01	\N	1	\N	\N	blocked	146	\N
\N	\N	/p/2jkmx	2013-04-12 15:10:00.42599+01	\N	1	\N	\N	discussion-unwatched	147	5
\N	\N	/p/2jkmx	2013-04-12 15:23:36.418867+01	\N	1	\N	\N	discussion-watched	148	5
10584	9	Actioned with the queue tool.	2013-04-12 15:28:10.507358+01	\N	1	\N	\N	blocked	149	\N
10585	9	Actioned with the queue tool.	2013-04-12 15:54:24.628726+01	\N	1	\N	\N	kept	150	\N
\N	9	Actioned with the queue tool.	2013-04-15 15:26:48.755903+01	78	1	\N	\N	ignored	151	\N
10460	15	Actioned with the queue tool.	2013-04-15 15:26:48.836922+01	\N	1	\N	\N	kept	152	\N
\N	9	Actioned with the queue tool.	2013-04-15 15:26:49.544411+01	77	1	\N	\N	ignored	153	\N
10461	15	Actioned with the queue tool.	2013-04-15 15:26:49.551839+01	\N	1	\N	\N	kept	154	\N
\N	9	Actioned with the queue tool.	2013-04-15 15:27:34.551575+01	80	1	\N	\N	ignored	155	\N
10562	9	Actioned with the queue tool.	2013-04-15 15:27:34.559058+01	\N	1	\N	\N	kept	156	\N
\N	9	Actioned with the queue tool.	2013-04-15 15:28:37.175328+01	79	1	\N	\N	ignored	157	\N
\N	7	Actioned with the queue tool.	2013-04-15 15:28:37.179565+01	34	1	\N	\N	ignored	158	\N
10459	15	Actioned with the queue tool.	2013-04-15 15:28:37.18604+01	\N	1	\N	\N	kept	159	\N
\N	9	Actioned with the queue tool.	2013-04-15 15:36:21.785152+01	81	1	\N	\N	ignored	160	\N
10528	7	Actioned with the queue tool.	2013-04-15 15:36:21.792966+01	\N	1	\N	\N	kept	161	\N
\N	9	Actioned with the queue tool.	2013-04-16 14:33:56.260225+01	83	1	\N	\N	actioned	162	\N
10523	9	Actioned with the queue tool.	2013-04-16 14:33:56.267458+01	\N	1	\N	\N	blocked	163	\N
\N	9	Actioned with the queue tool.	2013-04-17 09:56:45.98066+01	82	1	\N	\N	ignored	164	\N
10555	7	Actioned with the queue tool.	2013-04-17 09:56:45.988242+01	\N	1	\N	\N	kept	165	\N
10586	9	Actioned with the queue tool.	2013-04-17 09:56:47.057425+01	\N	1	\N	\N	kept	166	\N
\N	9	Actioned with the queue tool.	2013-04-23 08:21:59.359404+01	84	1	\N	\N	actioned	167	\N
10588	9	Actioned with the queue tool.	2013-04-23 08:21:59.469203+01	\N	1	\N	\N	blocked	168	\N
10589	9	Actioned with the queue tool.	2013-04-23 08:22:00.593567+01	\N	1	\N	\N	blocked	169	\N
10587	9	Actioned with the queue tool.	2013-04-23 08:22:01.486947+01	\N	1	\N	\N	blocked	170	\N
\N	9	Actioned with the queue tool.	2013-04-25 10:14:47.040383+01	87	1	\N	\N	ignored	171	\N
10462	15	Actioned with the queue tool.	2013-04-25 10:14:47.1373+01	\N	1	\N	\N	kept	172	\N
\N	15	ddss	2013-04-29 14:04:04.713166+01	\N	1	\N	13	watched	173	\N
\N	9	sdsd	2013-04-29 14:04:10.808977+01	\N	1	\N	14	premoderated	174	\N
\N	15		2013-04-29 14:19:44.291996+01	\N	1	\N	13	sanction-ended	175	\N
\N	9		2013-04-29 14:19:48.400181+01	\N	1	\N	14	sanction-ended	176	\N
\N	9	sadsd	2013-04-29 14:36:10.646062+01	\N	1	\N	15	premoderated	177	\N
\N	9		2013-05-01 09:50:12.236694+01	\N	1	\N	15	sanction-ended	178	\N
\N	9	Actioned with the queue tool.	2013-05-01 12:20:56.76966+01	92	1	\N	\N	actioned	179	\N
10521	7	Actioned with the queue tool.	2013-05-01 12:20:56.776909+01	\N	1	\N	\N	blocked	180	\N
\N	9	Actioned with the queue tool.	2013-05-02 13:21:52.571523+01	100	1	\N	\N	ignored	181	\N
10586	9	Actioned with the queue tool.	2013-05-02 13:21:52.579373+01	\N	1	\N	\N	kept	182	\N
\N	9	Actioned with the queue tool.	2013-05-02 13:21:57.431708+01	99	1	\N	\N	ignored	183	\N
\N	9	Actioned with the queue tool.	2013-05-02 13:21:57.435706+01	97	1	\N	\N	ignored	184	\N
10595	9	Actioned with the queue tool.	2013-05-02 13:21:57.442317+01	\N	1	\N	\N	kept	185	\N
\N	9	Actioned with the queue tool.	2013-05-02 13:24:05.361195+01	103	1	\N	\N	ignored	186	\N
10582	9	Actioned with the queue tool.	2013-05-02 13:24:05.368833+01	\N	1	\N	\N	kept	187	\N
\N	9	Actioned with the queue tool.	2013-05-02 15:30:12.377353+01	102	1	\N	\N	ignored	188	\N
10585	9	Actioned with the queue tool.	2013-05-02 15:30:12.385306+01	\N	1	\N	\N	kept	189	\N
\N	9	Actioned with the queue tool.	2013-05-02 15:30:14.603483+01	101	1	\N	\N	ignored	190	\N
10586	9	Actioned with the queue tool.	2013-05-02 15:30:14.611035+01	\N	1	\N	\N	kept	191	\N
10428	15		2013-05-13 11:51:56.96697+01	\N	1	\N	\N	approved	192	\N
10426	15		2013-05-13 11:52:22.664764+01	\N	1	\N	\N	approved	193	\N
10427	15		2013-05-13 11:53:54.539684+01	\N	1	\N	\N	approved	195	\N
10439	15		2013-05-13 11:58:19.469347+01	\N	1	\N	\N	approved	196	\N
\N	15	You never go full Heisenberg.	2013-05-14 09:57:43.260668+01	\N	1	\N	16	premoderated	197	\N
\N	15		2013-05-14 10:22:13.895535+01	\N	1	\N	16	sanction-ended	198	\N
\N	15	Peppermint infusion.	2013-05-14 10:24:05.059932+01	\N	1	\N	17	premoderated	199	\N
10455	15		2013-05-22 12:56:04.737055+01	\N	1	\N	\N	unblocked	200	\N
\N	\N		2013-05-30 16:38:03.465543+01	\N	1	\N	\N	unwatched	201	5
\N	\N		2013-05-30 16:38:09.530449+01	\N	1	\N	\N	unwatched	202	5
\N	\N		2013-05-30 16:38:16.204087+01	\N	1	\N	\N	unwatched	203	5
\N	\N		2013-05-30 16:40:24.589999+01	\N	1	\N	\N	watched	204	5
\N	\N		2013-05-30 16:40:29.862319+01	\N	1	\N	\N	unwatched	205	5
\N	\N	TEST 12:26	2013-05-31 12:21:40.904843+01	\N	1	\N	\N	note	206	5
\N	\N	w00t	2013-05-31 12:29:49.791274+01	\N	1	\N	\N	note	207	5
\N	\N	Hi Laura.	2013-05-31 14:35:07.815562+01	\N	1	\N	\N	note	208	5
\N	\N		2013-06-03 09:56:54.161557+01	\N	1	\N	\N	watched	209	5
\N	\N		2013-06-03 10:13:05.307714+01	\N	1	\N	\N	unwatched	210	5
\N	\N		2013-06-03 10:16:12.494342+01	\N	1	\N	\N	watched	211	5
\N	\N		2013-06-03 10:16:26.239384+01	\N	1	\N	\N	unwatched	212	5
\N	9	Actioned with the queue tool.	2013-06-03 10:16:30.749378+01	98	1	\N	\N	ignored	213	\N
10596	9	Actioned with the queue tool.	2013-06-03 10:16:30.823241+01	\N	1	\N	\N	kept	214	\N
\N	9	Actioned with the queue tool.	2013-06-10 10:31:59.674087+01	43	1	\N	\N	ignored	215	\N
10525	9	Actioned with the queue tool.	2013-06-10 10:31:59.801045+01	\N	1	\N	\N	kept	216	\N
\N	9	Actioned with the queue tool.	2013-06-10 10:32:26.606882+01	45	1	\N	\N	ignored	217	\N
10494	7	Actioned with the queue tool.	2013-06-10 10:32:26.614553+01	\N	1	\N	\N	kept	218	\N
\N	9	Actioned with the queue tool.	2013-06-10 10:32:54.578596+01	51	1	\N	\N	ignored	219	\N
10564	9	Actioned with the queue tool.	2013-06-10 10:32:54.602119+01	\N	1	\N	\N	kept	220	\N
\N	7	Actioned with the queue tool.	2013-06-10 10:33:25.680197+01	44	1	\N	\N	ignored	221	\N
10550	7	Actioned with the queue tool.	2013-06-10 10:33:25.688004+01	\N	1	\N	\N	kept	222	\N
\N	9	Actioned with the queue tool.	2013-06-10 10:33:29.645491+01	58	1	\N	\N	actioned	223	\N
10542	7	Actioned with the queue tool.	2013-06-10 10:33:29.652706+01	\N	1	\N	\N	blocked	224	\N
\.


--
-- Data for Name: moderation_applicationpermissions; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_applicationpermissions (id, do_not_use) FROM stdin;
\.


--
-- Data for Name: moderation_ipaddressnotes; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_ipaddressnotes (id, moderator_id, created_on, note, ip_address, action) FROM stdin;
\.


--
-- Data for Name: moderation_ipsblockedfromreportingabuse; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_ipsblockedfromreportingabuse (id, ip, block_start, block_end, moderator_id) FROM stdin;
\.


--
-- Data for Name: moderation_moderatorprofile; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_moderatorprofile (profile_id, id, user_id) FROM stdin;
\.


--
-- Data for Name: moderation_queues_moderationqueue; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_queues_moderationqueue (id, name, code) FROM stdin;
1	Central	central
2	CIF	cif
3	Greenwald	greenwald
4	Central watched	central_watched
5	CIF watched	cif_watched
\.


--
-- Data for Name: moderation_queues_moderationrequest; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_queues_moderationrequest (id, queue_id, comment_id, expiry_time, created_on, priority, moderator_id, request_hash, discussion_id, source_created_on) FROM stdin;
9	1	10457	\N	2013-05-30 12:11:06.513079+01	3	\N	\N	5	2013-04-29 14:03:35.724+01
8	1	10464	2013-05-30 16:24:44.085195+01	2013-05-02 15:38:32.773352+01	3	1	368fe0cc671e495a83bfe3e9489240bb	5	2013-04-25 09:55:02.48+01
74	1	10544	2013-05-31 10:27:36.857123+01	2013-05-30 12:11:06.513079+01	3	1	1e027b856011d952464848a59efd1b4d	5	2013-03-28 11:12:33.426+00
83	1	10560	2013-05-31 10:27:37.968383+01	2013-05-30 12:11:06.513079+01	3	1	5847ff7420aa520d5411ae8e41e9a98d	5	2013-04-25 09:54:40.267+01
11	1	10459	2013-05-31 10:27:39.291051+01	2013-05-30 12:11:06.513079+01	3	1	96e42d73df693c508933cf7c230bb75d	5	2013-04-25 09:54:46.357+01
7	1	10454	2013-05-30 16:40:23.810393+01	2013-05-02 15:35:01.89899+01	3	1	b7c07934aa1f9e2c354e916383f81abb	5	2013-04-15 10:03:38.927+01
88	1	10565	2013-06-10 10:33:54.690164+01	2013-05-30 12:11:06.513079+01	3	1	b6af136be6ab64494489725970d73356	5	2013-03-28 10:40:55.531+00
73	1	10543	2013-06-10 10:34:49.75266+01	2013-05-30 12:11:06.513079+01	3	1	81d0e5cea11f7873575bd0979b1c7af3	5	2013-03-28 11:12:21.149+00
89	1	10566	2013-06-10 10:36:10.095037+01	2013-05-30 12:11:06.513079+01	3	1	cedbd718e1edc2ed00b7e75d09578fa7	5	2013-03-28 10:31:51.627+00
85	1	10562	\N	2013-05-30 12:11:06.513079+01	3	\N	\N	5	2013-04-25 09:54:56.056+01
\.


--
-- Data for Name: moderation_sanction; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY moderation_sanction (created_on, sanction_until, created_by_id, note, user_id, id, sanction_type) FROM stdin;
2012-10-05 15:25:27.289566+01	2012-10-05 16:31:02.93958+01	1	DICK	15	4	banned
2012-10-09 08:47:13.369296+01	2012-10-09 08:55:59.466323+01	1	LOSER	15	6	banned
2012-10-09 08:29:04.690732+01	2012-10-09 13:27:21.418099+01	1	Watch this dude	15	5	premoderated
2012-10-11 15:05:36.904033+01	2012-10-11 15:10:43.685373+01	1	ballbag	15	7	premoderated
2012-10-22 09:10:59.025722+01	2012-10-22 09:11:12.110649+01	1	sdsd	15	8	premoderated
2012-10-22 09:11:14.95984+01	2012-10-22 09:11:25.900406+01	1	sdsd	15	9	banned
2013-01-28 11:49:07.943418+00	2013-01-28 12:27:28.522833+00	1	dsf	7	11	banned
2013-01-28 11:41:18.447559+00	2013-01-28 12:27:30.425891+00	1	asdsad	7	10	premoderated
2013-01-28 12:35:59.044223+00	2013-01-28 15:55:39.814229+00	1	wqewe	7	12	banned
2013-04-29 14:04:04.698507+01	2013-04-29 14:19:44.282932+01	1	ddss	15	13	watched
2013-04-29 14:04:10.80683+01	2013-04-29 14:19:48.391259+01	1	sdsd	9	14	premoderated
2013-04-29 14:36:10.643663+01	2013-05-01 09:50:12.228243+01	1	sadsd	9	15	premoderated
2013-05-14 09:57:43.223568+01	2013-05-14 10:22:13.886659+01	1	You never go full Heisenberg.	15	16	premoderated
2013-05-14 10:24:05.057584+01	\N	1	Peppermint infusion.	15	17	premoderated
\.


--
-- Data for Name: profiles_badge; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY profiles_badge (abuse_report_weight, image_url, id, name, display_name) FROM stdin;
50	http://static.guim.co.uk/static/86669/common/images/communities/icons_staff_16.gif	3	Staff (Moderator)	Staff
55	http://static.guim.co.uk/static/86669/common/images/communities/icons_staff_16.gif	1	Staff	Staff
20	http://static.guim.co.uk/static/86669/common/images/communities/icons_contributor_16.gif	2	Contributor	Contributor
\.


--
-- Data for Name: profiles_profile; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY profiles_profile (username, interests, current_avatar_id, user_id, lowercase_username, gender, last_updated_on, dob, created_on, about_me, location, web_page, real_name, id, last_ip_address, total_comment_count, pluck_avatar_url, vanity_url, is_social, last_exported_on) FROM stdin;
krisstest	\N	\N	10000004	krisstest	nodisplay	2012-09-26 12:04:10.612994+01	\N	2012-08-14 14:44:14.529752+01	\N	\N	\N	\N	12	10.131.81.35	45	\N	krisstest	\N	\N
Antisocial	\N	\N	10000003	antisocial	nodisplay	2012-07-19 09:39:30.485957+01	\N	2012-07-19 09:39:30.485957+01	\N	\N	\N	\N	11	\N	0	\N	antisocial	\N	\N
codejelly	\N	\N	10107996	codejelly	\N	2012-09-27 13:16:19.351+01	\N	2012-09-27 13:16:19.351+01	\N	\N	\N	\N	14	\N	0	\N	\N	\N	\N
Anachronism	\N	\N	10000005	anachronism	\N	2012-10-01 11:09:11.918631+01	\N	2012-09-06 09:40:36.762+01	\N	\N	\N	\N	13	\N	71	\N	anachronism	f	\N
bacondude	\N	\N	10000006	bacondude	\N	2013-05-14 10:24:05.061474+01	\N	2012-10-03 10:25:55+01	\N	\N	\N	\N	15	\N	57	\N	\N	\N	\N
Negligible	\N	\N	10000002	negligible	nodisplay	2013-05-01 09:50:12.228243+01	\N	2012-06-14 12:39:32.07359+01	\N	\N	\N	\N	9	10.131.83.163	56	\N	negligible	\N	\N
Sayanna	\N	\N	10000001	sayanna	nodisplay	2013-02-27 10:01:28.63744+00	\N	2012-05-03 12:18:19.818358+01	\N	\N	\N	\N	7	10.131.81.173	85	\N	sayanna	\N	\N
\.


--
-- Data for Name: profiles_profile_badges; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY profiles_profile_badges (id, profile_id, badge_id) FROM stdin;
9	12	1
10	13	1
14	15	1
20	7	1
21	9	1
\.


--
-- Data for Name: recommendations_recommendation; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY recommendations_recommendation (comment_id, created_on, id, recommended_by_id) FROM stdin;
10299	2012-06-18 14:10:48.663798+01	5	7
10298	2012-07-18 15:56:39.696368+01	6	9
10296	2012-07-18 15:56:39.696368+01	7	9
10381	2012-10-01 12:13:34.945+01	8	12
10383	2012-10-01 13:00:56.972+01	9	12
10380	2012-10-01 13:06:50.869+01	10	12
10371	2012-10-01 13:07:53.555+01	11	12
10360	2012-10-01 13:08:28.67+01	12	12
10359	2012-10-01 13:09:05.033+01	13	12
10299	2012-10-01 13:10:19.548+01	14	12
10314	2012-10-01 13:11:46.36+01	15	12
10299	2012-10-01 13:15:49.653+01	16	13
10393	2012-10-01 13:17:14.758+01	17	13
10402	2012-10-01 13:17:20.761+01	18	13
10394	2012-10-01 15:12:52.882+01	19	13
10395	2012-10-01 15:12:57.752+01	20	13
10320	2012-10-01 15:57:57.549+01	21	12
10375	2012-10-02 13:05:03.145+01	22	12
10359	2012-10-03 11:23:52.664+01	23	15
10406	2012-10-03 14:29:07.682+01	24	15
10402	2012-10-03 14:29:54.168+01	25	15
10401	2012-10-03 14:29:59.121+01	26	15
10398	2012-10-03 14:31:18.149+01	27	15
10399	2012-10-03 14:31:36.206+01	28	15
10400	2012-10-03 14:32:21.435+01	29	15
10299	2012-10-03 15:45:24.68+01	30	15
10302	2012-10-03 15:46:31.104+01	31	15
10343	2012-10-03 15:46:45.048+01	32	15
10309	2012-10-03 15:53:47.417+01	33	15
10303	2012-10-03 15:59:15.516+01	34	15
10305	2012-10-03 15:59:27.42+01	35	15
10323	2012-10-04 09:41:14.919+01	36	15
10321	2012-10-05 12:51:37.52+01	37	15
10349	2012-10-05 12:51:43.056+01	38	15
10362	2012-10-05 12:51:46.894+01	39	15
10314	2012-10-05 14:23:51.057+01	40	15
10353	2012-10-05 14:56:42.035+01	41	15
10348	2012-10-05 14:59:32.354+01	42	15
10371	2012-10-11 11:24:45.775+01	43	15
10369	2012-10-11 12:44:19.726+01	44	15
10310	2012-10-11 13:06:22.836+01	45	15
10322	2012-10-12 14:01:32.185+01	46	15
10317	2012-10-12 14:23:23.391+01	47	15
10316	2012-10-12 14:25:23.786+01	48	15
10318	2012-10-12 14:25:37.073+01	49	15
10319	2012-10-12 14:25:41.801+01	50	15
10324	2012-10-12 14:26:07.85+01	51	15
10325	2012-10-12 14:27:31.981+01	52	15
10327	2012-10-12 14:28:09.309+01	53	15
10328	2012-10-12 14:28:14.962+01	54	15
10331	2012-10-12 14:28:19.224+01	55	15
10330	2012-10-12 14:28:21.081+01	56	15
10340	2012-10-12 14:30:59.419+01	57	15
10339	2012-10-12 14:31:09.326+01	58	15
10338	2012-10-12 14:32:24.466+01	59	15
10341	2012-10-12 14:33:01.362+01	60	15
10342	2012-10-12 14:33:14.257+01	61	15
10344	2012-10-12 14:33:48.472+01	62	15
10346	2012-10-12 14:34:51.658+01	63	15
10312	2012-10-12 14:35:37.977+01	64	15
10334	2012-10-12 14:35:50.082+01	65	15
10352	2012-10-12 14:35:59.006+01	66	15
10372	2012-10-12 14:37:49.294+01	67	15
10365	2012-10-12 14:38:12.894+01	68	15
10354	2012-10-12 14:38:27.055+01	69	15
10356	2012-10-12 14:38:28.72+01	70	15
10357	2012-10-12 14:38:38.069+01	71	15
10337	2012-10-12 14:38:56.55+01	72	15
10336	2012-10-12 14:39:07.914+01	73	15
10335	2012-10-12 14:39:09.579+01	74	15
10329	2012-10-12 14:39:12.484+01	75	15
10326	2012-10-12 14:39:16.13+01	76	15
10315	2012-10-12 14:39:25.812+01	77	15
10313	2012-10-12 14:39:28.717+01	78	15
10308	2012-10-12 14:40:02.108+01	79	15
10351	2012-10-12 14:41:08.524+01	80	15
10361	2012-10-12 14:58:30.104+01	81	15
10367	2012-10-12 14:58:36.756+01	82	15
10382	2012-10-12 14:58:39.453+01	83	15
10307	2012-10-12 14:58:47.595+01	84	15
10311	2012-10-12 14:59:09.156+01	85	15
10355	2012-10-12 14:59:47.035+01	86	15
10345	2012-10-15 10:20:32.722+01	87	15
10347	2012-10-15 10:21:30.372+01	88	15
10368	2012-10-16 09:39:00.66+01	89	15
10370	2012-10-16 10:12:30.171+01	90	15
10442	2012-10-22 09:18:48.091+01	91	15
10432	2012-10-22 10:11:37.797+01	92	13
10459	2012-12-11 11:00:09.236+00	93	7
10454	2012-12-11 13:50:25.438+00	94	7
10455	2012-12-11 13:51:20.158+00	95	7
10456	2012-12-11 13:52:01.341+00	96	7
10457	2012-12-11 14:14:31.899+00	97	7
10458	2012-12-11 14:32:22.842+00	98	7
10454	2012-12-13 11:50:12.098+00	99	9
10458	2012-12-17 15:51:57.348+00	100	9
10457	2012-12-17 15:52:49.886+00	101	9
10300	2012-12-31 09:32:49.153+00	102	7
10304	2012-12-31 09:49:35.361+00	103	7
10303	2012-12-31 09:58:56.14+00	104	7
10305	2012-12-31 10:29:01.616+00	105	7
10464	2012-12-31 14:07:14.36+00	106	7
10463	2012-12-31 14:07:16.275+00	107	7
10460	2012-12-31 14:35:51.718+00	108	7
10461	2012-12-31 14:35:53.234+00	109	7
10483	2012-12-31 15:46:53.816+00	110	7
10482	2013-01-02 10:54:29.544+00	111	7
10306	2013-01-02 11:45:09.406+00	112	7
10345	2013-01-02 15:50:24.897+00	113	7
10317	2013-01-07 17:31:19.119+00	114	7
10315	2013-01-07 17:55:32.305+00	115	7
10316	2013-01-07 18:01:23.381+00	116	7
10318	2013-01-07 18:01:31.215+00	117	7
10307	2013-01-08 08:58:50.587+00	118	7
10477	2013-01-11 11:14:05.031+00	119	9
10459	2013-01-11 11:34:03.441+00	120	9
10524	2013-01-11 16:36:37.339+00	121	7
10301	2013-01-24 14:04:55.441+00	122	7
10309	2013-01-24 14:05:05.033+00	123	7
10525	2013-02-05 11:10:55.58+00	124	7
10462	2013-02-06 10:01:11.628+00	125	7
10549	2013-02-07 09:54:37.157+00	126	7
10456	2013-02-25 10:14:32.614+00	127	9
10460	2013-02-25 10:16:40.501+00	128	9
10464	2013-02-25 10:18:10.174+00	129	9
10488	2013-02-25 10:19:01.53+00	130	9
10470	2013-02-25 10:23:58.571+00	131	9
10494	2013-02-25 10:25:01.894+00	132	9
10461	2013-02-25 10:30:04.652+00	133	9
10509	2013-04-19 15:02:05.707+01	134	9
10520	2013-04-19 15:03:52.152+01	135	9
10469	2013-04-22 10:04:02.039+01	136	9
\.


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	avatars	0001_initial	2011-11-15 14:48:07.023346+00
2	profiles	0001_initial	2011-11-15 14:48:07.383519+00
3	comments	0001_initial	2011-11-15 14:48:08.24341+00
4	comments	0002_add_profile_relation_to_comments	2011-11-15 14:48:08.795055+00
5	comments	0003_add_site_to_namespace	2011-11-15 14:48:09.059792+00
6	comments	0004_auto__del_field_comment_needs_indexing__add_field_comment_last_indexed	2011-11-15 14:48:09.611276+00
7	comments	0005_auto__del_field_comment_last_indexed__add_field_comment_last_updated	2011-11-15 14:48:10.161096+00
8	comments	0006_add_composite_index_on_discussion_id_and_created_on	2011-11-15 14:48:10.266639+00
9	comments	0007_add_composite_index_on_discussion_id_and_status	2011-11-15 14:48:10.357548+00
10	comments	0008_rename_total_recommendations_to_anonymous	2011-11-15 14:48:10.390848+00
11	comments	0009_remove_dn_visible_comments_add_invisible_comments_count	2011-11-15 14:48:10.818159+00
12	comments	0010_add_posted_by_created_on_index_to_comments	2011-11-15 14:48:10.906817+00
13	comments	0011_add_initial_index_to_comment	2011-11-15 14:48:11.074339+00
14	comments	0012_split_ratings_to_own_table	2011-11-15 14:48:11.249259+00
15	comments	0013_added_ratings_fields_to_discussion	2011-11-15 14:48:12.58095+00
16	comments	0014_auto__add_unique_rating_discussion_rated_by	2011-11-15 14:48:12.681684+00
17	comments	0015_add_creating_comment_to_discussion	2011-11-15 14:48:12.958162+00
18	comments	0016_auto__add_field_discussion_last_updated	2011-11-15 14:48:13.450462+00
19	comments	0017_auto__add_field_tag_last_updated	2011-11-15 14:48:13.816376+00
20	comments	0018_auto__add_field_discussion_latest_visible_comment	2011-11-15 14:48:14.115288+00
21	comments	0019_set_latest_visible_comment	2011-11-15 14:48:14.146726+00
22	comments	0020_change_forum_url	2011-11-15 14:48:14.171693+00
23	comments	0021_add_forum_allowed_to_forum_branch	2011-11-15 14:48:14.59079+00
24	comments	0022_make_careers_tags_forumable_by_default	2011-11-15 14:48:14.618818+00
25	comments	0023_set_creating_comment_to_be_latest_if_no_latest_comment	2011-11-15 14:48:14.646319+00
26	comments	0024_add_reply_to_fields	2011-11-15 14:48:14.679836+00
27	comments	0025_add_ns_and_latest_comment_index	2011-11-15 14:48:14.788602+00
28	comments	0026_add_index_to_reply_to_id	2011-11-15 14:48:14.888093+00
29	profiles	0002_add_last_ip_address_to_profile	2011-11-15 14:48:15.372401+00
30	profiles	0003_add_comment_counts_to_profile	2011-11-15 14:48:15.397365+00
31	moderation	0001_initial	2011-11-15 14:48:16.332931+00
32	moderation	0002_make_permission_holding_model	2011-11-15 14:48:16.706295+00
33	moderation	0003_rename_created_at_columns_to_created_on	2011-11-15 14:48:16.813387+00
34	recommendations	0001_initial	2011-11-15 14:48:17.30599+00
35	avatars	0002_add_profile_to_avatar	2011-11-15 14:48:17.598057+00
36	avatars	0003_add_is_communal_field_to_avatars	2011-11-15 14:48:17.906454+00
37	search	0001_initial	2011-11-15 14:48:17.947145+00
38	antispam	0001_initial	2011-11-15 14:48:18.106881+00
39	importer	0001_initial	2011-11-15 14:48:18.59081+00
40	importer	0002_looooosening_pluck_recommendation_import	2011-11-15 14:48:18.757258+00
41	importer	0003_auto__add_pluckimportedrating	2011-11-15 14:48:18.956658+00
42	switchboard	0001_initial	2011-11-15 14:48:19.215304+00
43	switchboard	0002_make_name_and_host_unique_together	2011-11-15 14:48:19.289579+00
44	switchboard	0003_auto__add_state__del_field_switch_host__del_field_switch_state__add_fi	2011-11-15 14:48:19.473896+00
45	switchboard	0004_populate_read_only_and_health_check_switches	2011-11-15 14:48:19.498555+00
46	switchboard	0005_test_migration	2011-11-15 14:48:19.508721+00
47	switchboard	0006_identity_switches	2011-11-15 14:48:19.530304+00
48	switchboard	0007_add_all_comments_switch	2011-11-15 14:48:19.54689+00
49	switchboard	0008_default_identity_to_on	2011-11-15 14:48:19.563672+00
50	moderation	0004_abusereport_add_reported_by_ip_column	2011-11-18 11:53:20.882759+00
51	moderation	0005_adding_table_ips_blocked_from_reporting_abuse	2011-11-18 11:53:21.258678+00
52	moderation	0006_add_ipaddress_notes_table	2011-11-18 11:53:21.667377+00
53	moderation	0007_add_moderator_column_to_ips_blocked_from_reporting_abuse_table	2011-11-18 11:53:21.775501+00
54	moderation	0008_add_action_column_to_moderation_ipaddressnotes_table	2011-11-18 11:53:21.816361+00
59	comments	0027_auto__add_field_discussion_display_threaded	2012-01-17 10:39:48.624827+00
60	comments	0028_add_comment_highlights	2012-01-30 10:26:07.164341+00
61	switchboard	0009_add_captcha_switch	2012-01-30 10:26:08.106652+00
64	profiles	0004_add_vanity_url_and_make_username_not_unique	2012-04-02 14:50:05.600788+01
65	profiles	0005_copy_username_to_vanity_url	2012-04-02 14:50:05.766757+01
66	profiles	0006_adding_indexes_to_vanity_url_and_userid	2012-04-02 14:50:05.933665+01
67	profiles	0007_allow_nonunique_usernames	2012-04-30 16:17:03.327554+01
68	profiles	0008_update_vanity_url_for_new_signed_up_users	2012-04-30 16:17:03.38559+01
69	profiles	0009_add_is_social_to_profile	2012-05-10 10:55:12.407499+01
70	switchboard	0010_anonymous_abuse_report_switch	2012-07-18 14:58:39.684314+01
71	comments	0029_add_posted_by_highlighted_comments	2012-08-14 13:06:52.863578+01
72	comments	0030_fill_posted_by_highlighted_comments	2012-08-14 13:06:53.044126+01
73	comments	0031_auto__chg_field_commenthighlight_comment_posted_by	2012-08-14 13:06:53.34605+01
75	comments	0032_add_common_ancestors_column	2012-08-22 11:30:47.702301+01
76	comments	0033_add_field_discussion_dn_top_level_comment_count	2012-08-22 11:30:54.776532+01
77	profiles	0010_new_display_name_column	2012-09-06 08:28:21.763143+01
78	profiles	0011_add_new_badge_for_moderators	2012-09-06 08:28:21.860955+01
79	switchboard	0011_create_discussion_endpoint_switch	2012-09-19 10:28:57.491569+01
80	comments	0034_add_status_to_discussion	2012-10-05 11:27:03.708433+01
81	moderation	0009_add_discussion_id_column_to_action_table	2012-10-05 11:27:04.263226+01
82	profiles	0012_add_indexes_for_is_social_and_total_comment_count	2012-11-14 11:51:01.042036+00
83	profiles	0013_auto__add_field_profile_last_exported_on	2012-12-14 09:45:33.894508+00
84	comments	0035_add_reply_to_profile_id_field	2013-02-12 09:01:46.055288+00
85	avatars	0004_new_avatar_column_requires_moderation	2013-02-25 09:13:16.89569+00
97	comments	0036_auto__add_field_discussion_watched	2013-04-10 11:46:27.169082+01
98	profiles	0014_remove_bad_comment_count	2013-04-23 07:21:09.690239+01
104	moderation_queues	0001_initial	2013-05-02 10:30:51.841533+01
105	moderation_queues	0002_auto__add_unique_moderationrequest_moderator	2013-05-02 10:30:51.915769+01
106	moderation_queues	0003_auto__chg_field_moderationrequest_created_on	2013-05-02 10:30:52.100115+01
107	moderation_queues	0004_auto__chg_field_moderationrequest_moderator	2013-05-02 10:30:52.283601+01
108	moderation_queues	0005_auto__add_field_moderationrequest_request_hash__del_unique_moderationr	2013-05-02 10:30:52.450499+01
109	moderation_queues	0006_auto__add_unique_moderationrequest_request_hash	2013-05-02 10:30:52.54151+01
110	moderation_queues	0007_change_default_queue_to_central	2013-05-02 10:30:52.582266+01
111	moderation_queues	0008_0008_add_greenwald_queue	2013-05-02 10:30:52.615706+01
112	moderation_queues	0009_auto__add_unique_moderationqueue_code	2013-05-02 10:30:52.690846+01
113	moderation_queues	0010_auto__add_field_moderationrequest_req_created_on__add_field_moderation	2013-05-02 10:30:52.936211+01
114	moderation_queues	0011_auto__del_field_moderationrequest_req_created_on__add_field_moderation	2013-05-02 10:30:53.339345+01
115	moderation_queues	0012_auto__chg_field_moderationrequest_discussion	2013-05-02 10:30:53.527873+01
116	moderation_queues	0013_separate_watched_queues	2013-05-02 10:30:53.56659+01
117	moderation_queues	0014_change_some_queues_back	2013-05-02 13:38:08.952804+01
118	moderation_queues	0015_auto__del_unique_moderationrequest_comment	2013-05-13 10:38:23.576013+01
\.


--
-- Data for Name: switchboard_state; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY switchboard_state (id, host, state, switch_id) FROM stdin;
1	gnm41149	t	3
3	gnm41149	t	4
4	gnm41149	f	2
5	gnm41149	t	5
6	gnm41149	t	6
2	gnm41149	f	1
7	gnm41149	t	7
\.


--
-- Data for Name: switchboard_switch; Type: TABLE DATA; Schema: public; Owner: pgowner
--

COPY switchboard_switch (id, name, description, default_state) FROM stdin;
1	READ_ONLY_MODE	read only	f
2	HEALTHCHECK_OK	load balancer healthcheck status	f
4	ALL_COMMENTS	Control availability of all-comments view	t
3	IDENTITY	turn on identity for user logins	t
5	ENABLE_CAPTCHA_FOR_ABUSE_REPORTS	Add recaptcha to report abuse form for anonymous users	f
6	ALLOW_ANONYMOUS_ABUSE_REPORTS	When true, allows abuse to be reported anonymously	t
7	ENABLE_CREATE_DISCUSSION_ENDPOINT	When true, updates db when r2 launches a new article.  When false, logs the data but makes no db changes	t
\.


--
-- Name: antispam_badword_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY antispam_badword
    ADD CONSTRAINT antispam_badword_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_message_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: avatars_avatar_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY avatars_avatar
    ADD CONSTRAINT avatars_avatar_pkey PRIMARY KEY (id);


--
-- Name: cachetable_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY cachetable
    ADD CONSTRAINT cachetable_pkey PRIMARY KEY (cache_key);


--
-- Name: comments_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_comment
    ADD CONSTRAINT comments_comment_pkey PRIMARY KEY (id);


--
-- Name: comments_commenthighlight_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_commenthighlight
    ADD CONSTRAINT comments_commenthighlight_pkey PRIMARY KEY (id);


--
-- Name: comments_commentrecommendations_comment_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_commentrecommendations
    ADD CONSTRAINT comments_commentrecommendations_comment_id_key UNIQUE (comment_id);


--
-- Name: comments_commentrecommendations_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_commentrecommendations
    ADD CONSTRAINT comments_commentrecommendations_pkey PRIMARY KEY (id);


--
-- Name: comments_discussion_key_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_discussion
    ADD CONSTRAINT comments_discussion_key_key UNIQUE (key);


--
-- Name: comments_discussion_namespace_id_1e11383113e1ee6d_uniq; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_discussion
    ADD CONSTRAINT comments_discussion_namespace_id_1e11383113e1ee6d_uniq UNIQUE (namespace_id, key);


--
-- Name: comments_discussion_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_discussion
    ADD CONSTRAINT comments_discussion_pkey PRIMARY KEY (id);


--
-- Name: comments_discussion_tags_discussion_id_4e76b889f0b6619c_uniq; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_discussion_tags
    ADD CONSTRAINT comments_discussion_tags_discussion_id_4e76b889f0b6619c_uniq UNIQUE (discussion_id, tag_id);


--
-- Name: comments_discussion_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_discussion_tags
    ADD CONSTRAINT comments_discussion_tags_pkey PRIMARY KEY (id);


--
-- Name: comments_namespace_name_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_namespace
    ADD CONSTRAINT comments_namespace_name_key UNIQUE (name);


--
-- Name: comments_namespace_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_namespace
    ADD CONSTRAINT comments_namespace_pkey PRIMARY KEY (id);


--
-- Name: comments_rating_discussion_id_548f5958da064c9_uniq; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_rating
    ADD CONSTRAINT comments_rating_discussion_id_548f5958da064c9_uniq UNIQUE (discussion_id, rated_by_id);


--
-- Name: comments_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_rating
    ADD CONSTRAINT comments_rating_pkey PRIMARY KEY (id);


--
-- Name: comments_tag_namespace_id_681b0d0b7e158899_uniq; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_tag
    ADD CONSTRAINT comments_tag_namespace_id_681b0d0b7e158899_uniq UNIQUE (namespace_id, path);


--
-- Name: comments_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY comments_tag
    ADD CONSTRAINT comments_tag_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: importer_pluckimportedcomment_action_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedcomment
    ADD CONSTRAINT importer_pluckimportedcomment_action_id_key UNIQUE (action_id);


--
-- Name: importer_pluckimportedcomment_comment_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedcomment
    ADD CONSTRAINT importer_pluckimportedcomment_comment_id_key UNIQUE (comment_id);


--
-- Name: importer_pluckimportedcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedcomment
    ADD CONSTRAINT importer_pluckimportedcomment_pkey PRIMARY KEY (id);


--
-- Name: importer_pluckimportedcomment_pluck_comment_key_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedcomment
    ADD CONSTRAINT importer_pluckimportedcomment_pluck_comment_key_key UNIQUE (pluck_comment_key);


--
-- Name: importer_pluckimportedrating_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedrating
    ADD CONSTRAINT importer_pluckimportedrating_pkey PRIMARY KEY (id);


--
-- Name: importer_pluckimportedrating_pluck_rating_key_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedrating
    ADD CONSTRAINT importer_pluckimportedrating_pluck_rating_key_key UNIQUE (pluck_rating_key);


--
-- Name: importer_pluckimportedrecommendati_pluck_recommendation_key_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedrecommendation
    ADD CONSTRAINT importer_pluckimportedrecommendati_pluck_recommendation_key_key UNIQUE (pluck_recommendation_key);


--
-- Name: importer_pluckimportedrecommendation_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedrecommendation
    ADD CONSTRAINT importer_pluckimportedrecommendation_pkey PRIMARY KEY (id);


--
-- Name: importer_pluckimportedreview_comment_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedreview
    ADD CONSTRAINT importer_pluckimportedreview_comment_id_key UNIQUE (comment_id);


--
-- Name: importer_pluckimportedreview_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedreview
    ADD CONSTRAINT importer_pluckimportedreview_pkey PRIMARY KEY (id);


--
-- Name: importer_pluckimportedreview_pluck_review_key_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY importer_pluckimportedreview
    ADD CONSTRAINT importer_pluckimportedreview_pluck_review_key_key UNIQUE (pluck_review_key);


--
-- Name: jogging_log_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY jogging_log
    ADD CONSTRAINT jogging_log_pkey PRIMARY KEY (id);


--
-- Name: moderation_abusecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_abusecategory
    ADD CONSTRAINT moderation_abusecategory_pkey PRIMARY KEY (id);


--
-- Name: moderation_abusereport_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_abusereport
    ADD CONSTRAINT moderation_abusereport_pkey PRIMARY KEY (id);


--
-- Name: moderation_action_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_action
    ADD CONSTRAINT moderation_action_pkey PRIMARY KEY (id);


--
-- Name: moderation_applicationpermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_applicationpermissions
    ADD CONSTRAINT moderation_applicationpermissions_pkey PRIMARY KEY (id);


--
-- Name: moderation_ipaddressnotes_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_ipaddressnotes
    ADD CONSTRAINT moderation_ipaddressnotes_pkey PRIMARY KEY (id);


--
-- Name: moderation_ipsblockedfromreportingabuse_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_ipsblockedfromreportingabuse
    ADD CONSTRAINT moderation_ipsblockedfromreportingabuse_pkey PRIMARY KEY (id);


--
-- Name: moderation_moderatorprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_moderatorprofile
    ADD CONSTRAINT moderation_moderatorprofile_pkey PRIMARY KEY (id);


--
-- Name: moderation_queues_moderationqueue_code_uniq; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_queues_moderationqueue
    ADD CONSTRAINT moderation_queues_moderationqueue_code_uniq UNIQUE (code);


--
-- Name: moderation_queues_moderationqueue_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_queues_moderationqueue
    ADD CONSTRAINT moderation_queues_moderationqueue_pkey PRIMARY KEY (id);


--
-- Name: moderation_queues_moderationrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_queues_moderationrequest
    ADD CONSTRAINT moderation_queues_moderationrequest_pkey PRIMARY KEY (id);


--
-- Name: moderation_queues_moderationrequest_request_hash_uniq; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_queues_moderationrequest
    ADD CONSTRAINT moderation_queues_moderationrequest_request_hash_uniq UNIQUE (request_hash);


--
-- Name: moderation_sanction_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY moderation_sanction
    ADD CONSTRAINT moderation_sanction_pkey PRIMARY KEY (id);


--
-- Name: profiles_badge_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY profiles_badge
    ADD CONSTRAINT profiles_badge_pkey PRIMARY KEY (id);


--
-- Name: profiles_profile_badges_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY profiles_profile_badges
    ADD CONSTRAINT profiles_profile_badges_pkey PRIMARY KEY (id);


--
-- Name: profiles_profile_badges_profile_id_2c36ddcdf89ea09a_uniq; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY profiles_profile_badges
    ADD CONSTRAINT profiles_profile_badges_profile_id_2c36ddcdf89ea09a_uniq UNIQUE (profile_id, badge_id);


--
-- Name: profiles_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY profiles_profile
    ADD CONSTRAINT profiles_profile_pkey PRIMARY KEY (id);


--
-- Name: profiles_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY profiles_profile
    ADD CONSTRAINT profiles_profile_user_id_key UNIQUE (user_id);


--
-- Name: profiles_profile_vanity_url_key; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY profiles_profile
    ADD CONSTRAINT profiles_profile_vanity_url_key UNIQUE (vanity_url);


--
-- Name: recommendations_recommendation_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY recommendations_recommendation
    ADD CONSTRAINT recommendations_recommendation_pkey PRIMARY KEY (id);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: switchboard_state_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY switchboard_state
    ADD CONSTRAINT switchboard_state_pkey PRIMARY KEY (id);


--
-- Name: switchboard_switch_name_uniq; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY switchboard_switch
    ADD CONSTRAINT switchboard_switch_name_uniq UNIQUE (name);


--
-- Name: switchboard_switch_pkey; Type: CONSTRAINT; Schema: public; Owner: pgowner; Tablespace: 
--

ALTER TABLE ONLY switchboard_switch
    ADD CONSTRAINT switchboard_switch_pkey PRIMARY KEY (id);


--
-- Name: antispam_badword_created_by_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX antispam_badword_created_by_id ON antispam_badword USING btree (created_by_id);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_message_user_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX auth_message_user_id ON auth_message USING btree (user_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: avatars_avatar_created_on; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX avatars_avatar_created_on ON avatars_avatar USING btree (created_on);


--
-- Name: avatars_avatar_is_communal; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX avatars_avatar_is_communal ON avatars_avatar USING btree (is_communal);


--
-- Name: avatars_avatar_profile_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX avatars_avatar_profile_id ON avatars_avatar USING btree (profile_id);


--
-- Name: avatars_avatar_requires_moderation; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX avatars_avatar_requires_moderation ON avatars_avatar USING btree (requires_moderation);


--
-- Name: avatars_avatar_status; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX avatars_avatar_status ON avatars_avatar USING btree (status);


--
-- Name: avatars_avatar_status_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX avatars_avatar_status_like ON avatars_avatar USING btree (status varchar_pattern_ops);


--
-- Name: cachetable_expires; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX cachetable_expires ON cachetable USING btree (expires);


--
-- Name: comments_comment_common_ancestor_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_common_ancestor_id ON comments_comment USING btree (common_ancestor_id);


--
-- Name: comments_comment_created_on; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_created_on ON comments_comment USING btree (created_on);


--
-- Name: comments_comment_discussion_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_discussion_id ON comments_comment USING btree (discussion_id);


--
-- Name: comments_comment_discussion_id_38e24964784b4e6f; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_discussion_id_38e24964784b4e6f ON comments_comment USING btree (discussion_id, created_on);


--
-- Name: comments_comment_discussion_id_3a4da9d2e640130f; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_discussion_id_3a4da9d2e640130f ON comments_comment USING btree (discussion_id, status);


--
-- Name: comments_comment_dn_in_reply_to_profile_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_dn_in_reply_to_profile_id ON comments_comment USING btree (dn_in_reply_to_profile_id);


--
-- Name: comments_comment_in_reply_to_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_in_reply_to_id ON comments_comment USING btree (in_reply_to_id);


--
-- Name: comments_comment_is_flagged; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_is_flagged ON comments_comment USING btree (is_flagged);


--
-- Name: comments_comment_last_updated; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_last_updated ON comments_comment USING btree (last_updated);


--
-- Name: comments_comment_posted_by_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_posted_by_id ON comments_comment USING btree (posted_by_id);


--
-- Name: comments_comment_posted_by_id_34f5d0d83981371; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_posted_by_id_34f5d0d83981371 ON comments_comment USING btree (posted_by_id, created_on);


--
-- Name: comments_comment_posted_by_ip; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_posted_by_ip ON comments_comment USING btree (posted_by_ip);


--
-- Name: comments_comment_posted_by_ip_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_posted_by_ip_like ON comments_comment USING btree (posted_by_ip varchar_pattern_ops);


--
-- Name: comments_comment_status; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_status ON comments_comment USING btree (status);


--
-- Name: comments_comment_status_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_comment_status_like ON comments_comment USING btree (status varchar_pattern_ops);


--
-- Name: comments_commenthighlight_comment_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_commenthighlight_comment_id ON comments_commenthighlight USING btree (comment_id);


--
-- Name: comments_commenthighlight_comment_posted_by_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_commenthighlight_comment_posted_by_id ON comments_commenthighlight USING btree (comment_posted_by_id);


--
-- Name: comments_commenthighlight_highlighted_by_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_commenthighlight_highlighted_by_id ON comments_commenthighlight USING btree (highlighted_by_id);


--
-- Name: comments_discussion_closed_after; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_closed_after ON comments_discussion USING btree (closed_after);


--
-- Name: comments_discussion_created_on; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_created_on ON comments_discussion USING btree (created_on);


--
-- Name: comments_discussion_creating_comment_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_creating_comment_id ON comments_discussion USING btree (creating_comment_id);


--
-- Name: comments_discussion_last_updated; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_last_updated ON comments_discussion USING btree (last_updated);


--
-- Name: comments_discussion_latest_visible_comment_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_latest_visible_comment_id ON comments_discussion USING btree (latest_visible_comment_id);


--
-- Name: comments_discussion_latest_visible_comment_id_456d723de093b44a; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_latest_visible_comment_id_456d723de093b44a ON comments_discussion USING btree (latest_visible_comment_id, namespace_id);


--
-- Name: comments_discussion_namespace_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_namespace_id ON comments_discussion USING btree (namespace_id);


--
-- Name: comments_discussion_primary_tag_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_primary_tag_id ON comments_discussion USING btree (primary_tag_id);


--
-- Name: comments_discussion_status; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_status ON comments_discussion USING btree (status);


--
-- Name: comments_discussion_status_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_status_like ON comments_discussion USING btree (status varchar_pattern_ops);


--
-- Name: comments_discussion_tags_discussion_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_tags_discussion_id ON comments_discussion_tags USING btree (discussion_id);


--
-- Name: comments_discussion_tags_tag_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_discussion_tags_tag_id ON comments_discussion_tags USING btree (tag_id);


--
-- Name: comments_namespace_site_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_namespace_site_id ON comments_namespace USING btree (site_id);


--
-- Name: comments_rating_discussion_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_rating_discussion_id ON comments_rating USING btree (discussion_id);


--
-- Name: comments_rating_last_updated; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_rating_last_updated ON comments_rating USING btree (last_updated);


--
-- Name: comments_rating_rated_by_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_rating_rated_by_id ON comments_rating USING btree (rated_by_id);


--
-- Name: comments_tag_last_updated; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_tag_last_updated ON comments_tag USING btree (last_updated);


--
-- Name: comments_tag_namespace_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_tag_namespace_id ON comments_tag USING btree (namespace_id);


--
-- Name: comments_tag_path; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_tag_path ON comments_tag USING btree (path);


--
-- Name: comments_tag_path_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX comments_tag_path_like ON comments_tag USING btree (path varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: importer_pluckimportedrating_rating_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX importer_pluckimportedrating_rating_id ON importer_pluckimportedrating USING btree (rating_id);


--
-- Name: moderation_abusereport_accused_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_abusereport_accused_id ON moderation_abusereport USING btree (accused_id);


--
-- Name: moderation_abusereport_category_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_abusereport_category_id ON moderation_abusereport USING btree (category_id);


--
-- Name: moderation_abusereport_comment_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_abusereport_comment_id ON moderation_abusereport USING btree (comment_id);


--
-- Name: moderation_abusereport_created_at; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_abusereport_created_at ON moderation_abusereport USING btree (created_on);


--
-- Name: moderation_abusereport_reported_by_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_abusereport_reported_by_id ON moderation_abusereport USING btree (reported_by_id);


--
-- Name: moderation_abusereport_status; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_abusereport_status ON moderation_abusereport USING btree (status);


--
-- Name: moderation_abusereport_status_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_abusereport_status_like ON moderation_abusereport USING btree (status varchar_pattern_ops);


--
-- Name: moderation_action_abuse_report_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_action_abuse_report_id ON moderation_action USING btree (abuse_report_id);


--
-- Name: moderation_action_avatar_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_action_avatar_id ON moderation_action USING btree (avatar_id);


--
-- Name: moderation_action_comment_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_action_comment_id ON moderation_action USING btree (comment_id);


--
-- Name: moderation_action_created_at; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_action_created_at ON moderation_action USING btree (created_on);


--
-- Name: moderation_action_discussion_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_action_discussion_id ON moderation_action USING btree (discussion_id);


--
-- Name: moderation_action_moderator_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_action_moderator_id ON moderation_action USING btree (moderator_id);


--
-- Name: moderation_action_profile_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_action_profile_id ON moderation_action USING btree (profile_id);


--
-- Name: moderation_action_sanction_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_action_sanction_id ON moderation_action USING btree (sanction_id);


--
-- Name: moderation_ipaddressnotes_ip_address; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_ipaddressnotes_ip_address ON moderation_ipaddressnotes USING btree (ip_address);


--
-- Name: moderation_ipaddressnotes_ip_address_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_ipaddressnotes_ip_address_like ON moderation_ipaddressnotes USING btree (ip_address varchar_pattern_ops);


--
-- Name: moderation_ipaddressnotes_moderator_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_ipaddressnotes_moderator_id ON moderation_ipaddressnotes USING btree (moderator_id);


--
-- Name: moderation_ipsblockedfromreportingabuse_ip; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_ipsblockedfromreportingabuse_ip ON moderation_ipsblockedfromreportingabuse USING btree (ip);


--
-- Name: moderation_ipsblockedfromreportingabuse_ip_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_ipsblockedfromreportingabuse_ip_like ON moderation_ipsblockedfromreportingabuse USING btree (ip varchar_pattern_ops);


--
-- Name: moderation_ipsblockedfromreportingabuse_moderator_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_ipsblockedfromreportingabuse_moderator_id ON moderation_ipsblockedfromreportingabuse USING btree (moderator_id);


--
-- Name: moderation_moderatorprofile_profile_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_moderatorprofile_profile_id ON moderation_moderatorprofile USING btree (profile_id);


--
-- Name: moderation_moderatorprofile_user_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_moderatorprofile_user_id ON moderation_moderatorprofile USING btree (user_id);


--
-- Name: moderation_queues_moderationrequest_discussion_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_queues_moderationrequest_discussion_id ON moderation_queues_moderationrequest USING btree (discussion_id);


--
-- Name: moderation_queues_moderationrequest_moderator_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_queues_moderationrequest_moderator_id ON moderation_queues_moderationrequest USING btree (moderator_id);


--
-- Name: moderation_queues_moderationrequest_queue_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_queues_moderationrequest_queue_id ON moderation_queues_moderationrequest USING btree (queue_id);


--
-- Name: moderation_sanction_created_by_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_sanction_created_by_id ON moderation_sanction USING btree (created_by_id);


--
-- Name: moderation_sanction_sanction_type; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_sanction_sanction_type ON moderation_sanction USING btree (sanction_type);


--
-- Name: moderation_sanction_sanction_type_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_sanction_sanction_type_like ON moderation_sanction USING btree (sanction_type varchar_pattern_ops);


--
-- Name: moderation_sanction_sanction_until; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_sanction_sanction_until ON moderation_sanction USING btree (sanction_until);


--
-- Name: moderation_sanction_user_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX moderation_sanction_user_id ON moderation_sanction USING btree (user_id);


--
-- Name: profiles_profile_badges_badge_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_badges_badge_id ON profiles_profile_badges USING btree (badge_id);


--
-- Name: profiles_profile_badges_profile_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_badges_profile_id ON profiles_profile_badges USING btree (profile_id);


--
-- Name: profiles_profile_created_on; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_created_on ON profiles_profile USING btree (created_on);


--
-- Name: profiles_profile_current_avatar_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_current_avatar_id ON profiles_profile USING btree (current_avatar_id);


--
-- Name: profiles_profile_is_social; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_is_social ON profiles_profile USING btree (is_social);


--
-- Name: profiles_profile_last_ip_address; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_last_ip_address ON profiles_profile USING btree (last_ip_address);


--
-- Name: profiles_profile_last_ip_address_like; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_last_ip_address_like ON profiles_profile USING btree (last_ip_address varchar_pattern_ops);


--
-- Name: profiles_profile_total_comment_count; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_total_comment_count ON profiles_profile USING btree (total_comment_count);


--
-- Name: profiles_profile_user_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_user_id ON profiles_profile USING btree (user_id);


--
-- Name: profiles_profile_vanity_url; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX profiles_profile_vanity_url ON profiles_profile USING btree (vanity_url);


--
-- Name: recommendations_recommendation_comment_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX recommendations_recommendation_comment_id ON recommendations_recommendation USING btree (comment_id);


--
-- Name: recommendations_recommendation_recommended_by_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX recommendations_recommendation_recommended_by_id ON recommendations_recommendation USING btree (recommended_by_id);


--
-- Name: switchboard_state_switch_id; Type: INDEX; Schema: public; Owner: pgowner; Tablespace: 
--

CREATE INDEX switchboard_state_switch_id ON switchboard_state USING btree (switch_id);


--
-- Name: abuse_report_id_refs_id_2988495895dddc2e; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_action
    ADD CONSTRAINT abuse_report_id_refs_id_2988495895dddc2e FOREIGN KEY (abuse_report_id) REFERENCES moderation_abusereport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accused_id_refs_id_37217111265eb8dc; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_abusereport
    ADD CONSTRAINT accused_id_refs_id_37217111265eb8dc FOREIGN KEY (accused_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: action_id_refs_id_12bb42afd1257175; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedcomment
    ADD CONSTRAINT action_id_refs_id_12bb42afd1257175 FOREIGN KEY (action_id) REFERENCES moderation_action(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_message_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: avatar_id_refs_id_466e633decfc5f81; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_action
    ADD CONSTRAINT avatar_id_refs_id_466e633decfc5f81 FOREIGN KEY (avatar_id) REFERENCES avatars_avatar(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: badge_id_refs_id_53b95d8cb3e69a35; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY profiles_profile_badges
    ADD CONSTRAINT badge_id_refs_id_53b95d8cb3e69a35 FOREIGN KEY (badge_id) REFERENCES profiles_badge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_26aa4fe00b91cbc9; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_abusereport
    ADD CONSTRAINT category_id_refs_id_26aa4fe00b91cbc9 FOREIGN KEY (category_id) REFERENCES moderation_abusecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_id_refs_id_1dd01da63e55c731; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_action
    ADD CONSTRAINT comment_id_refs_id_1dd01da63e55c731 FOREIGN KEY (comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_id_refs_id_2211788ac1c891f2; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_commenthighlight
    ADD CONSTRAINT comment_id_refs_id_2211788ac1c891f2 FOREIGN KEY (comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_id_refs_id_27b7ee8904c1b13; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_queues_moderationrequest
    ADD CONSTRAINT comment_id_refs_id_27b7ee8904c1b13 FOREIGN KEY (comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_id_refs_id_28ed674d7b1b4724; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_abusereport
    ADD CONSTRAINT comment_id_refs_id_28ed674d7b1b4724 FOREIGN KEY (comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_id_refs_id_4f0a8e25c3bfa4f4; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_commentrecommendations
    ADD CONSTRAINT comment_id_refs_id_4f0a8e25c3bfa4f4 FOREIGN KEY (comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_id_refs_id_6441e2cf0e269e43; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedreview
    ADD CONSTRAINT comment_id_refs_id_6441e2cf0e269e43 FOREIGN KEY (comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_id_refs_id_653e891137f9a181; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY recommendations_recommendation
    ADD CONSTRAINT comment_id_refs_id_653e891137f9a181 FOREIGN KEY (comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_id_refs_id_68dbaee279080207; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedcomment
    ADD CONSTRAINT comment_id_refs_id_68dbaee279080207 FOREIGN KEY (comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_posted_by_id_refs_id_4480c5be3b069bfa; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_commenthighlight
    ADD CONSTRAINT comment_posted_by_id_refs_id_4480c5be3b069bfa FOREIGN KEY (comment_posted_by_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_11c9b6321c566ce1; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_sanction
    ADD CONSTRAINT created_by_id_refs_id_11c9b6321c566ce1 FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_37574aff78f4ce57; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY antispam_badword
    ADD CONSTRAINT created_by_id_refs_id_37574aff78f4ce57 FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: creating_comment_id_refs_id_1fca803b6e61b527; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_discussion
    ADD CONSTRAINT creating_comment_id_refs_id_1fca803b6e61b527 FOREIGN KEY (creating_comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: current_avatar_id_refs_id_5e2be1fbe11cf5db; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY profiles_profile
    ADD CONSTRAINT current_avatar_id_refs_id_5e2be1fbe11cf5db FOREIGN KEY (current_avatar_id) REFERENCES avatars_avatar(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: discussion_id_refs_id_26a61b8ebd46315; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_comment
    ADD CONSTRAINT discussion_id_refs_id_26a61b8ebd46315 FOREIGN KEY (discussion_id) REFERENCES comments_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: discussion_id_refs_id_380556b396e63071; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_action
    ADD CONSTRAINT discussion_id_refs_id_380556b396e63071 FOREIGN KEY (discussion_id) REFERENCES comments_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: discussion_id_refs_id_449eaad17fc7f532; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_discussion_tags
    ADD CONSTRAINT discussion_id_refs_id_449eaad17fc7f532 FOREIGN KEY (discussion_id) REFERENCES comments_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: discussion_id_refs_id_4acaede2360ed6dc; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_rating
    ADD CONSTRAINT discussion_id_refs_id_4acaede2360ed6dc FOREIGN KEY (discussion_id) REFERENCES comments_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: discussion_id_refs_id_b297a5a878a7d4b; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_queues_moderationrequest
    ADD CONSTRAINT discussion_id_refs_id_b297a5a878a7d4b FOREIGN KEY (discussion_id) REFERENCES comments_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: highlighted_by_id_refs_id_4480c5be3b069bfa; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_commenthighlight
    ADD CONSTRAINT highlighted_by_id_refs_id_4480c5be3b069bfa FOREIGN KEY (highlighted_by_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: latest_visible_comment_id_refs_id_1fca803b6e61b527; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_discussion
    ADD CONSTRAINT latest_visible_comment_id_refs_id_1fca803b6e61b527 FOREIGN KEY (latest_visible_comment_id) REFERENCES comments_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: moderator_id_refs_id_3f3a2f5954a9e9e2; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_queues_moderationrequest
    ADD CONSTRAINT moderator_id_refs_id_3f3a2f5954a9e9e2 FOREIGN KEY (moderator_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: moderator_id_refs_id_4530472607be015e; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_ipsblockedfromreportingabuse
    ADD CONSTRAINT moderator_id_refs_id_4530472607be015e FOREIGN KEY (moderator_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: moderator_id_refs_id_49788360712e942a; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_ipaddressnotes
    ADD CONSTRAINT moderator_id_refs_id_49788360712e942a FOREIGN KEY (moderator_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: moderator_id_refs_id_6b5a2258500626ec; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_action
    ADD CONSTRAINT moderator_id_refs_id_6b5a2258500626ec FOREIGN KEY (moderator_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: namespace_id_refs_id_535b042a1cd85e34; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_tag
    ADD CONSTRAINT namespace_id_refs_id_535b042a1cd85e34 FOREIGN KEY (namespace_id) REFERENCES comments_namespace(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: namespace_id_refs_id_fd1b9a43cd4e3cd; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_discussion
    ADD CONSTRAINT namespace_id_refs_id_fd1b9a43cd4e3cd FOREIGN KEY (namespace_id) REFERENCES comments_namespace(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posted_by_id_refs_id_2c9ac73586c3c6fb; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_comment
    ADD CONSTRAINT posted_by_id_refs_id_2c9ac73586c3c6fb FOREIGN KEY (posted_by_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: primary_tag_id_refs_id_698f495bb834ed0c; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_discussion
    ADD CONSTRAINT primary_tag_id_refs_id_698f495bb834ed0c FOREIGN KEY (primary_tag_id) REFERENCES comments_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_id_refs_id_24e6856d7bf25f6b; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY avatars_avatar
    ADD CONSTRAINT profile_id_refs_id_24e6856d7bf25f6b FOREIGN KEY (profile_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_id_refs_id_4f6dcb4bf49e90d1; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY profiles_profile_badges
    ADD CONSTRAINT profile_id_refs_id_4f6dcb4bf49e90d1 FOREIGN KEY (profile_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_id_refs_id_5f2b48735f55f457; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_action
    ADD CONSTRAINT profile_id_refs_id_5f2b48735f55f457 FOREIGN KEY (profile_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_id_refs_id_70ace7459b768625; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_moderatorprofile
    ADD CONSTRAINT profile_id_refs_id_70ace7459b768625 FOREIGN KEY (profile_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: queue_id_refs_id_6e16697e04b41287; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_queues_moderationrequest
    ADD CONSTRAINT queue_id_refs_id_6e16697e04b41287 FOREIGN KEY (queue_id) REFERENCES moderation_queues_moderationqueue(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rated_by_id_refs_id_5d430b6ad4483d0a; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_rating
    ADD CONSTRAINT rated_by_id_refs_id_5d430b6ad4483d0a FOREIGN KEY (rated_by_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rating_id_refs_id_5b950fa78b71c4df; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedrating
    ADD CONSTRAINT rating_id_refs_id_5b950fa78b71c4df FOREIGN KEY (rating_id) REFERENCES comments_rating(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recommendation_id_refs_id_174bc773ddf8ccaa; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY importer_pluckimportedrecommendation
    ADD CONSTRAINT recommendation_id_refs_id_174bc773ddf8ccaa FOREIGN KEY (recommendation_id) REFERENCES recommendations_recommendation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recommended_by_id_refs_id_4e1baccaf2495e47; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY recommendations_recommendation
    ADD CONSTRAINT recommended_by_id_refs_id_4e1baccaf2495e47 FOREIGN KEY (recommended_by_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reported_by_id_refs_id_37217111265eb8dc; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_abusereport
    ADD CONSTRAINT reported_by_id_refs_id_37217111265eb8dc FOREIGN KEY (reported_by_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sanction_id_refs_id_7810128a16f08192; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_action
    ADD CONSTRAINT sanction_id_refs_id_7810128a16f08192 FOREIGN KEY (sanction_id) REFERENCES moderation_sanction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_448b353ed306902d; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_namespace
    ADD CONSTRAINT site_id_refs_id_448b353ed306902d FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: switch_id_refs_id_476f89ab98f8aa25; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY switchboard_state
    ADD CONSTRAINT switch_id_refs_id_476f89ab98f8aa25 FOREIGN KEY (switch_id) REFERENCES switchboard_switch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tag_id_refs_id_416d1f571c22ab47; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY comments_discussion_tags
    ADD CONSTRAINT tag_id_refs_id_416d1f571c22ab47 FOREIGN KEY (tag_id) REFERENCES comments_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_36d0b8b98643dc9c; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_sanction
    ADD CONSTRAINT user_id_refs_id_36d0b8b98643dc9c FOREIGN KEY (user_id) REFERENCES profiles_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_831107f1; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_aa8f4260723c358; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY moderation_moderatorprofile
    ADD CONSTRAINT user_id_refs_id_aa8f4260723c358 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_f2045483; Type: FK CONSTRAINT; Schema: public; Owner: pgowner
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

