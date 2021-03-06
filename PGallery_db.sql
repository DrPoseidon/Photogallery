PGDMP     8                    x         
   Gallery_db    9.6.12    12.2 .    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32896 
   Gallery_db    DATABASE     �   CREATE DATABASE "Gallery_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "Gallery_db";
                postgres    false            �            1259    33161    comments    TABLE     �   CREATE TABLE public.comments (
    com_id integer NOT NULL,
    photo_id integer NOT NULL,
    login character varying(500) NOT NULL,
    com_text text NOT NULL,
    com_pub_date date
);
    DROP TABLE public.comments;
       public            postgres    false            �            1259    33159    comments_com_id_seq    SEQUENCE     |   CREATE SEQUENCE public.comments_com_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.comments_com_id_seq;
       public          postgres    false    186            �           0    0    comments_com_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.comments_com_id_seq OWNED BY public.comments.com_id;
          public          postgres    false    185            �            1259    33175    photos    TABLE     �   CREATE TABLE public.photos (
    photo_id integer NOT NULL,
    login character varying(500) NOT NULL,
    photo_path character varying(500) NOT NULL,
    photo_pub_date date
);
    DROP TABLE public.photos;
       public            postgres    false            �            1259    33173    photos_photo_id_seq    SEQUENCE     |   CREATE SEQUENCE public.photos_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.photos_photo_id_seq;
       public          postgres    false    188            �           0    0    photos_photo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.photos_photo_id_seq OWNED BY public.photos.photo_id;
          public          postgres    false    187            �            1259    33188    rating    TABLE     �   CREATE TABLE public.rating (
    rating_id integer NOT NULL,
    photo_id integer NOT NULL,
    login character varying(500) NOT NULL,
    rating_value integer NOT NULL
);
    DROP TABLE public.rating;
       public            postgres    false            �            1259    33186    rating_rating_id_seq    SEQUENCE     }   CREATE SEQUENCE public.rating_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.rating_rating_id_seq;
       public          postgres    false    190            �           0    0    rating_rating_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.rating_rating_id_seq OWNED BY public.rating.rating_id;
          public          postgres    false    189            �            1259    33202    users    TABLE       CREATE TABLE public.users (
    user_id integer NOT NULL,
    login character varying(500) NOT NULL,
    password character varying(500) NOT NULL,
    email character varying(500) NOT NULL,
    avatar character varying(500),
    full_name character varying(500) NOT NULL
);
    DROP TABLE public.users;
       public            postgres    false            �            1259    33200    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    192            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    191            �           2604    33164    comments com_id    DEFAULT     r   ALTER TABLE ONLY public.comments ALTER COLUMN com_id SET DEFAULT nextval('public.comments_com_id_seq'::regclass);
 >   ALTER TABLE public.comments ALTER COLUMN com_id DROP DEFAULT;
       public          postgres    false    186    185    186            �           2604    33178    photos photo_id    DEFAULT     r   ALTER TABLE ONLY public.photos ALTER COLUMN photo_id SET DEFAULT nextval('public.photos_photo_id_seq'::regclass);
 >   ALTER TABLE public.photos ALTER COLUMN photo_id DROP DEFAULT;
       public          postgres    false    187    188    188            �           2604    33191    rating rating_id    DEFAULT     t   ALTER TABLE ONLY public.rating ALTER COLUMN rating_id SET DEFAULT nextval('public.rating_rating_id_seq'::regclass);
 ?   ALTER TABLE public.rating ALTER COLUMN rating_id DROP DEFAULT;
       public          postgres    false    190    189    190            �           2604    33205    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    192    191    192            w          0    33161    comments 
   TABLE DATA           S   COPY public.comments (com_id, photo_id, login, com_text, com_pub_date) FROM stdin;
    public          postgres    false    186   42       y          0    33175    photos 
   TABLE DATA           M   COPY public.photos (photo_id, login, photo_path, photo_pub_date) FROM stdin;
    public          postgres    false    188   �2       {          0    33188    rating 
   TABLE DATA           J   COPY public.rating (rating_id, photo_id, login, rating_value) FROM stdin;
    public          postgres    false    190   �3       }          0    33202    users 
   TABLE DATA           S   COPY public.users (user_id, login, password, email, avatar, full_name) FROM stdin;
    public          postgres    false    192   !4       �           0    0    comments_com_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.comments_com_id_seq', 168, true);
          public          postgres    false    185            �           0    0    photos_photo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.photos_photo_id_seq', 184, true);
          public          postgres    false    187            �           0    0    rating_rating_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rating_rating_id_seq', 43, true);
          public          postgres    false    189            �           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 44, true);
          public          postgres    false    191            �           2606    33169    comments pk_comments 
   CONSTRAINT     V   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT pk_comments PRIMARY KEY (com_id);
 >   ALTER TABLE ONLY public.comments DROP CONSTRAINT pk_comments;
       public            postgres    false    186            �           2606    33183    photos pk_photos 
   CONSTRAINT     T   ALTER TABLE ONLY public.photos
    ADD CONSTRAINT pk_photos PRIMARY KEY (photo_id);
 :   ALTER TABLE ONLY public.photos DROP CONSTRAINT pk_photos;
       public            postgres    false    188            �           2606    33196    rating pk_rating 
   CONSTRAINT     U   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT pk_rating PRIMARY KEY (rating_id);
 :   ALTER TABLE ONLY public.rating DROP CONSTRAINT pk_rating;
       public            postgres    false    190            �           2606    33210    users pk_users 
   CONSTRAINT     O   ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_users PRIMARY KEY (login);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT pk_users;
       public            postgres    false    192            �           1259    33170    comments_pk    INDEX     I   CREATE UNIQUE INDEX comments_pk ON public.comments USING btree (com_id);
    DROP INDEX public.comments_pk;
       public            postgres    false    186            �           1259    33172    pc_fk    INDEX     >   CREATE INDEX pc_fk ON public.comments USING btree (photo_id);
    DROP INDEX public.pc_fk;
       public            postgres    false    186            �           1259    33184 	   photos_pk    INDEX     G   CREATE UNIQUE INDEX photos_pk ON public.photos USING btree (photo_id);
    DROP INDEX public.photos_pk;
       public            postgres    false    188            �           1259    33199    pr_fk    INDEX     <   CREATE INDEX pr_fk ON public.rating USING btree (photo_id);
    DROP INDEX public.pr_fk;
       public            postgres    false    190            �           1259    33197 	   rating_pk    INDEX     H   CREATE UNIQUE INDEX rating_pk ON public.rating USING btree (rating_id);
    DROP INDEX public.rating_pk;
       public            postgres    false    190            �           1259    33171    uc_fk    INDEX     ;   CREATE INDEX uc_fk ON public.comments USING btree (login);
    DROP INDEX public.uc_fk;
       public            postgres    false    186            �           1259    33185    up_fk    INDEX     9   CREATE INDEX up_fk ON public.photos USING btree (login);
    DROP INDEX public.up_fk;
       public            postgres    false    188            �           1259    33198    ur_fk    INDEX     9   CREATE INDEX ur_fk ON public.rating USING btree (login);
    DROP INDEX public.ur_fk;
       public            postgres    false    190            �           1259    33211    users_pk    INDEX     B   CREATE UNIQUE INDEX users_pk ON public.users USING btree (login);
    DROP INDEX public.users_pk;
       public            postgres    false    192            �           2606    33212    comments fk_comments_pc_photos    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_comments_pc_photos FOREIGN KEY (photo_id) REFERENCES public.photos(photo_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_comments_pc_photos;
       public          postgres    false    186    2034    188            �           2606    33217    comments fk_comments_uc_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_comments_uc_users FOREIGN KEY (login) REFERENCES public.users(login) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_comments_uc_users;
       public          postgres    false    192    2042    186            �           2606    33222    photos fk_photos_up_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.photos
    ADD CONSTRAINT fk_photos_up_users FOREIGN KEY (login) REFERENCES public.users(login) ON UPDATE RESTRICT ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public.photos DROP CONSTRAINT fk_photos_up_users;
       public          postgres    false    2042    188    192            �           2606    33227    rating fk_rating_pr_photos    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fk_rating_pr_photos FOREIGN KEY (photo_id) REFERENCES public.photos(photo_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.rating DROP CONSTRAINT fk_rating_pr_photos;
       public          postgres    false    190    188    2034                        2606    33232    rating fk_rating_ur_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fk_rating_ur_users FOREIGN KEY (login) REFERENCES public.users(login) ON UPDATE RESTRICT ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public.rating DROP CONSTRAINT fk_rating_ur_users;
       public          postgres    false    190    2042    192            w   O   x�343�447�t)
�/N�L���0�bÅ/��taׅ�1~\�f��&(�� �+\�}aÅ� u� �1z\\\ �#$y      y   8  x�}��N�@��kx�:�罤ۊjR��I�г
��^�F״�W��ew��e�W�M�gֱx�㴺C�8a 2�*�D��h*�t��ʚ�6
�%{�9Ԡ@ͱ�f�h�
����W?p�_#�r�M;���Js}>����`x!��Hq&57����D���6����)h���Z���{��h���~�{Z�Z4�LF�:w�^�R�Z6��t�y�p��Z�SK�#��������o/+�r����G�bl�e�ɺ���&&M1B�������tgb��z(�</�S��S���]V�3��c��7j��C      {   6   x�31�4�0�t,��Kt,�0230�4�21�443�t)
�/N�L�����qqq P%      }   X  x�}��J�@�ϛ����l���Bki��EZ�M���611���w�"��P<��
�7rӞ�aٙ�|���S��2Y��
	�� `�`!PFk�޸�)�H�y�gk?>�/�"��l��<�T\�TP1�fUZ]�;6�o�9��vW?��k�Ow�������J��`�#�� ќQn�:��R����:������5ƌ��q���G��;�i5e��� v��^��(V�<��i(M"!Hb��s�B�}�8R����<dE�+�o�~o��'��o���[^h8�(��G� I"���Q�E`H�	����v7�Ngg���~���n����<��eú     