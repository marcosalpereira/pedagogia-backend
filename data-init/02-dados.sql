--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: sede; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.sede (id, version, nome) FROM stdin;
1	0	Fortaleza
\.


--
-- Data for Name: aluno; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.aluno (id, version, email, matricula, nome, sede_id) FROM stdin;
1	0	adellechristina@hotmail.com	15421	ADELLE CHRISTINA LEITE REBOUÇAS	1
2	0	adriana.bianqui@yahoo.com.br	21223	ADRIANA BIANQUI	1
3	0	adrianahissas@gmail.com	22072	ADRIANA HISSA SAMPAIO	1
4	0	adriano.rogerio@gmail.com	21667	ADRIANO ROGÉRIO DE ARAÚJO PINHEIRO	1
5	0	betotargino@yahoo.com.br	12313	ALBERTO TARGINO NETO	1
6	0	lecamag@yahoo.com.br	19590	ALESSANDRA MAGALHAES	1
7	0	alexpinh@hotmail.com	23398	ALEXANDRE DE PAULA	1
8	0	carmo202009@hotmail.com	19320	ALEXANDRE DO CARMO SABINO DA SILVA	1
9	0	spacernet@gmail.com	17189	ALEXANDRE SANTIAGO FREIRE	1
10	0	alfredobpneto@hotmail.com	4572	ALFREDO BEZERRA PINHEIRO NETO	1
11	0	agopinsemam@gmail.com	23294	ALINE GONÇALVES PINTO	1
12	0	alinemaloureiro@gmail.com	2392	ALINE MOTA ALBUQUERQUE LOUREIRO	1
13	0	analicedias@hotmail.com	4620	ANA ALICE DIAS ALBUQUERQE	1
14	0		23598	ANA CAROLINA LUCENA PINHEIRO	1
15	0	acalimac@gmail.com	1345	ANA CAROLINE ARAÚJO LIMA	1
16	0	acviana@petrobras.com.br	20076	ANA CLAUDIA VIANA	1
17	0	cris78@gmail.com	22073	ANA CRISTINA CUNHA	1
18	0	analuiza.monte@gmail.com	5306	ANA LUIZA ALMEIDA DO MONTE	1
19	0	anamarialuce@hotmail.com	20085	ANA MARIA LUCENA	1
20	0	anapaula_vive@yahoo.com.br	18736	ANA PAULA FONSECA BRAGA	1
21	0	vanguarda@estilovanguarda.com.br	15963	ANDREA DE CASTRO FIALHO	1
22	0	andreaferreiraoliveira@gmail.com	6634	ANDREA FERREIRA DE OLIVEIRA	1
23	0	andreamagalha@gmail.com	23113	ANDREA PEREIRA DE SOUSA MAGALHÃES	1
24	0	pascial.andre@gmail.com	17190	ANDRE PASCOAL RODRIGUES	1
25	0	angelagae@yahoo.com.br	13822	ANGELA ANGELIM PESSOA GAERTNER	1
26	0	karolynaborges@gmail.com	22971	ANNA KAROLYNA LOIRINO BORGES	1
27	0	pias_12@yahoo.com.br	19321	ANNE MACHADO DE OLIVEIRA PIAS	1
28	0	aguuga@ymail.com	12792	ANTONIO AGEU CARDOSO DE ARAUJO	1
29	0	0211moura@gmail.com	15048	ANTONIO ALVES DE MOURA	1
30	0	claudioregino64@gmail.com	23292	ANTONIO CLAUDIO ALVES REGINO	1
31	0	antonio.c.castro@gmail.com	22972	ANTONIO CRUZ CASTRO	1
32	0	antoniompaiva@yahoo.com.br	14517	ANTONIO DE MELO PAIVA	1
33	0		22618	ANTÔNIO JOSÉ NOBREGA JUNIOR	1
34	0	walterfarias27@gmail.com	11745	ANTONIO WALTER FARIAS NETO	1
35	0	arthursviana@outlook.com	22606	ARTHUR SANTOS VIANA DE OLIVERIA	1
36	0	augustogoes1@gmail.com	15422	AUGUSTO EMMANUEL GOES FERREIRA DI BRUNO	1
37	0	basamorim@hotmail.com	21107	BÁRBARA CECÍLIA AUGUSTO SAMPAIO	1
38	0	brunarolim@hotmail.com	20507	BRUNA BARDAWIL ROLIM	1
39	0	bruna.nogueira9@outlook.com	19523	BRUNA LARISSA NOGUEIRA DE CARVALHO	1
40	0		16331	CAMILA SOARES MARREIROS MARTINS	1
41	0	carlinha_272013@outlook.com	17191	CARLA EUGENIA FERREIRA DA SILVA	1
42	0	carlanott@gmail.com	22973	CARLA NOTTINGHAM BENEVIDES AZEVEDO	1
43	0	carmemldmoura@gmail.com	16714	CARMEM LUCIA DANTAS MOURA	1
44	0	ctpfranciss@gmail.com	18480	CARMEN TERESINHA PEREIRA FRANCISS	1
45	0	celana@oi.com.br	5569	CELANA MARIA CARNEIRO TAPETY	1
46	0	cezarlara@ibest.com.br	14312	CÉZAR AUGUSTO DE MORAIS	1
47	0	clarissa.barroso@sefaz.ce.gov.br	22075	CLARISSA CAVALCANTE BARROSO	1
48	0	caracascidade@yahoo.com.br	16815	CRISTIANE CARACAS DE SOUZA CIDADE	1
49	0	dsouzamonteiro7@gmail.com	13827	DANIEL DE SOUZA MONTEIRO	1
50	0	dnjuca@yahoo.com.br	7841	DANIELLE NASCIMENTO JUCÁ	1
51	0	dariogabriel2012@gmail.com	19033	DARIO GABRIEL GOMES AMORIM	1
52	0	delanogs@gmail.com	22078	DELANO GURGEL SILVEIRA	1
53	0	denisemarcelo22@gmail.com	19065	DENISE BEZERRA MARCELO	1
54	0	dbaetas@yahoo.com.br	20971	DENNYS BAETAS ROCHA	1
55	0	diego.gaspar.oliveira@gmail.com	6610	DIEGO GASPAR DE OLIVEIRA	1
56	0	diegoalcantara38@gmail.com	22974	DIEGO MIRANDA ALCÂNTARA	1
57	0	ednasilva@agu.gov.br	20711	EDNA MARIA BEZERRA SILVA	1
58	0	ellainepires@gmail.com	22079	ELAINE PIRES DE QUEIROZ	1
59	0	hemrp2@hotmail.com	15200	ELIANE MARIA DA ROCHA PEREIRA	1
60	0	chocolatemeioamargo7@outlook.com	16879	ELISA DE SOUZA DA SILVA	1
61	0	elizabethluzmalheiros@gmail.com	9666	ELIZABETH MARIA MALHEIROS NUNES	1
62	0	emilianabarros@uol.com.br	21409	EMILIANA MARIA COSTA BARROS SAMPAIO	1
63	0	eneida@mundifiat.com.br	21414	ENEIDA AMORIM PONTES	1
64	0	erickson.ribeiro@gmail.com	5566	ERICKSON RIBEIRO	1
65	0		15185	ERIVANIO SILVA GONÇALVES	1
66	0	erlieneide@gmail.com	13810	ERLIENEIDE ALVES GONÇALVES	1
67	0	erykabarreto62@gmail.com	22975	ERYKA FLORENICE PINHEIRO BARRETO	1
68	0	estherstudart@terra.com.br	11589	ESTHER RIBEIRO STUDART DA FONSECA	1
69	0		22617	EUGÊNIA FELICIO	1
70	0	fafsam@hotmail.com	14250	FABIANO FREITAS DOS SANTOS	1
71	0		17098	FABIANO MELQUIADES	1
72	0	prof.fabio.lobo@gmail.com	18481	FABIO DE ASSIS LOBO DE SOUSA	1
73	0	nunesfabio@hotmail.com	19038	FABIO EDUARDO NUNES	1
74	0	felipeav146@gmail.com	19026	FELIPE AZEVEDO DE VASCONCELOS	1
75	0	ffcorretor@gmail.com	10865	FELIPE LOPES FERREIRA	1
76	0	flavia08pp@gmail.com	4406	FLAVIA PINHEIRO DE ALENCAR PINTO	1
77	0	moura.francineide@bol.com.br	14508	FRANCINEIDE PEREIRA MOURA	1
78	0		14467	FRANCISCA GILSELIA ROCHA PAIVA	1
79	0	alexdial@hotmail.com	10870	FRANCISCO ALEX DIAS ALBUQUERQUE	1
80	0	aymoreneto@gmail.com	21108	FRANCISCO AYMORÉ BAPTISTA NETO	1
81	0	crispimdaniel10@gmail.com	11575	FRANCISCO DANIEL MESQUITA RODRIGUES CRISPIM	1
82	0	frank.fjl@gmail.com	7110	FRANCISCO JOSÉ DE LIMA	1
83	0		17467	FRANCISCO ROBERTO DA SILVA GOMES	1
84	0		20969	FRANCISCO RONALDO ARAÚJO LIMA	1
85	0		23599	FRANCYON MAIA DANTAS	1
86	0		23432	GABRIELA CAVALCANTE BARROSO	1
87	0	gabriel-gondim@outlook.com	10550	GABRIEL VIDAL GONDIM	1
88	0	gaz.marcus@gmail.com	10872	GAZZINEU MARCOS CAVALCANTE BRITO	1
89	0	gsaleslcardoso@gmail.com	3423	GEORGIANA SALES LOUREIRO	1
90	0	coelhogerardo@gmail.com	21000	GERARDO FERNANDES COELHO FILHO	1
91	0	gilbastos.adv@gmail.com	13823	GILBERTO DA CRUZ BASTOS	1
92	0	dudaveras@hotmail.com	4871	GILBERTO MOREIRA VERAS JÚNIOR	1
93	0	giovanni.santos.carvalho@gmail.com	22080	GIOVANNI SANTOS CARVALHO	1
94	0	backpackersce@hotmail.com	17309	GISELE LEAL DE PAULA	1
95	0	giuliano@servis.com.br	3160	GIULIANO SALES LOUREIRO	1
96	0	marconi@oriontelecom.com.br	21066	GUGLIELMO MARCONI VENCESLAU	1
97	0	haniellcmf@gmail.com	17836	HANIEL LOURENCO DUARTE	1
98	0	hayrles_freitas@hotmail.com	21444	HAYRLES DA CONCEIÇÃO FREITAS DE MORAES ALCÂNTARA	1
99	0	helena_siebra@yahoo.com.br	1011	HELENA LUCIA DE BRITO SIEBRA E OLIVEIRA	1
100	0	heloisaclara20@gmail.com	18482	HELOISA CLARA DE ALMEIDA PATRIOTA LOBO	1
101	0	augustopontes@mundifiat.com.br	21467	HENRIQUE AUGUSTO PEREIRA PONTES	1
102	0	herberttorres84@icloud.com	9618	HERBERT PEREIRA TORRES CAVALCANTE	1
103	0	herica_lima1@hotmail.com	11279	HÉRICA MARIA DE LIMA	1
104	0	hermano.jose@yahoo.com.br	6479	HERMANO JOSÉ LUCENA PONCIANO	1
105	0	hisnia@gmail.com	15052	HISNIA LARISSA SILVA DE ARAGÃO	1
106	0	noralmeida287@gmail.com	22977	HONORINA MARIA DE ROSALMEIDA	1
107	0	iannebbraga@hotmail.com	15163	IANNE BENÍCIO BRAGA	1
108	0	icarodfaffa@gmail.com	16193	ICARO SILVA LOIOLA COSTA	1
109	0	igoralencardeaguiar@gmail.com	23293	IGOR ALEXANDRE ALENCAR DE AGUIAR	1
110	0	inescb013@gmail.com	10866	INÊS SILVIA CARNEIRO BARBOSA	1
111	0	luaraisabel@hotmail.com	16586	ISABEL LUARA DE ARAÚJO CUNHA	1
112	0	ivalony.advogado@gmail.com	21098	IVALÔNY MACIEL MANGUEIRA	1
113	0	ivna_ursino@yahoo.com.br	23114	IVNA DE SOUSA	1
114	0	izabellagirao@hotmail.com	20767	IZABELLA MUSA PAZ MARINHO GIRÃO	1
115	0	jackelynnlima@gmail.com	23296	JACKELYNN PESSOA LIMA	1
116	0	jaiana.lopes@hotmail.com	20906	JAIANA LOPES DE ARAÚJO	1
117	0	janemirandamar@gmail.com	11542	JANE MARY DE MIRANDA LIMA MARTINS	1
118	0	jaquelineassuncao7@hotmail.com	19891	JAQUELINE ASSUNCAO DE LIMA BRAGA	1
119	0	jeovamlemos@hotmail.com	20136	JEOVAM LEMOS CAVALCANTE	1
120	0	joanamsl@hotmail.com	11554	JOANA MARIA SOUTO LOPES	1
121	0	joaobastosgeriatra@gmail.com	10888	JOÃO BASTOS FREIRE NETO	1
122	0	jbvidal7@gmail.com	14462	JOÃO BATISTA VIDAL	1
123	0	jhgon70@gmail.com	21855	JOÃO HENRIQUE GONÇALVES	1
124	0	joaonetoo@gmail.com	18276	JOAO RAMOS DA SILVA NETO	1
125	0	joaquimfilho@hotmail.com	23397	JOAQUIM MAGALHÃES BEZERRA FILHO	1
126	0	aguiar.joliv@gmail.com	10362	JOSÉ AGUIAR DE OLIVEIRA	1
127	0	aragao@magis.com.br	21016	JOSÉ ARAGÃO E ALBUQUERQUE NETO	1
128	0	zedaniel.med@gmail.com	22611	JOSE DANIEL BRANDAO DE OLIVEIRA	1
129	0	ediarley87@gmail.com	19029	JOSE EDIARLEY FARIAS DE CARVALHO	1
130	0	cruznabol@yahoo.com.br	11241	JOSEFA ABIGAIL CRUZ E SILVA	1
131	0	opneto@gmail.com	21227	JOSÉ OSVALDO PONTES NETO	1
132	0	jubya@terra.com.br	17192	JUBYA LIMA RODRIGUES BASTOS	1
133	0	lustosa.ju@gmail.com	22979	JULIANA DANTAS LUSTOSA	1
134	0		23399	JULIANA ROLIM	1
135	0	jcs.nib@gmail.com	13813	JULIO CESAR SOUZA FERREIRA	1
136	0	kalidnc@gmail.com	7125	KALID NOGUEIRA CHOUDHURY	1
137	0	kalina.feitosa2015@gmail.com	15966	KALINA ALENCAR CUNHA FEITOSA	1
138	0	kalynemf@ig.com.br	16044	KALYNE MADEIRA FURTADO	1
139	0	kellycabral13@gmail.com	5565	KELLY CABRAL	1
140	0	kellyfmba@gmail.com	261	KELLY FERREIRA MARQUES BOTELHO AGUIAR	1
141	0	larissaccamara@gmail.com	21435	LARISSA CARVALHO CÂMARA	1
142	0		22649	LAURA TEREZINHA DA SILVA	1
143	0	lolo.viguier.29@gmail.com	19591	LAURENCE VIGUIER	1
144	0	lbotelhoaguiar@gmail.com	128	LEANDRO BOTELHO AGUIAR	1
145	0	lecoast@gmail.com	11254	LEANDRO COSTA CHAVES	1
146	0	lobaole@gmail.com	22614	LEILA DE OLIVEIRA LOBÃO	1
147	0	lcd174@hotmail.com	22616	LEOCADIA DEMBOGURSKI	1
148	0	levibayde@gmail.com	3040	LEVI BAYDE RIBEIRO	1
149	0	liadantas1@yahoo.com.br	11590	LIA SOARES DANTAS	1
150	0	lilianempereira@gmail.com	4116	LILIANE MARIA MONTEIRO DE ARAÚJO PEREIRA	1
151	0	livianemeneses@hotmail.com	17685	LIVIANE DE MENESES VASCONCELOS	1
152	0	lena.aguiar@hotmail.com	3262	LUCELENA PETRONILIO AGUIAR	1
153	0	lnoroes@hotmail.com	4233	LUCIANA DE ANDRADE NORÕES	1
154	0	rbvendas.luciana@hotmail.com	8874	LUCIANA FAÇANHA TORRES	1
155	0	lucianamariavs@hotmail.com	16816	LUCIANA MARIA VIANA SALES	1
156	0	luciane_ponte@yahoo.com.br	19028	LUCIANE PONTE DE MELO	1
157	0	lucianobraga@rejuntamix.com.br	17413	LUCIANO BRAGA LIBORIO	1
158	0	nascimen@uol.com.br	7334	LUCIANO RODRIGO STUHLER DO NASCIMENTO	1
159	0		21441	LUCIENE BOSCO DE OLIVEIRA	1
160	0	lucienefs2011@hotmail.com	11746	LUCIENE FÉLIX DE SOUSA	1
161	0		20080	LUCIENE MENDES LACERDA	1
162	0	lss_jotaerre@hotmail.com	12848	LUÍS SÉRGIO SANTOS JUNIOR	1
163	0	luiz-simonetti@ibest.com.br	10889	LUIZ ANTONIO SIMONETTI GOMES	1
164	0	domcabral120@hotmail.com	1075	LUIZ CARLOS CABRAL	1
165	0	luzlomoreira@hotmail.com	13223	LUZIA LOBO MOREIRA	1
166	0	manuel.filho@servis.com.br	14511	MANUEL TAVARES FILHO	1
167	0	maranucia@gmail.com	8269	MARA NUCIA SILVEIRA VITALINO	1
168	0	fernanda.moreno@hotmail.com	22301	MARCIA FERNANDA MORENO	1
169	0	marcia@arxweb.com.br	9036	MARCIA REGINA DE ARAUJO VALE	1
170	0	magomarcio1@hotmail.com	17688	MARCIO AZEVEDO SILVA	1
171	0	menasp@hotmail.com	19745	MARCO ANTONIO MENA	1
172	0	marcosalpereira@gmail.com	16523	MARCOS ANTONIO LACERDA PEREIRA	1
173	0	mklein@oriontelecom.com.br	19735	MARCOS KLEIN ANTUNES	1
174	0	marcimo65@hotmail.com	6443	MARCUS ANTONIO TEIXEIRA	1
175	0	mcmnac@gmail.com	979	MARCUS CARVALHO DE MATOS	1
176	0	angelaslima@gmail.com	7806	MARIA ANGELA SILVA LIMA	1
177	0	maria.coach@yahoo.com.br	14260	MARIA APARECIDA FRANCISCA DE SOUZA	1
178	0	cidaxbraga@gmail.com	5314	MARIA APARECIDA XAVIER BRAGA	1
179	0	celeoliveira6@gmail.com	16777	MARIA CELESTINA SABINO DE OLIVEIRA	1
180	0	mjassessoria2011@hotmail.com	17601	MARIA DE JESUS PIRES DE SOUZA	1
181	0	mdcnr@yahoo.com.br	12791	MARIA DO CARMO NOGUEIRA RIBEIRO	1
182	0	socorrom@fortalnet.com.br	4581	MARIA DO SOCORRO MACAMBIRA MARQUES	1
183	0	marelisene@yahoo.com.br	18416	MARIA ELISENE PINTO	1
184	0	mariavenancio@gmail.com	2403	MARIA GOMES VENÂNCIO	1
185	0	gorettibarroso@yahoo.com.br	23290	MARIA GORETI CAVALCANTE BARROSO	1
186	0	marigorefm@hotmail.com	13550	MARIA GORÉTT FRANKLIN MARACABA	1
187	0	ilmacir@yahoo.com.br	16771	MARIA ILMACIR SIQUEIRA MACHADO	1
188	0	neidepmf@gmail.com	7327	MARIA IVONEIDE DA SILVA	1
189	0		18441	MARIA IZABEL FARIAS DOS SANTOS	1
190	0		22647	MARIA JOSÉ DE ARAÚJO COSTA	1
191	0	marimmoura@gmail.com	5305	MARIANA MACEDO MOURA	1
192	0	marianaruthlp@hotmail.com	1226	MARIANA RUTH LEÔNCIO DA PONTE	1
193	0	mnorbertaviana@hotmail.com	18544	MARIA NORBERTA VIANA	1
194	0	marinarocharolim@hotmail.com	17412	MARINA ROCHA ROLIM	1
195	0	mario.americovo@gmail.com	19737	MÁRIO AMÉRICO VIANA DE OLIVEIRA	1
196	0	marlasolara@gmail.com	21228	MARLA SELANA PONTES MOTA	1
197	0	maryleebritto@gmail.com	6242	MARYLEE BRITO GOMES PINTO	1
198	0	mateusdesouza3110@hotmail.com	16877	MATEUS DE SOUZA DA SILVA	1
199	0	maxwelrf@hotmail.com	22610	MAXWEL RODRIGUES FERREIRA	1
200	0	maysanobre@gmail.com	11576	MAYSA NOBRE NOGUEIRA	1
201	0		23115	MICHELE MAIA CIPRIANO	1
202	0	michelp.alcantara@yahoo.com.br	16520	MICHEL PINHO DE ALCÂNTARA	1
203	0	mila.maracabamoreira@gmail.com	13551	MILA MARACABA MOREIRA	1
204	0	milenaafgp@hotmail.com	18487	MILENA AGUIAR FERREIRA GOMES PEREIRA	1
205	0	muriel.brunello@gmail.com	18279	MURIEL BRUNELLO	1
206	0	nancyabifadel@hotmail.com	1231	NANCY ABUD ABIFADEL BARROZO	1
207	0		23613	NELLY JEREISSATI BARBOSA TEIXEIRA	1
208	0	neuzamarcia@yahoo.com	978	NEUZA MARCIA FALCAO LOPES	1
209	0		22619	ORLANDO DE JESUS SILVA FILHO	1
210	0	osmardiogenes@terra.com.br	3984	OSMAR DIÓGENES PARENTE	1
211	0	patriciadale@hotmail.com	21413	PATRICIA DALE COUTO	1
212	0	ps_dias@hotmail.com	6943	PATRICIA DIAS	1
213	0	arq_patriciagomes@hotmail.com	22981	PATRICIA GOMES PEIXOTO SEIXAS	1
214	0	thalitauece@gmail.com	19044	PAULA THALITA LIMA SANTOS	1
215	0	paulo.moura.junior@gmail.com	670	PAULO PINTO DE MOURA JÚNIOR	1
216	0	ricardovianaapv@gmail.com	23295	PAULO RICARDO FERREIRA VIANA	1
217	0		17097	PRISCYLLA MESQUITA GOMES	1
218	0	rachebq@hotmail.com	15414	RACHEL BOTELHO DE QUEIROZ	1
219	0	professormontenegro@gmail.com	672	RAFAEL LIMA MONTENEGRO	1
220	0	pereiraufv@yahoo.com.br	19076	RAFHAEL FERNANDES PEREIRA	1
221	0	oliveirasoraiss@gmail.com	20073	RAISSA DE OLIVEIRA SOARES	1
222	0	raquelpessoa@hotmail.com	14976	RAQUEL PESSOA DE CARVALHO	1
223	0	raquel_sa@hotmail.com	17774	RAQUEL PINHEIRO SÁ MATOS	1
224	0	raulfmiranda@gmail.com	22608	RAUL FIGUEIRA MIRANDA	1
225	0	rlimasm@hotmail.com	18518	REGINA DE FATIMA RIBEIRO LIMA	1
226	0	rgnbarrosleal@gmail.com	21014	REGINA LÚCIA BARROS LEAL DA SILVA	1
227	0	recgirao@yahoo.com.br	19070	REGIS COE GIRAO	1
228	0	renatavenanciomota@gmail.com	7827	RENATA VENÂNCIO MOTA	1
229	0		23600	RENATO WALTER ROLIM RIBEIRO	1
230	0	ricardosergio@servis.com.br	3721	RICARDO SÉRGIO CAVALCANTE GONDIM	1
231	0	ricardowilan@gmail.com	22088	RICARDO WILLIAM GASPAR	1
232	0	roberiogfreire@gmail.com	22984	ROBÉRIO GUIMARÃES FREIRE	1
233	0	robertacampoverde@hotmail.com	13577	ROBERTA NUNES DE CAMPO VERDE	1
234	0	robertocesarsilva123@gmail.com	13826	ROBERTO CÉSAR BARBOSA DA SILVA	1
235	0	robertos.jrengenharia@gmail.com	669	ROBERTO SINIBALDI	1
236	0	rominamoraes@hotmail.com	8856	ROMINA LOPES DE MORAES	1
237	0	jjoana_star@hotmail.com	16589	ROZINEIDE FIGUEIREDO RIBEIRO	1
238	0	sabrinabezerra@gmail.com	15972	SABRINA BEZERRA DE ALBUQUERQUE	1
239	0	sandraacmmoreira@hotmail.com	20907	SANDRA MARIA SILVA MOREIRA	1
240	0	scarlett.aires@gmail.com	7335	SCARLETT AIRES VIANNA SILVEIRA	1
241	0	parvartisheila@gmail.com	22985	SHEILA PESSOA DE AZEVEDO RIBEIRO	1
242	0	sheyla.mrf@gmail.com	22068	SHEYLA MARIA ROCHA FERREIRA	1
243	0	plicia@gmail.com	1346	SIMPLICIA MARIA AIRES VIANNA SINIBALDI	1
244	0	sbjuca.sj@gmail.com	22219	SOLANGE BEZERRA JUCÁ	1
245	0	silvanefro@gmail.com	22089	SONIA LEITE DA SILVA	1
246	0	soniamcamara@gmail.com	19048	SONIA MARIA CAMPOS CAMARA	1
247	0		23601	STENIO CARNEIRO MELLO MOREIRA	1
248	0	suelenmc@gmail.com	10795	SUELEN MOURA COSTA	1
249	0	sulennefreitas@gmail.com	11660	SULENNE DA SILVA DE FREITAS	1
250	0	teresa.camara@saude.ce.gov.br	3152	TERESA MARIA DA SILVA CÂMARA	1
251	0	tehonsi@gmail.com	22069	TEREZA CRISTINA APOLIANO HONSI	1
252	0	tmpessoa@icloud.com	12776	TEREZA MARIA MOREIRA PESSOA	1
253	0	terezamariabastos@hotmail.com	14461	TEREZA MARIA VASCONCELOS BASTOS	1
254	0	tiagonocrato@hotmail.com	19732	TIAGO NOCRATO MOURA	1
255	0	val.bcosta@yahoo.com.br	6480	VALDILENE BARBOSA COSTA	1
256	0	lella.100@hotmail.com	20710	VALÉRIA FERREIRA COSTA VILELLA	1
257	0	ceixdobrasil@gmail.com	22066	VALERIA RODRIGUES	1
258	0	vanessafreire@hotmail.com	11666	VANESSA FREIRE MEDEIROS	1
259	0	ruorapriiyaoliveira53556@gmail.com	23291	VANESSA LIMA MIYAZAWA	1
260	0	vaniafreitas@hotmail.com	15701	VANIA REGINA MARQUES DE FREITAS	1
261	0	vinicius.araujo.bezerra@gmail.com	9212	VINICIUS ARAÚJO BEZERRA	1
262	0	wandaparente@gmail.com	1012	WANDA MARIA BRAGA PARENTE	1
263	0	emilianabarros@uol.com.br	21412	WERYSSON DANTAS SAMPAIO	1
264	0	yuri.cgdt@gmail.com	13060	YURI GADELHA ALVES BRANDÃO	1
\.


