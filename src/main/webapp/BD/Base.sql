PGDMP  $                    |            bd_verdeurbano    16.2    16.2 3               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16517    bd_verdeurbano    DATABASE     �   CREATE DATABASE bd_verdeurbano WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE bd_verdeurbano;
                postgres    false            �            1259    16597 
   area_verde    TABLE     �   CREATE TABLE public.area_verde (
    id_area integer NOT NULL,
    id_perfil_area integer,
    id_user integer,
    titulo_area text,
    descripcion_area text,
    ciudad_area text,
    direccion_area text
);
    DROP TABLE public.area_verde;
       public         heap    postgres    false            �            1259    16596    Area_Verde_id_area_seq    SEQUENCE     �   CREATE SEQUENCE public."Area_Verde_id_area_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Area_Verde_id_area_seq";
       public          postgres    false    226            !           0    0    Area_Verde_id_area_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Area_Verde_id_area_seq" OWNED BY public.area_verde.id_area;
          public          postgres    false    225            �            1259    16569    foro    TABLE     �   CREATE TABLE public.foro (
    id_foro integer NOT NULL,
    id_user integer,
    estado_foro integer,
    titulo_foro text,
    contenido_foro text,
    calificacion_foro smallint,
    fecha_foro text
);
    DROP TABLE public.foro;
       public         heap    postgres    false            �            1259    16568    Foro_id_foro_seq    SEQUENCE     �   CREATE SEQUENCE public."Foro_id_foro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Foro_id_foro_seq";
       public          postgres    false    222            "           0    0    Foro_id_foro_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Foro_id_foro_seq" OWNED BY public.foro.id_foro;
          public          postgres    false    221            �            1259    16583    foro_respuesta    TABLE     �   CREATE TABLE public.foro_respuesta (
    id_respuesta integer NOT NULL,
    id_foro integer,
    estado_respuesta smallint,
    titulo_respuesta text,
    contenido_respuesta text,
    calificacion_respuesta integer
);
 "   DROP TABLE public.foro_respuesta;
       public         heap    postgres    false            �            1259    16582    Foro_respuesta_id_respuesta_seq    SEQUENCE     �   CREATE SEQUENCE public."Foro_respuesta_id_respuesta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Foro_respuesta_id_respuesta_seq";
       public          postgres    false    224            #           0    0    Foro_respuesta_id_respuesta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Foro_respuesta_id_respuesta_seq" OWNED BY public.foro_respuesta.id_respuesta;
          public          postgres    false    223            �            1259    16528    perfil_area    TABLE     t   CREATE TABLE public.perfil_area (
    id_perfil_area integer NOT NULL,
    descripcion_perfil_area text NOT NULL
);
    DROP TABLE public.perfil_area;
       public         heap    postgres    false            �            1259    16527    Perfil_Area_id_perfil_area_seq    SEQUENCE     �   CREATE SEQUENCE public."Perfil_Area_id_perfil_area_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Perfil_Area_id_perfil_area_seq";
       public          postgres    false    218            $           0    0    Perfil_Area_id_perfil_area_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Perfil_Area_id_perfil_area_seq" OWNED BY public.perfil_area.id_perfil_area;
          public          postgres    false    217            �            1259    16519    perfil_usuario    TABLE     m   CREATE TABLE public.perfil_usuario (
    id_perfil integer NOT NULL,
    descripcion_perfil text NOT NULL
);
 "   DROP TABLE public.perfil_usuario;
       public         heap    postgres    false            �            1259    16518    Perfil_id_perfil_seq    SEQUENCE     �   CREATE SEQUENCE public."Perfil_id_perfil_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Perfil_id_perfil_seq";
       public          postgres    false    216            %           0    0    Perfil_id_perfil_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Perfil_id_perfil_seq" OWNED BY public.perfil_usuario.id_perfil;
          public          postgres    false    215            �            1259    16555    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_user integer NOT NULL,
    id_perfil integer,
    nombre_user text,
    cedula_user text,
    correo_user text,
    password_user text
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16554    Usuario_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_id_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Usuario_id_user_seq";
       public          postgres    false    220            &           0    0    Usuario_id_user_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Usuario_id_user_seq" OWNED BY public.usuario.id_user;
          public          postgres    false    219            n           2604    16600    area_verde id_area    DEFAULT     z   ALTER TABLE ONLY public.area_verde ALTER COLUMN id_area SET DEFAULT nextval('public."Area_Verde_id_area_seq"'::regclass);
 A   ALTER TABLE public.area_verde ALTER COLUMN id_area DROP DEFAULT;
       public          postgres    false    225    226    226            l           2604    16572    foro id_foro    DEFAULT     n   ALTER TABLE ONLY public.foro ALTER COLUMN id_foro SET DEFAULT nextval('public."Foro_id_foro_seq"'::regclass);
 ;   ALTER TABLE public.foro ALTER COLUMN id_foro DROP DEFAULT;
       public          postgres    false    222    221    222            m           2604    16586    foro_respuesta id_respuesta    DEFAULT     �   ALTER TABLE ONLY public.foro_respuesta ALTER COLUMN id_respuesta SET DEFAULT nextval('public."Foro_respuesta_id_respuesta_seq"'::regclass);
 J   ALTER TABLE public.foro_respuesta ALTER COLUMN id_respuesta DROP DEFAULT;
       public          postgres    false    224    223    224            j           2604    16531    perfil_area id_perfil_area    DEFAULT     �   ALTER TABLE ONLY public.perfil_area ALTER COLUMN id_perfil_area SET DEFAULT nextval('public."Perfil_Area_id_perfil_area_seq"'::regclass);
 I   ALTER TABLE public.perfil_area ALTER COLUMN id_perfil_area DROP DEFAULT;
       public          postgres    false    217    218    218            i           2604    16522    perfil_usuario id_perfil    DEFAULT     ~   ALTER TABLE ONLY public.perfil_usuario ALTER COLUMN id_perfil SET DEFAULT nextval('public."Perfil_id_perfil_seq"'::regclass);
 G   ALTER TABLE public.perfil_usuario ALTER COLUMN id_perfil DROP DEFAULT;
       public          postgres    false    216    215    216            k           2604    16558    usuario id_user    DEFAULT     t   ALTER TABLE ONLY public.usuario ALTER COLUMN id_user SET DEFAULT nextval('public."Usuario_id_user_seq"'::regclass);
 >   ALTER TABLE public.usuario ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    220    219    220                      0    16597 
   area_verde 
   TABLE DATA                 public          postgres    false    226   �8                 0    16569    foro 
   TABLE DATA                 public          postgres    false    222   L:                 0    16583    foro_respuesta 
   TABLE DATA                 public          postgres    false    224   �<                 0    16528    perfil_area 
   TABLE DATA                 public          postgres    false    218   �<                 0    16519    perfil_usuario 
   TABLE DATA                 public          postgres    false    216   ^=                 0    16555    usuario 
   TABLE DATA                 public          postgres    false    220   �=       '           0    0    Area_Verde_id_area_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Area_Verde_id_area_seq"', 3, true);
          public          postgres    false    225            (           0    0    Foro_id_foro_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Foro_id_foro_seq"', 1, false);
          public          postgres    false    221            )           0    0    Foro_respuesta_id_respuesta_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Foro_respuesta_id_respuesta_seq"', 1, false);
          public          postgres    false    223            *           0    0    Perfil_Area_id_perfil_area_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Perfil_Area_id_perfil_area_seq"', 1, false);
          public          postgres    false    217            +           0    0    Perfil_id_perfil_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Perfil_id_perfil_seq"', 1, false);
          public          postgres    false    215            ,           0    0    Usuario_id_user_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Usuario_id_user_seq"', 7, true);
          public          postgres    false    219            z           2606    16604    area_verde id_area 
   CONSTRAINT     U   ALTER TABLE ONLY public.area_verde
    ADD CONSTRAINT id_area PRIMARY KEY (id_area);
 <   ALTER TABLE ONLY public.area_verde DROP CONSTRAINT id_area;
       public            postgres    false    226            v           2606    16576    foro id_foro 
   CONSTRAINT     O   ALTER TABLE ONLY public.foro
    ADD CONSTRAINT id_foro PRIMARY KEY (id_foro);
 6   ALTER TABLE ONLY public.foro DROP CONSTRAINT id_foro;
       public            postgres    false    222            p           2606    16526    perfil_usuario id_perfil 
   CONSTRAINT     ]   ALTER TABLE ONLY public.perfil_usuario
    ADD CONSTRAINT id_perfil PRIMARY KEY (id_perfil);
 B   ALTER TABLE ONLY public.perfil_usuario DROP CONSTRAINT id_perfil;
       public            postgres    false    216            r           2606    16535    perfil_area id_perfil_area 
   CONSTRAINT     d   ALTER TABLE ONLY public.perfil_area
    ADD CONSTRAINT id_perfil_area PRIMARY KEY (id_perfil_area);
 D   ALTER TABLE ONLY public.perfil_area DROP CONSTRAINT id_perfil_area;
       public            postgres    false    218            x           2606    16590    foro_respuesta id_respuesta 
   CONSTRAINT     c   ALTER TABLE ONLY public.foro_respuesta
    ADD CONSTRAINT id_respuesta PRIMARY KEY (id_respuesta);
 E   ALTER TABLE ONLY public.foro_respuesta DROP CONSTRAINT id_respuesta;
       public            postgres    false    224            t           2606    16562    usuario id_user 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT id_user PRIMARY KEY (id_user);
 9   ALTER TABLE ONLY public.usuario DROP CONSTRAINT id_user;
       public            postgres    false    220            }           2606    16591    foro_respuesta id_foro    FK CONSTRAINT     y   ALTER TABLE ONLY public.foro_respuesta
    ADD CONSTRAINT id_foro FOREIGN KEY (id_foro) REFERENCES public.foro(id_foro);
 @   ALTER TABLE ONLY public.foro_respuesta DROP CONSTRAINT id_foro;
       public          postgres    false    224    4726    222            {           2606    16563    usuario id_perfil    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT id_perfil FOREIGN KEY (id_perfil) REFERENCES public.perfil_usuario(id_perfil);
 ;   ALTER TABLE ONLY public.usuario DROP CONSTRAINT id_perfil;
       public          postgres    false    4720    220    216            ~           2606    16605    area_verde id_perfil_area    FK CONSTRAINT     �   ALTER TABLE ONLY public.area_verde
    ADD CONSTRAINT id_perfil_area FOREIGN KEY (id_perfil_area) REFERENCES public.perfil_area(id_perfil_area);
 C   ALTER TABLE ONLY public.area_verde DROP CONSTRAINT id_perfil_area;
       public          postgres    false    218    226    4722            |           2606    16577    foro id_user    FK CONSTRAINT     r   ALTER TABLE ONLY public.foro
    ADD CONSTRAINT id_user FOREIGN KEY (id_user) REFERENCES public.usuario(id_user);
 6   ALTER TABLE ONLY public.foro DROP CONSTRAINT id_user;
       public          postgres    false    4724    220    222                       2606    16610    area_verde id_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.area_verde
    ADD CONSTRAINT id_user FOREIGN KEY (id_user) REFERENCES public.usuario(id_user) NOT VALID;
 <   ALTER TABLE ONLY public.area_verde DROP CONSTRAINT id_user;
       public          postgres    false    220    226    4724               �  x��R�n�0��+xsx�a@���.�Y�5ͮ#�)Yr)+@�7����v������C�� [|�#�#g����f��kh�ڱ�P�$����]���?�=��{�$%��&ƨ�h�������Ĳ�yO���|5]�ɧ>�p^Bq�b�������H�P(4u�FZ�+~ �^jD�{�����eB�<���U&�����i���A���P���v�E�p,P�~��ރEg%������2���KԒ��$[��,Mؐ��m7�f���h��<�.Q�c��4o ���M�A���a=�;����o�<8[yv��՚���>(����>*��� ��<�kUo�$��P�E�-]A�R�$k�@T�u�Ѿ�q�#tA-�ov�J��C�� -�Vy��S��VB�b���=�f�<[%���e�<����>Xb         A  x��SKnA���%�&���)A��$�"O��cT�NUy��Hp1잞�� H(�V����޳��Y]~�����;e�u}.���� ���6�y�6nv?.�F��.�١��PO���!ܟ_�]��������k��X���	�{/y�����]�Bx���Tn���T��kԤ z�:NP����$
�yH\+G���b����P�:v�L�:���.k[q#a������c�
�	#�@*�>
up!���D	�qO�'�<ܰ��?
F�M�>Im���Tj�rS�4P�����4���
�& {���<�*A'������N��̢��XOe>m�!�+�)�k�5����1f��E���5]붹8�ٵ��7��YgI[V[z�w�z�J�B��M}�q���z��Aڸ��L�C�8�y2��A�p�
j%��D��TWU6�HN�W#�y��T z]�"����/�@�t�?��k.}��(��a��E��"'rOv�h� '�!с>ՙ>=>:~ytr|r��jo�w�d"d;x�E<j�� LI^�iˠ��a���y#�7��ȳ�6ro�'����         
   x���             �   x��ϻ
�@��ާ�N	�V�
A�!��VFw��ͮ�u�?�K�XN��e�?(����5��ddݡBªv�� <lMx��:�ۼ�d�A\�|<9h�Gc]������nq��d�*gjZ���ž���W�:,�E���Î��[E_��n         p   x���v
Q���W((M��L�+H-J�̉/-.M,��W��L���(��'e$g��A�4�}B]�4u�Sr3�2�K�S��5��<�f���P����t�% ;�� a_B�         Q  x���Ak�0�{�w�)T-�ѕ�n�F�z_c֥��$�ؿ_4�^vB~yE^��]��`�;�@ݜ�`��6h���(��M���C���N��}��F�0hc�C��~k�0����ۺ��"��G�
G��_t�6y�QB�E�M_�On�
9g���IR�n&�'1�=k%�+JdB[o�JR��ЩGߣR+��9�	M3B��\���L�YHT��`��ڲ#{���޻וp%��^�<�gO6m�ƀ�<z�-�?
Vh���Op��Y�t�M�1���8��tf�[E���ړK���8����?�՟

n�3_s�i߱������w�]     