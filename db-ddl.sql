--
-- Name: aluno; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.aluno (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    nome character varying(100) NOT NULL,
    sede_id bigint NOT NULL
);


ALTER TABLE public.aluno OWNER TO na;

--
-- Name: aluno_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.aluno_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aluno_id_seq OWNER TO na;

--
-- Name: aluno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.aluno_id_seq OWNED BY public.aluno.id;


--
-- Name: aula; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.aula (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    data date NOT NULL,
    observacao character varying(300),
    capitulo_id bigint NOT NULL,
    materia_id bigint NOT NULL,
    professor_id bigint NOT NULL,
    turma_id bigint NOT NULL
);


ALTER TABLE public.aula OWNER TO na;

--
-- Name: aula_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.aula_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aula_id_seq OWNER TO na;

--
-- Name: aula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.aula_id_seq OWNED BY public.aula.id;


--
-- Name: capitulo; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.capitulo (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    nome character varying(100) NOT NULL,
    numero integer NOT NULL,
    tema_id bigint,
    CONSTRAINT capitulo_numero_check CHECK ((numero >= 1))
);


ALTER TABLE public.capitulo OWNER TO na;

--
-- Name: capitulo_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.capitulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.capitulo_id_seq OWNER TO na;

--
-- Name: capitulo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.capitulo_id_seq OWNED BY public.capitulo.id;


--
-- Name: entrega_tema; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.entrega_tema (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    data timestamp without time zone,
    entregue boolean,
    aluno_id bigint NOT NULL,
    tema_id bigint NOT NULL,
    turma_id bigint
);


ALTER TABLE public.entrega_tema OWNER TO na;

--
-- Name: entrega_tema_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.entrega_tema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entrega_tema_id_seq OWNER TO na;

--
-- Name: entrega_tema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.entrega_tema_id_seq OWNED BY public.entrega_tema.id;


--
-- Name: materia; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.materia (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    nome character varying(100),
    nivel_id bigint
);


ALTER TABLE public.materia OWNER TO na;

--
-- Name: materia_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.materia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materia_id_seq OWNER TO na;

--
-- Name: materia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.materia_id_seq OWNED BY public.materia.id;


--
-- Name: nivel; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.nivel (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    numero integer NOT NULL,
    CONSTRAINT nivel_numero_check CHECK ((numero >= 1))
);


ALTER TABLE public.nivel OWNER TO na;

--
-- Name: nivel_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.nivel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nivel_id_seq OWNER TO na;

--
-- Name: nivel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.nivel_id_seq OWNED BY public.nivel.id;


--
-- Name: perfil; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.perfil (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    nome character varying(255)
);


ALTER TABLE public.perfil OWNER TO na;

--
-- Name: perfil_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.perfil_id_seq OWNER TO na;

--
-- Name: perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.perfil_id_seq OWNED BY public.perfil.id;


--
-- Name: presenca; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.presenca (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    presente boolean,
    aluno_id bigint NOT NULL,
    aula_id bigint NOT NULL
);


ALTER TABLE public.presenca OWNER TO na;

--
-- Name: presenca_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.presenca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.presenca_id_seq OWNER TO na;

--
-- Name: presenca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.presenca_id_seq OWNED BY public.presenca.id;


--
-- Name: professor; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.professor (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    nome character varying(100),
    sede_id bigint NOT NULL
);


ALTER TABLE public.professor OWNER TO na;

--
-- Name: professor_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.professor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_id_seq OWNER TO na;

--
-- Name: professor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.professor_id_seq OWNED BY public.professor.id;


--
-- Name: sede; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.sede (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    nome character varying(100)
);


ALTER TABLE public.sede OWNER TO na;

--
-- Name: sede_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.sede_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sede_id_seq OWNER TO na;

--
-- Name: sede_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.sede_id_seq OWNED BY public.sede.id;


--
-- Name: tema; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.tema (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    nome character varying(100),
    numero integer,
    materia_id bigint
);


ALTER TABLE public.tema OWNER TO na;

--
-- Name: tema_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.tema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tema_id_seq OWNER TO na;

--
-- Name: tema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.tema_id_seq OWNED BY public.tema.id;


--
-- Name: turma; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.turma (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    dia_semana integer NOT NULL,
    nome character varying(100) NOT NULL,
    nivel_id bigint NOT NULL,
    representante_id bigint,
    sede_id bigint NOT NULL
);


ALTER TABLE public.turma OWNER TO na;

--
-- Name: turma_alunos; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.turma_alunos (
    turma_id bigint NOT NULL,
    alunos_id bigint NOT NULL
);


ALTER TABLE public.turma_alunos OWNER TO na;

--
-- Name: turma_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.turma_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.turma_id_seq OWNER TO na;

--
-- Name: turma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.turma_id_seq OWNED BY public.turma.id;


--
-- Name: turma_professores; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.turma_professores (
    turma_id bigint NOT NULL,
    professores_id bigint NOT NULL
);


