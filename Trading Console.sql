PGDMP  #                    |            Trading-console    16.3    16.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    16416    Trading-console    DATABASE     �   CREATE DATABASE "Trading-console" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 !   DROP DATABASE "Trading-console";
                postgres    false            �            1259    16428    accounts    TABLE     �  CREATE TABLE public.accounts (
    id integer NOT NULL,
    account_name character varying(100) NOT NULL,
    broker_id character varying(100) NOT NULL,
    broker character varying(100) NOT NULL,
    client_code character varying(100) DEFAULT 'DEFAULT_CODE'::character varying,
    brokerage_percentage numeric(5,2) DEFAULT 0.00,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.accounts;
       public         heap    postgres    false            �            1259    16427    accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.accounts_id_seq;
       public          postgres    false    218            
           0    0    accounts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;
          public          postgres    false    217            �            1259    16442    scripts    TABLE     �   CREATE TABLE public.scripts (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    sector character varying(100),
    parent_companies text,
    created_at date DEFAULT CURRENT_DATE
);
    DROP TABLE public.scripts;
       public         heap    postgres    false            �            1259    16441    scripts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scripts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.scripts_id_seq;
       public          postgres    false    220                       0    0    scripts_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.scripts_id_seq OWNED BY public.scripts.id;
          public          postgres    false    219            �            1259    16418    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16417    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            ]           2604    16431    accounts id    DEFAULT     j   ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);
 :   ALTER TABLE public.accounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            a           2604    16445 
   scripts id    DEFAULT     h   ALTER TABLE ONLY public.scripts ALTER COLUMN id SET DEFAULT nextval('public.scripts_id_seq'::regclass);
 9   ALTER TABLE public.scripts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            [           2604    16421    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                      0    16428    accounts 
   TABLE DATA           v   COPY public.accounts (id, account_name, broker_id, broker, client_code, brokerage_percentage, created_at) FROM stdin;
    public          postgres    false    218   �                 0    16442    scripts 
   TABLE DATA           Q   COPY public.scripts (id, name, sector, parent_companies, created_at) FROM stdin;
    public          postgres    false    220   @       �          0    16418    users 
   TABLE DATA           @   COPY public.users (id, email, password, created_at) FROM stdin;
    public          postgres    false    216   �                  0    0    accounts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.accounts_id_seq', 25, true);
          public          postgres    false    217                       0    0    scripts_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.scripts_id_seq', 4, true);
          public          postgres    false    219                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    215            h           2606    16434    accounts accounts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public            postgres    false    218            l           2606    16450    scripts scripts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.scripts
    ADD CONSTRAINT scripts_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.scripts DROP CONSTRAINT scripts_pkey;
       public            postgres    false    220            j           2606    16440    accounts unique_account_broker 
   CONSTRAINT     l   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT unique_account_broker UNIQUE (account_name, broker_id);
 H   ALTER TABLE ONLY public.accounts DROP CONSTRAINT unique_account_broker;
       public            postgres    false    218    218            n           2606    16454    scripts unique_script_name 
   CONSTRAINT     U   ALTER TABLE ONLY public.scripts
    ADD CONSTRAINT unique_script_name UNIQUE (name);
 D   ALTER TABLE ONLY public.scripts DROP CONSTRAINT unique_script_name;
       public            postgres    false    220            d           2606    16426    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    216            f           2606    16424    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216               �   x��̱
�0�����@���K�U[�M,$`�V�o��n���������`�[gD���OD����R`,Pfĉ�$j)P,�9�9{�<��^�_�N>�A
�:vP7��ٟۺ�u�H-{Us�ƘE�+�         I   x�3�I,IT.IM���
��y�i��%�E�y������N##]]#.�xn~IbQ1N}�b���� xk#�      �   �   x���A�0��u�^��3ӡ��8��D�4
Qn��D�����Cs�r���u{o�k����ڔr�r�.nm�UP�Y�℁V�y����J���TNun��B֖7D�gn=;ތme����Q���R��?�^E,���Z���ü�,�J��&�v ��W|     