--
-- Data for Name: nivel; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.nivel (id, version, codigo) FROM stdin;
1	0	N1
2	0	N2
3	0	N3
\.


--
-- Data for Name: materia; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.materia (id, version, nome, nivel_id) FROM stdin;
1	0	ISO I	2
2	0	Ética	1
3	0	Filosofia da História	1
7	0	Sociopolítica	1
8	0	Filosofia Aplicada	2
9	0	Filosofia Moral	2
10	0	História da Filosofia Antiga	2
12	0	História da Filosofia Medieval	2
14	0	Psicologia	2
15	0	Simbologia Teológica I	2
16	0	Simbologia Teológica II	2
17	0	Simbologia Teológica III	2
18	0	Simbologia Teológica IV	2
19	0	Simbologia Teológica Tomo II	2
20	0	Simbologia Teológica V	2
21	0	Simbologia Teológica VI e VII	2
22	0	Sociopolítica II	2
24	0	Religiões Comparadas Área Índica	3
27	0	ISO II - Corpo Prânico	3
28	0	História da Filosofia Oriental	2
26	0	Filosofia Acropolitana	2
\.


--
-- Data for Name: tema; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.tema (id, version, nome, numero, materia_id) FROM stdin;
1	0	Tema I	1	1
2	0	Tema II	2	1
3	0	Tema III	3	1
4	0	Tema IV	4	1
5	0	Tema V	5	1
6	0	Tema VI	6	1
7	0	Tema VII	7	1
8	0	Tema VIII	8	1
9	0	Tema IX	9	1
10	0	Tema X	10	1
11	0	Tema XI	11	1
12	0	Tema XII	12	1
13	0	Tema XIII	13	1
14	0	Tema XIV	14	1
15	0	Tema XV	15	1
16	0	Tema I	1	2
17	0	Tema II	2	2
18	0	Tema III	3	2
19	0	Tema IV	4	2
20	0	Tema V	5	2
21	0	Tema VI	6	2
22	0	Tema VII	7	2
23	0	Tema VIII	8	2
24	0	Tema IX	9	2
25	0	Tema I	1	3
26	0	Tema II	2	3
27	0	Tema III	3	3
28	0	Tema IV	4	3
29	0	Tema V	5	3
39	0	Tema I	1	7
40	0	Tema II	2	7
41	0	Tema III	3	7
42	0	Tema III - ANEXO I	4	7
43	0	Tema III - ANEXO II - Os Estóicos	5	7
44	0	Tema IV	6	7
45	0	Tema V	7	7
46	0	Tema VI	8	7
47	0	Tema VII	9	7
48	0	Tema IX	10	7
49	0	Tema I: O QUE É NOVA ACRÓPOLE?	1	8
50	0	Tema 2 - LA SABIDURÍA Y SU TRANSMISIÓN	2	8
51	0	Tema 3 - LA EDUCACIÓN	3	8
52	0	Tema 4 - CÓMO VIVIR UN IDEAL FILOSÓFICO EN NUESTRO TIEMPO - Superar las aparentes contradicciones	4	8
53	0	Tema 5 - LA ESTRUCTURA DE NUEVA ACRÓPOLIS - Lo Organizativo, lo Escolástico y lo Ideológico	5	8
54	0	Tema 6 - LA VÍA DISCIPULAR	6	8
55	0	Tema 7 - LAS FF VV COMO FÓRMULA DE TRANSFORMACIÓN PARA DAMAS Y CABALLEROS	7	8
56	0	Tema 0 – Introdução	1	9
57	0	Tema I	2	9
58	0	Tema II	3	9
59	0	Tema III	4	9
60	0	Tema IV	5	9
61	0	Tema V	6	9
62	0	Tema VI	7	9
63	0	Tema I	1	10
64	0	Tema II - Introdução à Filosofia Grega	2	10
65	0	Tema III - Introdução aos Pré-Socráticos	3	10
66	0	Tema IV - Os Pré Socráticos	4	10
67	0	Tema V - Os Pitagóricos	5	10
68	0	Tema VI - A Escola de Eléia	6	10
69	0	Tema VII - Heráclito	7	10
70	0	Tema VIII - Empédocles	8	10
71	0	Tema IX - Anaxágoras	9	10
72	0	Tema X - Os Atomistas	10	10
73	0	Tema XI - A Sofística	11	10
74	0	Tema XII - Sócrates	12	10
75	0	Tema XIII - Platão	13	10
76	0	Tema XIV - Aristóteles	14	10
77	0	Tema XV – Escolas Socráticas e Moralistas	15	10
78	0	Tema XVI – Epicurismo	16	10
79	0	Tema XVII – Estoicismo	17	10
80	0	Tema XVIII – Neoplatonismo	18	10
88	0	Tema 0	1	12
89	0	Tema 1 – Introdução	2	12
90	0	Tema 2 – Cristo	3	12
91	0	Tema 3 – Santo Agostinho	4	12
92	0	Tema 4 – A Escolástica: Características e seus Filósofos	5	12
93	0	Tema 5 – A Mística Medieval	6	12
94	0	Tema 6 – Filosofia Muçulmana	7	12
95	0	Tema 7 – Filosofia Hebraica: Cabala	8	12
96	0	Tema 8 – São Boaventura (Apostila)	9	12
97	0	Tema 9 – Santo Tomas de Aquino (Apostila)	10	12
98	0	Tema 10 – O Século XIII e a Lógica (Apostila)	11	12
99	0	Tema 11 – O Século XIII e a Filososfia da Natureza (Apostila)	12	12
100	0	Tema 12 – O Misticismo Alemão (Apostila)	13	12
112	0	Tema I	1	14
113	0	Tema II	2	14
114	0	Tema III	3	14
115	0	Tema IV	4	14
116	0	Tema V	5	14
117	0	Tema VI	6	14
118	0	Tema VII	7	14
119	0	Tema VIII	8	14
120	0	Tema IX	9	14
121	0	Tema X	10	14
122	0	Tema XI	11	14
123	0	Tema XII	12	14
124	0	Tema XIII	13	14
125	0	Tema 0 – Prólogo	1	15
126	0	Tema I	2	15
127	0	Tema 2 - Introdução à Simbologia Teológica da África Negra	3	15
128	0	Tema II	1	16
129	0	Tema 0 – Prólogo	1	17
130	0	Tema I	2	17
131	0	Tema II	3	17
132	0	Tema III	4	17
133	0	Tema I	1	18
134	0	Tema II - O Panteão Grego	2	18
135	0	Tema III – Simbologia Teológica em Roma	3	18
136	0	Tema I – Introdução	1	19
137	0	Tema  II – Simbolismo dos minerais e das pedras preciosas	2	19
138	0	Tema  III – Simbologia do Reino Vegetal	3	19
139	0	Tema IV - Simbologia do Reino Animal	4	19
140	0	Tema V - Simbologia dos Corpos Celestes	5	19
141	0	Tema VI - Arquitetura Simbólica	6	19
142	0	Tema VII - O Homem como Símbolo do "Infinito	7	19
143	0	Tema I – Simbologia Teológica na América central	1	20
144	0	Tema II – Simbologia Teológica na América do Sul	2	20
145	0	Tema 6 – Simbologia Teológica da Europa	1	21
146	0	Tema 7 – Simbologia Teológica Cristã e Medieval	2	21
147	0	Tema 0	1	22
148	0	Tema 1 – Os Fundamentos	2	22
149	0	Tema 2	3	22
150	0	Tema 3	4	22
151	0	Tema 4 – O Simbolismo da Esfinge	5	22
152	0	Tema 5 – As Sub-Estruturas e os Mecanismos de Governos nas Chamadas Democracias	6	22
153	0	Tema 6	7	22
154	0	Tema 7	8	22
155	0	Tema 8 – A Forma Geral do Novo Estado	9	22
156	0	Tema 9 – A Finalidade do Novo Estado e a Função do Governo	10	22
157	0	Tema 10 – A Educação	11	22
158	0	Tema 11	12	22
159	0	Tema 12 – O Trabalho	13	22
160	0	Tema 13	14	22
161	0	Tema 14	15	22
162	0	Tema 15	16	22
163	0	Tema 16	17	22
171	0	Tema I RELIGIÓN ÍNDICA: BRAHMANISMO	1	24
172	0	Tema II ÁREA MARGINAL: JAINOS, SIKS, ETC.	2	24
173	0	Tema III - BUDHISMO	3	24
174	0	Tema IV TIBETANISMO o LAMAÍSMO	4	24
190	0	Tema 1 – Introducción	1	28
191	0	Tema 2 – India	2	28
192	0	Tema 3 – Las Filosofías Heréticas	3	28
193	0	Tema 4 – Budismo	4	28
194	0	Tema 5 – China	5	28
195	0	Tema 6 – Japón	6	28
196	0	Tema 7 – Irán	7	28
197	0	Tema 8 – Mesopotamia	8	28
198	0	Tema 9 – Egipto	9	28
199	0	Tema 10 – Islam y Esoterismo Islámico	10	28
200	0	Tema 11 – Lá Cábala	11	28
\.


