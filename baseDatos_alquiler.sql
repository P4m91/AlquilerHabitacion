PGDMP     .                     y            postgres    13.1    13.1 ?               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3100                        2615    16928    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            �            1259    17183    alquileres_id_alquiler_seq    SEQUENCE     �   CREATE SEQUENCE public.alquileres_id_alquiler_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.alquileres_id_alquiler_seq;
       public          postgres    false    4            �            1259    17048 
   alquileres    TABLE     �  CREATE TABLE public.alquileres (
    ciudad character varying(50),
    localidad character varying(50),
    picture text,
    precio integer,
    numero_habitaciones integer,
    id_alquiler integer DEFAULT nextval('public.alquileres_id_alquiler_seq'::regclass) NOT NULL,
    "numero_baños" integer,
    amueblada boolean,
    ascensor boolean,
    animales boolean,
    curso_completo boolean,
    direccion character varying(100)
);
    DROP TABLE public.alquileres;
       public         heap    postgres    false    220    4            �            1259    17054    ti18n    TABLE     �   CREATE TABLE public.ti18n (
    id_i18n integer NOT NULL,
    class_name character varying(150),
    i18n_description character varying(250)
);
    DROP TABLE public.ti18n;
       public         heap    postgres    false    4            �            1259    17057    ti18n_id_i18n_seq    SEQUENCE     �   ALTER TABLE public.ti18n ALTER COLUMN id_i18n ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ti18n_id_i18n_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    202            �            1259    17059    ti18n_value    TABLE     �   CREATE TABLE public.ti18n_value (
    id_i18n_value integer NOT NULL,
    id_i18n integer NOT NULL,
    key character varying(250),
    es_es character varying(10485760),
    en_us character varying(10485760),
    gl_es character varying(10485760)
);
    DROP TABLE public.ti18n_value;
       public         heap    postgres    false    4            �            1259    17065    ti18n_value_id_i18n_value_seq    SEQUENCE     �   ALTER TABLE public.ti18n_value ALTER COLUMN id_i18n_value ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ti18n_value_id_i18n_value_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204    4            �            1259    17067    trequest_statistics    TABLE     \  CREATE TABLE public.trequest_statistics (
    id_request_statistics integer NOT NULL,
    service_name character varying(255),
    method_name character varying(50),
    user_name character varying(50),
    execution_date date,
    execution_time integer,
    method_params character varying(5000),
    service_exception character varying(5000)
);
 '   DROP TABLE public.trequest_statistics;
       public         heap    postgres    false    4            �            1259    17073    trole    TABLE     �   CREATE TABLE public.trole (
    id_rolename integer NOT NULL,
    rolename character varying(255),
    xmlclientpermission character varying(10485760)
);
    DROP TABLE public.trole;
       public         heap    postgres    false    4            �            1259    17079    trole_id_rolename_seq    SEQUENCE     �   ALTER TABLE public.trole ALTER COLUMN id_rolename ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.trole_id_rolename_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207    4            �            1259    17081    trole_server_permission    TABLE     �   CREATE TABLE public.trole_server_permission (
    id_role_server_permission integer NOT NULL,
    id_rolename integer,
    id_server_permission integer
);
 +   DROP TABLE public.trole_server_permission;
       public         heap    postgres    false    4            �            1259    17084 5   trole_server_permission_id_role_server_permission_seq    SEQUENCE       ALTER TABLE public.trole_server_permission ALTER COLUMN id_role_server_permission ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.trole_server_permission_id_role_server_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    209            �            1259    17086    tserver_permission    TABLE     �   CREATE TABLE public.tserver_permission (
    id_server_permission integer NOT NULL,
    permission_name character varying(10485760)
);
 &   DROP TABLE public.tserver_permission;
       public         heap    postgres    false    4            �            1259    17092 +   tserver_permission_id_server_permission_seq    SEQUENCE       ALTER TABLE public.tserver_permission ALTER COLUMN id_server_permission ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tserver_permission_id_server_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    211            �            1259    17094    tsetting    TABLE     �   CREATE TABLE public.tsetting (
    id_setting integer NOT NULL,
    setting_key character varying(10485760),
    setting_value character varying(10485760),
    setting_comment character varying(10485760)
);
    DROP TABLE public.tsetting;
       public         heap    postgres    false    4            �            1259    17100    tsetting_id_setting_seq    SEQUENCE     �   ALTER TABLE public.tsetting ALTER COLUMN id_setting ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tsetting_id_setting_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    213    4            �            1259    17102    tuser    TABLE     �  CREATE TABLE public.tuser (
    user_ character varying(50) NOT NULL,
    password character varying(50),
    name character varying(50),
    surname character varying(50),
    email character varying(50),
    nif character varying(50),
    userblocked timestamp without time zone,
    lastpasswordupdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    firstlogin boolean DEFAULT true,
    picture text
);
    DROP TABLE public.tuser;
       public         heap    postgres    false    4            �            1259    17110    tuser_preference    TABLE     �   CREATE TABLE public.tuser_preference (
    id_user_preference integer NOT NULL,
    preference_name character varying(150),
    user_login character varying(150),
    preference_value character varying(10485760)
);
 $   DROP TABLE public.tuser_preference;
       public         heap    postgres    false    4            �            1259    17116 '   tuser_preference_id_user_preference_seq    SEQUENCE     �   ALTER TABLE public.tuser_preference ALTER COLUMN id_user_preference ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tuser_preference_id_user_preference_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216    4            �            1259    17118 
   tuser_role    TABLE     �   CREATE TABLE public.tuser_role (
    id_user_role integer NOT NULL,
    id_rolename integer,
    user_ character varying(50)
);
    DROP TABLE public.tuser_role;
       public         heap    postgres    false    4            �            1259    17121    tuser_role_id_user_role_seq    SEQUENCE     �   ALTER TABLE public.tuser_role ALTER COLUMN id_user_role ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tuser_role_id_user_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    218                      0    17048 
   alquileres 
   TABLE DATA           �   COPY public.alquileres (ciudad, localidad, picture, precio, numero_habitaciones, id_alquiler, "numero_baños", amueblada, ascensor, animales, curso_completo, direccion) FROM stdin;
    public          postgres    false    201   1N                 0    17054    ti18n 
   TABLE DATA           F   COPY public.ti18n (id_i18n, class_name, i18n_description) FROM stdin;
    public          postgres    false    202   �N                 0    17059    ti18n_value 
   TABLE DATA           W   COPY public.ti18n_value (id_i18n_value, id_i18n, key, es_es, en_us, gl_es) FROM stdin;
    public          postgres    false    204   �N                 0    17067    trequest_statistics 
   TABLE DATA           �   COPY public.trequest_statistics (id_request_statistics, service_name, method_name, user_name, execution_date, execution_time, method_params, service_exception) FROM stdin;
    public          postgres    false    206   �N       	          0    17073    trole 
   TABLE DATA           K   COPY public.trole (id_rolename, rolename, xmlclientpermission) FROM stdin;
    public          postgres    false    207   
