CREATE TABLE public."Decks"
(
    topic character varying(200) COLLATE pg_catalog."default",
    deck_id integer NOT NULL DEFAULT nextval('"Decks_deck_id_seq"'::regclass),
    CONSTRAINT deck_id PRIMARY KEY (deck_id)
)


CREATE TABLE public."Cards"
(
    card_id integer NOT NULL DEFAULT nextval('"Cards_card_id_seq"'::regclass),
    question character varying(300) COLLATE pg_catalog."default",
    answer character varying(600) COLLATE pg_catalog."default",
    CONSTRAINT card_id PRIMARY KEY (card_id)
)


CREATE TABLE public."Images"
(
    img_id integer NOT NULL DEFAULT nextval('"Images_img_id_seq"'::regclass),
    imgname character varying(10) COLLATE pg_catalog."default",
    imgimage oid,
    CONSTRAINT img_id PRIMARY KEY (img_id)
)


CREATE TABLE public."Results"
(
    deck_id integer,
    card_id integer,
    "isRight" boolean,
    CONSTRAINT card_id FOREIGN KEY (card_id)
        REFERENCES public."Cards" (card_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT deck_id FOREIGN KEY (deck_id)
        REFERENCES public."Decks" (deck_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

CREATE INDEX fki_card_id
    ON public."Results" USING btree
    (card_id)
    TABLESPACE pg_default;

CREATE INDEX fki_deck_id
    ON public."Results" USING btree
    (deck_id)
    TABLESPACE pg_default;