--
-- Data for Name: capitulo; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.capitulo (id, version, nome, numero, tema_id) FROM stdin;
1	0	Introdução	1	1
2	0	O Enigma de Deus	2	1
3	0	A Filosofia Natural ou Esotérica	3	1
4	0	Os Três Princípios de uma Escola Esotérica	4	1
5	0	Constituição Septenária do Homem	5	1
6	0	Corpos e Subcorpos	6	1
7	0	Sistema Solar	1	2
8	0	O triplo Logos solar	2	2
9	0	Como estão integrados Terra, Sistema, Cadeia, Ronda, Globo e Raça	3	2
10	0	Antropogênese Oculta	1	3
11	0	Primeira Raça	2	3
12	0	Seguna Raça	3	3
13	0	Terceira Raça	4	3
14	0	Quarta Raça	5	3
15	0	Quinta Raça	6	3
16	0	Sexta Raça	7	3
17	0	Sétima Raça	8	3
18	0	Adendo	9	3
19	0	Notas	10	3
20	0	Dharman - Dharma	1	4
21	0	Kharman - Kharma	2	4
22	0	Categoria de Kharma para os Homens	3	4
23	0	Modalidades Kármicas	4	4
24	0	Livre Arbítrio	5	4
25	0	Reencarnação	6	4
26	0	Nascimento	7	4
27	0	Maturidade	8	4
28	0	Velhice	9	4
29	0	Morte	10	4
30	0	Conceito Geral de Religião e Religiões	1	5
31	0	Reuniões Naturais e Reveladas	2	5
32	0	Alcance do Segundo Princípio da Fil. Esotérica	3	5
33	0	Conceito Esotérico de Religião	1	6
34	0	Manifestação Sétupla do Triplo Logos	2	6
35	0	Características dos Três tipos de Avatares	3	6
36	0	Métodos e Advertências	4	6
37	0	Rondas de Avatares	5	6
38	0	Última Ronda de Avatares Budhisátwicos	6	6
39	0	Particularidades de cada Mestre	1	7
40	0	Vyasa (III)	2	7
41	0	Hermes Trimegisto (IV)	3	7
42	0	Zoroastro (V)	4	7
43	0	Orfeu (VI)	5	7
44	0	Sidharta Gautama Budha (VII)	6	7
45	0	Adendo	7	7
46	0	Jesus Cristo	8	7
47	0	Maomé	9	7
48	0	A Filosofia Atemporal e as suas Expressões Limitadas	1	8
49	0	Sociedades de Estudos Esotéricos	2	8
50	0	A Grande Fraternidade Branca	3	8
51	0	Reflexos da Grande Fraternidade Branca sobre a Humanidade	4	8
52	0	O Neoplatonismo - A sociedade Eclética de Alexandria	1	9
53	0	Giordano Bruno	2	9
54	0	Rosacrucismo	3	9
55	0	Maçonaria	4	9
56	0	Espiritismo	5	9
57	0	Sociedade Teosófica Mundial: Fund. e Desenv.	6	9
58	0	O Uno sem Segundo, o Uno Ilusório	1	10
59	0	Aritmética e Geometria	2	10
60	0	Gênese das Formas	3	10
61	0	Fenômenos Físicos, Químicos e Alquímicos	1	11
62	0	O que é Alquimia?	2	11
63	0	Constituição do Átomo	3	11
64	0	Constituição da Molécula	4	11
65	0	O que é Valência?	5	11
66	0	Elementos químicos e alquímicos	6	11
67	0	O que é Astrologia?	7	11
68	0	O que é Yoga?	8	11
69	0	Karma-Yoga	9	11
70	0	Bakti-Yoga	10	11
71	0	Gnani-Yoga	11	11
72	0	Rja-Yoga	12	11
73	0	Biologia	1	12
74	0	Histologia	2	12
75	0	Os elétrons na sua função biológica	3	12
76	0	Introdução à Anatomia Esotérica	4	12
77	0	Sistema ósseo	5	12
78	0	Classificação Esotérica do esqueleto	6	12
79	0	Classificação Esotérica dos Sistemas Orgânicos	7	12
80	0	Neuronal	8	12
81	0	Respiratório	9	12
82	0	Digestório	10	12
83	0	Circulatório	11	12
84	0	Glandular	12	12
85	0	Renal	13	12
86	0	Reprodutor	14	12
87	0	Éter 1	15	12
88	0	Éter 2	16	12
89	0	Éter 3	17	12
90	0	Éter 4	18	12
91	0	Zoologia	1	13
92	0	Linha Dévia	2	13
93	0	Linha Humana	3	13
94	0	Botânica	1	14
95	0	O Futuro	1	15
96	0	Conceito de Ética e Moral	1	16
97	0	Ética temporal e Ética atemporal	2	16
98	0	Vida moral e vida intelectual	3	16
99	0	O papel da vida moral no discipulado	4	16
100	0	Projeções da nossa conduta no mundo inteligível	5	16
101	0	Constituição Septenária	6	16
102	0	Idéias fundamentais do tratado ético e metafísico "Bhagavad Gita	1	17
103	0	Primeiro capítuloPersonagens principais	2	17
513	0	Organón	4	76
104	0	Segundo capítuloReencarnaçãoLei da Reta AçãoSatwa/Rajas/Tamas	3	17
105	0	Terceiro capítuloDharma e Karma	4	17
106	0	Quarto capítuloAs quatro idades de Brahma. As quatro castas	5	17
107	0	Quinto capítuloKrishna retoma o tema da ação reta	6	17
108	0	Sexto capítuloA justa ação	7	17
109	0	Décimo oitavo capítuloA glória, a vitóriayogue final.	8	17
110	0	A Voz do SilêncioIntrodução	1	18
111	0	O texto	2	18
112	0	Introduçãoo Budasua doutrina	1	19
113	0	O Dhammapada ou o Caminho da Lei	2	19
114	0	O Dhammapadaversos escolhidos	3	19
115	0	Moral no Antigo EgitoIntrodução	1	20
116	0	Conceitos Morais	2	20
117	0	ConfúcioBiografia	1	21
118	0	Doutrina Confucionista	2	21
119	0	Aforismos de Confúcio: Os Analectos	3	21
120	0	Aristótelesa sua doutrina moralÉtica a Nicômaco	1	22
121	0	Virtudes	2	22
122	0	AristótelesBiografia	3	22
123	0	Graus do conhecimento	4	22
124	0	Plotino: a Filosofia neoplatônicaas Enéadas	1	23
125	0	Biografia	2	23
126	0	Classificação das Enéadas	3	23
127	0	Resumo	4	23
128	0	A Alma	5	23
129	0	Sobre o Bem e sobre o Uno	6	23
130	0	Sobre o Amor	7	23
131	0	KantFundamentação da Metafísica dos CostumesResumo Geral	1	24
132	0	A Boa Vontade	2	24
133	0	Imperativo categórico	3	24
134	0	Vontade e liberdade	4	24
135	0	Caráter geral da História	1	25
136	0	Fundamentos teóricos	2	25
137	0	A Lógica da História	3	25
138	0	Crítica do conhecimento histórico	4	25
139	0	Filosofia da História	5	25
140	0	Métodos de exposição da História	1	26
141	0	Classificação Básica das Fontes de História	2	26
142	0	Ciência auxiliares e componentes psicológicos	3	26
143	0	Sentido da História e da Mitologia	1	27
144	0	A História no formação do Euconsciência através do Eulembrança	1	28
145	0	Ritmos históricos e yugas	2	28
146	0	A teoria do eterno retorno e os cicloshistóricos	3	28
147	0	A teoria Histórica de Cícero	4	28
148	0	O nosso passado e a Nova civilização	5	28
149	0	Teoria do Logos Platônico e a História Futura	6	28
150	0	Os Arquétipos fixos: a evolução como progressão da consciência entre hiatos móveis	7	28
151	0	DharmaKarmaBuda e a Libertação da História	1	29
152	0	Dharma coletivo, individual, pessoal	2	29
153	0	Karma coletivo, individual, pessoal	3	29
194	0	Introdução	1	39
195	0	Os problemas do mundo e do homem atual	2	39
196	0	O papel da juventude numa grande transformação	3	39
197	0	Indivíduo	1	40
198	0	Sociedade	2	40
199	0	Estado	3	40
200	0	Ideal filosófico e Ideal Político	4	40
201	0	Mito platônico da caverna	5	40
202	0	Características masculinas e femininas nas sociedades primitivas e atuais	1	41
203	0	O papel da criança, do adolescente, do jovem, do adulto e do velho	2	41
204	0	Como nasce um cidadão	3	41
205	0	A moral como fundamento do direito social e do dever político	4	41
206	0	A vida de Platão	1	42
207	0	Suas obras	2	42
208	0	República de Platão	3	42
209	0	Introdução - Significados propostos	4	42
210	0	Formação da sociedade	5	42
211	0	Educação e modo de viver dos guardiões	6	42
212	0	As quatro naturezas de homens	7	42
213	0	As virtudes encontradas na sociedade e no indivíduo	8	42
214	0	Formas de governo	9	42
215	0	Conclusão	10	42
216	0	Introdução	1	43
217	0	Epíteto	2	43
218	0	Sêneca - A Brevidade da Vida	3	43
219	0	Marco Aurélio - Meditações	4	43
220	0	Formas sociopolíticas da Antiguidade no Oriente e no Ocidente	1	44
221	0	Roma e os cidadãos do mundo	1	45
222	0	A decadência do Ocidente como Unidade Política: Formas medievais	1	46
223	0	Aparecimento da sociedade burguesa e do Estado Liceral	1	47
224	0	Temas VIII	2	47
225	0	Formas políticas modernas: Estado Liberal e Dirigido	3	47
226	0	As subestruturas, crescimento e desenvolvimento do Novo Estado	1	48
227	0	Qué es NA. Presentación general en sus diferentes aspectos: un Ideal de Vida, una Escuela de Filosofía a la manera clásica, una Estructura Internacional.	1	49
228	0	Ø B. 36, septiembre 1979.	2	49
229	0	Ø B. 164, julio 1991.	3	49
230	0	Ø B. 221, sept. 1996.	4	49
231	0	Qué es un Ideal.	5	49
232	0	Ø B. 176, agosto 1992.	6	49
233	0	Ø B. 209, agosto 1995.	7	49
234	0	Ø B. 242, agosto 1998.	8	49
235	0	Ø B. 392, marzo 2012..	9	49
236	0	Nuestros  Principios. Principios y finalidades.	10	49
237	0	Ø B. 79, octubre 1983.	11	49
238	0	Ø B. 187, agosto 1993.	12	49
239	0	Ø B. 293, marzo 2003.	13	49
240	0	Ø Fundamentos del Ideal Acropolitano.	14	49
241	0	Ø Manual de Probacionismo. Repaso Sociopolítica (o próprio tema).	15	49
242	0	Cadena Maestros-Discípulos. Los Maestros. Qué es ser discípulo.	1	50
243	0	Ø B. 228, mayo 1997.	2	50
244	0	El sentido de la vida: la evolución.	3	50
245	0	Ø B. 231, agosto 1997.	4	50
246	0	Ø B. 337, marzo 2007.	5	50
247	0	Ø B. 410, noviembre 2013.	6	50
248	0	Ciclos históricos. Ciclos humanos: las edades de la vida.	7	50
249	0	Ø Manual de Probacionismo. Teoría del eterno retorno y los ciclos históricos.	8	50
250	0	Valores permanentes.	9	50
251	0	Ø B. 352, agosto 2008.	10	50
252	0	Educación: Música y Gimnasia. Cuerpo y alma.	1	51
253	0	Educación de la personalidad.	2	51
254	0	Higiene. Contaminación física, psicológica y mental.	3	51
255	0	Dependencias. Libertad y compromiso.	4	51
256	0	Ø B. 197, julio 1994..	5	51
257	0	El valor del orden.	6	51
258	0	Ø B. 75, junio 1983..	7	51
259	0	Ø B. 182, febrero 1993.	8	51
260	0	Ø Educación permanente para una nueva formación.  Tomo II (Conferencias JAL).	9	51
261	0	Ø La República y Las Leyes, de Platón.	10	51
262	0	Ø Manual de Probacionismo. Sociopolítica: Roles del niño, adolescente, joven, adulto y anciano.	11	51
263	0	Ø Monográfico sobre Platón. Revista Esfinge. Octubre 2013.	12	51
264	0	El mundo en el que vivimos y nosotros. Acrópolis y yo.	1	52
265	0	Ø B. 108, junio 1986.	2	52
266	0	Ø B. 176, agosto 1992.	3	52
267	0	Ø B. 209, agosto 1995.	4	52
268	0	Ø B. 245, noviembre 1998.	5	52
269	0	Cómo conjugar un ideal filosófico con el mundo en el que vivimos.	6	52
270	0	La importancia de transmitir nuestro Ideal.	7	52
271	0	Ø B. 92, diciembre 1984.	8	52
272	0	Ø B. 125, diciembre 1987.	9	52
273	0	Ø B. 152, junio 1990.	10	52
274	0	Ø B. 208, julio 1995.	11	52
275	0	Ø B. 215, febrero 1996.	12	52
276	0	Ø B. 402, febrero 2013.	13	52
277	0	Ø B. 403, marzo 2013.	14	52
278	0	Ø B. 411, diciembre 2013.	15	52
279	0	Nuestro protagonismo histórico.	16	52
280	0	Ø B. 339, junio 2007.	17	52
281	0	Voluntariado.	18	52
282	0	Ø B. 251, junio 1999.	19	52
283	0	Ø B. 410, noviembre 2013.	20	52
284	0	Ø B. 215, febrero 1996.	1	53
285	0	Ø B. 226, febrero 1997.	2	53
286	0	Ø B. 396, agosto 2012.	3	53
287	0	LO ORGANIZATIVO. Organigrama Internacional.	4	53
288	0	a)     El Fundador de la OINA.	5	53
289	0	Ø Biografía y personalidad de Jorge Ángel Livraga.	6	53
290	0	Ø B. 343, octubre 2007.	7	53
291	0	b)     El actual Director Internacional.	8	53
292	0	Ø Biografía y personalidad del actual MM.	9	53
293	0	Ø Biografía oficial en la web OINA.	10	53
294	0	Ø Libro DSG. Para conocerse mejor.	11	53
295	0	Ø Libro DSG. Filosofía para vivir.	12	53
296	0	c)      Cargos Internacionales de la OINA: Secretario General, Directores Internacionales de Institutos, Coordinadores Continentales y Directores Nacionales (en diapositivas, con  breves comentarios).	13	53
297	0	Ø Power Point al respecto.	14	53
298	0	d)     Organigrama Nacional.	15	53
299	0	Ø Breve historia del País y su fundación	16	53
300	0	Ø Su Director Nacional actual. Anteriores, si se considera interesante mencionarlos.	17	53
301	0	Ø Secretarios Nacionales. Áreas y Secretarías.	18	53
302	0	Ø Filiales y Jefes de Filiales.	19	53
303	0	e)     Un Organigrama activo. El valor del trabajo. Cómo integrarse en él.	20	53
304	0	Ø B. 238, marzo 1998.	21	53
305	0	Ø B. 279, diciembre 2001.	22	53
306	0	Ø B. 394, junio 2012.	23	53
307	0	LO ESCOLÁSTICO. Nuestro Programa de Estudios.	24	53
308	0	a)     Breve exposición del Programa de Estudios y el sentido de las materias.	25	53
309	0	Ø B. 191, diciembre 1993.	26	53
310	0	Ø B. 218, junio 1996.	27	53
311	0	Ø B. 227, marzo 1997.	28	53
312	0	LO IDEOLÓGICO. Elementos constitutivos de la ideología acropolitana: Dios, el Mundo, el Hombre. El sentido de la vida.	29	53
313	0	Ø Fundamentos del Ideal Acropolitano, de JAL y DSG.	30	53
314	0	Ø B. 172, marzo 1992.	31	53
315	0	Ø B. 173, mayo 1992.	32	53
316	0	Ø B. 223, noviembre 1996.	33	53
317	0	a)     Qué son los Hdos. Hdos y otras Condecoraciones Acropolitanas.	34	53
514	0	A Metafísica	5	76
406	0	O Homem e Sua Mente	9	57
407	0	O Homem e o Real	10	57
318	0	b)     Nuestros Símbolos. Diferencia entre Símbolos y anagramas/logotipos. Símbolo General – Símbolo Escolástico. Bandera Acropolitana.	35	53
319	0	Ø B. 176, agosto 1992.	36	53
320	0	Ø B. 210, septiembre 1995.	37	53
321	0	Ø B. 212, noviembre 1995.	38	53
322	0	Ø B. 213, diciembre 1995.	39	53
323	0	c)      Nuestras Celebraciones o Festividades. Valor simbólico de ritos, ceremonias y celebraciones. (Este tema puede explicarse en cualquier momento, a medida que los miembros estén preparados para asistir a determinadas celebraciones).	40	53
324	0	Ø B. 65, julio 1982.	41	53
325	0	Ø B. 174, junio 1992.	42	53
326	0	Ø B. 185, junio 1993.	43	53
327	0	Ø B. 220, agosto 1996.	44	53
328	0	Ø B. 284, junio 2002.	45	53
329	0	d)     Nuestro Saludo. Sentido Ceremonial y Sagrado. (Este Tema puede dejarse para quienes desean integrarse en las FF VV, o más adelante todavía, según las características de cada País).	46	53
330	0	Ø B. 2, agosto 1976.	47	53
331	0	Ø B. 390, enero 2012.	48	53
332	0	e)     El Sistema Piramidal. El Sistema de la Naturaleza.	49	53
333	0	Ø B. 136, diciembre 1988.	50	53
334	0	Ser idealista, ser filósofo, ser discípulo.	1	54
335	0	Ø B. 70, diciembre 1982.	2	54
336	0	Ø B. 98, julio 1985	3	54
337	0	Ø B. 109, julio 1986.	4	54
338	0	Ø B. 145, octubre 1989	5	54
339	0	Ø B. 244, octubre 1998.	6	54
340	0	Las virtudes discipulares.	7	54
341	0	Ø B. 94, febrero 1985	8	54
342	0	Ø B. 99, agosto 1985.	9	54
343	0	Ø B. 145, octubre 1989	10	54
344	0	Ø B. 178, octubre 1992.	11	54
345	0	Ø B. 191. diciembre 1993.	12	54
346	0	Ø B. 191, diciembre 1993.	13	54
347	0	Ø B. 240, junio 1989.	14	54
348	0	Las Primeras Pruebas.	15	54
349	0	Ø B. 30, febrero 1979.	16	54
350	0	Ø B. 110, agosto 1986.	17	54
351	0	Ø B. 172, marzo 1992.	18	54
352	0	Ø B. 175, julio 1992.	19	54
353	0	Ø B. 202, diciembre 1994.	20	54
354	0	Ø B. 235, diciembre 1997.	21	54
355	0	Cómo vencer el miedo y la debilidad (fragilidad).	22	54
356	0	Ø B. 101, octubre 1985.	23	54
357	0	Ø B. 179, noviembre 1992.	24	54
358	0	Ø B. 183, marzo 1993.	25	54
359	0	Ø B. 185, junio 1993.	26	54
360	0	Ø B. 194, marzo 1994.	27	54
361	0	Ø B. 197, julio 1994.	28	54
362	0	Ø B. 199, septiembre 1994.	29	54
363	0	Ø B. 232, septiembre 1997.	30	54
364	0	La superación de sí mismo.	31	54
365	0	Ø B. 187, agosto 1993.	32	54
366	0	Ø B. 264, agosto 2000.	33	54
367	0	Convivencia discipular  (Cortesía y Convivencia).	34	54
368	0	Ø B. 17, diciembre 1977.	35	54
369	0	Ø B. 131, julio 1988.	36	54
370	0	Ø B. 161, abril 1991.	37	54
371	0	Ø B. 163, junio 1991.	38	54
372	0	Ø B. 180, diciembre 1992.	39	54
373	0	Ø B. 198, agosto 1994.	40	54
374	0	La Moral Acropolitana.	41	54
375	0	Ø B. 55, agosto 1981.	42	54
376	0	Final de la primera Etapa. Comienzo de entrevistas personales antes de continuar con las clases de Filosofía Aplicada relativas a las FF VV con aquellos que manifiesten su intención de realizar el Probacionismo de las FF VV.	43	54
377	0	A los demás miembros, ofrecer un sencillo esquema de las FF VV.	44	54
378	0	Los Tres Principios Acropolitanos: Una Fraternidad sin distinción de sexos.	1	55
379	0	Qué son Damas y Caballeros.	2	55
380	0	Ø B. 154, agosto 1990.	3	55
381	0	El Ideal Caballeresco.	4	55
382	0	Ø  B. 347, febrero 2008.	5	55
383	0	Acción en los tres Círculos.	6	55
384	0	Las FF VV y el Trino Logos. Características de las tres FF VV.	7	55
385	0	Ø B. 100, septiembre 1985.	8	55
386	0	Valor de los Símbolos Sagrados. Los Símbolos de las tres FF VV. Explicación básica.	9	55
387	0	Valor de las ceremonias y de la oración.	10	55
388	0	Ø B. 7, enero 1977.	11	55
389	0	Ø B. 46, agosto 1980.	12	55
390	0	Ø B. 75, junio 1983.	13	55
391	0	Ø B. 118, abril 1987.	14	55
392	0	O Que Entendemos por Moral Transcendental ?	1	56
393	0	A Importância da Filosofia Moral nas  Chamadas Escolas de Mistérios Tradicionais	2	56
394	0	O Papel da Moral no Budismo, Pitagorismo e Estoicismo	3	56
395	0	Os Budistas	4	56
396	0	Os Pitagóricos	5	56
397	0	Os Estóicos	6	56
398	0	Conceito de Bem e de Mal	1	57
399	0	Conceito de Vida e de Morte	2	57
400	0	Psique e Espírito	3	57
401	0	O Jogo de Maya	4	57
402	0	Thamas: Suas Vítimas e Seus Verdugos	5	57
403	0	Viveka e os Magos de Budham	6	57
404	0	O Homem e Seus Instintos, Sua Mente e o Real	7	57
405	0	O Homem e Seus Instintos	8	57
408	0	Filosofia Búdhica - Filosofia Budista	1	58
409	0	Conceito de Mente e Valor dos Sentimentos no Budismo	2	58
410	0	Bhagavad Gîtâ: Análise e Comentários	3	58
411	0	Uttara Gîta: Análise e Comentários	4	58
412	0	A Voz do Silêncio	5	58
413	0	Esclarecimentos sobre a Seção LI, Tomo VI, A Doutrina Secreta: ¨A Doutrina do Olho e a Doutrina do Coração¨	6	58
414	0	A Filosofia Moral Grega	1	59
415	0	O Fenômeno Grego	2	59
416	0	Pitágoras	3	59
417	0	A Moral Pitagórica	4	59
418	0	Sócrates	5	59
419	0	A Moral Socrática	6	59
420	0	As Escolas Moralistas	7	59
421	0	Cínica e a Cirenáica	8	59
422	0	Antístenes	9	59
423	0	Arístipo de Cirene	10	59
424	0	Epicurismo: Epicuro e sua Doutrina	11	59
425	0	O Ceticismo: Pirrão, o Cético	12	59
426	0	Estoicismo	1	60
427	0	Origens do Estoicismo	2	60
428	0	Doutrina Estóica	3	60
429	0	Física	4	60
430	0	Religião	5	60
431	0	Psicologia	6	60
432	0	Teoria do Conhecimento	7	60
433	0	Ética	8	60
434	0	Política e Direito	9	60
435	0	O Estoicismo do Império Romano	10	60
436	0	Marco Aurélio	11	60
437	0	Neoplatonismo: A Moral em Plotino	1	61
438	0	A Filosofia Moral nas Culturas Americanas	1	62
439	0	Conceitos Morais Gerais nas Civilizações Americanas	2	62
440	0	Os Aztecas	3	62
441	0	O Calmecac e as Suas Disciplinas	4	62
442	0	A Moral entre os Aztecas	5	62
443	0	A Moral entre os Mayas	6	62
444	0	A Moral entre os Incas	7	62
445	0	Citações de Alguns Incas	8	62
446	0	Introdução	1	63
447	0	Primeiro Princípio	1	64
448	0	Segundo Princípio	2	64
449	0	Terceiro Princípio	3	64
450	0	Temas gerais que tratam os Pré-Socráticos	1	65
451	0	Escola de Mileto	1	66
452	0	Tales de Mileto	2	66
453	0	Anaximandro	3	66
454	0	Amaxímenes	4	66
455	0	Pitágoras	1	67
456	0	Suas teorias	2	67
457	0	Escola pitagórica	3	67
458	0	Ausmáticos e matemáticos	4	67
459	0	As matemáticas pitagóricas	5	67
460	0	Xenófanes	1	68
461	0	Parménides	2	68
462	0	Obras de Parmênides	3	68
463	0	Introdução	4	68
464	0	O Caminho da Verdade	5	68
465	0	O Caminho da Opinião	6	68
466	0	Predicados do Ente	7	68
467	0	A opinião	8	68
468	0	O movimento	9	68
469	0	Metafisica	10	68
470	0	Seus continuadores	11	68
471	0	Zenão	12	68
472	0	Melisso	13	68
473	0	Adendo	14	68
474	0	Doutrina	1	69
475	0	Doutrina	1	70
476	0	Doutrina	1	71
477	0	Leucipo	1	72
478	0	A Doutrina	2	72
479	0	Demócrito	3	72
480	0	A Doutrina - os átomos	4	72
481	0	Protágoras	1	73
482	0	Górgias	2	73
483	0	Doutrina – Os Escritos	1	74
484	0	Diálogo	2	74
485	0	Indução – Definição	3	74
486	0	Ensinamento	4	74
487	0	Fundação Educadora e Formativa do Trabalho	5	74
488	0	Sobre a Ciência	6	74
489	0	Virtude	7	74
490	0	O Bem	8	74
491	0	A Felicidade	9	74
492	0	A Religiosidade e a Mística	10	74
493	0	A Bondade e o Amor	11	74
494	0	A Imortalidade da Alma	12	74
495	0	Apontamentos Acropolitanos	13	74
496	0	Obras	1	75
497	0	Doutrina – As Idéias	2	75
498	0	Conceito de Unidade	3	75
499	0	Conceito de Imutabilidade	4	75
500	0	Conceito de Eternidade	5	75
501	0	A Reminiscência – O Conhecimento Segundo Platão	6	75
502	0	Mito da Caverna	7	75
503	0	O Ser	8	75
504	0	O Bem	9	75
505	0	A Criação	10	75
506	0	Doutrina da Alma	11	75
507	0	As Virtudes	12	75
508	0	Indivíduo e Estado	13	75
509	0	O Amor	14	75
510	0	Biografia	1	76
511	0	Suas Obras	2	76
512	0	Obras Esotéricas ou Acromáticas	3	76
614	0	Escolas de Filosofia	3	89
615	0	As Religiões	4	89
515	0	Escritos sobre Física, História Natural,                                                                                                                           Matemática e Psicologia	6	76
516	0	Escritos sobre Ética, Política, Economia e Retórica	7	76
517	0	As Ciências	8	76
518	0	Os Graus do Saber	9	76
519	0	Metafísica Aristotélica	10	76
520	0	Sobre as Substâncias	11	76
521	0	Os Modos de Ser	12	76
522	0	O Ser em Si ou Por Acidente	13	76
523	0	Segundo as Categorias	14	76
524	0	O Ser Verdadeiro e o Ser Falso	15	76
525	0	Segundo a Potência e o Ato	16	76
526	0	Matéria e Forma	17	76
527	0	O Movimento	18	76
528	0	As Causas	19	76
529	0	Deus	20	76
530	0	O Ente Como Transcendental	21	76
531	0	Essência	22	76
532	0	A Lógica Aristotélica	23	76
533	0	Conteúdo do Organon	24	76
534	0	A Doutrina da Alma	25	76
535	0	A Estética	26	76
536	0	A Política	27	76
537	0	A Escola Cínica	1	77
538	0	A Escola Cirenáica	2	77
539	0	Ceticismo	1	78
540	0	Ecletismo	2	78
541	0	Origens do Estoicismo	1	79
542	0	Doutrina Estóica	2	79
543	0	Física	3	79
544	0	Religião	4	79
545	0	Psicologia	5	79
546	0	Teoria do Conhecimento	6	79
547	0	Ética	7	79
548	0	Política e Direito	8	79
549	0	Precursores	1	80
550	0	Doutrina	2	80
551	0	Unidade de Toda Realidade Essencial	3	80
552	0	Reencarnação das Almas	4	80
553	0	Necessidade de Purificação	5	80
554	0	O Uno e o Ser – A Emanação	6	80
555	0	A Alma – Consciência – Retorno a Deus	7	80
556	0	Filósofos Neoplatônicos	8	80
2126	0	Contactos de Occidente com La Filosofía Oriental	1	190
2127	0	Grecia y Romna	2	190
2128	0	Neoplatónicos y Gnósticos	3	190
2129	0	Edad Media	4	190
2130	0	El Renacimiento y La Moda China	5	190
2131	0	El Renacimiento y el Próximoy Medio Oriente	6	190
2132	0	Pioneros del Orientalismo	7	190
2133	0	Alemania	8	190
2134	0	Europa	9	190
2135	0	Filosofía Oriental	10	190
2136	0	Características Generales de Su Filosofía	1	191
2137	0	Cronología Del Pensamiento Indio	2	191
2138	0	Período Védico	3	191
2139	0	Los Arios	4	191
2140	0	El Veda	5	191
2141	0	Rig Veda	6	191
2142	0	Sama Veda	7	191
2143	0	Yajur Veda	8	191
2144	0	Atharva Veda	9	191
2145	0	Los Brahmanas	10	191
2146	0	Los Aranyakas	11	191
2147	0	Los Upanishads	12	191
2148	0	Los Dioses Del Veda	13	191
2149	0	Cosmogonía	14	191
2150	0	Los Ritos y El Conocimiento (del sacrifício a la mística)	15	191
2151	0	Los Ideales Védicos em La Política y em La Ética	16	191
2152	0	El Dharma	17	191
2153	0	Artha	18	191
2154	0	Kama	19	191
2155	0	Las Castas	20	191
2156	0	Período Épico, Sutra y Escolástico: El Hinduísmo	21	191
2157	0	La Literatura Sagrada Hinduista	22	191
2158	0	El Veda	23	191
2159	0	Upanishads Postvédicos	24	191
2160	0	La Epopeya	25	191
2161	0	El Mahabharata	26	191
2162	0	El Ramayana	27	191
2163	0	Los Sutras	28	191
2164	0	Los Puranas	29	191
2165	0	El Período Escolástico	30	191
2166	0	Filosofía Hinduista	31	191
2167	0	Conceptos Generales	32	191
2168	0	El Origen del Universo	33	191
2169	0	Kritayuga	34	191
2170	0	Tretayuga	35	191
2171	0	Dvaparayuga	36	191
2172	0	Kaliyuga	37	191
2173	0	Karma	38	191
2174	0	Samsara	39	191
2175	0	La Liberacíon	40	191
2176	0	Karma Marga	41	191
2177	0	Bakti Marga	42	191
2178	0	Gnani Marga	43	191
2179	0	Raja Marga	44	191
611	0	História da Filosofia Medieval (Livro e Apostilas a partir do T8)	1	88
612	0	O Cristianismo e sua Filosofia	1	89
613	0	Escoas Iniciáticas	2	89
2180	0	Las Seis Escuelas Ortodoxas de Filosofía	45	191
2181	0	La Escuela Vaiseshika	46	191
2182	0	Escuela Nyaya	47	191
2183	0	Escuela Sankhya	48	191
2184	0	El Yoga	49	191
2185	0	Las Ocho Etapas o Disciplinas	50	191
2186	0	Yama	51	191
616	0	Introdução	1	90
617	0	Cartas de São Paulo	2	90
618	0	Evangelho de São João	3	90
619	0	A Patrística	4	90
620	0	Características Gerais	5	90
621	0	O Primeiro Período da Patrística	6	90
622	0	O Segundo Período da Patrística	7	90
623	0	A última Etapa	8	90
624	0	A Patrística dos Dois Primeiros Séculos	9	90
625	0	Os Apologistas	10	90
626	0	Atenágoras de atenas	11	90
627	0	Teófilo de Antióquia	12	90
628	0	A Gnose	13	90
629	0	Basílides	14	90
630	0	Carpócrates	15	90
631	0	Valentino	16	90
632	0	Os Detratores da Gnose	17	90
633	0	Apologistas Latinos	18	90
634	0	Tertuliano	19	90
635	0	Félix Minúcio	20	90
636	0	Arnóbio	21	90
637	0	Lactâncio	22	90
638	0	A Patrística dos Séculos III e IV	23	90
639	0	Clemente de Alexandria	24	90
640	0	Orígenes	25	90
641	0	Basílio, O Grande	26	90
642	0	Gregório de Nazianceno	27	90
643	0	Gregório de Nisa	28	90
644	0	Introdução	1	91
645	0	Vidas e Obras	2	91
646	0	A Investigação e sua Finalidade: Deus e a Alma	3	91
647	0	Deus	4	91
648	0	O Homem	5	91
649	0	A Criação e o Tempo	6	91
650	0	A Cidadania de Deus e a Cidade Terrestre	7	91
651	0	Decadência da Patrística	8	91
652	0	Os Gregos	9	91
653	0	Sinésio de Cirene	10	91
654	0	Nemésio	11	91
655	0	Procópio e Eneias	12	91
656	0	Zacarias, O Escolástico	13	91
657	0	Dionísio, o Areopagita ou Pseudo-Dionísio	14	91
658	0	João Damasceno	15	91
659	0	Os Latinos	16	91
660	0	Boecio	17	91
661	0	Papa Gregório, O Magno	18	91
662	0	São Isidoro de Sevilla	19	91
663	0	Beda, O Venerável	20	91
664	0	Introdução	1	92
665	0	Pré-escolástica	2	92
666	0	Alta Escolástica	3	92
667	0	Florescimento da Escolástica	4	92
668	0	Dissolução da Escolástica	5	92
669	0	Alcuino	6	92
670	0	Rabano Mauro	7	92
671	0	Juan de Escoto Eriugena	8	92
672	0	Os Séculos X, XI e XII e suas Características	9	92
673	0	Santo Anselmo de Aosta	10	92
674	0	Suas Idéias	11	92
675	0	Demonstração da Existência de Deus	12	92
676	0	Abelardo	13	92
677	0	Sua Doutrina	14	92
678	0	Filosofia e Revelação	15	92
679	0	Relação entre Deus e o Mundo	16	92
680	0	A Escola de Chartres	17	92
681	0	Constantino Africano	18	92
682	0	Bernardo	19	92
683	0	Gilbert de La Porré	20	92
684	0	Juan de Salisbury	21	92
685	0	Os Cátaros	22	92
686	0	Os Amaurianos	23	92
687	0	Abade Joaquim de Fiore	24	92
688	0	Introdução	1	93
689	0	Bernardo de Claraval	2	93
690	0	Hugo de São Victor	3	93
691	0	A Sistematização da Teologia	4	93
692	0	Introdução	1	94
693	0	As Primeiras Atividades Filosóficas	2	94
694	0	Al-Kindi	3	94
695	0	Alfarabi	4	94
696	0	Avicena	5	94
697	0	Sua Filososfia	6	94
698	0	Al-Gazel	7	94
699	0	Avempace (Ibn Badcha)	8	94
700	0	Abentofail	9	94
701	0	Averroes	10	94
702	0	Sua Filosofia	11	94
703	0	O Intelecto	12	94
704	0	A Criação do Mundo	13	94
705	0	Isaac Israeli	1	95
706	0	Saadia	2	95
707	0	Ibn Gabirol	3	95
708	0	Maimonides	4	95
709	0	A Polêmica Antiaristotélica	1	96
710	0	Vida e Obras (1221 – 1274)	2	96
711	0	Fé e Ciência	3	96
712	0	Teoria do Conhecimento	4	96
713	0	Metafísica	5	96
714	0	O Homem	6	96
715	0	A Sindéresis	7	96
716	0	Santo Alberto Magno – Vida e Obras (1193 – 1280)	8	96
717	0	Sua Filosofia	9	96
718	0	Vida e Obras (1225 ou 1226 – 1274)	1	97
719	0	Teoria do Conhecimento	2	97
720	0	Entendimento Divino	3	97
721	0	Entendimento Angélico	4	97
722	0	Entendimento Humano	5	97
723	0	Metafísica	6	97
2263	0	Las Sectas de Heian (794-1.192) o Kyoto	33	193
724	0	Potência Matéria Essência                                                                                                                                                               Ato Forma Existência	7	97
725	0	Teologia e Provas da Existência de Deus	8	97
726	0	Via Cosmológica	9	97
727	0	Via Causal	10	97
728	0	Via da Relação entre o Possível e o Necessário	11	97
729	0	Via dos Graus	12	97
730	0	Via do Governo das Coisas	13	97
731	0	O Homem	14	97
732	0	Ramon LLULL (Raimundo Lulio) (1235 – 1315)	1	98
733	0	Roger Bacon (1210/1214? – 1292?)	1	99
734	0	João Duns Escoto	2	99
735	0	¨Doctor Subtilis¨	3	99
736	0	Vidas e Obras (1266 ou 1274 – 1308)	4	99
737	0	Ciência e Fé	5	99
738	0	Teoria do Conhecimento	6	99
739	0	Deus	7	99
740	0	O Homem	8	99
741	0	Guillermo de Ockhan	9	99
742	0	Vida e Obras (ao redor de 1290-1348 ou 1349)	10	99
743	0	Teoria do Conhecimento	11	99
744	0	Metafísica	12	99
745	0	Preliminares de uma Física Nascente	13	99
746	0	O Homem	14	99
747	0	Pensamento Político	15	99
748	0	A Última Escolástica	16	99
749	0	Mestre Eckhart	1	100
750	0	Vida e Obras (1260 – 1327)	2	100
751	0	Doutrina	3	100
2187	0	Niyama	52	191
2188	0	Asana (Postura)	53	191
2189	0	Pranayana	54	191
2190	0	Pratyehara	55	191
2191	0	Dharana	56	191
2192	0	Dhyana	57	191
2193	0	Samadhi	58	191
2194	0	El Tantrismo	59	191
2195	0	La Mimansa	60	191
2196	0	El Vedanta	61	191
2197	0	Sankara	62	191
2198	0	Ramanuja	63	191
2199	0	Madhva	64	191
2200	0	Nimbarka	65	191
2201	0	Vallabha	66	191
2202	0	Sectas Del Hinduísmo	67	191
2203	0	Shivaísmo	68	191
2204	0	Los Saktas	69	191
2205	0	Vishnuismo	70	191
2206	0	Sectas Vishnuítas	71	191
2207	0	Srivaishnavas	72	191
2208	0	Ramanandis	73	191
2209	0	Krishnaítas	74	191
2210	0	Las Sectas Krishnaítas	75	191
2211	0	Los Nimbarkas	76	191
2212	0	Los Vallabhacharyas	77	191
2213	0	Chaitanya	78	191
2214	0	El Hinduísmo Moderno	79	191
2215	0	La Sociedad	80	191
2216	0	El Bhahmacharin	81	191
2217	0	El Grihasta	82	191
2218	0	El Vanaprastha	83	191
2219	0	El Sannyasin	84	191
2220	0	La Moral	85	191
2221	0	(Del Siglo XVIII em Adelante)	86	191
2222	0	El Brahmansamaj	87	191
2223	0	Ramakrishna	88	191
2224	0	El Ariasamaj	89	191
2225	0	Vivekananda	90	191
2226	0	Los Sikhs	1	192
2227	0	Kabir	2	192
2228	0	Nanak	3	192
2229	0	Jainismo	4	192
2230	0	Metafísica y Ascesis	5	192
2231	0	Introduccción	1	193
2232	0	Buda	2	193
2233	0	El Dolor	3	193
2234	0	La Liberación	4	193
2235	0	Vidas Anteriores	5	193
2236	0	Vida Presente	6	193
2237	0	Vidas Futuras	7	193
2238	0	La Moral	8	193
2239	0	El ¨Agnosticismo¨ y el ¨Ateísmo¨ Budista	9	193
2240	0	Los Tres Vehículos	10	193
2241	0	Pequeno Vehículo o Hinayana	11	193
2242	0	La Cesta de La Disciplina	12	193
2243	0	La Cesta de Los Discursos	13	193
2244	0	La Cesta de Los Dogmas	14	193
2245	0	Gran Veículo o Mahayana	15	193
2246	0	El Loto de la Buena Ley	16	193
2247	0	La Descripción Detallada Del País Puro	17	193
2248	0	Lalita-Vistara	18	193
2249	0	La Perfección Del Conocimiento	19	193
2250	0	Los Madhyamikas o ¨Escuela Del Medio¨	20	193
2251	0	Los Yogacharyas o ¨Escuela de la Conciencia¨	21	193
2252	0	Vehículo de Diamante o Vajrayana	22	193
2253	0	Budismo Chino y Sus Escuelas	23	193
2254	0	La Escuela de la Disciplina o Lu-Tsong	24	193
2255	0	La Escuela del País Puro o Ching-Tu-Tsong	25	193
2256	0	La Escuela de la Meditación (Chan)                                                                                                                                        Escuela de la Espiritualidad (Hin-Tsong)	26	193
2257	0	La Escuela del Saber y de la Absorción (Tien-Tai)	27	193
2258	0	La Escuela de los Secretos (Mi-Tsong)	28	193
2259	0	Budismo Japoneses y Sus Sectas	29	193
2260	0	Las Sectas de Nara	30	193
2261	0	La Secta Hosso	31	193
2262	0	La Secta Kegon	32	193
2264	0	La Secta Tendai	34	193
2265	0	La Secta Shingon	35	193
2266	0	Las  NiSectas de Kamakura	36	193
2267	0	El Zen	37	193
2268	0	Las Sectas Amidistas	38	193
2269	0	El Jodoshu o Escuela del Pais Puro	39	193
2270	0	El Jodo-Shinshu o Verdadera Escuela Del Pais Puro	40	193
2271	0	La Secta Nichiren	41	193
2272	0	Budismo Tibetano	42	193
2273	0	La China Arcaica – Textos Clásicos	1	194
2274	0	El Yi King o ¨Libro de las Mutaciones¨	2	194
2275	0	El Chu King o ¨Libro de los Documentos¨	3	194
2276	0	El Che King o ¨Libro de las Odas¨	4	194
2277	0	El Li-Ki	5	194
2278	0	Las Ideas Centrales	6	194
2279	0	Armonía de la Naturaleza y la Ley como Reflejo.                                                                                                         Adivinación. Sacerdócio	7	194
2280	0	Adivinación	8	194
2281	0	El Príncipe. El Sacerdote.	9	194
2282	0	Confucio	10	194
2283	0	Confucio y sus Obras	11	194
2284	0	El Luen Yu	12	194
2285	0	El Chong Yong	13	194
2286	0	El Ta-Hio	14	194
2287	0	El Mong-Tse	15	194
2288	0	Ética y Política	16	194
2289	0	El Hombre Perfecto: El Sabio	17	194
2290	0	Discípulos de Confucio:	18	194
2291	0	Mong-Tse	19	194
2292	0	Siun-Tse	20	194
2293	0	Neo-Confucianismo	21	194
2294	0	El Tao y Lao-Tse	22	194
2295	0	Lao-Tse. Vida y Obras	23	194
2296	0	El Tao-te-King	24	194
2297	0	El Taoísmo y Otros Sabios	25	194
2298	0	El Tao	26	194
2299	0	Moral y Magia	27	194
2300	0	Otras Escuelas Chinas / Mo-Tse	28	194
2301	0	Sincretismo y Nacionalismos	1	195
2302	0	Los Libros ¨Shinto¨	2	195
2303	0	El Kojiki	3	195
2304	0	El Nihongi	4	195
2305	0	El Engishiki	5	195
2306	0	Fuerzas de La Naturaleza	6	195
2307	0	La Moral Shintoísta, Pureza Ritual:	7	195
2308	0	Evolución Histórica:	8	195
2309	0	El Zen:	9	195
2310	0	Los Iranios:	1	196
2311	0	Zoroastro y El Avesta:	2	196
2312	0	Los Textos Litúrgicos	3	196
2313	0	El Yasna o Libro de los Sacrificios	4	196
2314	0	El Videvdat o Vendidad	5	196
2315	0	El Visprat o Vispered	6	196
2316	0	El Pequeño Avesta o Khordah Avesta	7	196
2317	0	Zofroastro:	8	196
2318	0	La Doctrina Moral de Zoroastro:	9	196
2319	0	El Dualismo: Guerra Universal Entre El Bien y El Mal	10	196
2320	0	Los Parsis	11	196
2321	0	Breve Reseña de La Historia del Zoroastrismo	12	196
2322	0	Sumerios y Semitas:	1	197
2323	0	Textos Sagrados	2	197
2324	0	La Epopeya de Gilgamesh	3	197
2325	0	El Poema de La Creación	4	197
2326	0	Poema de Em-Ki y Ninursag	5	197
2327	0	Poema de Dumuzi e Inana	6	197
2328	0	Moral y Metafísica: La Ley	7	197
2329	0	El Mal. Los Sacrificios	8	197
2330	0	El Devenir	9	197
2331	0	Los Cultos Religiosos – Los Sacerdotes. Las Plegarias	10	197
2332	0	Magia Y Adivinación	11	197
2333	0	Supervivencia Histórica de Babilonia:	12	197
2334	0	Introducción	1	198
2335	0	Mito y Rito	2	198
2336	0	Relaciones entre los Hombres y los Dioses	3	198
2337	0	La Filosofía Hermética	4	198
2338	0	El Sufismo:	1	199
2339	0	Doctrina Filosófica	2	199
2340	0	LaUnidad Divina	3	199
2341	0	El Espíritu	4	199
2342	0	El Hombre Universal	5	199
2343	0	El Intelecto	6	199
2344	0	Introducción y Desarrollo Histórico:	1	200
2345	0	La Doctrina:	2	200
2346	0	La Cábala Práctica	3	200
2347	0	La Cábala Dogmática	4	200
2348	0	La Cábala Literal	5	200
2349	0	La Cábala No-Escrita	6	200
2350	0	Atziluth	7	200
2351	0	Briah	8	200
2352	0	Yetzirah	9	200
2353	0	Assiah	10	200
2354	0	El Árbol de La Vida o Árbol Sephirotal:	11	200
2355	0	La Cábala Literal	12	200
2356	0	La Cábala Dogmática:	13	200
2357	0	La Cábala Práctica	14	200
2358	0	Gematria:	15	200
2359	0	Notaricon:	16	200
2360	0	Temura:	17	200
2361	0	El Nombre de Dios	18	200
988	0	Introdução	1	112
989	0	Consciência	1	113
990	0	Atenção	1	114
991	0	Memória	1	115
992	0	Inteligência	1	116
993	0	Imaginação	1	117
994	0	Hábitos	1	118
995	0	Sensações	1	119
996	0	Fenômenos  Afetivos	1	120
997	0	Personalidade	1	121
998	0	Vontade	1	122
999	0	Psicanálise e Psicossíntese	1	123
1000	0	Consciente e Inconsciente	2	123
1001	0	Hipnose e Catarses	3	123
1002	0	Formação de Personalidade	4	123
1003	0	Princípios do Prazer	5	123
1004	0	Vida Onírica	6	123
1005	0	Energia Psíquica	7	123
1006	0	Os Três Níveis do Sistema Psicológico	8	123
1007	0	Psicanálise	9	123
1008	0	Disidências e Aportes	10	123
1009	0	A Psicanálise Hoje	11	123
1010	0	Possibilidades Afetivas	12	123
1011	0	Alguns Aportes à Teoria da Síntese	13	123
1012	0	Parapsicologia: I-Introdução	1	124
1013	0	Aproximação ao Mundo Astral	2	124
1014	0	Estrutura do Astral	3	124
1015	0	Aproximação ao Mundo Mental	4	124
1016	0	O Veículo Manas	5	124
1017	0	Consciência de Vigília	6	124
1018	0	A Consciência Onírica	7	124
1019	0	Parapsicologia:II-Os Fenômenos	8	124
1020	0	Fenômenos de Desdobramento	9	124
1021	0	Mensagens Oníricas	10	124
1022	0	Os Arquivos do Passado	11	124
1023	0	Psicometria	12	124
1024	0	Precognição e Liberdade	13	124
1025	0	Clarividência	14	124
1026	0	Telepatia	15	124
1027	0	Dom de Línguas	16	124
1028	0	Hipnotismo	17	124
1029	0	Mesmerismo	18	124
1030	0	Médiuns	19	124
1031	0	Transe	20	124
1032	0	Conclusão	21	124
1033	0	Introdução	1	125
1034	0	O Valor dos Símbolos na Problemática  Metafísica de Todos os Tempos	2	125
1035	0	O Símbolo Como Linguagem do Inefável	3	125
1036	0	A Linguagem Entendida como Expessão de uma Idéia	4	125
1037	0	Linguagens Ametafísicas e Sub-Linguagens	5	125
1264	0	Deuses Agrestes	24	132
1038	0	A Linguagem do Instinto, da Vida Quotidiana e da Vida Transcendente	6	125
1039	0	O Símbolo Como Conceito	7	125
1040	0	Valor dos Hieróglifos	8	125
1041	0	Litania de Shu	9	125
1042	0	Livro da Oculta Morada	10	125
1043	0	Citações Neoplatônicas Sobre o Valor dos Hieróglifos	11	125
1044	0	Razão de Ser dos Símbolos	12	125
1045	0	Necessidade dos Símbolos para a Explicação do Inexplicado	13	125
1046	0	Adendo ao Tema 1 (Introdução) - Perguntas	14	125
1047	0	Simbologia Teológica no Egito - Introdução	1	126
1048	0	Egito e o Seu Zoomorfismo Teológico	2	126
1049	0	Análise dos Deuses Egípcios e Outros Elementos Teológicos:	3	126
1050	0	.   Divindades Principais	4	126
1051	0	Nun	5	126
1052	0	Tum ou Atum	6	126
1053	0	Ra	7	126
1054	0	Amon	8	126
1055	0	Hathor	9	126
1056	0	Osiris	10	126
1057	0	Isis	11	126
1058	0	Horus	12	126
1059	0	Seth-Tiphon	13	126
1060	0	Neftis	14	126
1061	0	Thot	15	126
1062	0	Anubis	16	126
1063	0	Kepher ou Escaravelho	17	126
1064	0	Ptah	18	126
1065	0	Maat	19	126
1066	0	Sekhmet	20	126
1067	0	Bastek	21	126
1068	0	Nekhebet	22	126
1069	0	Khnum	23	126
1070	0	Apis	24	126
1071	0	Toeris	25	126
1072	0	Heket ou Hikit	26	126
1073	0	Hapi	27	126
1074	0	Bés	28	126
1075	0	Ankh	29	126
1076	0	Arca de Isis	30	126
1077	0	Apap ou Apophis	31	126
1078	0	Os Quatro Filhos de Horus	32	126
1079	0	Peso do Coraçõs do Morto	33	126
1080	0	Esfinge	34	126
1081	0	Tarots - Valor dos Hieróglifos:	35	126
1082	0	Tarot nº 1	36	126
1083	0	Tarot nº 2	37	126
1084	0	Tarot nº 3	38	126
1085	0	Tarot nº 4	39	126
1086	0	Tarot nº 5	40	126
1087	0	Tarot nº 6	41	126
1088	0	Tarot nº 7	42	126
1089	0	Tarot nº 8	43	126
1090	0	Tarot nº 9	44	126
1091	0	Tarot nº 10	45	126
1092	0	Tarot nº 11	46	126
1093	0	Tarot nº 12	47	126
1094	0	Tarot nº 13	48	126
1095	0	Tarot nº 14	49	126
1096	0	Tarot nº 15	50	126
1097	0	Tarot nº 16	51	126
1098	0	Tarot nº 17	52	126
1099	0	Tarot nº 18	53	126
1100	0	Tarot nº 19	54	126
1101	0	Tarot nº 20	55	126
1102	0	Tarot nº 21	56	126
1103	0	Tarot nº 22	57	126
1104	0	Grupo Sul-Oriental	1	127
1105	0	Grupo Meridional	2	127
1106	0	Grupo Congolês	3	127
1107	0	Grupo Nilotico	4	127
1108	0	Grupo Sudanês	5	127
1109	0	Grupo Voltaico	6	127
1110	0	Grupo de Guiné - Grupo Senegambio	7	127
1111	0	Vestígios de Antigos Cultos na África Negra	8	127
1112	0	Ruínas de Zimbabwé	9	127
1113	0	O Grupo X	10	127
1114	0	.  Anexo – Outros Símbolos Africanos	11	127
1115	0	Simbologia Teológica na Ásia Menor	1	128
1116	0	Introdução	2	128
1117	0	Sumer	3	128
1118	0	Assíria - Babilônia	4	128
1119	0	Os Grandes Deuses:	5	128
1120	0	Anu	6	128
1121	0	Bel	7	128
1122	0	Ea	8	128
1123	0	Marduk	9	128
1124	0	Ashur	10	128
1125	0	Os Deuses Estelares:	11	128
1126	0	Sin	12	128
1127	0	Samash	13	128
1128	0	Ishtar	14	128
1129	0	Mitos e Relatos Heróicos:	15	128
1130	0	O Dilúvio	16	128
1131	0	Etana	17	128
1132	0	Adapa	18	128
1133	0	Gilgamesh	19	128
1134	0	Influências da Áres Mesopotâmica	20	128
1135	0	Elamitas	21	128
1136	0	Hititas	22	128
1137	0	Mitos Cosmogônicos e Teogônicos Hurritas:	23	128
1138	0	O Mito da Realeza nos Céus	24	128
1139	0	O Canto de Ulikumi	25	128
1140	0	O Mito da Serpente Illuyanka	26	128
1141	0	O Mito de Telepinu	27	128
1142	0	Hopolatria	28	128
1143	0	Síria e Fenícia	29	128
1144	0	Panteão de Ugarit:	30	128
1145	0	El	31	128
1146	0	Baal	32	128
1147	0	Anat	33	128
1148	0	Astarte	34	128
1149	0	Asherat	35	128
1150	0	Elat	36	128
1151	0	Deuses Fenícios do 1º Milênio	37	128
1152	0	Deuses de Cartago:	38	128
1153	0	Baal Amon	39	128
1154	0	Adonis e Eshmun	40	128
1155	0	Bes	41	128
1156	0	Tanit	42	128
1157	0	Simbolismo da Pérsia Antiga: Os Iranianos	43	128
1158	0	Introdução	44	128
1159	0	Religião Avestica	45	128
1160	0	  O Fogo	46	128
1161	0	O Haoma,,47 a 48	47	128
1162	0	Mitra e Varuna; Indra e os Nasatyas	48	128
1163	0	              Deuses Menores,48,	49	128
1164	0	Os Mags (ou Magos)	50	128
1165	0	Religião Mazdeísta	51	128
1166	0	Ahura Mazda	52	128
1167	0	A Reforma de Zoroastro	53	128
1168	0	O Mitraísmo e os Símbolos Religiosos sob a Influência das Arsácidas	54	128
1169	0	Mitra	55	128
1170	0	Deidades e Símbolos dos Sassanidas	56	128
1171	0	Os Amesha Spentas ou Amchaspendes	57	128
1172	0	Os Yazatas e os Fravarhis	58	128
1173	0	Devas	59	128
1174	0	Maniqueísmo	60	128
1175	0	Cosmogonia  Iraniana	61	128
1176	0	Idéias Sobre a Vida Eterna	62	128
1177	0	Mulçumanos na Pérsia	63	128
1178	0	Introdução ao Simbolismo  Teológico do Extermo Oriente	1	129
1179	0	INDIA	1	130
1180	0	Introdução	2	130
1181	0	Brahmanismo	3	130
1182	0	A Casta Guerreira	4	130
1183	0	Indra	5	130
1184	0	Mitra e Varuna	6	130
1185	0	Varuna	7	130
1186	0	Nasaiyas ou Azvins	8	130
1187	0	Chakravartin	9	130
1188	0	Ashvamedha	10	130
1189	0	A Casta Brahmânica:	11	130
1190	0	Agni	12	130
1191	0	Soma	13	130
1192	0	Savitri	14	130
1193	0	Surya	15	130
1194	0	Ushas	16	130
1195	0	Prajapati	17	130
1196	0	Aditi	18	130
1197	0	As Castas Populares:	19	130
1198	0	Asuras	20	130
1199	0	Rakshasas	21	130
1200	0	Pishakas	22	130
1201	0	Nagas	23	130
1202	0	Gandharvas	24	130
1203	0	Apsaras	25	130
1204	0	Rudra	26	130
1205	0	Conceitos Metafísicos e Cosmogônicos do Brahmanismo:	27	130
1206	0	Brahman	28	130
1207	0	Purusha e Prakriti	29	130
1208	0	Hiranya Garba	30	130
1209	0	Yama	31	130
1210	0	Atman	32	130
1211	0	Ciclo do Fogo Mental	33	130
1212	0	Hinduísmo	34	130
1213	0	Brahma	35	130
1214	0	Sarasvati	36	130
1215	0	Vishnu	37	130
1216	0	Shiva	38	130
1217	0	Budismo	39	130
1218	0	CHINA	1	131
1219	0	Introdução	2	131
1220	0	Deidades do Céu:	3	131
1221	0	Augusto de Jade	4	131
1222	0	Deidades Estelares e da Natureza:	5	131
1223	0	Sol	6	131
1224	0	Lua	7	131
1225	0	Chuva, Trovão e Vento	8	131
1226	0	Reis-Dragões	9	131
1227	0	Deus das Letras (We T'Chang) e o Deus dos Exames (K'Dei Sing)	10	131
1228	0	Deus da Felicidade	11	131
1229	0	A Tecedeira Celeste	12	131
1230	0	Deidades Populares e Deidades para os Homens:	13	131
1231	0	Os Deuses do Monte T'ai-chan	14	131
1232	0	Deuses das Muralhas e das Covas	15	131
1233	0	Deuses do Lar	16	131
1234	0	Deuses das Portas	17	131
1235	0	Deus da Riqueza	18	131
1236	0	Imperador Kuan-ti	19	131
1237	0	Os Oito Imortais - Pa-sien	20	131
1238	0	Deuses das Profissões	21	131
1239	0	Inferno	22	131
1240	0	Adendo	23	131
1241	0	JAPÃO	1	132
1242	0	Introdução	2	132
1243	0	Elementos Fundamentais da Simbologia Japonesa:	3	132
1244	0	Os Kami	4	132
1245	0	A Região dos Mortos	5	132
1246	0	Cosmogênese e Antropogênese:	6	132
1247	0	Izanagi e Izanami	7	132
1248	0	Susanoo	8	132
1249	0	O-Kuni-Nushi	9	132
1250	0	Ninigi	10	132
1251	0	Outros Deuses:	11	132
1252	0	Símbolos do Sol:	12	132
1253	0	Amaterasu	13	132
1254	0	Wakahiru-me	14	132
1255	0	Tsuki-Yomi	15	132
1256	0	Kami-Nari	16	132
1257	0	Dedidades da Chuva	17	132
1258	0	Deidades do Vento	18	132
1259	0	Deuses das Montanhas	19	132
1260	0	Dedidades dos Rios	20	132
1261	0	Deidades do Mar	21	132
1262	0	Deus do Fogo - Ho-Musubi	22	132
1263	0	Deuse s do Caminho	23	132
1265	0	Uke-Mochi	25	132
1266	0	Divindades das Diferentes Partes do Lar	26	132
1267	0	Simbologia Teológica na Grécia	1	133
1268	0	Simbologia Pré-Helênica	2	133
1269	0	                  A Grande Deusa Mãe	3	133
1270	0	                 Simbologia na Grécia Clássica	4	133
1271	0	                  Teogonia	5	133
1272	0	A Primeira Dinastia Olimpiana	6	133
1273	0	A Segunda Dinastia Olimpiana	7	133
1274	0	A Terceira Dinastia Olimpiana	8	133
1275	0	                  Divindades Primordiais Olimpianas	1	134
1276	0	Zeus	2	134
1277	0	Hera	3	134
1278	0	Atena	4	134
1279	0	Apolo	5	134
1280	0	Artemisa	6	134
1281	0	Hermes	7	134
1282	0	Ares	8	134
1283	0	Hefestos	9	134
1284	0	Afrodite	10	134
1285	0	Eros	11	134
1286	0	Cáritas	12	134
1287	0	Poseidon	13	134
1288	0	Héstia	14	134
1289	0	Divindades Primordiais da Terra	15	134
1290	0	Cibele	16	134
1291	0	Deméter	17	134
1292	0	Dionísio	18	134
1293	0	Divindades Primordiais do Mundo Subterrâneo	19	134
1294	0	Hades	20	134
1295	0	Hécate	21	134
1296	0	Tânatos	22	134
1297	0	Divindades Secundárias do Olimpo	23	134
1298	0	Têmis	24	134
1299	0	Íris	25	134
1300	0	Hebe	26	134
1301	0	Ganimedes	27	134
1302	0	As Horas	28	134
1303	0	Divindades Estelares	29	134
1304	0	Hélios	30	134
1305	0	Selene	31	134
1306	0	Eos	32	134
1307	0	Constelações,,,29 a 31	33	134
1308	0	Órion	34	134
1309	0	As Plêiades	35	134
1310	0	As Híades	36	134
1311	0	Deidades dos Ventos	37	134
1312	0	Bóreas	38	134
1313	0	Zéfiro	39	134
1314	0	Euro	40	134
1315	0	Noto	41	134
1316	0	Éolo	42	134
1317	0	Ventos Tempestuosos	43	134
1318	0	Quimera	44	134
1319	0	As Hárpias	45	134
1320	0	Deidades das Águas e do Mar	46	134
1321	0	Ponto	47	134
1322	0	Oceano	48	134
1323	0	Nereu	49	134
1324	0	Proteu	50	134
1325	0	Forcis	51	134
1326	0	Glauco	52	134
1327	0	Tritões	53	134
1328	0	Sereias	54	134
1329	0	Os Rios	55	134
1330	0	Ninfas	56	134
1331	0	Os Heróis	57	134
1332	0	Teseu	58	134
1333	0	Héracles	59	134
1334	0	O Escudo de Héracles	60	134
1335	0	O Timeu	61	134
1336	0	Considerações Finais	62	134
1337	0	Introdução	1	135
1338	0	Deuses do Estado	2	135
1339	0	Janos	3	135
1340	0	Marte	4	135
1341	0	Júpiter	5	135
1342	0	Juno	6	135
1343	0	Vesta	7	135
1344	0	Vulcano	8	135
1345	0	Saturno	9	135
1346	0	Minerva	10	135
1347	0	Mercúrio	11	135
1348	0	Divindades Agrícolas	12	135
1349	0	Fauno	13	135
1350	0	Ceres	14	135
1351	0	Diana	15	135
1352	0	Vertumno	16	135
1353	0	Vênus	17	135
1354	0	Divindades Infernais	18	135
1355	0	Dis Pater	19	135
1356	0	Orco	20	135
1357	0	Lemures, Larvas	21	135
1358	0	Manes	22	135
1359	0	Divindades das Águas	23	135
1360	0	Diuturna	24	135
1361	0	Neptuno	25	135
1362	0	Divindades das Cidades	26	135
1363	0	Fortuna	27	135
1364	0	Gênio	28	135
1365	0	Terminus	29	135
1366	0	Heróis Divinizados	30	135
1367	0	Hércules	31	135
1368	0	Rômulo e Remo	32	135
1369	0	Enéias	33	135
1370	0	Divindades da Família	34	135
1371	0	Gênio	35	135
1372	0	Os Penates	36	135
1373	0	Lar	37	135
1374	0	Contribuições Orientais	38	135
1375	0	Introdução	1	136
1376	0	Os Quatro Elementos Primordiais	2	136
1377	0	Os Quatro Elementos e suas Aplicações	3	136
1378	0	Os Deuses e os Elementos	4	136
1379	0	Deuses do Fogo	5	136
1380	0	Agni	6	136
1381	0	Ptah	7	136
1382	0	Prometeu	8	136
1383	0	Lógica desses Símbolos e suas Representações Divinas	9	136
1384	0	FORMAÇÃO DE METAIS E	1	137
1385	0	PEDRAS PRECIOSAS	2	137
1386	0	LEI DE CORRESPONDÊNCIAS	3	137
1387	0	PROPRIEDADES DAS PEDRAS	4	137
1388	0	SIGNIFICADO RELIGIOSO DE PEDRAS E METAIS	5	137
1389	0	AMULETOS E TALISMÃS	6	137
1390	0	Amuletos	7	137
1391	0	Fetiches	8	137
1392	0	Talismã	9	137
1393	0	Pantáculo	10	137
1394	0	AS PEDRAS MÁGICAS	11	137
1395	0	Gemas	12	137
1396	0	A ÁRVORE E AS PLANTAS NA LINGUAGEM SIMBÓLICA	1	138
1397	0	BOTÂNICA OCULTA	2	138
1398	0	Botanogenia	3	138
1399	0	Fisiologia vegetal	4	138
1400	0	Fisiognosia vegetal	5	138
1401	0	O HOMEM E A PLANTA	6	138
1402	0	Das plantas aos homens	7	138
1403	0	Alimentação	8	138
1404	0	Terapêutica	9	138
1405	0	Magia	10	138
1406	0	Dos homens às plantas	11	138
1407	0	Agricultura mágica	12	138
1408	0	Crescimento mágico	13	138
1409	0	Palingenesia	14	138
1410	0	ESPÍRITOS REGENTES DAS PLANTAS	15	138
1411	0	Os Elfos	16	138
1412	0	DESCRIÇÃO DE ALGUMAS PLANTAS E	17	138
1413	0	SEUS SÍMBOLOS CARACTERÍSTICOS	18	138
1414	0	Amusa	19	138
1415	0	Acácia	20	138
1416	0	Artemísia	21	138
1417	0	Camélia	22	138
1418	0	Colocasta	23	138
1419	0	Azinheira, Zimbo, Fava	24	138
1420	0	Girassol, Figueira	25	138
1421	0	Loureiro, Lotus	26	138
1422	0	Mandrágora, Macieira, Mirto, Mirra	27	138
1423	0	Agárico	28	138
1424	0	Narciso, Oliveira, Palmeira, Persea	29	138
1425	0	Pinheiro, Alecrim, Rosa, Gergelim, Chá, Trevo	30	138
1426	0	CARACTERÍSTICAS GERAIS DO SÍMBOLO	1	139
1427	0	SIMBOLISMO GERAL DA AVE	2	139
1428	0	Ovo	3	139
1429	0	Cisne	4	139
1430	0	Ganso	5	139
1431	0	Garuda, Águia	6	139
1432	0	Cegonha Ibis, Corvo	7	139
1433	0	Galo, Fênix	8	139
1434	0	Falcão, Pavão Real	9	139
1435	0	INSETOS, RÉPTEIS, MAMÍFEROS,	10	139
1436	0	PEIXES E ANFÍBIOS	11	139
1437	0	Abelha	12	139
1438	0	Aranha, Asno	13	139
1439	0	Boi, Abrutre	14	139
1440	0	Cavalo, Cervo, Cinocéfalo	15	139
1441	0	Crocodilo, Gato	16	139
1442	0	Górgona, Grifo, Javali	17	139
1443	0	Leão, Lebre, Lobo, Borboleta	18	139
1444	0	Macaco, Peixe Rã	19	139
1445	0	Serpente	20	139
1446	0	Tigre, Touro	21	139
1447	0	ANIMAIS SIMBÓLICOS EM TODOS OS PANTÕES	22	139
1448	0	Introdução	1	140
1449	0	SIMBOLISMO DOS CORPOS CELESTES	2	140
1450	0	ASTROLOGIA	3	140
1451	0	O ZODÍACO	4	140
1452	0	Antiguidade do zodíaco	5	140
1453	0	O grande zodíaco	6	140
1454	0	SIGNOS DO ZODÍACO	7	140
1455	0	Áries	8	140
1456	0	Touro	9	140
1457	0	Gêmeos	10	140
1458	0	Câncer	11	140
1459	0	Leão	12	140
1460	0	Virgem	13	140
1461	0	Libra	14	140
1462	0	Escorpião	15	140
1463	0	Sagitário	16	140
1464	0	Capricórnio	17	140
1465	0	Aquário	18	140
1466	0	Peixes	19	140
1467	0	OS PLANETAS	20	140
1468	0	Lua	21	140
1469	0	Mercúrio	22	140
1470	0	Vênus	23	140
1471	0	Sol	24	140
1472	0	Marte	25	140
1473	0	Júpiter	26	140
1474	0	Saturno	27	140
1475	0	Urano	28	140
1476	0	Netuno	29	140
1477	0	Plutão	30	140
1478	0	SINAIS DE CORRESPONDÊNCIA	31	140
1479	0	INTRODUÇÃO	1	141
1480	0	GENERALIDADES SOBRE ARQUITETURA	2	141
1481	0	SIMBÓLICA	3	141
1482	0	SIMBOLISMO E ARTE	4	141
1483	0	O TEMPLO	5	141
1484	0	Megalitos	6	141
1485	0	Orientação	7	141
1486	0	Carnac	8	141
1487	0	Stonehenge	9	141
1488	0	Pirâmides	10	141
1489	0	Pirâmide de Keops	11	141
1490	0	Templo das Inscrições (Palenque)	12	141
1491	0	Pirâmide do Adivinho (Uxmal)	13	141
1492	0	Pirâmide de Chichen Itzá	14	141
1493	0	Pirâmide do Sol (Teotihuacán)	15	141
1494	0	RELIGIÃO E ARTE ATRAVÉS DA HISTÓRIA	16	141
1495	0	Egito	17	141
1496	0	Creta	18	141
1497	0	Assíria - Babilônia	19	141
1498	0	Índia	20	141
1499	0	China	21	141
1500	0	Japão	22	141
1501	0	Bizâncio	23	141
1502	0	Arte árabe ou muçulmana	24	141
1503	0	Arte pré-colombiana	25	141
1504	0	Grécja	26	141
1505	0	Medida áurica	27	141
1506	0	Cânone de Polyclates	28	141
1507	0	Ordem Dórica	29	141
1508	0	Ordem Jônica	30	141
1509	0	Ordem Coríntia	31	141
1510	0	Idade Média, igrejas e catedrais	32	141
1511	0	Características da arte gótica	33	141
1512	0	Construção do templo	34	141
1513	0	As três tábuas	35	141
1514	0	A luz	36	141
1515	0	Os astros	37	141
1516	0	Epílogo	1	142
1517	0	Cultura Olmeca	1	143
1518	0	Teotihuacan	2	143
1519	0	Tula	3	143
1520	0	Complexo Chichimeca	4	143
1521	0	Aztecas	5	143
1522	0	Os Deuses do Panteão Nahuatl	6	143
1523	0	Hue Hue Teotl	7	143
1524	0	Xolotl	8	143
1525	0	Tlaloc	9	143
1526	0	Tlachitonatiuh	10	143
1527	0	Cuauhtemoc	11	143
1528	0	Xochipilli	12	143
1529	0	Tamoanchan	13	143
1530	0	Ollin Tonatiuh	14	143
1531	0	Tialtecuhtli	15	143
1532	0	Chalchiutlicue	16	143
1533	0	Micantecuhtli	17	143
1534	0	Huitzlopochtli	18	143
1535	0	Xipe Totec	19	143
1536	0	Tezcatlipoca	20	143
1537	0	Quetzalcoatl	21	143
1538	0	Malinal Xochitl	22	143
1539	0	Xiuhtecuhtli	23	143
1540	0	Tlazolteotli	24	143
1541	0	Jaguar ou Tigre	25	143
1542	0	Iztlacoliuhqui	26	143
1543	0	Tula	27	143
1544	0	Homem – Jaguar – Serpente	28	143
1545	0	Relação do Panteão Nahualt com Outros Panteões Americanos	29	143
1546	0	Panteão Chibcha	30	143
1547	0	Panteão Tiahuanacota	31	143
1548	0	Cultura de Oaxaca	32	143
1549	0	Zapotecas	33	143
1550	0	Cocijo	34	143
1551	0	Pitao Cozobi	35	143
1552	0	O Deus Morcego	36	143
1553	0	O Jaguar	37	143
1554	0	A Deusa 13ª Serpente	38	143
1555	0	O Deus a 5ª Flor	39	143
1556	0	Xipe Totec	40	143
1557	0	Quetzalcoatl	41	143
1558	0	Deus do Fogo	42	143
1559	0	Comentário do Instrutor JAL Sobre o Livro ¨O Universo de Quetzalcoatl¨ (De Laurette Séjourné)	43	143
1560	0	Mixtecas	44	143
1561	0	Culturas do Golfo	45	143
1562	0	A Cultura Huazteca	46	143
1563	0	A Cultura de Vera Cruz	47	143
1564	0	Os Olmecas Históricos	48	143
1565	0	Culturas do Ocidente	49	143
1566	0	Culturas do Norte do México	50	143
1567	0	Zacatecas	51	143
1568	0	Durango	52	143
1569	0	Chichuaha	53	143
1570	0	Área Maia	54	143
1571	0	Período Pré-Classico	55	143
1572	0	Período Clássico	56	143
1573	0	Período Pós Clássico	57	143
1574	0	Religião e Deidade	58	143
1575	0	Itzamná	59	143
1576	0	Chaac	60	143
1577	0	Deus do Milho	61	143
1578	0	Ah Puch	62	143
1579	0	Xamanek	63	143
1580	0	Ek Chuah	64	143
1581	0	Kukulcan	65	143
1582	0	Ixchel	66	143
1583	0	Ixtab	67	143
1584	0	O Popol Vuh	68	143
1585	0	Alguns Aspectos Simbólicos do Popol Vuh	69	143
1586	0	Comentários de JAL sobre o Livro ¨Popol Vuh¨	70	143
1587	0	Capítulo VII	71	143
1588	0	Capítulo	72	143
1589	0	Capítulo XXI	73	143
1590	0	Capítulo XXIV	74	143
1591	0	Capítulo XXX	75	143
1592	0	Iqui Balam	76	143
1593	0	Viagem dos Pais a Xibalba	77	143
1594	0	Nascimento de Hunapú e Ixbalanqué	78	143
1595	0	Relato Sobre Vucub Caquix (Principal Guacamayo)	79	143
1596	0	Equador	1	144
1597	0	Colômbia	2	144
1598	0	Cultura de San Agustín	3	144
1599	0	Peru	4	144
1600	0	Chavín	5	144
1601	0	Cultura Chimú	6	144
1602	0	Cultura Incaica	7	144
1603	0	Paracas	8	144
1604	0	Nasca	9	144
1605	0	Cultura Mochica	10	144
1606	0	Bolívia	11	144
1607	0	Tiahuanaco	12	144
1608	0	Celtas	1	145
1609	0	Pré-Celtas	2	145
1610	0	Outros Símbolos	3	145
1611	0	Os Celtas Continentais	4	145
1612	0	Os Gálios: Suas Divindades e Símbolos	5	145
1613	0	Deuses Antropomórlicos Gálio-Romanos	6	145
1614	0	Mercúrio Gálio	7	145
1615	0	Ogmio	8	145
1616	0	Apolo	9	145
1617	0	Marte	10	145
1618	0	Minerva	11	145
1619	0	Júpiter Gálio	12	145
1620	0	Dis Pare	13	145
1621	0	Sucellus	14	145
1622	0	Cernunno (O Cornudo)	15	145
1623	0	Deusa Mãe	16	145
1624	0	As Mães	17	145
1625	0	Celtas insulares (Grã-Bretanha e Irlanda)	18	145
1626	0	Panteão Insular	19	145
1627	0	Govannon	20	145
1628	0	Lluoo ou Nuoo	21	145
1629	0	Amaethon	22	145
1630	0	Gwidion	23	145
1631	0	Arianrod	24	145
1632	0	Ciclo de Artur	25	145
1633	0	Artur	26	145
1634	0	Epopéia Mítica da Irlanda (O Ciclo                                                                                                                                    das Invasões)	27	145
1635	0	Heróis	28	145
1636	0	Os Germânicos	29	145
1637	0	Alemanha e Países Escandinavos	30	145
1638	0	Cosmogênese e Antropogênese	31	145
1639	0	Panteão Germânico	32	145
1640	0	Wotan / Odin	33	145
1641	0	Donar-Thor	34	145
1642	0	Tiuz-Tyr	35	145
1643	0	Loki	36	145
1644	0	Balder	37	145
1645	0	Os Vanes	38	145
1646	0	Deusas	39	145
1647	0	Os Espíritos	40	145
1648	0	As Normas	41	145
1649	0	Elfos e Anões	42	145
1650	0	Os Iberos	43	145
1651	0	Tartessos	44	145
1652	0	Antiguidade de Tartessos	45	145
1653	0	Alfabeto Tartéssico	46	145
1654	0	Religião	47	145
1655	0	Simbologia dos Iberos	48	145
1656	0	Religião Ibérica	49	145
1657	0	Sibologia Ugro-Finesa	50	145
1658	0	O Kalevala	51	145
1659	0	A Magia	52	145
1660	0	Elementos Mágicos no Kalevala	53	145
1661	0	Deuses do Kalevala	54	145
1662	0	Celestes	55	145
1663	0	Da Terra e das Águas	56	145
1664	0	Mundo Infernal ou Reino dos Mortos	57	145
1665	0	Aminismo	58	145
1666	0	Mitos	59	145
1667	0	Introdução	1	146
1668	0	Os Essênios	2	146
1669	0	Formas Especiais de Vida	3	146
1670	0	Doutrina	4	146
1671	0	O Segredo	5	146
1672	0	Os Terapêutas	6	146
1673	0	Doutrina	7	146
1674	0	Cristianismo	8	146
1675	0	O Cristo Histórico	9	146
1676	0	O Cristo Mítico	10	146
1677	0	O Cristo Místico	11	146
1678	0	O Sacrifício	12	146
1679	0	Ressurreição e Ascensão	13	146
1680	0	Trindade	14	146
1681	0	Preces	15	146
1682	0	Sacramentos	16	146
1683	0	Revelação	17	146
1684	0	Lugares e Objetos Sagrados	18	146
1685	0	Simbologia do Islã	19	146
1686	0	O Corão	20	146
1687	0	Alá	21	146
1688	0	O Universo	22	146
1689	0	O Inferno	23	146
1690	0	O Paraíso	24	146
1691	0	A Criação do Homem	25	146
1692	0	Extrações Bíblicas	26	146
1693	0	A Moral	27	146
1694	0	Peregrinação à Meca	28	146
1695	0	A Guerra Santa	29	146
1696	0	A Gnose e os Gnósticos	30	146
1697	0	Simão, o Mago	31	146
1698	0	Basílides, o Egípcio	32	146
1699	0	Valentinus	33	146
1700	0	A Pistis Sofia	34	146
1701	0	Os Ofitas	35	146
1702	0	O Simbolismo Gnóstico	36	146
1703	0	Cátaros e Templários	37	146
1704	0	Os Cátaros	38	146
1705	0	A Doutrina	39	146
1706	0	A Iniciação – A ¨Endura¨	40	146
1707	0	Os Ritos Cátaros	41	146
1708	0	Os Templários	42	146
1709	0	A Iniciação e a Doutrina	43	146
1710	0	Símbolos Próprios dos Templários	44	146
1711	0	A Tradição Hermética: Alquimia	45	146
1712	0	Renascimento	46	146
1713	0	Rosacruzes	47	146
1714	0	A Franco Maçonaria	48	146
1715	0	Prólogo	1	147
1716	0	As Forças Ocultas na Evolução de Grupos Humanos	2	147
1717	0	O Que Podemos Aprender com Isso?	3	147
1718	0	Como é Necessário Proceder?	4	147
1719	0	O Indivíduo	1	148
1720	0	Os Caminhos da Individuação	2	148
1721	0	A Sociedade	3	148
1722	0	A Formação da Sociedade Segundo Platão	4	148
1723	0	O Estado	5	148
1724	0	– O Mito da Caverna	1	149
1725	0	– O Mito da Democracia	1	150
1726	0	A Relação com o Significado da Esfinge	1	151
1727	0	Acerca do Tempo	1	152
1728	0	Acerca do Rol ou Função	2	152
1729	0	Acerca do Crescimento	3	152
1730	0	Acerca da Cultura	4	152
1731	0	– O Mundo sensível e o Mundo Real	1	153
1732	0	– Os Princípios do Novo Estado e da Nova Civilização	1	154
1733	0	A Forma Ideal	1	155
1734	0	Como Alcançar o Bom, O Belo e o Justo?	1	156
1735	0	Os Aspectos da Educação no Novo Estado	1	157
1736	0	As etapas da Educação no Estado Novo	2	157
1737	0	Pré-Natal	3	157
1738	0	Primeira Infância	4	157
1739	0	Segunda Infância	5	157
1740	0	Pré-Adolescência	6	157
1741	0	Adolescência	7	157
1742	0	Juventude	8	157
1743	0	Maturidade	9	157
1744	0	A Velhice	10	157
1745	0	– Justiça Individual e Justiça Política	1	158
1746	0	O Sentido do Trabalho	1	159
1747	0	– A propriedade e o Estado Escravagista	1	160
1748	0	– A Economia	1	161
1749	0	– A Arte	1	162
1750	0	Epílogo	1	163
1916	0	LOS VEDAS	1	171
1917	0	ESQUEMA GENERAL DE LOS VEDAS	2	171
1918	0	CONFORMACIÓN DE UN VEDA	3	171
1919	0	DEIDADES DEL PANTEÓN HINDÚ	4	171
1920	0	AGNI	5	171
1921	0	INDRA	6	171
1922	0	SURYA	7	171
1923	0	MITRA	8	171
1924	0	VARUNA	9	171
1925	0	RUDRA	10	171
1926	0	TRÍADAS EN EL PANTEÓN HINDÚ	11	171
1927	0	BRAHMA	12	171
1928	0	VISHNÚ	13	171
1929	0	SHIVA	14	171
1930	0	CONTRAPARTES FEMENINAS DE LA TRÍADA RELIGIOSA BRAHMÁNICA	15	171
1931	0	ESPOSA DE BRAHMA	16	171
1932	0	ESPOSA DE VISHNÚ	17	171
1933	0	ESPOSA DE SHIVA	18	171
1934	0	ADITI	19	171
1935	0	USHAS	20	171
1936	0	LOS PANIS	21	171
1937	0	GANESHA Y KARTIKEYA	22	171
1938	0	GANESHA	23	171
1939	0	KARTIKEYA	24	171
1940	0	VISHVAKARMAN	25	171
1941	0	LOS AZVINS	26	171
1942	0	ANUMAN	27	171
1943	0	LOS NAGAS Y LAS NAGINI	28	171
1944	0	LOS RUDRAS	29	171
1945	0	LOS MARUTS	30	171
1946	0	VASUS	31	171
1947	0	LAS ADITYAS	32	171
1948	0	YAMA	33	171
1949	0	APARICIÓN DE LAS ESCUELAS DE FILOSOFÍA	34	171
1950	0	ESCUELA NYAYA DE GOTAMA	35	171
1951	0	ESCUELA VAIZECHIKA DE KANADA	36	171
1952	0	ESCUELA SANKHYA DE KAPILA	37	171
1953	0	ESCUELA YOGA DE PATANJALI	38	171
1954	0	ESCUELA PURVA MIMANSA	39	171
1955	0	ESCUELA UTTARA MIMANSA	40	171
1956	0	COMENTARIO DE SANKARACHARYA	41	171
1957	0	OTRO COMENTARIO	42	171
1958	0	JAINISMO	1	172
1959	0	LOS TIRTHAMKARAS	2	172
1960	0	RISABHA	3	172
1961	0	PARSVA	4	172
1962	0	MAHAVIRA	5	172
1963	0	SUBDIVISIONES	6	172
1964	0	FILOSOFÍA	7	172
1965	0	SIKISMO	8	172
1966	0	Ceremonia Pahul	9	172
1967	0	FRAGMENTOS DE LAS ENSEÑANZAS Y PARÁBOLAS DE NANAK	10	172
1968	0	RELIGIÓN TAMIL o TAMUL	11	172
1969	0	VIDA DE BUDHA	1	173
1970	0	VERSIÓN EXTRAÍDA DE LOS EVANGELIOS	2	173
1971	0	MARCHA DEL BUDHA	3	173
1972	0	LA VUELTA DE KANDAKA	4	173
1973	0	LA ENTRADA AL LUGAR DE LAS AUSTERIDADES	5	173
1974	0	CONSTERNACIÓN GENERAL EN PALACIO	6	173
1975	0	EN BÚSQUEDA DEL PRÍNCIPE	7	173
1976	0	EL RAJA DE BIMBISARA VISITA AL PRÍNCIPE	8	173
1977	0	EL PRÍNCIPE RESPONDE AL RAJA	9	173
1978	0	EN EL RETIRO DE ARADA-RAMA	10	173
1979	0	LA DERROTA DE MARA	11	173
1980	0	LA GRAN REVELACIÓN	12	173
1981	0	ALGUNAS ANÉCDOTAS DEL EVANGELIO DE ASVAGOSHA	13	173
1982	0	ENTREVISTA CON LOS CINCO BHIKSHUS	14	173
1983	0	SE HACE DISCÍPULO EL RAJA DE BIMBISARA	15	173
1984	0	EL GRAN DISCÍPULO SE HACE ERMITAÑO	16	173
1985	0	PADRE E HIJO	17	173
1986	0	EL SEÑOR RECIBE LA DONACIÓN DEL JETAVANA-VIHARA	18	173
1987	0	SE LIBRA DEL ELEFANTE ENLOQUECIDO Y DE DEVADATTA	19	173
1988	0	LA DAMA AMRA VISITA AL BUDHA	20	173
1989	0	EN VIRTUD DE SU PROPIO SER FIJA EL TÉRMINO DE SUS DÍAS	21	173
1990	0	LA DIFERENCIA ENTRE LOS LIKHAVIS	22	173
1991	0	EL PARANIRVANA	23	173
1992	0	EL MAHAPARANIRVANA	24	173
1993	0	LALITA-VISTARA	25	173
1994	0	FRAGMENTOS DEL EVANGELIO DEL BUDHA, EN BASE AL EVANGELIO CHINO	26	173
1995	0	ALEGRÍA	27	173
1996	0	SAMSARA Y NIRVANA	28	173
1997	0	LA VERDAD REDENTORA	29	173
1998	0	NACIMIENTO DEL BUDHA	30	173
1999	0	LOS LAZOS DE LA VIDA	31	173
2000	0	LOS TRES DOLORES	32	173
2001	0	LA RENUNCIA AL MUNDO	33	173
2002	0	EL SERMÓN DE BENARES	34	173
2003	0	PARÁBOLAS	35	173
2004	0	LA CASA INCENDIADA	36	173
2005	0	EL CIEGO DE NACIMIENTO	37	173
2006	0	EL HIJO PERDIDO	38	173
2007	0	LA CRUEL GARZA ENGAÑADA	39	173
2008	0	EL BUDHA SEMBRADOR	40	173
2009	0	EL PARIA	41	173
2010	0	EL PERRO HAMBRIENTO	42	173
2011	0	EL DÉSPOTA	43	173
2012	0	EL GRANO DE MOSTAZA	44	173
2013	0	LAS TRES PERSONALIDADES DEL BUDHA	45	173
2014	0	EL FIN DEL SER	46	173
2015	0	ALABANZA A TODOS LOS BUDHAS	47	173
2016	0	EXPANSIÓN DEL BUDHISMO	48	173
2017	0	EXPANSIÓN DEL BUDHISMO EN CHINA	49	173
2018	0	ADDENDA	50	173
2019	0	TEMAS DE BUDHISMO ESOTÉRICO	51	173
2020	0	AMITA BUDHA KWAN-SHAI-YIN Y KWAN-YIN. LO QUE EL LIBRO DE DZYAN Y LAS COMUNIDADES DE LAMAS DICEN ACERCA DE TSONG-KHA-PA	52	173
2021	0	PREGUNTAS Y RESPUESTAS	53	173
2022	0	ADDENDA SOBRE BUDHISMO ZEN	54	173
2023	0	DEIDADES  FEMENINAS	1	174
2024	0	YI-DAM	2	174
2025	0	EL BARDO TODOL	3	174
2026	0	ADDENDA SOBRE RELIGIÓN PRIMITIVA TIBETANA	4	174
2027	0	RESEÑA DE LA IMPLANTACIÓN DEL BUDISMO	5	174
2028	0	BUDHISMO TIBETANO	6	174
2029	0	LAS SECTAS DEL BUDHISMO TIBETANO	7	174
2030	0	TEOCRACIA TIBETANA	8	174
\.


