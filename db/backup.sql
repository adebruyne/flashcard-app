PGDMP     2    
                v        
   flashcards    10.4    10.4 !    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            L           1262    16394 
   flashcards    DATABASE     h   CREATE DATABASE flashcards WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE flashcards;
             beth    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            M           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13241    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            N           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16566    cards    TABLE     �   CREATE TABLE public.cards (
    card_id integer NOT NULL,
    deck_id integer,
    topic character varying(300),
    question text,
    answer text,
    imgurl character varying(2083)
);
    DROP TABLE public.cards;
       public         postgres    false    3            �            1259    16564    cards_card_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cards_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.cards_card_id_seq;
       public       postgres    false    3    201            O           0    0    cards_card_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.cards_card_id_seq OWNED BY public.cards.card_id;
            public       postgres    false    200            �            1259    16558    decks    TABLE     ^   CREATE TABLE public.decks (
    deck_id integer NOT NULL,
    topic character varying(300)
);
    DROP TABLE public.decks;
       public         postgres    false    3            �            1259    16556    decks_deck_id_seq    SEQUENCE     �   CREATE SEQUENCE public.decks_deck_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.decks_deck_id_seq;
       public       postgres    false    199    3            P           0    0    decks_deck_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.decks_deck_id_seq OWNED BY public.decks.deck_id;
            public       postgres    false    198            �            1259    16550    sessions    TABLE     o   CREATE TABLE public.sessions (
    session_id integer NOT NULL,
    sessiondate timestamp without time zone
);
    DROP TABLE public.sessions;
       public         postgres    false    3            �            1259    16548    sessions_session_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sessions_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sessions_session_id_seq;
       public       postgres    false    197    3            Q           0    0    sessions_session_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.sessions_session_id_seq OWNED BY public.sessions.session_id;
            public       postgres    false    196            �            1259    16580    tests    TABLE     H   CREATE TABLE public.tests (
    card_id integer,
    isright boolean
);
    DROP TABLE public.tests;
       public         postgres    false    3            �           2604    16569    cards card_id    DEFAULT     n   ALTER TABLE ONLY public.cards ALTER COLUMN card_id SET DEFAULT nextval('public.cards_card_id_seq'::regclass);
 <   ALTER TABLE public.cards ALTER COLUMN card_id DROP DEFAULT;
       public       postgres    false    200    201    201            �           2604    16561    decks deck_id    DEFAULT     n   ALTER TABLE ONLY public.decks ALTER COLUMN deck_id SET DEFAULT nextval('public.decks_deck_id_seq'::regclass);
 <   ALTER TABLE public.decks ALTER COLUMN deck_id DROP DEFAULT;
       public       postgres    false    198    199    199            �           2604    16553    sessions session_id    DEFAULT     z   ALTER TABLE ONLY public.sessions ALTER COLUMN session_id SET DEFAULT nextval('public.sessions_session_id_seq'::regclass);
 B   ALTER TABLE public.sessions ALTER COLUMN session_id DROP DEFAULT;
       public       postgres    false    196    197    197            E          0    16566    cards 
   TABLE DATA               R   COPY public.cards (card_id, deck_id, topic, question, answer, imgurl) FROM stdin;
    public       postgres    false    201   [        C          0    16558    decks 
   TABLE DATA               /   COPY public.decks (deck_id, topic) FROM stdin;
    public       postgres    false    199   83       A          0    16550    sessions 
   TABLE DATA               ;   COPY public.sessions (session_id, sessiondate) FROM stdin;
    public       postgres    false    197   |3       F          0    16580    tests 
   TABLE DATA               1   COPY public.tests (card_id, isright) FROM stdin;
    public       postgres    false    202   �3       R           0    0    cards_card_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cards_card_id_seq', 90, true);
            public       postgres    false    200            S           0    0    decks_deck_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.decks_deck_id_seq', 3, true);
            public       postgres    false    198            T           0    0    sessions_session_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sessions_session_id_seq', 1, false);
            public       postgres    false    196            �           2606    16574    cards cards_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (card_id);
 :   ALTER TABLE ONLY public.cards DROP CONSTRAINT cards_pkey;
       public         postgres    false    201            �           2606    16563    decks decks_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.decks
    ADD CONSTRAINT decks_pkey PRIMARY KEY (deck_id);
 :   ALTER TABLE ONLY public.decks DROP CONSTRAINT decks_pkey;
       public         postgres    false    199            �           2606    16555    sessions sessions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (session_id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public         postgres    false    197            �           2606    16575    cards cards_deck_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_deck_id_fkey FOREIGN KEY (deck_id) REFERENCES public.decks(deck_id);
 B   ALTER TABLE ONLY public.cards DROP CONSTRAINT cards_deck_id_fkey;
       public       postgres    false    201    3010    199            �           2606    16583    tests tests_card_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.cards(card_id);
 B   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_card_id_fkey;
       public       postgres    false    202    201    3012            E      x��Zێ�H�}N�"4O0*��R�%40@��ZjEڑΨ�n�]I�4�p����K��;��KU�К�Qk���/k�����_u�L�����2\��H�.L���Y�yV
mE��J�+%��T�P���JH�r��j^�B	�$<~)S�hY��Uiſ����ۗ/��TV�qvq!B,��B&��\^I:/�Y.u��"1��v�C���1h'�Y�ؤ���,E*�i�pbYea�M&ljL�J�|)��:+W:S"S��k�)6j!�*�T���<O4·��{F����w;�����z��J���-10�V9-�M����^�'FF�gu�lo���^������rWYD�*��ͳ���@7O
l�;���d�G���W���J����a)6ڋoI�	��sF��GVG���-:퉰+��\k�#��'Yo�AdDfJM�qh�nD�;}����N!���:7U��C,��u�?��8��U:�hΒn��!V:�T&�@� v*�l6�0�S���)RҌ�N�պ����F7�ɨ��*@�P�5��@�vн��;�}����L�;���	��"4���ŕ,�\$0GKOj�2�Y����f�`Ú�x��Ƭ�x��_I���� ���h *ލ׆��/�]���-\�d0u:. ��6t��mF�L}�&]��DzY�(/�Rj�K�y��X3H�׬�xr�z䞛�TƪkX�]a�0��I�a�c��W�#��*��p0���ѴwR�A=4�LG������I8N��;�����W��+\���!� ����AV�p���F�/xrW���oC��*"��e� ���/6+#ʪ`�M�1�]a�5��V����}��] ��
U
PQ�Vn��q�?�dl��#��b�󗟋���W_>� ��xze��q�y3��U�����ܒ��T]����$�4.���t�;�%����xF���0��a�HQ(�l_�-�{2F S  &w�X��\��MUV��xf�u�9�&��8D�d����z�U��{'N�]@�X��o�X�E��-��F��%ͦ�Ү��j��H�-[[��8��	�N�M���B{^�_��'�B���-��_-D|�9�p�.tx9�ь�m�G�!�Sc`m!/�d`m�6u�9!J��A0��W�fZ|��J�%���{�Q`j�鄃�c��`�:���B�Rh����(F��U���H����)�N�2���RI�ji}pǌ߹�)������?3��$�"lG3"@K]� ��KI�*�ep����	��9�Y��ne��7[�מ��+��kV�be���~/�o�ۜC��w�_���W�HC�t��(���Z�:�����"��U�R�3Z���u����x:��:���� � NZ�>pܤW[�q�8�5�p�nBy>ϣ��Bp�Ȅ��{q�B 2K�:��"� d-���tvpV�Ӣ*K�9�OH>�i�DB�!����AK\0?|ph�p]<6���m�DA��q ��R���i8��u��)�\���I�1�bw)�.��p�ڂ�a����+�qT�K�D�l�dR����TS% ��W*��
���&Rɨ��A�f�ҩ��P��̎ޑ{�D����e���;/�#�=��qm�
N�(6���2�\��E�}U�Hl� �I� R���`��:1`�񥻮�S�Ilϟ�����b���B�B>9�(ުp��_$�WT���יƎ$��L���8�٪�H��t�AxH⤼���nD<-#��&�$�g�s�Z��<�r���GL����$䋖�*�jXD@BΔ:y���="�ai��qϥ7��(O��5@l�mp8���������[�s옑�|�O)h����YR�ZܵfYn�~;�G'ެ4\�FN�)�3�c�t'v�zq�~ڲ�B�g>H>�a�K���n�f�9C�rb-���q��6I��?���#�n��`̭��0�pID@$l<�\yG��х�,!0�D��w�Fµ@dQ�w�<-#!�����[Cgx
�R���-�L�E�)~�������(^a�l`�Q{Zwv4�fG��B]��b�O瀜N.���\x;�{�JՉ|��X���>�b�sZ�N4�60��e�H��:A�P��>X����П��`�.�r c�"��\1�<n�rړk��~���t��TS��w������W?<�޼���?�����ρT
�_���F:�ҕ;վp�0�����uHD1��Z�]� ����b�:����	;e3��T@�6��N�?�F��_�My��6i���ޭs�����|��f��7��&��2��5e�����W>��=�w�&�$��$T�?�]�uF<Ǩ�῟_ܻ���)�7�& �Nip99S�g�
{�WL{���4�2�� �@����*2ݝ"h Y�{X���0r>�D�R����^��D1nzM� �9�x�87�q��W���v�s��$�aR}��d�t���P��Q<�����.o�ư�d�6�q�Âߐ(��s�
-���;$ץx=˵��(��ݻ����`fE�rI�K�2e".���a�R�[�y)��Ks~�O3��d(x�j��l���?�������˫���!��B��/:�T~ĕ�ӈ�j���ڔm�#)���`�ԁ�wE%%���r���4�����z��-��1UV|lp���U���:���R�H�u	vY�cK��T�\xH�r��(���#�T��]��9ZY��Ǡ
��	���5�6�؅�b�.F W�iƎ��p�`ؕ,$�q�2���|8�N�f��#&�р���������'^���\�T*bd�˞:ZX2������ ��|�a_�|�JT�t
hղ�Ϥ�d=6L�O���~e��۫�Sy����aV,"�� !�(%�;��?/_�4��C<����:S���S6��K3�k�A+`68G��c�㉠a��\��L��c�~�4%�2v⦤�F�Os�ɀ����G����l�6�1����L��x�M�g�:>�J��y�R0��ǖ[z�r_�א�׭c�[�g/���d���z���,}^���Da�GUp���L���A]iSYP��Tȥ��/�_��3�j0q`FN�a4�1h�p�#����@L&	ɰ0 @�"J;��M��q��v���&_y�>IhL��4TVs>���"�U)𥇳q���)���H!
��KY��\������dd>f�����AJ�-T���8��s���9��s�I%I�IE�>@���:\u#߷��
��7�ä���t֌9�., �+��ߩ�M{�i�N�wa�I���y#(W)��ke�ꥬ)�NS3�_\��G;a��I�sp��i㉦�Jh��|H"��� ��AF��bT����ٍt��R���jF�7g�B���\��溲;��xeƯL�Q%���NJ���q�?��p&:N����s�Pv�I����H�O�2�.���_+�U�T�2�90��'$�7��@��v~��M��������ʈE!��O!)N�o�T�X��$As���b3W�4aX��⽫o��4۝���Mt;Q�Lq��Qt���w"�_7����$g>s3?؊��#^xc�CP�b���[�������m�
�㸳^y|���9�Ջ�#��7;�1���|�c3�0��
��y���;��XeT� >Jr���~�+*��BQ��yOd�ĕ:�>���A����G�Oq�3��/N�m�	{���{#��K�@� �N�k�J�	�2�^�Aɝizt���ם�f�����P�q���P�Gk���:������4;ډʤ8v�HſQ�m��%p��fC��-��O@� ~s� rɕ�7�Z������u�8=:^]�~�cq�P���P�ЀK
��������W�7�\+&u=�0�����k�x	o
볒�����"I����+�/@"nk�J�����%�
l�k���$�]�����RÉxc��������%}���P�o�cS�K�x�{U��a'��0{L���8��^���ʴF�g �  �0$��"Wd:bJ�	�r64�'[4��8�^z��C}���8�
@Geo�X>s�p�c�[ʪ4���!,=8$�ء�%o�!�DV�V��@����z�£�O83��3;�O$��5����%�%EF�H��J_j6N��*�6�6RUi�@M�-U4��k�y���<��8�T��|���v�ᑎuyty�UO`C�e�T˿p��/D�!+r_�� �uB)���]y���R2�?���5�OQjZ��� /���� ⋠*U���˄���0dWUaN��@��x�yN�fU�t2��e���lԶ�ݲ������/}�f���a6j[̾��Q�c�%z�Fm��-i2}�]f�ˬ�2�]f��l�v��]fB�ٸ�2�C]f������m��~�ٸ�2�����m����e6n�̾�.�q�e��u�M�.���e6i�̾D�٤�2�Ϻ�&���l��t�Mna���u�Mnw�����2��]fm��ow�M�.���e6m��no���k�2�2����̦m��W�f6���̦���lڶ�}mfӶ��K��M�6�[�f6����fm�Y�f6k���h�٬m3k����6�Y�f����fm��'����6��6�Y�f�m����6����lֶ�}�mf�����k3;m��>c��i�f�%��N�6����������~=mf�����􋵙���6�����m3k��~���~�f����~�޹s��~e      C   4   x�3�t��KN-()�2�IM�����O�L-�2�t�I�/�,��-����� At�      A      x������ � �      F      x����,���LC%J��� i�?     