O                 0    17081    trole_server_permission 
   TABLE DATA           o   COPY public.trole_server_permission (id_role_server_permission, id_rolename, id_server_permission) FROM stdin;
    public          postgres    false    209   cO                 0    17086    tserver_permission 
   TABLE DATA           S   COPY public.tserver_permission (id_server_permission, permission_name) FROM stdin;
    public          postgres    false    211   �O                 0    17094    tsetting 
   TABLE DATA           [   COPY public.tsetting (id_setting, setting_key, setting_value, setting_comment) FROM stdin;
    public          postgres    false    213   �O                 0    17102    tuser 
   TABLE DATA           �   COPY public.tuser (user_, password, name, surname, email, nif, userblocked, lastpasswordupdate, firstlogin, picture) FROM stdin;
    public          postgres    false    215   �O                 0    17110    tuser_preference 
   TABLE DATA           m   COPY public.tuser_preference (id_user_preference, preference_name, user_login, preference_value) FROM stdin;
    public          postgres    false    216   �P                 0    17118 
   tuser_role 
   TABLE DATA           F   COPY public.tuser_role (id_user_role, id_rolename, user_) FROM stdin;
    public          postgres    false    218   �S                  0    0    alquileres_id_alquiler_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.alquileres_id_alquiler_seq', 2, true);
          public          postgres    false    220                        0    0    ti18n_id_i18n_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ti18n_id_i18n_seq', 1, false);
          public          postgres    false    203            !           0    0    ti18n_value_id_i18n_value_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ti18n_value_id_i18n_value_seq', 1, false);
          public          postgres    false    205            "           0    0    trole_id_rolename_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.trole_id_rolename_seq', 1, true);
          public          postgres    false    208            #           0    0 5   trole_server_permission_id_role_server_permission_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.trole_server_permission_id_role_server_permission_seq', 1, false);
          public          postgres    false    210            $           0    0 +   tserver_permission_id_server_permission_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.tserver_permission_id_server_permission_seq', 1, false);
          public          postgres    false    212            %           0    0    tsetting_id_setting_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tsetting_id_setting_seq', 2, true);
          public          postgres    false    214            &           0    0 '   tuser_preference_id_user_preference_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.tuser_preference_id_user_preference_seq', 2, true);
          public          postgres    false    217            '           0    0    tuser_role_id_user_role_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tuser_role_id_user_role_seq', 6, true);
          public          postgres    false    219            g           2606    17175    alquileres alquileres_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.alquileres
    ADD CONSTRAINT alquileres_pk PRIMARY KEY (id_alquiler);
 B   ALTER TABLE ONLY public.alquileres DROP CONSTRAINT alquileres_pk;
       public            postgres    false    201            i           2606    17126    ti18n ti18n_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.ti18n
    ADD CONSTRAINT ti18n_pkey PRIMARY KEY (id_i18n);
 :   ALTER TABLE ONLY public.ti18n DROP CONSTRAINT ti18n_pkey;
       public            postgres    false    202            k           2606    17128    ti18n_value ti18n_value_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.ti18n_value
    ADD CONSTRAINT ti18n_value_pkey PRIMARY KEY (id_i18n_value);
 F   ALTER TABLE ONLY public.ti18n_value DROP CONSTRAINT ti18n_value_pkey;
       public            postgres    false    204            m           2606    17130 ,   trequest_statistics trequest_statistics_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.trequest_statistics
    ADD CONSTRAINT trequest_statistics_pkey PRIMARY KEY (id_request_statistics);
 V   ALTER TABLE ONLY public.trequest_statistics DROP CONSTRAINT trequest_statistics_pkey;
       public            postgres    false    206            o           2606    17132    trole trole_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.trole
    ADD CONSTRAINT trole_pkey PRIMARY KEY (id_rolename);
 :   ALTER TABLE ONLY public.trole DROP CONSTRAINT trole_pkey;
       public            postgres    false    207            q           2606    17134 4   trole_server_permission trole_server_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT trole_server_permission_pkey PRIMARY KEY (id_role_server_permission);
 ^   ALTER TABLE ONLY public.trole_server_permission DROP CONSTRAINT trole_server_permission_pkey;
       public            postgres    false    209            s           2606    17136 *   tserver_permission tserver_permission_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tserver_permission
    ADD CONSTRAINT tserver_permission_pkey PRIMARY KEY (id_server_permission);
 T   ALTER TABLE ONLY public.tserver_permission DROP CONSTRAINT tserver_permission_pkey;
       public            postgres    false    211            u           2606    17138    tsetting tsetting_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tsetting
    ADD CONSTRAINT tsetting_pkey PRIMARY KEY (id_setting);
 @   ALTER TABLE ONLY public.tsetting DROP CONSTRAINT tsetting_pkey;
       public            postgres    false    213            w           2606    17140    tuser tuser_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tuser
    ADD CONSTRAINT tuser_pkey PRIMARY KEY (user_);
 :   ALTER TABLE ONLY public.tuser DROP CONSTRAINT tuser_pkey;
       public            postgres    false    215            z           2606    17142 &   tuser_preference tuser_preference_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.tuser_preference
    ADD CONSTRAINT tuser_preference_pkey PRIMARY KEY (id_user_preference);
 P   ALTER TABLE ONLY public.tuser_preference DROP CONSTRAINT tuser_preference_pkey;
       public            postgres    false    216            |           2606    17144    tuser_role tuser_role_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_pkey PRIMARY KEY (id_user_role);
 D   ALTER TABLE ONLY public.tuser_role DROP CONSTRAINT tuser_role_pkey;
       public            postgres    false    218            x           1259    17145    unique_email    INDEX     F   CREATE UNIQUE INDEX unique_email ON public.tuser USING btree (email);
     DROP INDEX public.unique_email;
       public            postgres    false    215                       2606    17146    tuser_role fk_trole    FK CONSTRAINT        ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT fk_trole FOREIGN KEY (id_rolename) REFERENCES public.trole(id_rolename);
 =   ALTER TABLE ONLY public.tuser_role DROP CONSTRAINT fk_trole;
       public          postgres    false    207    218    2927            }           2606    17151 2   trole_server_permission fk_trole_server_permission    FK CONSTRAINT     �   ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT fk_trole_server_permission FOREIGN KEY (id_rolename) REFERENCES public.trole(id_rolename);
 \   ALTER TABLE ONLY public.trole_server_permission DROP CONSTRAINT fk_trole_server_permission;
       public          postgres    false    209    207    2927            ~           2606    17156 -   trole_server_permission fk_tserver_permission    FK CONSTRAINT     �   ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT fk_tserver_permission FOREIGN KEY (id_server_permission) REFERENCES public.tserver_permission(id_server_permission);
 W   ALTER TABLE ONLY public.trole_server_permission DROP CONSTRAINT fk_tserver_permission;
       public          postgres    false    211    209    2931            �           2606    17161    tuser_role fk_tuser    FK CONSTRAINT     s   ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT fk_tuser FOREIGN KEY (user_) REFERENCES public.tuser(user_);
 =   ALTER TABLE ONLY public.tuser_role DROP CONSTRAINT fk_tuser;
       public          postgres    false    215    218    2935               r   x�sTp�/*=�1���2��*H�425�4�� ��Ή99�
�9�ə�:F
�
��v9s�e��s�	d��D��I�[���06 �i0C��K��RR\s�2��b���� t�8B            x������ � �            x������ � �            x������ � �      	   I   x�3�LL���㴱���Q(K-*��ϳU2�3PRH�K�O��K�U
qӵP���)NM.-�,���ч3�b���� [�            x������ � �            x������ � �         ;   x�3�t��L,��".#Δ���Ԣ���<N==C��<����Լ�Ģ�|=�=... ���         �   x�}�A
�0E��SxC3IM�Jѕ\	�6��֚�Mo�9��M����3��[�3u@����8��:���L& k�C�8R����d��R��j-��`���q��u.�Lp�2��pO
�ͷ$�%�SS��m���)���B��/Ų�oC��7�mC�ױ��2����oAe���q��,"����׳�%I���l�         �  x�]�[o�:���sdä-�C�I���6�:�Q�	6E�pɯ��f4�΃e��ދe�sf�sy��;�Uy*ۼtf۽-g�/�s���,0��y�2��̰��4Uͯ���^(��e�+F���S��e�5:��rȐ�V��V�%�ru�;搅�+y����[y+��r+�r�&�l��D�g�L�xU��A�E�Y���9����N�h�C���*w�	<�>�V�J[o�Ź��,��[[_2�-!�lrCM��.u�5u!O�]>�d �[�k��獳�Y8<
,w�!�����:���N�|�s���S,|.$���oU@��l�N3a�D�����#���}���C�)�G?��[��}��#��ɀ���C�Q3<lVc��b��L��>~�j�b�֒�䏠r��j$\�5'Z>|j��7�3���yb�Nyk��Y�����`�ʣ_K��aiɋ���T}f�����9cA,�+C��W�5�$,���6�p5��Rn�C��'-j�������{Y�����D�:��{(M�g-�c�,,0��-�77�"��&:��)U����rt�[����ŏ,����9,g,��/n����\����Rǻ�uL�����%N�1s%Ԣd�����=��<�F��Ox6Y{�]����wK.��`]��"J���;
� ��G��NFS����>����|���U+         &   x�3���t��L,�21sS��@,ǼD�=... �L     