--
-- Data for Name: turma; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.turma (id, version, codigo, dia_semana, nome, sala, nivel_id, representante_id, sede_id) FROM stdin;
2	0	AMON3	WEDNESDAY	AMON3	\N	1	\N	1
3	0	AMON5	THURSDAY	AMON5	\N	1	\N	1
6	0	APIS5	THURSDAY	APIS5	\N	2	\N	1
8	0	APIS7	WEDNESDAY	APIS7	\N	2	\N	1
9	0	ENOCH2	SATURDAY	ENOCH2	\N	2	\N	1
12	0	PITAGORAS3	SATURDAY	PITAGORAS3	\N	2	\N	1
13	0	PITAGORAS6	TUESDAY	PITAGORAS6	\N	2	\N	1
15	0	ROMULO1	WEDNESDAY	ROMULO1	\N	2	\N	1
16	0	SIDHARTA1	TUESDAY	SIDHARTA1	\N	3	\N	1
17	0	SIDHARTA2	TUESDAY	SIDHARTA2	\N	3	\N	1
10	0	PITAGÓRAS1	MONDAY	PITAGORAS1	\N	2	\N	1
11	0	PITAGORAS2	MONDAY	PITAGORAS2	\N	2	\N	1
4	0	APIS1	MONDAY	APIS1	\N	2	\N	1
5	0	APIS4	MONDAY	APIS4	\N	2	\N	1
7	0	APIS6	MONDAY	APIS6	\N	2	\N	1
1	2	AMON1	WEDNESDAY	AMON1	sala 1	1	30	1
14	1	PITAGORAS7	WEDNESDAY	PITAGORAS7	Seneca	2	221	1
\.


