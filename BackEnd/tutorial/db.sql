PGDMP     -    -            
    x            mydb #   11.7 (Ubuntu 11.7-0ubuntu0.19.10.1) #   11.7 (Ubuntu 11.7-0ubuntu0.19.10.1) a               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16384    mydb    DATABASE     v   CREATE DATABASE mydb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE mydb;
             postgres    false            �            1259    16492 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    16490    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    205            	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    204            �            1259    16502    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    16500    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    207            
           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    206            �            1259    16484    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    16482    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    203                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    202            �            1259    16623    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         postgres    false            �            1259    16601    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    16599    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    211                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    210            �            1259    16406    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    16404    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    201                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    200            �            1259    16387    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    16385    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    16641    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    16655 	   kyma_book    TABLE     *  CREATE TABLE public.kyma_book (
    id integer NOT NULL,
    title text,
    imgurl character varying(255),
    smallimgurl character varying(255),
    numpages integer,
    formatbook text,
    publisher text,
    avgrating integer,
    ratecount integer,
    author text,
    description text
);
    DROP TABLE public.kyma_book;
       public         postgres    false            �            1259    16653    kyma_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kyma_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.kyma_book_id_seq;
       public       postgres    false    215                       0    0    kyma_book_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.kyma_book_id_seq OWNED BY public.kyma_book.id;
            public       postgres    false    214            �            1259    16587    quickstart_account    TABLE     p  CREATE TABLE public.quickstart_account (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    email character varying(60) NOT NULL,
    username character varying(30) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL
);
 &   DROP TABLE public.quickstart_account;
       public         postgres    false            �            1259    16585    quickstart_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quickstart_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.quickstart_account_id_seq;
       public       postgres    false    209                       0    0    quickstart_account_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.quickstart_account_id_seq OWNED BY public.quickstart_account.id;
            public       postgres    false    208            �            1259    16398    quickstart_signupuser    TABLE     �   CREATE TABLE public.quickstart_signupuser (
    id integer NOT NULL,
    username character varying(10) NOT NULL,
    email character varying(30) NOT NULL,
    password integer NOT NULL
);
 )   DROP TABLE public.quickstart_signupuser;
       public         postgres    false            �            1259    16396    quickstart_signupuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quickstart_signupuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.quickstart_signupuser_id_seq;
       public       postgres    false    199                       0    0    quickstart_signupuser_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.quickstart_signupuser_id_seq OWNED BY public.quickstart_signupuser.id;
            public       postgres    false    198            ;           2604    16495    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            <           2604    16505    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            :           2604    16487    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            >           2604    16604    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            9           2604    16409    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            7           2604    16390    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            @           2604    16658    kyma_book id    DEFAULT     l   ALTER TABLE ONLY public.kyma_book ALTER COLUMN id SET DEFAULT nextval('public.kyma_book_id_seq'::regclass);
 ;   ALTER TABLE public.kyma_book ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215            =           2604    16590    quickstart_account id    DEFAULT     ~   ALTER TABLE ONLY public.quickstart_account ALTER COLUMN id SET DEFAULT nextval('public.quickstart_account_id_seq'::regclass);
 D   ALTER TABLE public.quickstart_account ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            8           2604    16401    quickstart_signupuser id    DEFAULT     �   ALTER TABLE ONLY public.quickstart_signupuser ALTER COLUMN id SET DEFAULT nextval('public.quickstart_signupuser_id_seq'::regclass);
 G   ALTER TABLE public.quickstart_signupuser ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �          0    16492 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    205   �{       �          0    16502    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    207   �{       �          0    16484    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    203   �{       �          0    16623    authtoken_token 
   TABLE DATA               @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public       postgres    false    212   a}       �          0    16601    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    211   �}       �          0    16406    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    201   �~       �          0    16387    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197                     0    16641    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    213   t�                 0    16655 	   kyma_book 
   TABLE DATA               �   COPY public.kyma_book (id, title, imgurl, smallimgurl, numpages, formatbook, publisher, avgrating, ratecount, author, description) FROM stdin;
    public       postgres    false    215   ��       �          0    16587    quickstart_account 
   TABLE DATA               |   COPY public.quickstart_account (id, password, email, username, date_joined, last_login, is_staff, is_superuser) FROM stdin;
    public       postgres    false    209   ��       �          0    16398    quickstart_signupuser 
   TABLE DATA               N   COPY public.quickstart_signupuser (id, username, email, password) FROM stdin;
    public       postgres    false    199   ��                  0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    204                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    206                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
            public       postgres    false    202                       0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 5, true);
            public       postgres    false    210                       0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
            public       postgres    false    200                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);
            public       postgres    false    196                       0    0    kyma_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.kyma_book_id_seq', 1, false);
            public       postgres    false    214                       0    0    quickstart_account_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.quickstart_account_id_seq', 7, true);
            public       postgres    false    208                       0    0    quickstart_signupuser_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.quickstart_signupuser_id_seq', 1, false);
            public       postgres    false    198            P           2606    16532    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    205            U           2606    16518 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    207    207            X           2606    16507 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    207            R           2606    16497    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    205            K           2606    16509 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    203    203            M           2606    16489 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    203            g           2606    16627 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public         postgres    false    212            i           2606    16629 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public         postgres    false    212            c           2606    16610 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    211            F           2606    16413 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    201    201            H           2606    16411 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    201            B           2606    16395 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            l           2606    16648 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    213            o           2606    16663    kyma_book kyma_book_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.kyma_book
    ADD CONSTRAINT kyma_book_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.kyma_book DROP CONSTRAINT kyma_book_pkey;
       public         postgres    false    215            [           2606    16594 /   quickstart_account quickstart_account_email_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.quickstart_account
    ADD CONSTRAINT quickstart_account_email_key UNIQUE (email);
 Y   ALTER TABLE ONLY public.quickstart_account DROP CONSTRAINT quickstart_account_email_key;
       public         postgres    false    209            ]           2606    16592 *   quickstart_account quickstart_account_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.quickstart_account
    ADD CONSTRAINT quickstart_account_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.quickstart_account DROP CONSTRAINT quickstart_account_pkey;
       public         postgres    false    209            `           2606    16596 2   quickstart_account quickstart_account_username_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.quickstart_account
    ADD CONSTRAINT quickstart_account_username_key UNIQUE (username);
 \   ALTER TABLE ONLY public.quickstart_account DROP CONSTRAINT quickstart_account_username_key;
       public         postgres    false    209            D           2606    16403 0   quickstart_signupuser quickstart_signupuser_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.quickstart_signupuser
    ADD CONSTRAINT quickstart_signupuser_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.quickstart_signupuser DROP CONSTRAINT quickstart_signupuser_pkey;
       public         postgres    false    199            N           1259    16533    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    205            S           1259    16529 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    207            V           1259    16530 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    207            I           1259    16515 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    203            e           1259    16635 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public         postgres    false    212            a           1259    16621 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    211            d           1259    16622 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    211            j           1259    16650 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    213            m           1259    16649 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    213            Y           1259    16597 &   quickstart_account_email_7eaab422_like    INDEX     z   CREATE INDEX quickstart_account_email_7eaab422_like ON public.quickstart_account USING btree (email varchar_pattern_ops);
 :   DROP INDEX public.quickstart_account_email_7eaab422_like;
       public         postgres    false    209            ^           1259    16598 )   quickstart_account_username_2644f280_like    INDEX     �   CREATE INDEX quickstart_account_username_2644f280_like ON public.quickstart_account USING btree (username varchar_pattern_ops);
 =   DROP INDEX public.quickstart_account_username_2644f280_like;
       public         postgres    false    209            r           2606    16524 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    2893    203    207            q           2606    16519 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    2898    207            p           2606    16510 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2888    203    201            u           2606    16636 I   authtoken_token authtoken_token_user_id_35299eff_fk_quickstart_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_quickstart_account_id FOREIGN KEY (user_id) REFERENCES public.quickstart_account(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_quickstart_account_id;
       public       postgres    false    212    2909    209            s           2606    16611 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    201    2888    211            t           2606    16616 K   django_admin_log django_admin_log_user_id_c564eba6_fk_quickstart_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_quickstart_account_id FOREIGN KEY (user_id) REFERENCES public.quickstart_account(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_quickstart_account_id;
       public       postgres    false    2909    209    211            �      x������ � �      �      x������ � �      �   l  x�]�Mn�0��}����	�g�+tY�J�EԎBh�훌?{f��g�w18�څ�;����ߗ���qf|��֤��.���i&mC��o~Z�4�vK����\&ҵ��<��`j
