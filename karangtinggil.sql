PGDMP     	                    z            pelam    14.2    14.2 V    a           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            b           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            c           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            d           1262    16524    pelam    DATABASE     h   CREATE DATABASE pelam WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE pelam;
                asoko2    false            �            1259    16525    adonis_schema    TABLE     �   CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    batch integer NOT NULL,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.adonis_schema;
       public         heap    asoko2    false            �            1259    16529    adonis_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.adonis_schema_id_seq;
       public          asoko2    false    209            e           0    0    adonis_schema_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;
          public          asoko2    false    210            �            1259    16530    adonis_schema_versions    TABLE     M   CREATE TABLE public.adonis_schema_versions (
    version integer NOT NULL
);
 *   DROP TABLE public.adonis_schema_versions;
       public         heap    asoko2    false            �            1259    16533 
   api_tokens    TABLE     *  CREATE TABLE public.api_tokens (
    id integer NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    expires_at timestamp with time zone,
    created_at timestamp with time zone NOT NULL
);
    DROP TABLE public.api_tokens;
       public         heap    asoko2    false            �            1259    16538    api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.api_tokens_id_seq;
       public          asoko2    false    212            f           0    0    api_tokens_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.api_tokens_id_seq OWNED BY public.api_tokens.id;
          public          asoko2    false    213            �            1259    16539 	   domisilis    TABLE     �   CREATE TABLE public.domisilis (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.domisilis;
       public         heap    asoko2    false            �            1259    16544    domisilis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.domisilis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.domisilis_id_seq;
       public          asoko2    false    214            g           0    0    domisilis_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.domisilis_id_seq OWNED BY public.domisilis.id;
          public          asoko2    false    215            �            1259    16545    kehilangan_kks    TABLE     �   CREATE TABLE public.kehilangan_kks (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
 "   DROP TABLE public.kehilangan_kks;
       public         heap    asoko2    false            �            1259    16550    kehilangan_kks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kehilangan_kks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.kehilangan_kks_id_seq;
       public          asoko2    false    216            h           0    0    kehilangan_kks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kehilangan_kks_id_seq OWNED BY public.kehilangan_kks.id;
          public          asoko2    false    217            �            1259    16551    pemohons    TABLE     :  CREATE TABLE public.pemohons (
    id integer NOT NULL,
    nama character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date,
    jenis_kelamin character varying(255),
    kewarganegaraan character varying(255),
    nik character varying(255),
    agama character varying(255),
    pekerjaan character varying(255),
    telpon character varying(255),
    alamat character varying(255),
    kk character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer,
    user_id integer
);
    DROP TABLE public.pemohons;
       public         heap    asoko2    false            �            1259    16556    pemohons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pemohons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pemohons_id_seq;
       public          asoko2    false    218            i           0    0    pemohons_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pemohons_id_seq OWNED BY public.pemohons.id;
          public          asoko2    false    219            �            1259    16557    skcks    TABLE     �   CREATE TABLE public.skcks (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.skcks;
       public         heap    asoko2    false            �            1259    16562    skcks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skcks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.skcks_id_seq;
       public          asoko2    false    220            j           0    0    skcks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.skcks_id_seq OWNED BY public.skcks.id;
          public          asoko2    false    221            �            1259    16563    sktms    TABLE     �   CREATE TABLE public.sktms (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.sktms;
       public         heap    asoko2    false            �            1259    16568    sktms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sktms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sktms_id_seq;
       public          asoko2    false    222            k           0    0    sktms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sktms_id_seq OWNED BY public.sktms.id;
          public          asoko2    false    223            �            1259    16569    skus    TABLE     F  CREATE TABLE public.skus (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    nama_usaha character varying(255),
    jenis_usaha character varying(255),
    alamat_usaha character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.skus;
       public         heap    asoko2    false            �            1259    16574    skus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.skus_id_seq;
       public          asoko2    false    224            l           0    0    skus_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.skus_id_seq OWNED BY public.skus.id;
          public          asoko2    false    225            �            1259    16575    surat_keterangans    TABLE       CREATE TABLE public.surat_keterangans (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keterangan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
 %   DROP TABLE public.surat_keterangans;
       public         heap    asoko2    false            �            1259    16578    surat_keterangans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.surat_keterangans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.surat_keterangans_id_seq;
       public          asoko2    false    226            m           0    0    surat_keterangans_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.surat_keterangans_id_seq OWNED BY public.surat_keterangans.id;
          public          asoko2    false    227            �            1259    16579    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(180) NOT NULL,
    keterangan character varying(255),
    level text,
    remember_me_token character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    nama character varying(255),
    CONSTRAINT users_level_check CHECK ((level = ANY (ARRAY['1'::text, '2'::text, '3'::text, '4'::text])))
);
    DROP TABLE public.users;
       public         heap    asoko2    false            �            1259    16585    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          asoko2    false    228            n           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          asoko2    false    229            �           2604    16586    adonis_schema id    DEFAULT     t   ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);
 ?   ALTER TABLE public.adonis_schema ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    210    209            �           2604    16587    api_tokens id    DEFAULT     n   ALTER TABLE ONLY public.api_tokens ALTER COLUMN id SET DEFAULT nextval('public.api_tokens_id_seq'::regclass);
 <   ALTER TABLE public.api_tokens ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    213    212            �           2604    16588    domisilis id    DEFAULT     l   ALTER TABLE ONLY public.domisilis ALTER COLUMN id SET DEFAULT nextval('public.domisilis_id_seq'::regclass);
 ;   ALTER TABLE public.domisilis ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    215    214            �           2604    16589    kehilangan_kks id    DEFAULT     v   ALTER TABLE ONLY public.kehilangan_kks ALTER COLUMN id SET DEFAULT nextval('public.kehilangan_kks_id_seq'::regclass);
 @   ALTER TABLE public.kehilangan_kks ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    217    216            �           2604    16590    pemohons id    DEFAULT     j   ALTER TABLE ONLY public.pemohons ALTER COLUMN id SET DEFAULT nextval('public.pemohons_id_seq'::regclass);
 :   ALTER TABLE public.pemohons ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    219    218            �           2604    16591    skcks id    DEFAULT     d   ALTER TABLE ONLY public.skcks ALTER COLUMN id SET DEFAULT nextval('public.skcks_id_seq'::regclass);
 7   ALTER TABLE public.skcks ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    221    220            �           2604    16592    sktms id    DEFAULT     d   ALTER TABLE ONLY public.sktms ALTER COLUMN id SET DEFAULT nextval('public.sktms_id_seq'::regclass);
 7   ALTER TABLE public.sktms ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    223    222            �           2604    16593    skus id    DEFAULT     b   ALTER TABLE ONLY public.skus ALTER COLUMN id SET DEFAULT nextval('public.skus_id_seq'::regclass);
 6   ALTER TABLE public.skus ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    225    224            �           2604    16594    surat_keterangans id    DEFAULT     |   ALTER TABLE ONLY public.surat_keterangans ALTER COLUMN id SET DEFAULT nextval('public.surat_keterangans_id_seq'::regclass);
 C   ALTER TABLE public.surat_keterangans ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    227    226            �           2604    16595    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    229    228            J          0    16525    adonis_schema 
   TABLE DATA           H   COPY public.adonis_schema (id, name, batch, migration_time) FROM stdin;
    public          asoko2    false    209   �d       L          0    16530    adonis_schema_versions 
   TABLE DATA           9   COPY public.adonis_schema_versions (version) FROM stdin;
    public          asoko2    false    211   �f       M          0    16533 
   api_tokens 
   TABLE DATA           \   COPY public.api_tokens (id, user_id, name, type, token, expires_at, created_at) FROM stdin;
    public          asoko2    false    212   �f       O          0    16539 	   domisilis 
   TABLE DATA           _   COPY public.domisilis (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    214   �       Q          0    16545    kehilangan_kks 
   TABLE DATA           Y   COPY public.kehilangan_kks (id, pemohon_nik, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    216   ��       S          0    16551    pemohons 
   TABLE DATA           �   COPY public.pemohons (id, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, kewarganegaraan, nik, agama, pekerjaan, telpon, alamat, kk, created_at, updated_at, status, user_id) FROM stdin;
    public          asoko2    false    218   *�       U          0    16557    skcks 
   TABLE DATA           [   COPY public.skcks (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    220   ��       W          0    16563    sktms 
   TABLE DATA           [   COPY public.sktms (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    222   6�       Y          0    16569    skus 
   TABLE DATA           v   COPY public.skus (id, pemohon_nik, nama_usaha, jenis_usaha, alamat_usaha, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    224   ��       [          0    16575    surat_keterangans 
   TABLE DATA           h   COPY public.surat_keterangans (id, pemohon_nik, keterangan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    226   D�       ]          0    16579    users 
   TABLE DATA           {   COPY public.users (id, username, password, keterangan, level, remember_me_token, created_at, updated_at, nama) FROM stdin;
    public          asoko2    false    228   �       o           0    0    adonis_schema_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.adonis_schema_id_seq', 16, true);
          public          asoko2    false    210            p           0    0    api_tokens_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.api_tokens_id_seq', 469, true);
          public          asoko2    false    213            q           0    0    domisilis_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.domisilis_id_seq', 5, true);
          public          asoko2    false    215            r           0    0    kehilangan_kks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.kehilangan_kks_id_seq', 6, true);
          public          asoko2    false    217            s           0    0    pemohons_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pemohons_id_seq', 51, true);
          public          asoko2    false    219            t           0    0    skcks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.skcks_id_seq', 18, true);
          public          asoko2    false    221            u           0    0    sktms_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.sktms_id_seq', 23, true);
          public          asoko2    false    223            v           0    0    skus_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.skus_id_seq', 3, true);
          public          asoko2    false    225            w           0    0    surat_keterangans_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.surat_keterangans_id_seq', 4, true);
          public          asoko2    false    227            x           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 17, true);
          public          asoko2    false    229            �           2606    16597     adonis_schema adonis_schema_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.adonis_schema DROP CONSTRAINT adonis_schema_pkey;
       public            asoko2    false    209            �           2606    16599    api_tokens api_tokens_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_pkey;
       public            asoko2    false    212            �           2606    16601 "   api_tokens api_tokens_token_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_token_unique UNIQUE (token);
 L   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_token_unique;
       public            asoko2    false    212            �           2606    16603    domisilis domisilis_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.domisilis
    ADD CONSTRAINT domisilis_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.domisilis DROP CONSTRAINT domisilis_pkey;
       public            asoko2    false    214            �           2606    16605 "   kehilangan_kks kehilangan_kks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.kehilangan_kks
    ADD CONSTRAINT kehilangan_kks_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.kehilangan_kks DROP CONSTRAINT kehilangan_kks_pkey;
       public            asoko2    false    216            �           2606    16700    pemohons pemohons_nik 
   CONSTRAINT     O   ALTER TABLE ONLY public.pemohons
    ADD CONSTRAINT pemohons_nik UNIQUE (nik);
 ?   ALTER TABLE ONLY public.pemohons DROP CONSTRAINT pemohons_nik;
       public            asoko2    false    218            �           2606    16607    pemohons pemohons_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pemohons
    ADD CONSTRAINT pemohons_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pemohons DROP CONSTRAINT pemohons_pkey;
       public            asoko2    false    218            �           2606    16609    skcks skcks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.skcks
    ADD CONSTRAINT skcks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.skcks DROP CONSTRAINT skcks_pkey;
       public            asoko2    false    220            �           2606    16611    sktms sktms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sktms
    ADD CONSTRAINT sktms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sktms DROP CONSTRAINT sktms_pkey;
       public            asoko2    false    222            �           2606    16613    skus skus_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.skus
    ADD CONSTRAINT skus_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.skus DROP CONSTRAINT skus_pkey;
       public            asoko2    false    224            �           2606    16617 (   surat_keterangans surat_keterangans_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.surat_keterangans
    ADD CONSTRAINT surat_keterangans_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.surat_keterangans DROP CONSTRAINT surat_keterangans_pkey;
       public            asoko2    false    226            �           2606    16619    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            asoko2    false    228            �           2606    16620 %   api_tokens api_tokens_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_user_id_foreign;
       public          asoko2    false    212    228    3254            �           2606    16739    domisilis domisilis_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.domisilis
    ADD CONSTRAINT domisilis_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 @   ALTER TABLE ONLY public.domisilis DROP CONSTRAINT domisilis_fk;
       public          asoko2    false    218    214    3242            �           2606    16774     kehilangan_kks kehilangan_kks_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kehilangan_kks
    ADD CONSTRAINT kehilangan_kks_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 J   ALTER TABLE ONLY public.kehilangan_kks DROP CONSTRAINT kehilangan_kks_fk;
       public          asoko2    false    3242    218    216            �           2606    17021    pemohons pemohons_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pemohons
    ADD CONSTRAINT pemohons_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.pemohons DROP CONSTRAINT pemohons_fk;
       public          asoko2    false    3254    228    218            �           2606    16727    skcks skcks_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.skcks
    ADD CONSTRAINT skcks_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.skcks DROP CONSTRAINT skcks_fk;
       public          asoko2    false    218    220    3242            �           2606    16711    sktms sktms_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sktms
    ADD CONSTRAINT sktms_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.sktms DROP CONSTRAINT sktms_fk;
       public          asoko2    false    3242    222    218            �           2606    16750    skus skus_fk    FK CONSTRAINT     s   ALTER TABLE ONLY public.skus
    ADD CONSTRAINT skus_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 6   ALTER TABLE ONLY public.skus DROP CONSTRAINT skus_fk;
       public          asoko2    false    224    3242    218            �           2606    16763 &   surat_keterangans surat_keterangans_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.surat_keterangans
    ADD CONSTRAINT surat_keterangans_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 P   ALTER TABLE ONLY public.surat_keterangans DROP CONSTRAINT surat_keterangans_fk;
       public          asoko2    false    226    218    3242            J   {  x����N�0���)�Gb'� E*��Z����6�!R�\E�W�N���n�^����nv��U0&5S��~�������@� > ��|5@(<B\��! )�i�7U��t�xYr�\:� D��'(,C�"��UI��N%?��w�a���� i	�˚�hy:�~��?tۏ�zD����EUU)��9|/���$�Nd���&�8��0��ġn���g!Zb�H�K�Ո;V.�?Jc��C�wc��y�
���s�?ӥ�pGq��Q��`}��ܖ��U�^}̇��4���eJ�)�Q��`�D��;J[NmH�F97�>��6e�B>���%�Ed����= z�Z��z;��Ҭ��oZ�I�      L      x�3����� a �      M      x�}���d9����O�{a�_r��6ZΆW@ �0���sN�LE����[��A������p1�r���������?�������������������&:���ޔXb�{��FHί:ۚ��1]s+��#F_]�~����_�v�/&��K�������%������)����0i�>�����j�_f��i��j�3Y�J2mX�b�5;~c�3��i�o�����1��wK�7�s]�X��j�}��Qs��4vJޱ����Ƙ+���W�1�JJ����se�l�v��W��1��-��U��m��Zo��]�5ű�_��x���o�^.��x��~4���e�.�6�m�mfǉ�]6����K���ɯkլi{��c�����J���|��V��+E�����so�Ź^�\��Y6�R*��vع�Umy7^���M�6�+Oe����)���fMk�Z�tݥ`��Z�s�n��3ǲl]�xp��=+����z9,<̽].e����1v�e���}�Y9�e|\��[������1~�:��o_�ݶ����ť��!��t�����Y���J;���+ek���r�V����`~��>\Ƌ9�u��V���8�hC�c3V�ə�}��$��.���]�s��/��o�^�޶���#��j�ò*�l��u��n���5>O2K[o���@�� P�b;���U��mŝ��Sw�>�5�K�3g��:oBwf����we�k�8�b�� @�W�,��g�O3Aӆ��#5v�����)�M��u�ϩ��,�=:K�%÷���C���+�;��)���r7���&|�c�i�ć����|O!���1����ߎ<��k������N�o�;����RX	c-��+�؞r��F��=;����x�m�+���	�fk%/`b�W~L lJ�s��jήVfl�X2[s��v$��p��+/s�Gム�,q�n��8[�{P��~/�Ƞ��&`��cL/��X����W0O������+�5��1T� ~)��J�5�ȇ���4$ۖc��x؟#?��y�"��I-5�m�P	;R�fq	�� A[��H}U�ޅ/��o^��e���m- ŻR��a�I$��9��qm�d��.��d2��d�ny�q�an�#�'��s�G#oV\���	�f���\���Z*a��fޡ�� {�H��o�'�sd���LDu��r���/�����Sۻ�lg�ل1l�q�	��Ÿ����l�	�@�Zb'�d�CA˦ƐV8`���/n��M�N�ߞ!e�����/Ɲryu��O WLܕ�����^m�Vt䶜�_�0v������an«L}GWG6���C��	�f�4Ly���GC����y������gY� l��޹�l'�������_��r�1dx ��M�׸��]g�Co!��ܹ�� `�m��w�&�Y�,���_��0��'A�2w>�w���]�Y����Gٽgz���d�S��;�������h�G�1� h�L$����:��yv���`ҧqE�}�Xo��`��M"
�3�r��6�H1!�9	�K2T�A5Z��fD3�w���x0�����g��5DH����-�Х��$a���i�xR�"*a�C�9+�B9��֯ u-�u{��h�N�Y)PvR� �1= ��yrlt�7�T��'��h�+����?��m����g��Z��'6���2*y9�P�+���Ͳ�3@���0����R[)|q9~ʸۺ�e0�RJ��5�9��o�'BSa�ʘ��	�@�HG0.�[�j=��񯥇_���s��� Sd(���k���e�!�{�?HFl�9K^w.r��������[\�@۬f�HW�`ԚKD0�Q�0t�F�i��>��(���r�J����=���g����'��,
�cnL!#����~I���
�n��/>��j�Uj0��=�T/��­����m�����A9h+R����h9��:��R�m���?C��h���jF�5�5T�$R��$wtd'�d�h$�?���q�(��������,����?mݤ���7r�	q���n�<Ch���ߎ��	��:ў̥[�=Q9Qc��%���+K�:f�����F��r\�Y���+��|,�c����vwǥ�byx7�wC���h	t�%���Ѹ���K�Yʒ��3h�#�m���X���w4�t����SL@.zx{6._P�0��Ѓ�(���׈	��S�	��&�2.����zۮ��O�a�M�<X�!��8>B�����@g�]vr�'�`>��Ծ���h���5`^�T��w)~�n��拱���=��,��x���W�/�c��C�֏�R�=K�Ȑ_�d��*��R݀�d?�N�s��ï����z�������x��U�t�D�6��z�
�kd�Y�T�D,���U�oj��n�*$��7gN�Cwu.�t��ˇ�ƨ�8�y`<aa[��kM�N����t�g�5�]>/BM(�)��@�.�(� 1(w2LkF�p@��`$yܷ��F�B�֏�=%�`ui�B�F�=���i���˅�@�����Fc��ޭ_�5�d��O���ƛH�;���ס�sB.�Q� �!/8��@aBOCbv��p��c�������lPH�Վ���6�Pm�&v�c��'	��&+�~1�kta�[wBy���qG�1�V�DDy�-]�A���*��!�~��EL��,�һ��;fA])���f��ə�u�"���«��n�L���MH�=	K绍���߭G����qG�IЧ����ہ�A�!�8�X�X��h��'O�O�c:d�Ӻ�R��Ϲ�aЎ z������9�r}��#l�ς	��)k�����=�u��U�B1_�IC�˲3�.ۮ�T�i�>����T�\[p-�@����߮��`߭W�<���>�P^!��A��S�C�&�1F"�k���J@��m2�&Mb���z���?k?�|�G[Z4"TR����[-�=lN�k�n|	h�MV2���������aM������N��k��ky.���C%�����_x���7���f�C����m�T�)�el�C4	F7A�r��=��y���@;�ǧ�*��X��/�u���w��ۧk>\|����^����Q�Nx����!AI����8N��V��c<8��c�T�5�ڪ��\�/�v���@k�����;�<�E|��8��Τ?<ރ��6~������	(�;��&��l��23l�� {G\�Ñ֊�������6��t�^q]����}.����<���g$ҋKɂ�`�F�f�G?��jץ�X�5��c��J��H��D
�/���(��� %:N0}��|�vg_���K��l)$�i��@<r���,���0M�|��Cߨ���1$&�ڎ�en��ҩ k�����ܦ	Kݥ���DԢ]���:�c�z�:3J�0nIj��+ܭ.o�Vah��V�T���<ǝL5Tz��-̲��<h�:�л��o�������O �'�N��q��m���o�̝��8�, o�Ư��ɕ��؎O�������O �@�A�kĽ�}�䜟>���C�����/�ALvB��������<�� ����3��U>cPH9(mO���PN�'���0&:ϲ%�]o�h������eǆ�N=�������$�qe klA9�w�r�n���|5NJ{�K'�#b?z�ۇ%� ����Z}����=k�fv3��zB�P�d�g������㕓8�D����C!m����F�:�s4v�2<	���jmNd���1^�x�H~���Ӳ���.��X�8��8�`����T�:�[�&|7`����©*$�Xd�I���ǁX"�l-|��,�0��\�;�����?l;.��z��q�	�ՙ��
CW�/"2ӂa��@�Ͼ��d���Z��O�cy���p3���)+�����T��M_a�� 4U�s-k��C��#��1�Íp��p
L4�Z;4����;����<Twgϡ��m��    �Vg�����?/�Y��e�;pg��O�SQh�zG���vօ�#� ׉����
u���nx-��O�.�(� �T�*��5�L>�*~�w���&|y�>*��Q?w�����B���RR�)T�W�8=�9Ԓ
�M�R`D/��.��s&����d��q�¡��V�
h)
��*P�d%HQ�m��hֵ���0[2��b	����o�~lBrn�9Y[Z�$��uڸ8�P�R�װ��� jS�n�.����j���Tԫ �D� ej��t��oֽ ��@I�u��N(�9 W4^�z�"�6�ǢM��"�=P>�ѐn�y�pv�ҫU�N�=���=�dn�p�Z����z�k���$Z�U���;�2L��ѷo�TPS��V�^�I,Ǯ!����X�����n����Xı�\X��˅��0s����d<�����j��]6�:G��1�`) i]=8����[����2�i�~rD�����]?��$e�u�E�'.�V����\}����Ji�>�~�XX��U�n2�l���BAW-(�!a��B�O�;������qǞ!�ۅ�w*���UEt[]j笺k���9�e�MDT�F*�d;�bN��b�6�`�E�`#Oƺ�	 @K��j��9��L9�询��M2�Ɵ>
wl���2�G�zK|U�MPP@Me7���8$��j�<2cO?$��*�>�c�P�!T_�^�D�A��`���*���	��ݔz� ����'�)$�g�'|#�-�,4�� )�V�@�I��\��^&��&�M�#�X��*/��'|#�VK�!��;D��D2yE�$u���M�F4�\b���H+0���MC�'�UY4���R�P�R S-�U �8�Y|��f����������4�%̸�,����2����Au����h&j%Ƃ��!�ʫ>�ZO g}�@��	hQ�+�\d Y��T�V�yI�^��������S�'��#%SH~�Py�W����<#���Kv�S��8�;d��&�v���?�y���75n�ժ�%�y�������r-̟�툹`,������8���7u�'���#PDHX�ԆL6m=�?� ��]�q�I=[,��ֶӧ�A�W��՛�mX���2A��d��%h��j�%�r7�}��H���?��P��p�)<x�.U`�����BN%���8�H.zu��佬-���ܙ��	�7'�KA�\p!I����}u{�9v����� �a$6u������
������+rZ��*܏������go9�����'A�T����K�L����	��g�/� 6̥WU����'d�;��;��m���S���3ud��["�ed�>l3�h+�R&�Ƞ��N���P���BX��1���î�9�6~|K$�]�160��]���%Wqq_��L	�C�=r��?��K�?w�Y��뛬bU`���:c����%�ǰZR_$~Ьn��r�=!��m��`�3?�!�k ��j1�K&6>E�w�{@0C�������FtB:�����P�9\��$M�V�J0]��=y�1��S��JJ|V�r;;��x�9�Ə��6t�bQ�gA����(3��IΓ��%��~��Ҍ�D�>ߏ�J<a~,}B��m�����H3XO~�U�����2��0��U�]�358�/���#�'��c�S��G�DdI���d0��S&���>�W> l6J�@*j�|>vێ��Mc�	��PE���R��+�t������e�1���.d;ߑݪ+O�y�!p�p�_>g2�$��#�	CQ�8tU�kz���S邼�w@�ߓ9�CQ��I���oY�� ����"q��}�VX(Sd��l4�m@&�ԯ��R�i;��^W���O�&uR\Y�O�u��Kn�Y����ٲAc�T@�F��|e�w|�q����#?ښ`���l��!���c��fN��#��I� ��}.�2������e�z�?Z+*)5b8��3�w�w�ۜq� �ԁ/�i�>�\���|������Y��Y�[y^ �@K��]:��%�M��e�*�is�!ىf~�ͷquK�}i.���CP�UgǑ�t(�ഊ/3;4=�=P�p��T�/a|?s�<��Q.+p�82;(�^�@�٥�8=!��ßQ�F�Z6N]��.*���/Ư��\!gG�:���U�^l���F���ͺB:%>���1�3} A����N��R8��l�z�f[	S3.K8�}!藱
���c��IFo?����<\/��]��;�y����*hRUTӋD�s� �����#��Pg ��ъ�A��������p�E�}�)��*P�o�JB��>�,4I�K��ۯ�K	���s}���pEo����a�X\ޭ8\��k�*���S���mvl�z�m<d����pB���$�0f���豋�|���Bp�Yj���˂|(7i�w���Ztm�J{8!�
�HϬ�C�R��s~�r���������11��:�#;�ˁ�o}��"1V�ŗ'��Nllc.�	��vˇZ��}��ҫ�U�YvB�A�* 6�]�f��ܨ x?�9v{{��x=�XLN��C\K��V�U�JG�)SOi'��-��q�����F��J����!�o�k���9��Z��ȩ�}0��_�Q����8�x}���'��a[H�N���&QNBȁ��xR�v@�|�n�1��أ�����8�x4���8�_&�	=_r��6)uw�.���;ɫ�ۖޞ8T�˚�j� $>��/�OS��G
7�z�`:
:�RYO�	�2�nt�����Z5��F���\j���D{l�dmWz���p®KqK�i��+@O��F=�	�-�5�
��Rw���G��c�H.�jb�KӠ�6�}.�+��H�0uϠu>�P�u��w����[����������^Ϲ��ӪK�-�9�}���)vw�[�95��`��L�'�C/�PI99�\�w1��k���ଗ�sӲ�qP%Ȫ��N2�q�­ID��2jϘ��j�D�i���QpDB�땁�G�Y��_
�����pGg�&,��+�9����04׳w�����H8˯p����K�W���<u0w�	�&=�j�sp�JA��͕���@��6� ��t�J-��o��.w{w�E�AV�!�Bu��wr�Ϛ��)��F4���#��,D�r�øW��-��Ĺ;�"�a��r��=��B����)��|&����C#���f<�EGz��;r�� �cs��b�̚�:"H�\aٹ@���D���,T�K����IzN��)K��H����jrE�z�I��zu ~F�p�J����FH�E2~L���pd���p��� �i>ǐ}���j�x�T���se=���/�^�_�k"z��ՋV̍1�pa�Ժ�r����E��W�wغ^�`nC2�� �z��vz/>g���h�����	��H%��W�H�A��ak/��&�=�);0	���pյ�7���u�� ���y���Y�(8
���W#��v�ϖ�@ K�D@Omm�Y�I����|�=T����_��U�\8�m�PT�||�08��,:xF]���}/E�՘^���ݖ��X�0��j*-W�l�_�������k�IL���dp
v]/�I�_�[1�p�x�?&�u��Hu]��^���Hꏱ|���
��^5�.x�4����(�����m����H#Fw���%�.n��*6�S�DZ_6K�����O?�����]���"��.����'�	�-f$#L-xΘ���t�]52�\���j}35�#>��X�C�O�AXz}P,���R=Q�0��m��齐)89ɷg>i�j�c�=g~8)ւ?7����ږ�X͖!��+i�٩q�j����]��Fn㱲���p�x����O��Y��p�Q�ԉ�uV3(%56���p�����k���6~8Q$RW(�H���*�+p�g(�������͸ո����s.��1 [#���39-f6{���g \  �j��ŕ��Au#7\��Fn��5��X��-^�֗��P+�I�W��$û�F�=5UK-qmd"�]Of�_�{� 1�<�cn"LC����]G���398��3�U��:����`����&������>��<r�kXE�Qq�^�uS�^Lt�U�ʭ����Y�l�$������*��|h:�%h�Dh�kRߨA��h�ݧ��V�#9&m�lV�*r_V��3��������MI�[3�2ao�/@��}��%�4�0�*�tKϚR1���c�3���p����L#��,HB�	��*^9O���Hz��ڛp�	ާ>ȸ^���ϏU8X�V�)�\��9�«'��h����s���$4�T:���{��B?��X�]���o��T��W/��Aq��B�Ho;����i[�W	0<�e�U��/����ԂP�(��Hvw�A ��H57ȯz>J2Br1��xP!���v��YXC�_µ�/����|Գ�"V#'�P��`�0�n"1`�b����ܺ/9�4*7q���b����W||W=[�x���u���T�B;�m�h%@�'�ο­�ܑF�ڒA�vMg�mg=�d) ���R	���kT�:^	��+�C������.[d���G���ho]�ʣJ�r�P�,E�Se�\Kw�ת��h���}�������K�&u�8�z��k�\���匐*��a}ܰ\�ե�_�G�����`��V�t�Z�e[W����ml>�^������-�eܧ��6~�?"M5B��Y4&�ĊJ�pm�I0��|��tneX~J�~\rT)ȇ��<�wJ�jf:ZǯJœ3!���ũϡ�vN�if���߰=jJ^}&��\����(_4��j�a���Z�+|��|CrV>�z2;��ט���Ӧr<��U'K��D�8��z�*�f�f�E%�鮵[�<�#`BB�|1~=��X��ն�����l��V�C/��Q���+���*N��'���/Ƌ���G(g,뎘�B}�9k1�=�@��u	�,��'|0͚�p�@�ӓp������<���5���lR�\�ZXlt(a�9�KHm�2@�Sԣ$�BI��?���.�[�'�_���"R����!x	�a-K/
X1R��.Ɩ�&WH�ɵ�#�)��6њ�����i��N��&wr眍�Y��<w��O[���ڒ��YMC@�p����k~.Amg�q.�y��1#��ꑡv�/��U׈��v�9���x�u||�7�{��Z��3��)~nJ���_
�A�Ɣ4�L����ɋ���xR>7�T||�4<(k�!Ȯ�A�`*�Y�6�1"&�m7R:�S��������s��P���k]-Y��Xvu�:,�n��k��=��_�)�g�)�#�5>8�
��쪧�{|}�U�\[-�+L~frժ���'Q��k5�}��f�`������WMw�zE�3��XrF)h�nSqAd�]��Ӵ�,p��M�i�5�x2`��K��{N�s�q||M/��<����i���6����q�:[�|*BbA��^���������\-��*v���]ťAJ����Y�^ǌ8�^��}�>��3"B���������ʓΏoa5�0��?���У�����A�����j=����{���|O�>�[KDe��3�+TROc5sb��y�����6�7(�V%�?�&��g��}qQ��	Z�>)��IM�I�q�[�hΘb]pE��h�C���f��͟BX���M��\�5��c5�XK��܄�*�4Q
��T��[m@I��?��ګ ^�Ϥ4M��f��0��3Q<nLċ�T���PUPy�E`c [z��L�S[�5գ��z8�&̺X�1�ϳ���I0��Bt�J\}�HH)F$�XF㈃���֋W�i�r����{X�;��i�ťhW�ŏ�Ԧe�����GǿP��WR�o7��18��1�ȩ$$��:�qa �F�E|o^���a��4�V��k��"YE-:�ElJ�Fw#%�ʈѸg�{�G�[PMh��Vo���5��,���%̆�G;Y��i��b=\����q\�G�:��� L���܁�:�,�h����`�u�}9il]��w��M� ����q\�ӕނ=�]�j�
4y=Ѓ�k6!�����B#(5=�W;���cxQ�hR��p�81k���6H�c�d�cqaSsf�S�U��Xx+��M�3t�ܰޗ��A-J�<K?N�*K���G'in��ㆫځ*k�d��X�$���s=9�����5ć�W�γ��ĬZ�׈_�����
��.ɩCu2��P%�O�lu���q�=�n뱢\�pǀ[NL`�&�n��j�q����*ȣ\\�֖H��P��/k��z	}��	�p ;!���~�j�����9�5�E�M2�)�$u=��5��}J��q^-��pT�ik����Q�p�joΨuA�jj�FS�Cπ!�Up�ɖ�gc�Ӹ*����9�Ծ@dA`��m�n6@=���͸^�JNu�I/!u�&*���u��@���o<B���t�#A(Xn4�#!�խ�yV^���AUEl6S�ݥ��G:�[�&��{���:¡>s�>�\��4C<�DU%��^�w\ ;$�o��̄�Z׷G�Wx���t��)��ʪ��"9BD3전W��n��j3�F�����l.�ѽ�=�<���������5S�����	��Pf�[��54��fh�j߇��z��C��r�F}w�j G�K }o� ���_"�����=5@�-L�!��7�z������`Vq��}8Mm�x�k���P�����"j��h�B�����t�8�r�(�x��\W!�;膰5�h�i$�#� aq ������M�4�4�ɍ_�_ݠ��ce��m*�n�R�������}�����y��+=���]"�I=_����<���dS7���
�X.	B��3�h;� �5YV;�]+1]����-z�D���/{_�cen/�&s��ޭh�r��	�>�d��2�4B�����S�4���6������W���O*�zlZ��;�N:��2 ?�t��{��	�
5���3i�b�P2^���B��3̱2� OE߀S�/P&ǐ`p؄f^��a�^�|��"ñ�5z7̚ތ?c3"��ceN�i�*��C�`Z��Ԁ��Ru=V��@��ؗ�u�iߍ[Q��G�϶���v�fP���r���j,�d&0��;t��2�h�5��O�ob>w�x�7M*��a�f9�F�KuM�/���q^uj=� )t]���pȸ�0����2���>��9�`R��Zm�?M h2�*����5T�:�>#O���_���z�����$���j��^c��^��L��VZ�S�XˆԒ�����͸U�C%�%�w+s�����&ĕ}�Qs��8�j�)�hS7�xx�{4�7�^�/��1u�+sY�/��=���K��m��U3�՝}6Ӧ��tj?��!���p��0n��D�����px��Gܲm�1���Mwm�.>�e����6lE��^�}��C|�g��y.b*Y�6�Xj�Id5����o�i���G�m=I���լ��x��>,�8��f�]� SX>�Mo��ͫ���6	{�f��;o������x@�k�}y����W��?B�O7��J{�XqGR���b��!\K]=�_��F�{���Q����'�Ng5Gn
q'&#��mĩ��A�F .��ê�u�E <�����הe�t�o�C:*V����������!�F�\>�k=���!:e��_�{�����|mHy�L:*V\|��r��h�w�I������L6��Lg/J$M���֯K��_ᦰ����?�����kL      O   �   x�e��
�0��s�{���I6i�,^L��|�zP�x���'�ȩfNή6��A*Ii��js<q�@\r���&�N�g���{�O�h�i�f��jv�C��J����b�2�����9x�wN`,      Q   m   x�u�K1C��)f���ݤ��,��|$4 `��{z��C~$�h��#vq�,D���_�'҆,�"��|"�F�N�x�����ʏ�7����q���|O�@�k7�C�*4      S   F  x���K��0F���Ⱦ��}��]gSQU�#�f6��(S#�Q�~h����D2Y��9v�+��t���ܬ���e���7ۍ���B�[�k1Z����|�h	"��[kQ�w�f�����@�1=#F�9�n�*P�=�H$�����\�EY��������{�<IC���;l#��u�m�v[F��~���Ö���a���������V��qc������8V���k
��e�p���;�۝=�x�α�h�?g�G焆�ۿ���]�it��Wj���T��ܞ(Mt�!�b	�,�u�T�8Og��(M��1�R	KW���h<�l��A3�X.a��M_����K�I�&F͜c���2v_� �����oV��\W�2�8�c��'mY��r�/Q�j�)b�c6���5��J�P�m��%�$j��sc��p����n��Ys̸`ܳ��5�	���Dmaђw*(u���I�D�����9K�!6!��P!��&�N�i�;`��w�n�m�h;[��7k�4�v� ��f��ٽ5�V���vQ=����fYV@Q�w=+���O�¾�s��`8n���Fk���o�      U   �   x�m�;�0k��Q���67@�4.�"6����"�b_3�̲�l�'<iQҰ�eIC �!�pP����Z�#�"�"�"Bk͊${���yD��kW˜F5�ӜU��6MP�u�L���/"����!N]I�TW�}�1�T�-�I�����mx��A$ϭ��4�@'      W   j  x���=O�0�g�WdG����ϙ����R@�
�����i�Gc�f���9�6�Іy�� �����=�O�����̆B62Dk� ��,�4�} HbwSm"z�����(��z5��X;�e�[�6��|U=���k�!jT5��$X�6PN/�3����!$S����0��!�Z�$�����@�k�]���M�7���C�>.�!̎�A4>2+v�#���e.����m0� +4`����+�c�:��(�J�g(��=kÒ�e�9P���)�bsgx�*9���H��✧Uޘj�G����Y������V��Gz�>�\��+����_�t0ӿ�������R\��UB��S�UI)��n      Y   �   x�U�A
�0D�?�Ⱦ�O�9B�7�&�.Z1R���A��x�I�� ɺL��e*�Ty��d���`ȗ9��e���H�}��wd�(}8(�ִ��}�m;���5�=c�xd�%ߟ.N(5swƘ��*^      [   �   x�e�A
�0D��)�/��'�_s�n�	Tۨ�"�ׯ�R��<( hȷBD^�~K}��4������Ĳ���$��\[/클W��!b��:�Ō��ͩ�R1�ds͏n^˲��p�����x|�K��XG���#���~��4�      ]   "  x���˒�H��u��`g�dr3���"�(�A��⅛>�h�t4U�����d�7����7�=����=�� <^|��D�̏��ٌ��Y]I'��k�>4�ʜ��dK��h��AX����2���ؔ<�Vɷ���?(���!� �N�=�z�W�}��=	��X����O=��B{��#�!�o�A �PQ^�a�����4*$�\,DEL���>����B2�������{<�|Ѷ{Os?=��{�����b�-u_��C/0Dq�pJo9�5Wf���k�$��^O�0bO�]&�_bG�k�=='=�����b�6���_��C�6�AR�����������Q�j2fIإ�ž;��Z9Ä3M\w,�Fܱ)r��]�	eguU- �Fp��8��3-��Mz���h� GЀ����������(���&I��C�
�|���@�D��ƮS���0�r�&��/���wEt*V�g�iִ�8�^4��Ng��C7"C0�f�{��K1��^��v����2�c�he����5��E���q�/��Uɱj�G�5ot�f��r#����o3|?t,�0���ԒSג�rZ�s;N����)�.��1�+�3P͵ iu�D�t���F�u2P�XZ��d*�kQZ�39ߣy��y;���[r�B~-���/�oz'���[�
C<wG�N�2�c�݇E!-m^O�1�g�b� E.�bF>��� Y�]�)��d�N��<�ܑ;�5t}�-&]�
5>�IQ�L��uL�q��}�&ߡTgRʤ$�I3|B�E$(�`\>��� hљ�h{��~��n�1Y�1�M�K�K��	�iT���@���L�0����~���gt�z$I� }�J-:��Eg_mL�8J)�qR �&O�I�/W������z�xA7�իq(���>u�0��P�FfSn������B�z;��,`�ν��q��G��F�es[�Tz���?_��( b߃�p��E̝��1��Υ������	��$���)��P�ο�F��+-ޕ�
K}^�r!ஓ����Lgj�Rd�^W�*���,���Gë2�<�`��������R�1@��ߎ���/BR�QG��<O&;ΩW��g
5��]��_�{=��V 7(�l����Ŧt����1��H��(x�F�i��Is9�d�x6d��Ćx@��(�����PQR3��lJR��^DX���>������#�P�N-:�@k��W�t�[��@Z��͚\�|żto�4���R�#`�we�v�^{3 �q�e�3{&$X<������$���|J-:��$0���h     