--
-- Data for Name: aula; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.aula (id, version, data, observacao, capitulo_id, materia_id, turma_id) FROM stdin;
4	0	2019-03-06	bastiao 1	\N	26	14
5	2	2019-03-06	foo1	1	1	14
\.


--
-- Data for Name: entrega_tema; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.entrega_tema (id, version, data, entregue, aluno_id, tema_id, turma_id) FROM stdin;
1	0	2019-02-09 21:42:14.271	t	32	113	14
3	0	2019-02-09 21:42:16.217	t	43	113	14
4	0	\N	f	78	113	14
5	0	\N	f	94	113	14
6	0	\N	f	138	113	14
7	0	\N	f	170	113	14
8	0	\N	f	172	113	14
9	0	\N	f	173	113	14
10	0	\N	f	194	113	14
11	0	\N	f	195	113	14
12	0	\N	f	202	113	14
13	0	\N	f	221	113	14
14	0	\N	f	223	113	14
15	0	\N	f	254	113	14
2	2	\N	f	39	113	14
\.


--
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
1	1	<< Flyway Baseline >>	BASELINE	<< Flyway Baseline >>	\N	na	2019-03-06 20:04:23.160307	0	t
2	2	aula capitulo nao obrigatorio	SQL	V2__aula_capitulo_nao_obrigatorio.sql	1580781164	na	2019-03-06 20:04:23.326823	19	t
\.