ALTER TABLE public.turma_professores OWNER TO na;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.usuario (
    id bigint NOT NULL,
    version integer DEFAULT 0,
    email character varying(255),
    nome character varying(255),
    senha character varying(255),
    sede_id bigint NOT NULL
);


ALTER TABLE public.usuario OWNER TO na;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: na
--

CREATE SEQUENCE public.usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO na;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: na
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- Name: usuario_perfils; Type: TABLE; Schema: public; Owner: na
--

CREATE TABLE public.usuario_perfils (
    usuario_id bigint NOT NULL,
    perfils_id bigint NOT NULL
);


ALTER TABLE public.usuario_perfils OWNER TO na;

--
-- Name: aluno id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aluno ALTER COLUMN id SET DEFAULT nextval('public.aluno_id_seq'::regclass);


--
-- Name: aula id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aula ALTER COLUMN id SET DEFAULT nextval('public.aula_id_seq'::regclass);


--
-- Name: capitulo id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.capitulo ALTER COLUMN id SET DEFAULT nextval('public.capitulo_id_seq'::regclass);


--
-- Name: entrega_tema id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.entrega_tema ALTER COLUMN id SET DEFAULT nextval('public.entrega_tema_id_seq'::regclass);


--
-- Name: materia id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.materia ALTER COLUMN id SET DEFAULT nextval('public.materia_id_seq'::regclass);


--
-- Name: nivel id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.nivel ALTER COLUMN id SET DEFAULT nextval('public.nivel_id_seq'::regclass);


--
-- Name: perfil id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.perfil ALTER COLUMN id SET DEFAULT nextval('public.perfil_id_seq'::regclass);


--
-- Name: presenca id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.presenca ALTER COLUMN id SET DEFAULT nextval('public.presenca_id_seq'::regclass);


--
-- Name: professor id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.professor ALTER COLUMN id SET DEFAULT nextval('public.professor_id_seq'::regclass);


--
-- Name: sede id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.sede ALTER COLUMN id SET DEFAULT nextval('public.sede_id_seq'::regclass);


--
-- Name: tema id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.tema ALTER COLUMN id SET DEFAULT nextval('public.tema_id_seq'::regclass);


