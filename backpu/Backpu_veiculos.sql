PGDMP      /                |            teste_db    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17413    teste_db    DATABASE        CREATE DATABASE teste_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE teste_db;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    17422    carros    TABLE     s   CREATE TABLE public.carros (
    id integer NOT NULL,
    modelo character varying(100),
    disponivel boolean
);
    DROP TABLE public.carros;
       public         heap    postgres    false    4            �            1259    17421    carros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.carros_id_seq;
       public          postgres    false    216    4            �           0    0    carros_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.carros_id_seq OWNED BY public.carros.id;
          public          postgres    false    215                       2604    17425 	   carros id    DEFAULT     f   ALTER TABLE ONLY public.carros ALTER COLUMN id SET DEFAULT nextval('public.carros_id_seq'::regclass);
 8   ALTER TABLE public.carros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                       2606    17427    carros carros_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.carros DROP CONSTRAINT carros_pkey;
       public            postgres    false    216           