--
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.professor (id, version, nome, sede_id) FROM stdin;
1	0	ALINE MOTA ALBUQUERQUE LOUREIRO	1
2	0	ANA CAROLINE ARAÚJO LIMA	1
3	0	ANDREA FERREIRA DE OLIVEIRA	1
4	0	FLAVIA PINHEIRO DE ALENCAR PINTO	1
5	0	GABRIEL VIDAL GONDIM	1
6	0	KELLY CABRAL	1
7	0	KELLY FERREIRA MARQUES BOTELHO AGUIAR	1
8	0	LEANDRO BOTELHO AGUIAR	1
9	0	LEANDRO COSTA CHAVES	1
10	0	LEVI BAYDE RIBEIRO	1
11	0	LUIZ FERNANDO VIEIRA	1
12	0	MARCUS CARVALHO DE MATOS	1
13	0	PAULO DE ALMEIDA AGUIAR	1
14	0	RAFAEL LIMA MONTENEGRO	1
15	0	SIMPLICIA MARIA AIRES VIANNA SINIBALDI	1
16	0	SUELEN MOURA COSTA	1
\.


--
-- Data for Name: materia_turma; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.materia_turma (id, version, materia_id, professor_id, turma_id) FROM stdin;
33	0	22	8	15
34	0	16	7	15
35	0	9	7	4
36	0	15	10	4
37	0	1	7	5
38	0	14	12	5
39	0	26	8	11
40	0	1	12	11
41	0	14	15	11
42	0	26	12	9
43	0	1	7	9
44	0	14	8	9
45	0	26	8	13
46	0	1	7	13
47	0	14	14	13
48	0	26	14	14
49	0	1	1	14
50	0	14	4	14
51	0	26	14	12
52	0	1	7	12
53	0	14	16	12
54	0	26	8	10
55	0	1	12	10
56	0	14	6	10
57	0	26	8	8
58	0	1	7	8
59	0	14	6	8
60	0	26	2	6
61	0	1	12	6
62	0	14	6	6
63	0	26	6	7
64	0	1	10	7
65	0	14	14	7
66	0	27	11	16
67	0	28	13	16
68	0	10	12	17
69	0	20	7	17
70	0	12	8	17
\.


