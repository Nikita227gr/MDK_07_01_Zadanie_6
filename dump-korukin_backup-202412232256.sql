PGDMP       8                |            korukin_backup    17.0    17.0 =    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            4           1262    19114    korukin_backup    DATABASE     �   CREATE DATABASE korukin_backup WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE korukin_backup;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            5           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    19154    catalog_    TABLE     �   CREATE TABLE public.catalog_ (
    id smallint NOT NULL,
    name_ character varying(50),
    id_products integer,
    price numeric(5,2)
);
    DROP TABLE public.catalog_;
       public         heap r       postgres    false    4            �            1259    19153    catalog__id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog__id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.catalog__id_seq;
       public               postgres    false    4    226            6           0    0    catalog__id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.catalog__id_seq OWNED BY public.catalog_.id;
          public               postgres    false    225            �            1259    19166    client    TABLE     {   CREATE TABLE public.client (
    id integer NOT NULL,
    fio character varying(100),
    number_ character varying(12)
);
    DROP TABLE public.client;
       public         heap r       postgres    false    4            �            1259    19165    client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public               postgres    false    228    4            7           0    0    client_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;
          public               postgres    false    227            �            1259    19135 	   job_title    TABLE     q   CREATE TABLE public.job_title (
    id smallint NOT NULL,
    name_ character varying(50),
    salary integer
);
    DROP TABLE public.job_title;
       public         heap r       postgres    false    4            �            1259    19134    job_title_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_title_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.job_title_id_seq;
       public               postgres    false    222    4            8           0    0    job_title_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.job_title_id_seq OWNED BY public.job_title.id;
          public               postgres    false    221            �            1259    19173    order_    TABLE     �   CREATE TABLE public.order_ (
    id integer NOT NULL,
    id_worker integer,
    id_client integer,
    id_catalog smallint,
    time_start time without time zone,
    price numeric(5,2)
);
    DROP TABLE public.order_;
       public         heap r       postgres    false    4            �            1259    19172    order__id_seq    SEQUENCE     �   CREATE SEQUENCE public.order__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.order__id_seq;
       public               postgres    false    230    4            9           0    0    order__id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.order__id_seq OWNED BY public.order_.id;
          public               postgres    false    229            �            1259    19116    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    name_ character varying(30),
    count_ integer,
    price integer
);
    DROP TABLE public.products;
       public         heap r       postgres    false    4            �            1259    19115    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    218    4            :           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    217            �            1259    19123    supplier    TABLE     �   CREATE TABLE public.supplier (
    id smallint NOT NULL,
    name_ character varying(30),
    id_products integer,
    price numeric(6,2)
);
    DROP TABLE public.supplier;
       public         heap r       postgres    false    4            �            1259    19122    supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.supplier_id_seq;
       public               postgres    false    4    220            ;           0    0    supplier_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.supplier_id_seq OWNED BY public.supplier.id;
          public               postgres    false    219            �            1259    19142    worker    TABLE     s   CREATE TABLE public.worker (
    id integer NOT NULL,
    fio character varying(100),
    id_job_title smallint
);
    DROP TABLE public.worker;
       public         heap r       postgres    false    4            �            1259    19141    worker_id_seq    SEQUENCE     �   CREATE SEQUENCE public.worker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.worker_id_seq;
       public               postgres    false    4    224            <           0    0    worker_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.worker_id_seq OWNED BY public.worker.id;
          public               postgres    false    223            y           2604    19157    catalog_ id    DEFAULT     j   ALTER TABLE ONLY public.catalog_ ALTER COLUMN id SET DEFAULT nextval('public.catalog__id_seq'::regclass);
 :   ALTER TABLE public.catalog_ ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            z           2604    19169 	   client id    DEFAULT     f   ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227    228            w           2604    19138    job_title id    DEFAULT     l   ALTER TABLE ONLY public.job_title ALTER COLUMN id SET DEFAULT nextval('public.job_title_id_seq'::regclass);
 ;   ALTER TABLE public.job_title ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            {           2604    19176 	   order_ id    DEFAULT     f   ALTER TABLE ONLY public.order_ ALTER COLUMN id SET DEFAULT nextval('public.order__id_seq'::regclass);
 8   ALTER TABLE public.order_ ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            u           2604    19119    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            v           2604    19126    supplier id    DEFAULT     j   ALTER TABLE ONLY public.supplier ALTER COLUMN id SET DEFAULT nextval('public.supplier_id_seq'::regclass);
 :   ALTER TABLE public.supplier ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            x           2604    19145 	   worker id    DEFAULT     f   ALTER TABLE ONLY public.worker ALTER COLUMN id SET DEFAULT nextval('public.worker_id_seq'::regclass);
 8   ALTER TABLE public.worker ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            *          0    19154    catalog_ 
   TABLE DATA           A   COPY public.catalog_ (id, name_, id_products, price) FROM stdin;
    public               postgres    false    226   9B       ,          0    19166    client 
   TABLE DATA           2   COPY public.client (id, fio, number_) FROM stdin;
    public               postgres    false    228   �B       &          0    19135 	   job_title 
   TABLE DATA           6   COPY public.job_title (id, name_, salary) FROM stdin;
    public               postgres    false    222   �C       .          0    19173    order_ 
   TABLE DATA           Y   COPY public.order_ (id, id_worker, id_client, id_catalog, time_start, price) FROM stdin;
    public               postgres    false    230   D       "          0    19116    products 
   TABLE DATA           <   COPY public.products (id, name_, count_, price) FROM stdin;
    public               postgres    false    218   rD       $          0    19123    supplier 
   TABLE DATA           A   COPY public.supplier (id, name_, id_products, price) FROM stdin;
    public               postgres    false    220   E       (          0    19142    worker 
   TABLE DATA           7   COPY public.worker (id, fio, id_job_title) FROM stdin;
    public               postgres    false    224   �E       =           0    0    catalog__id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.catalog__id_seq', 5, true);
          public               postgres    false    225            >           0    0    client_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.client_id_seq', 5, true);
          public               postgres    false    227            ?           0    0    job_title_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.job_title_id_seq', 5, true);
          public               postgres    false    221            @           0    0    order__id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order__id_seq', 5, true);
          public               postgres    false    229            A           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 6, true);
          public               postgres    false    217            B           0    0    supplier_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.supplier_id_seq', 5, true);
          public               postgres    false    219            C           0    0    worker_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.worker_id_seq', 7, true);
          public               postgres    false    223            �           2606    19159    catalog_ catalog__pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.catalog_
    ADD CONSTRAINT catalog__pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.catalog_ DROP CONSTRAINT catalog__pkey;
       public                 postgres    false    226            �           2606    19171    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public                 postgres    false    228            �           2606    19140    job_title job_title_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.job_title
    ADD CONSTRAINT job_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.job_title DROP CONSTRAINT job_title_pkey;
       public                 postgres    false    222            �           2606    19178    order_ order__pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__pkey;
       public                 postgres    false    230            }           2606    19121    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    218                       2606    19128    supplier supplier_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public                 postgres    false    220            �           2606    19147    worker worker_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.worker DROP CONSTRAINT worker_pkey;
       public                 postgres    false    224            �           2606    19160 "   catalog_ catalog__id_products_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_
    ADD CONSTRAINT catalog__id_products_fkey FOREIGN KEY (id_products) REFERENCES public.products(id);
 L   ALTER TABLE ONLY public.catalog_ DROP CONSTRAINT catalog__id_products_fkey;
       public               postgres    false    226    4733    218            �           2606    19189    order_ order__id_catalog_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__id_catalog_fkey FOREIGN KEY (id_catalog) REFERENCES public.catalog_(id);
 G   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__id_catalog_fkey;
       public               postgres    false    4741    226    230            �           2606    19184    order_ order__id_client_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id);
 F   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__id_client_fkey;
       public               postgres    false    228    230    4743            �           2606    19179    order_ order__id_worker_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__id_worker_fkey FOREIGN KEY (id_worker) REFERENCES public.worker(id);
 F   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__id_worker_fkey;
       public               postgres    false    230    224    4739            �           2606    19129 "   supplier supplier_id_products_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_id_products_fkey FOREIGN KEY (id_products) REFERENCES public.products(id);
 L   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_id_products_fkey;
       public               postgres    false    220    218    4733            �           2606    19148    worker worker_id_job_title_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_id_job_title_fkey FOREIGN KEY (id_job_title) REFERENCES public.job_title(id);
 I   ALTER TABLE ONLY public.worker DROP CONSTRAINT worker_id_job_title_fkey;
       public               postgres    false    222    4737    224            *   z   x�e���0D��L�l�!�d )��R1"��0+���)S\sw�p�"���ƥ��t���q��ZU��?�������G�DՉ�ܤG�E��s��-W�-�䂃is/�R\>J}      ,   �   x�5�M�0���)8���B{#&ƭ&]�s�%"gn��y̼�͠ΨP�kԨ\ь[x4���Qmǒ/]Z;a�-�qV�K�
�Hb���)<�ی� ]��>n��<�M�R�+3���[��'�B���7bS�3V�4˭ԂW�4=>�8g?8t,އ��6V <��(F-�`Sn��W���"�Qo���2p9��BJ�����      &   l   x�-���0C��L��'�0L�J*��
�d�F�En��\fl�r��=U�ZkJ�]
OuB��g�#�B��&,x%N-2�y����0���;D�]�����j=�      .   F   x�M��� ��0ȁPg��s�����t��m�`M,P �ҥ����m#�{�����3u���oQ��X�      "   �   x�5�A
�@�3��2k��c|�b 
���,FE4����e��5ApD�o���F\9��=	fZ�ŗ�L�n�B��ʴ�}2ቛw��M�Vp�Ȏ��}M��~����;��7F��\U?�kG	      $   w   x�mͽ	�@��mW�<��j.��K��=A���f:�Em63�`Ed�'�^�sa� �xU-T]�u��v���9�����6I�s����X�X�=��Y��|H���p�=�UrI      (   �   x�ePKj�0\��'�q���0���"��-�RL��,����U�0�F�J��4��{���pZ�6��.��q�]��G�+���aM*Eht�;d�6�kr���«E��7m�� ���+�N�"ď{�nL��Z-��_tm����-}}2݆�6���11����PÏe�b�3������x!�P��� ��k��MK6sӪ�I�8�&�9LZ��vQ&��i&"?�Q     