--
-- Name: turma id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma ALTER COLUMN id SET DEFAULT nextval('public.turma_id_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- Name: aluno aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id);


--
-- Name: aula aula_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aula
    ADD CONSTRAINT aula_pkey PRIMARY KEY (id);


--
-- Name: capitulo capitulo_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.capitulo
    ADD CONSTRAINT capitulo_pkey PRIMARY KEY (id);


--
-- Name: entrega_tema entrega_tema_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.entrega_tema
    ADD CONSTRAINT entrega_tema_pkey PRIMARY KEY (id);


--
-- Name: materia materia_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (id);


--
-- Name: nivel nivel_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.nivel
    ADD CONSTRAINT nivel_pkey PRIMARY KEY (id);


--
-- Name: perfil perfil_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.perfil
    ADD CONSTRAINT perfil_pkey PRIMARY KEY (id);


--
-- Name: presenca presenca_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.presenca
    ADD CONSTRAINT presenca_pkey PRIMARY KEY (id);


--
-- Name: professor professor_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (id);


--
-- Name: sede sede_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.sede
    ADD CONSTRAINT sede_pkey PRIMARY KEY (id);


--
-- Name: tema tema_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.tema
    ADD CONSTRAINT tema_pkey PRIMARY KEY (id);


--
-- Name: turma turma_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT turma_pkey PRIMARY KEY (id);


--
-- Name: usuario_perfils usuario_perfils_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.usuario_perfils
    ADD CONSTRAINT usuario_perfils_pkey PRIMARY KEY (usuario_id, perfils_id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: entrega_tema fk11jvyxcuc4apnqhddmngeq8jq; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.entrega_tema
    ADD CONSTRAINT fk11jvyxcuc4apnqhddmngeq8jq FOREIGN KEY (aluno_id) REFERENCES public.aluno(id);


--
-- Name: professor fk2kfdmpa1g69vopt9m0nt5k3wp; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT fk2kfdmpa1g69vopt9m0nt5k3wp FOREIGN KEY (sede_id) REFERENCES public.sede(id);


--
-- Name: turma_alunos fk3ae0fi80uylf7jbthfxbgbm3n; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma_alunos
    ADD CONSTRAINT fk3ae0fi80uylf7jbthfxbgbm3n FOREIGN KEY (alunos_id) REFERENCES public.aluno(id);


--
-- Name: tema fk3wtxd271ojrqp4vslp8vir62l; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.tema
    ADD CONSTRAINT fk3wtxd271ojrqp4vslp8vir62l FOREIGN KEY (materia_id) REFERENCES public.materia(id);


--
-- Name: entrega_tema fk4airf6fwsc63d7adr3awrc57c; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.entrega_tema
    ADD CONSTRAINT fk4airf6fwsc63d7adr3awrc57c FOREIGN KEY (tema_id) REFERENCES public.tema(id);


--
-- Name: turma fk4v8xbpo9blmep4ptva5b8pamg; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT fk4v8xbpo9blmep4ptva5b8pamg FOREIGN KEY (sede_id) REFERENCES public.sede(id);


--
-- Name: aluno fk6kysshcvcq068fpu68mg6pxoa; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT fk6kysshcvcq068fpu68mg6pxoa FOREIGN KEY (sede_id) REFERENCES public.sede(id);


--
-- Name: turma_professores fk8535n5xojfkytwuwh6qs27150; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma_professores
    ADD CONSTRAINT fk8535n5xojfkytwuwh6qs27150 FOREIGN KEY (professores_id) REFERENCES public.professor(id);


--
-- Name: aula fk9dvd4nr6beh0lp2vp3v82xfn4; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aula
    ADD CONSTRAINT fk9dvd4nr6beh0lp2vp3v82xfn4 FOREIGN KEY (professor_id) REFERENCES public.professor(id);


--
-- Name: usuario fke9l88h7h03andkii6mjhkedm3; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fke9l88h7h03andkii6mjhkedm3 FOREIGN KEY (sede_id) REFERENCES public.sede(id);


--
-- Name: turma fkeeojeqc976ux4b4yx1vyfehnn; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT fkeeojeqc976ux4b4yx1vyfehnn FOREIGN KEY (representante_id) REFERENCES public.aluno(id);


--
-- Name: capitulo fkf0312orn755o18unwivitorkm; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.capitulo
    ADD CONSTRAINT fkf0312orn755o18unwivitorkm FOREIGN KEY (tema_id) REFERENCES public.tema(id);


--
-- Name: presenca fkfrv4b1uwcjm7xnhruph692kqe; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.presenca
    ADD CONSTRAINT fkfrv4b1uwcjm7xnhruph692kqe FOREIGN KEY (aula_id) REFERENCES public.aula(id);


--
-- Name: entrega_tema fkhejjkx8eu28g6eak1gsdves25; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.entrega_tema
    ADD CONSTRAINT fkhejjkx8eu28g6eak1gsdves25 FOREIGN KEY (turma_id) REFERENCES public.turma(id);


--
-- Name: materia fkispaljuueepab1gqff7mih3ns; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.materia
    ADD CONSTRAINT fkispaljuueepab1gqff7mih3ns FOREIGN KEY (nivel_id) REFERENCES public.nivel(id);


--
-- Name: aula fkjvf4kup1uubq8y4hldrijp2ro; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aula
    ADD CONSTRAINT fkjvf4kup1uubq8y4hldrijp2ro FOREIGN KEY (turma_id) REFERENCES public.turma(id);


--
-- Name: usuario_perfils fkn6r20yyxotaqondxnce9abg0d; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.usuario_perfils
    ADD CONSTRAINT fkn6r20yyxotaqondxnce9abg0d FOREIGN KEY (perfils_id) REFERENCES public.perfil(id);


--
-- Name: turma_alunos fkn95nbs8utamw04eggpbwou0px; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma_alunos
    ADD CONSTRAINT fkn95nbs8utamw04eggpbwou0px FOREIGN KEY (turma_id) REFERENCES public.turma(id);


--
-- Name: turma fknbkmci7r0erwgp15wq4ol7ykw; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT fknbkmci7r0erwgp15wq4ol7ykw FOREIGN KEY (nivel_id) REFERENCES public.nivel(id);


--
-- Name: turma_professores fkos8dg9v3fw758h659tian0839; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.turma_professores
    ADD CONSTRAINT fkos8dg9v3fw758h659tian0839 FOREIGN KEY (turma_id) REFERENCES public.turma(id);


--
-- Name: usuario_perfils fkoy8qby5ucrohrj4moqtmdxhix; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.usuario_perfils
    ADD CONSTRAINT fkoy8qby5ucrohrj4moqtmdxhix FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: aula fkqmxqhhpj9r9gaxhaofifeji0x; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aula
    ADD CONSTRAINT fkqmxqhhpj9r9gaxhaofifeji0x FOREIGN KEY (materia_id) REFERENCES public.materia(id);


--
-- Name: presenca fkrkj8spu6xfxdk4it0dw4xb8v2; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.presenca
    ADD CONSTRAINT fkrkj8spu6xfxdk4it0dw4xb8v2 FOREIGN KEY (aluno_id) REFERENCES public.aluno(id);


--
-- Name: aula fks1m7vn7w27pcm7anvperj6bae; Type: FK CONSTRAINT; Schema: public; Owner: na
--

ALTER TABLE ONLY public.aula
    ADD CONSTRAINT fks1m7vn7w27pcm7anvperj6bae FOREIGN KEY (capitulo_id) REFERENCES public.capitulo(id);
