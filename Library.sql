PGDMP  #    %                {            library    16.1    16.1 C    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    60179    library    DATABASE     i   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE library;
                postgres    false            �            1259    60264    author    TABLE     �   CREATE TABLE public.author (
    id bigint NOT NULL,
    birth_date date,
    country character varying(255),
    name character varying(255)
);
    DROP TABLE public.author;
       public         heap    postgres    false            �            1259    60263    author_id_seq    SEQUENCE     v   CREATE SEQUENCE public.author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.author_id_seq;
       public          postgres    false    216            P           0    0    author_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.author_id_seq OWNED BY public.author.id;
          public          postgres    false    215            �            1259    60275    book    TABLE     �   CREATE TABLE public.book (
    id bigint NOT NULL,
    name character varying(255),
    publication_year date,
    stock integer,
    author_id integer NOT NULL,
    publisher_id integer NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    60285    book2cat    TABLE     s   CREATE TABLE public.book2cat (
    book2cat_book_id integer NOT NULL,
    book2cat_category_id integer NOT NULL
);
    DROP TABLE public.book2cat;
       public         heap    postgres    false            �            1259    60283    book2cat_book2cat_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book2cat_book2cat_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.book2cat_book2cat_book_id_seq;
       public          postgres    false    223            Q           0    0    book2cat_book2cat_book_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.book2cat_book2cat_book_id_seq OWNED BY public.book2cat.book2cat_book_id;
          public          postgres    false    221            �            1259    60284 !   book2cat_book2cat_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book2cat_book2cat_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.book2cat_book2cat_category_id_seq;
       public          postgres    false    223            R           0    0 !   book2cat_book2cat_category_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.book2cat_book2cat_category_id_seq OWNED BY public.book2cat.book2cat_category_id;
          public          postgres    false    222            �            1259    60273    book_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.book_author_id_seq;
       public          postgres    false    220            S           0    0    book_author_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.book_author_id_seq OWNED BY public.book.author_id;
          public          postgres    false    218            �            1259    60272    book_id_seq    SEQUENCE     t   CREATE SEQUENCE public.book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.book_id_seq;
       public          postgres    false    220            T           0    0    book_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;
          public          postgres    false    217            �            1259    60274    book_publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.book_publisher_id_seq;
       public          postgres    false    220            U           0    0    book_publisher_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.book_publisher_id_seq OWNED BY public.book.publisher_id;
          public          postgres    false    219            �            1259    60292    bookborrower    TABLE     �   CREATE TABLE public.bookborrower (
    id bigint NOT NULL,
    borrower_date date,
    mail character varying(255),
    name character varying(255),
    return_date date,
    book_borrower_id integer NOT NULL
);
     DROP TABLE public.bookborrower;
       public         heap    postgres    false            �            1259    60291 !   bookborrower_book_borrower_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bookborrower_book_borrower_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.bookborrower_book_borrower_id_seq;
       public          postgres    false    226            V           0    0 !   bookborrower_book_borrower_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.bookborrower_book_borrower_id_seq OWNED BY public.bookborrower.book_borrower_id;
          public          postgres    false    225            �            1259    60290    bookborrower_id_seq    SEQUENCE     |   CREATE SEQUENCE public.bookborrower_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.bookborrower_id_seq;
       public          postgres    false    226            W           0    0    bookborrower_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.bookborrower_id_seq OWNED BY public.bookborrower.id;
          public          postgres    false    224            �            1259    60302    category    TABLE     �   CREATE TABLE public.category (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    60301    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    228            X           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    227            �            1259    60311 	   publisher    TABLE     �   CREATE TABLE public.publisher (
    id bigint NOT NULL,
    address character varying(255),
    establishment_year integer,
    name character varying(255)
);
    DROP TABLE public.publisher;
       public         heap    postgres    false            �            1259    60310    publisher_id_seq    SEQUENCE     y   CREATE SEQUENCE public.publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.publisher_id_seq;
       public          postgres    false    230            Y           0    0    publisher_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.publisher_id_seq OWNED BY public.publisher.id;
          public          postgres    false    229            �           2604    60267 	   author id    DEFAULT     f   ALTER TABLE ONLY public.author ALTER COLUMN id SET DEFAULT nextval('public.author_id_seq'::regclass);
 8   ALTER TABLE public.author ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    60278    book id    DEFAULT     b   ALTER TABLE ONLY public.book ALTER COLUMN id SET DEFAULT nextval('public.book_id_seq'::regclass);
 6   ALTER TABLE public.book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    220    220            �           2604    60279    book author_id    DEFAULT     p   ALTER TABLE ONLY public.book ALTER COLUMN author_id SET DEFAULT nextval('public.book_author_id_seq'::regclass);
 =   ALTER TABLE public.book ALTER COLUMN author_id DROP DEFAULT;
       public          postgres    false    218    220    220            �           2604    60280    book publisher_id    DEFAULT     v   ALTER TABLE ONLY public.book ALTER COLUMN publisher_id SET DEFAULT nextval('public.book_publisher_id_seq'::regclass);
 @   ALTER TABLE public.book ALTER COLUMN publisher_id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    60288    book2cat book2cat_book_id    DEFAULT     �   ALTER TABLE ONLY public.book2cat ALTER COLUMN book2cat_book_id SET DEFAULT nextval('public.book2cat_book2cat_book_id_seq'::regclass);
 H   ALTER TABLE public.book2cat ALTER COLUMN book2cat_book_id DROP DEFAULT;
       public          postgres    false    221    223    223            �           2604    60289    book2cat book2cat_category_id    DEFAULT     �   ALTER TABLE ONLY public.book2cat ALTER COLUMN book2cat_category_id SET DEFAULT nextval('public.book2cat_book2cat_category_id_seq'::regclass);
 L   ALTER TABLE public.book2cat ALTER COLUMN book2cat_category_id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    60295    bookborrower id    DEFAULT     r   ALTER TABLE ONLY public.bookborrower ALTER COLUMN id SET DEFAULT nextval('public.bookborrower_id_seq'::regclass);
 >   ALTER TABLE public.bookborrower ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    226    226            �           2604    60296    bookborrower book_borrower_id    DEFAULT     �   ALTER TABLE ONLY public.bookborrower ALTER COLUMN book_borrower_id SET DEFAULT nextval('public.bookborrower_book_borrower_id_seq'::regclass);
 L   ALTER TABLE public.bookborrower ALTER COLUMN book_borrower_id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    60305    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    60314    publisher id    DEFAULT     l   ALTER TABLE ONLY public.publisher ALTER COLUMN id SET DEFAULT nextval('public.publisher_id_seq'::regclass);
 ;   ALTER TABLE public.publisher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            ;          0    60264    author 
   TABLE DATA           ?   COPY public.author (id, birth_date, country, name) FROM stdin;
    public          postgres    false    216   'K       ?          0    60275    book 
   TABLE DATA           Z   COPY public.book (id, name, publication_year, stock, author_id, publisher_id) FROM stdin;
    public          postgres    false    220   }K       B          0    60285    book2cat 
   TABLE DATA           J   COPY public.book2cat (book2cat_book_id, book2cat_category_id) FROM stdin;
    public          postgres    false    223   �K       E          0    60292    bookborrower 
   TABLE DATA           d   COPY public.bookborrower (id, borrower_date, mail, name, return_date, book_borrower_id) FROM stdin;
    public          postgres    false    226   �K       G          0    60302    category 
   TABLE DATA           9   COPY public.category (id, description, name) FROM stdin;
    public          postgres    false    228   7L       I          0    60311 	   publisher 
   TABLE DATA           J   COPY public.publisher (id, address, establishment_year, name) FROM stdin;
    public          postgres    false    230   qL       Z           0    0    author_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.author_id_seq', 2, true);
          public          postgres    false    215            [           0    0    book2cat_book2cat_book_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.book2cat_book2cat_book_id_seq', 1, false);
          public          postgres    false    221            \           0    0 !   book2cat_book2cat_category_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.book2cat_book2cat_category_id_seq', 1, false);
          public          postgres    false    222            ]           0    0    book_author_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.book_author_id_seq', 1, false);
          public          postgres    false    218            ^           0    0    book_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.book_id_seq', 2, true);
          public          postgres    false    217            _           0    0    book_publisher_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.book_publisher_id_seq', 1, false);
          public          postgres    false    219            `           0    0 !   bookborrower_book_borrower_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.bookborrower_book_borrower_id_seq', 1, false);
          public          postgres    false    225            a           0    0    bookborrower_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bookborrower_id_seq', 2, true);
          public          postgres    false    224            b           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 2, true);
          public          postgres    false    227            c           0    0    publisher_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.publisher_id_seq', 2, true);
          public          postgres    false    229            �           2606    60271    author author_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    216            �           2606    60282    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    220            �           2606    60300    bookborrower bookborrower_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.bookborrower
    ADD CONSTRAINT bookborrower_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.bookborrower DROP CONSTRAINT bookborrower_pkey;
       public            postgres    false    226            �           2606    60309    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    228            �           2606    60318    publisher publisher_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.publisher DROP CONSTRAINT publisher_pkey;
       public            postgres    false    230            �           2606    60320 )   bookborrower uk_bwgve0sdjv3o2f4ocgf36pwum 
   CONSTRAINT     d   ALTER TABLE ONLY public.bookborrower
    ADD CONSTRAINT uk_bwgve0sdjv3o2f4ocgf36pwum UNIQUE (mail);
 S   ALTER TABLE ONLY public.bookborrower DROP CONSTRAINT uk_bwgve0sdjv3o2f4ocgf36pwum;
       public            postgres    false    226            �           2606    60341 (   bookborrower fkbtb3vop84yvk2mtxta0fnaq8h    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookborrower
    ADD CONSTRAINT fkbtb3vop84yvk2mtxta0fnaq8h FOREIGN KEY (book_borrower_id) REFERENCES public.book(id);
 R   ALTER TABLE ONLY public.bookborrower DROP CONSTRAINT fkbtb3vop84yvk2mtxta0fnaq8h;
       public          postgres    false    220    226    3485            �           2606    60326     book fkgtvt7p649s4x80y6f4842pnfq    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT fkgtvt7p649s4x80y6f4842pnfq FOREIGN KEY (publisher_id) REFERENCES public.publisher(id);
 J   ALTER TABLE ONLY public.book DROP CONSTRAINT fkgtvt7p649s4x80y6f4842pnfq;
       public          postgres    false    220    3493    230            �           2606    60321     book fkklnrv3weler2ftkweewlky958    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT fkklnrv3weler2ftkweewlky958 FOREIGN KEY (author_id) REFERENCES public.author(id);
 J   ALTER TABLE ONLY public.book DROP CONSTRAINT fkklnrv3weler2ftkweewlky958;
       public          postgres    false    216    220    3483            �           2606    60331 $   book2cat fkrnpkkumcw5n9tipwa4y8ay0d3    FK CONSTRAINT     �   ALTER TABLE ONLY public.book2cat
    ADD CONSTRAINT fkrnpkkumcw5n9tipwa4y8ay0d3 FOREIGN KEY (book2cat_category_id) REFERENCES public.category(id);
 N   ALTER TABLE ONLY public.book2cat DROP CONSTRAINT fkrnpkkumcw5n9tipwa4y8ay0d3;
       public          postgres    false    228    223    3491            �           2606    60336 $   book2cat fkt9osl99xql6332wofrk4h5vop    FK CONSTRAINT     �   ALTER TABLE ONLY public.book2cat
    ADD CONSTRAINT fkt9osl99xql6332wofrk4h5vop FOREIGN KEY (book2cat_book_id) REFERENCES public.book(id);
 N   ALTER TABLE ONLY public.book2cat DROP CONSTRAINT fkt9osl99xql6332wofrk4h5vop;
       public          postgres    false    220    3485    223            ;   F   x�3�4�4��54 "NǼ�ĢD�#��32s�򫸌�
,���@�).I�K*��t*-.J+����� ��q      ?   :   x�3���	���420��#NCNCNC.#NoOwO�����!q�rqq��qqq E�
(      B      x������ � �      E   C   x�3�4200�5� "Τ$N�#+�RK▜F\F@����f�y$V�$�8�b���� �:      G   *   x�3�t�I9�1���?$�ˈ3,�(%3�����Ӈ+F��� ��	O      I   Y   x�3�t��N,JT�>����Ɯ�JN#��ģ���3KR�2��8�l(.I�K*�Q8<�8���"�RCN�����ʘ<�=... �} !     