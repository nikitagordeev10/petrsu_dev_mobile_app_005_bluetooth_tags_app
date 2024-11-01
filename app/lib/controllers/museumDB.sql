PGDMP      -                |            museum    16.2    16.0 &               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    museum    DATABASE     z   CREATE DATABASE museum WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE museum;
                postgres    false            �            1259    24578    tblAdmin    TABLE     l   CREATE TABLE public."tblAdmin" (
    "idAdmin" integer NOT NULL,
    login text,
    "passwordHash" text
);
    DROP TABLE public."tblAdmin";
       public         heap    postgres    false            �            1259    24577    tblAdmin_idAdmin_seq    SEQUENCE     �   ALTER TABLE public."tblAdmin" ALTER COLUMN "idAdmin" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblAdmin_idAdmin_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    24602    tblBluetoothTag    TABLE     �   CREATE TABLE public."tblBluetoothTag" (
    "idBluetoothTag" integer NOT NULL,
    name text,
    "accelerationX" real,
    "accelerationY" real,
    acceleration real,
    mac text
);
 %   DROP TABLE public."tblBluetoothTag";
       public         heap    postgres    false            �            1259    24601 "   tblBluetoothTag_idBluetoothTag_seq    SEQUENCE     �   ALTER TABLE public."tblBluetoothTag" ALTER COLUMN "idBluetoothTag" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblBluetoothTag_idBluetoothTag_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    24610 
   tblExhibit    TABLE     �   CREATE TABLE public."tblExhibit" (
    "idExhibit" integer NOT NULL,
    name text,
    "imgLink" text,
    "idExtraQuestion" integer NOT NULL,
    "idBluetoothTag" integer NOT NULL
);
     DROP TABLE public."tblExhibit";
       public         heap    postgres    false            �            1259    24609    tblExhibit_idExhibit_seq    SEQUENCE     �   ALTER TABLE public."tblExhibit" ALTER COLUMN "idExhibit" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblExhibit_idExhibit_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    24628    tblExhibitsInQuest    TABLE     �   CREATE TABLE public."tblExhibitsInQuest" (
    "idExhibitsInQuest" integer NOT NULL,
    "idQuest" integer NOT NULL,
    "idExhibit" integer NOT NULL
);
 (   DROP TABLE public."tblExhibitsInQuest";
       public         heap    postgres    false            �            1259    24627 (   tblExhibitsInQuest_idExhibitsInQuest_seq    SEQUENCE       ALTER TABLE public."tblExhibitsInQuest" ALTER COLUMN "idExhibitsInQuest" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblExhibitsInQuest_idExhibitsInQuest_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    24594    tblExtraQuestion    TABLE     }   CREATE TABLE public."tblExtraQuestion" (
    "idExtraQuestion" integer NOT NULL,
    "questionText" text,
    answer text
);
 &   DROP TABLE public."tblExtraQuestion";
       public         heap    postgres    false            �            1259    24593 $   tblExtraQuestion_idExtraQuestion_seq    SEQUENCE     �   ALTER TABLE public."tblExtraQuestion" ALTER COLUMN "idExtraQuestion" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblExtraQuestion_idExtraQuestion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    24586    tblQuest    TABLE     |   CREATE TABLE public."tblQuest" (
    "idQuest" integer NOT NULL,
    name text,
    description text,
    "imgLink" text
);
    DROP TABLE public."tblQuest";
       public         heap    postgres    false            �            1259    24585    tblQuest_idQuest_seq    SEQUENCE     �   ALTER TABLE public."tblQuest" ALTER COLUMN "idQuest" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblQuest_idQuest_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            	          0    24578    tblAdmin 
   TABLE DATA           F   COPY public."tblAdmin" ("idAdmin", login, "passwordHash") FROM stdin;
    public          postgres    false    216   @.                 0    24602    tblBluetoothTag 
   TABLE DATA           x   COPY public."tblBluetoothTag" ("idBluetoothTag", name, "accelerationX", "accelerationY", acceleration, mac) FROM stdin;
    public          postgres    false    222   �.                 0    24610 
   tblExhibit 
   TABLE DATA           i   COPY public."tblExhibit" ("idExhibit", name, "imgLink", "idExtraQuestion", "idBluetoothTag") FROM stdin;
    public          postgres    false    224   �.                 0    24628    tblExhibitsInQuest 
   TABLE DATA           [   COPY public."tblExhibitsInQuest" ("idExhibitsInQuest", "idQuest", "idExhibit") FROM stdin;
    public          postgres    false    226   �/                 0    24594    tblExtraQuestion 
   TABLE DATA           W   COPY public."tblExtraQuestion" ("idExtraQuestion", "questionText", answer) FROM stdin;
    public          postgres    false    220   00                 0    24586    tblQuest 
   TABLE DATA           M   COPY public."tblQuest" ("idQuest", name, description, "imgLink") FROM stdin;
    public          postgres    false    218   �0                  0    0    tblAdmin_idAdmin_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."tblAdmin_idAdmin_seq"', 1, true);
          public          postgres    false    215                       0    0 "   tblBluetoothTag_idBluetoothTag_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."tblBluetoothTag_idBluetoothTag_seq"', 1, true);
          public          postgres    false    221                       0    0    tblExhibit_idExhibit_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."tblExhibit_idExhibit_seq"', 6, true);
          public          postgres    false    223                       0    0 (   tblExhibitsInQuest_idExhibitsInQuest_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."tblExhibitsInQuest_idExhibitsInQuest_seq"', 6, true);
          public          postgres    false    225                       0    0 $   tblExtraQuestion_idExtraQuestion_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."tblExtraQuestion_idExtraQuestion_seq"', 6, true);
          public          postgres    false    219                       0    0    tblQuest_idQuest_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."tblQuest_idQuest_seq"', 1, true);
          public          postgres    false    217            j           2606    24584    tblAdmin tblAdmin_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."tblAdmin"
    ADD CONSTRAINT "tblAdmin_pkey" PRIMARY KEY ("idAdmin");
 D   ALTER TABLE ONLY public."tblAdmin" DROP CONSTRAINT "tblAdmin_pkey";
       public            postgres    false    216            p           2606    24608 $   tblBluetoothTag tblBluetoothTag_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."tblBluetoothTag"
    ADD CONSTRAINT "tblBluetoothTag_pkey" PRIMARY KEY ("idBluetoothTag");
 R   ALTER TABLE ONLY public."tblBluetoothTag" DROP CONSTRAINT "tblBluetoothTag_pkey";
       public            postgres    false    222            r           2606    24616    tblExhibit tblExhibit_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."tblExhibit"
    ADD CONSTRAINT "tblExhibit_pkey" PRIMARY KEY ("idExhibit");
 H   ALTER TABLE ONLY public."tblExhibit" DROP CONSTRAINT "tblExhibit_pkey";
       public            postgres    false    224            t           2606    24632 *   tblExhibitsInQuest tblExhibitsInQuest_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."tblExhibitsInQuest"
    ADD CONSTRAINT "tblExhibitsInQuest_pkey" PRIMARY KEY ("idExhibitsInQuest");
 X   ALTER TABLE ONLY public."tblExhibitsInQuest" DROP CONSTRAINT "tblExhibitsInQuest_pkey";
       public            postgres    false    226            n           2606    24600 &   tblExtraQuestion tblExtraQuestion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."tblExtraQuestion"
    ADD CONSTRAINT "tblExtraQuestion_pkey" PRIMARY KEY ("idExtraQuestion");
 T   ALTER TABLE ONLY public."tblExtraQuestion" DROP CONSTRAINT "tblExtraQuestion_pkey";
       public            postgres    false    220            l           2606    24592    tblQuest tblQuest_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."tblQuest"
    ADD CONSTRAINT "tblQuest_pkey" PRIMARY KEY ("idQuest");
 D   ALTER TABLE ONLY public."tblQuest" DROP CONSTRAINT "tblQuest_pkey";
       public            postgres    false    218            u           2606    24617    tblExhibit idBluetoothTag    FK CONSTRAINT     �   ALTER TABLE ONLY public."tblExhibit"
    ADD CONSTRAINT "idBluetoothTag" FOREIGN KEY ("idBluetoothTag") REFERENCES public."tblBluetoothTag"("idBluetoothTag");
 G   ALTER TABLE ONLY public."tblExhibit" DROP CONSTRAINT "idBluetoothTag";
       public          postgres    false    224    4720    222            v           2606    24622    tblExhibit idExtraQuestion    FK CONSTRAINT     �   ALTER TABLE ONLY public."tblExhibit"
    ADD CONSTRAINT "idExtraQuestion" FOREIGN KEY ("idExtraQuestion") REFERENCES public."tblExtraQuestion"("idExtraQuestion");
 H   ALTER TABLE ONLY public."tblExhibit" DROP CONSTRAINT "idExtraQuestion";
       public          postgres    false    4718    224    220            w           2606    24638 4   tblExhibitsInQuest tblExhibitsInQuest_idExhibit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tblExhibitsInQuest"
    ADD CONSTRAINT "tblExhibitsInQuest_idExhibit_fkey" FOREIGN KEY ("idExhibit") REFERENCES public."tblExhibit"("idExhibit");
 b   ALTER TABLE ONLY public."tblExhibitsInQuest" DROP CONSTRAINT "tblExhibitsInQuest_idExhibit_fkey";
       public          postgres    false    4722    224    226            x           2606    24633 2   tblExhibitsInQuest tblExhibitsInQuest_idQuest_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tblExhibitsInQuest"
    ADD CONSTRAINT "tblExhibitsInQuest_idQuest_fkey" FOREIGN KEY ("idQuest") REFERENCES public."tblQuest"("idQuest");
 `   ALTER TABLE ONLY public."tblExhibitsInQuest" DROP CONSTRAINT "tblExhibitsInQuest_idQuest_fkey";
       public          postgres    false    218    4716    226            	   4   x�3�LL����42426J3�4O4�DscK�D�T�Dôdc�=... �(            x�3�,IL7�@�=... 0��         :  x����n�0  ���/ʸ�eA�t�Fj���}m��G��~�	4� �fϢ�(i�4��8�Ө*�+ɱ�Di���˙�[ǭt�1��FU��c嶉qRņ�����?��I�	H�BP�ˊb��'g��F��͗��N���������I�'�*ǃ�F�!�v;1XD���y�/]���T�HY��FǓ�b��+I?K'8���=���w^8L�>� �AYe�E��I̋E�n��p����j].lٞ�y^Z_耵E���K�O�1��}?�f�m���Nw�XPR�@��� ���˒         )   x�Ĺ 0��7L �������B!�'����a�r�f��         O   x�Uɻ�0�:o$�i20mX�y#Z�ړƋ�_\qJ��ߘ-��V�����s�r=]�(7����Bc�         �   x�3�,,M-.1�0��֋6]쾰S�®���ƋMz
]l�ؤpa���[��@���/�S�����;.6^�pa���� ���w_칰��hH�P�n u�	b(PWP�&�΋�z�%%�V��)E�e�z����9�z����i�9��)���>�Qޑ妑�Q!�U��>��A�>�e���������E�y�\1z\\\ �Et�     