�o��my��$��(�$q������=�_�c�|���9x�PF�ĺ�lYa$)�d��#P��;W�r�mJu���&��`����X6�,���̐W؎�QU!�Rt��j�����MO�2J2d�<�.)QVd��4�(��+uw��pGmx�Z�	� �0u��PU�8}F�T_�[��`��3-߶Vg��hQw�	:@��g@X�����`���6��3�p�ҳ�-p�³� �����HQ˧m�Mc���5 #q�X������Z�r��      �   w   x�=�A
�0�u|��K̗dIVΒ���?BS(��<Z�+�n����Mdq$�#�����`석��tJ�M��9[+1)ܧ���l&���.z�F��|-y���C�gy9k)�T�#R      �   �   x�m��
�0���)z�.��l���{x	Zm���}T"���!�����	gNY<S�iV�{٦:a�k�-D�G]ʊ�g����;��(�Z2��#p^�q�^�?�8 ����{`�*ulY,k�@̍�2�X8d����`8ܻ�s���B      �   z   x�]��
1�ϓ�֟U��K�e-�3�3���+A���#$�fw*�������J+ؑ��f���ӳE��\5r�KcÁ�-G��,�^�I��կ�q���4�R��gJ=;��$\6 ^��<       �   M  x����n�0E��W���h.�`��H���)
�p���I�����B�Y��g���}�}磟
 @��Mh\[<#<�~"����R)����a���}7�y�|��ۻ�_i�	�&U�($�\hU�N���n�I-�RdrY�?ڣ�f�����k;�n[���_k4�Zh��4Ň�\��%�a�	3Iܒ�ǥ���u�Pl�<������M��þ�"O��OZ�DN � g��ԌyH�����81������\��\�ɺ���qF��ir{���JB��2�U���n���HTf����)�I4�hm?��c$f��H9܈�t�vy{���M\׽��2��#��{i�G�%.8�"a{���o�Ǫ�UI:Z�Q®k�_�t�4T�*m�k�	����ֈ�9D+��ed��+���9n��i��n_�f�-����1�0�]Eшx�P���>T�"eQ�J��:������KF֫Ic���������+B�0�_"�ۏ��E��Ԁ��R���TΝ[;���kA5ci���u�\��X1�+ *�-�*��_�:�Q��o��l��K�l            x��Ɏ�0  г|��'��"Un"Ĩ,�(��Q�RY�
_?��S�7hY���E@(���P�%ۉ��j��m��Qn��jv��U�h�y�6�����R�D`�Q�E,���q����p:�|'����Q�"�0��@�9�f���F�;������(������4�{��Ј��*y��l���{�m�*���S�}�0��	�'�nK���k��.����If>�Z��\3u����6� C(C�G�:Tu�Zn��_�t���$I�ӯ`V            x������ � �      �   �   x�m��N�@����.�5%w�03BҤhj�-�5֘:@�0-�j�ު�br6'��M�U����	ra" `��"�������.
y;��ALZGg�a���8����/�+��<U��zD�T���Z'em����aHa��R��˩%� �\��v�[H.�%�Hg���}R|U�n�P���&���q���y/#�n��z���S�|�P����i⍈N�q��ݏ�|�2��0����%ާ�).ANr��2���\�      �      x������ � �     