--
-- Data for Name: perfil; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.perfil (id, version, nome) FROM stdin;
2	0	ROLE_USER
1	0	ROLE_ADMIN
\.


--
-- Data for Name: presenca; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.presenca (id, version, presente, aluno_id, aula_id) FROM stdin;
46	0	t	32	4
49	0	f	78	4
50	0	f	94	4
51	0	f	138	4
52	0	f	170	4
53	0	f	172	4
54	0	f	173	4
55	0	f	194	4
56	0	f	195	4
57	0	f	202	4
58	0	f	221	4
59	0	f	223	4
60	0	f	254	4
61	0	t	32	5
64	0	f	78	5
65	0	f	94	5
66	0	f	138	5
67	0	f	170	5
68	0	f	172	5
69	0	f	173	5
70	0	f	194	5
71	0	f	195	5
72	0	f	202	5
73	0	f	221	5
74	0	f	223	5
62	1	t	39	5
75	1	t	254	5
47	1	t	39	4
48	1	t	43	4
63	1	t	43	5
\.


--
-- Data for Name: turma_alunos; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.turma_alunos (turma_id, alunos_id) FROM stdin;
8	1
7	2
7	3
6	4
13	5
10	6
1	7
10	8
13	9
17	10
1	11
17	12
15	13
1	14
17	15
8	16
7	17
17	18
8	19
10	20
11	21
17	22
2	23
13	24
5	25
2	26
10	27
4	28
11	29
1	30
2	31
14	32
2	33
4	34
3	35
12	36
8	37
8	38
14	39
8	40
3	41
2	42
14	43
10	44
17	45
4	46
7	47
6	48
13	49
4	50
8	51
7	52
10	53
8	54
17	55
2	56
7	57
7	58
5	59
7	60
1	61
6	62
6	63
17	64
5	65
5	66
2	67
15	68
3	69
4	70
6	71
10	72
8	73
10	74
15	75
17	76
5	77
14	78
11	79
8	80
8	81
17	82
13	83
8	84
1	85
1	86
15	87
15	88
11	89
8	90
4	91
7	92
7	93
14	94
17	95
8	96
12	97
6	98
17	99
10	100
6	101
17	102
15	103
17	104
8	105
2	106
8	107
2	108
1	109
4	110
6	111
8	112
2	113
2	114
1	115
8	116
13	117
6	118
8	119
4	120
15	121
5	122
3	123
10	124
1	125
11	126
8	127
3	128
10	129
15	130
6	131
13	132
2	133
1	134
8	135
4	136
11	137
14	138
17	139
16	140
6	141
3	142
10	143
16	144
15	145
3	146
3	147
17	148
15	149
17	150
12	151
17	152
17	153
4	154
13	155
10	156
12	157
17	158
6	159
4	160
8	161
4	162
15	163
17	164
8	165
5	166
15	167
7	168
17	169
14	170
10	171
14	172
14	173
17	174
17	175
17	176
15	177
17	178
11	179
12	180
4	181
17	182
10	183
17	184
1	185
4	186
11	187
17	188
12	189
3	190
15	191
17	192
10	193
14	194
14	195
6	196
17	197
7	198
3	199
5	200
2	201
14	202
4	203
10	204
10	205
17	206
1	207
17	208
3	209
17	210
6	211
10	212
2	213
10	214
17	215
1	216
7	217
11	218
17	219
10	220
14	221
15	222
14	223
3	224
10	225
8	226
10	227
15	228
1	229
17	230
7	231
2	232
15	233
8	234
17	235
11	236
10	237
11	238
8	239
15	240
2	241
7	242
17	243
7	244
7	245
10	246
1	247
15	248
13	249
17	250
7	251
4	252
5	253
14	254
17	255
8	256
7	257
13	258
2	259
11	260
13	261
17	262
6	263
2	264
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.usuario (id, version, email, nome, senha, sede_id, enabled) FROM stdin;
1	1	na@na.com.br	Admin	$2a$10$h/bctiMlD3bKTDsWzHSLOugu7LWgQBSvaKvSlm7ubMKY/cFE2FGfa	1	t
14	1	foo@na.com	foo	$2a$10$yYmyJ76lSx1jxVQT/NSb1OfQbDndbJZJ40A5qf/SGOXKalgp1lbe6	1	t
\.


--
-- Data for Name: usuario_perfils; Type: TABLE DATA; Schema: public; Owner: na
--

COPY public.usuario_perfils (usuario_id, perfils_id) FROM stdin;
1	1
14	2
\.


--
-- Name: aluno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.aluno_id_seq', 264, true);


--
-- Name: aula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.aula_id_seq', 5, true);


--
-- Name: capitulo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.capitulo_id_seq', 2361, true);


--
-- Name: entrega_tema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.entrega_tema_id_seq', 15, true);


--
-- Name: materia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.materia_id_seq', 28, true);


--
-- Name: materia_turma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.materia_turma_id_seq', 70, true);


--
-- Name: nivel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.nivel_id_seq', 3, true);


--
-- Name: perfil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.perfil_id_seq', 2, true);


--
-- Name: presenca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.presenca_id_seq', 75, true);


--
-- Name: professor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.professor_id_seq', 16, true);


--
-- Name: sede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.sede_id_seq', 1, true);


--
-- Name: tema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.tema_id_seq', 200, true);


--
-- Name: turma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.turma_id_seq', 17, true);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: na
--

SELECT pg_catalog.setval('public.usuario_id_seq', 14, true);


--
-- PostgreSQL database dump complete
--

