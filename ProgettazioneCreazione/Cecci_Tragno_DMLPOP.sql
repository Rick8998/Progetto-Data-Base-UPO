insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('dario_vario', 'dario@gmail.com', '2016-02-21', 'f', 't', 't');
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('andrea_crea', 'andrea@gmail.com', '2019-08-01', 'f', 't', 'f');
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('tiziano_lariano', 'tiziano@gmail.com', '2017-07-01', 't', 't', 't');
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('alessio_byalassio', 'alessio@gmail.com', '2019-01-01', 'f', 'f', 't');
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('bruno_digiuno', 'bruno@gmail.com', '2019-06-01', 'f', 't', 'f');
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('alberto_umberto', 'alberto@gmail.com', '2016-06-01', 't', 't', 't');
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('silvio_pervio', 'silvio@gmail.com', '2018-01-06', 'f', 't', 't');
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('enrico_bolscevico', 'enrico@gmail.com', '2019-08-01', 'f', 't', 'f');


insert into LIBRO(CodId, Titolo, Collana, DataIns, Voto, Completamento) values (default, 'Turtles and Robots', default, '2019-04-04', 8, 't' );
insert into LIBRO(CodId, Titolo, Collana, DataIns, Voto, Completamento) values (default, 'Inseguendo la città', default, '2018-05-26', 1, 't' );
insert into LIBRO(CodId, Titolo, Collana, DataIns, Voto, Completamento) values (default, 'Nemici dal passato', 'Nemici', '2019-02-04', 8, 'f' );
insert into LIBRO(CodId, Titolo, Collana, DataIns, Voto, Completamento) values (default, 'I mimi possono danzare', default, '2016-07-24', 5, 't' );
insert into LIBRO(CodId, Titolo, Collana, DataIns, Voto, Completamento) values (default, 'Pianeta di ceneri', default, '2019-08-17', 3, 'f' );
insert into LIBRO(CodId, Titolo, Collana, DataIns, Voto, Completamento) values (default, 'Noi e loro', default, '2017-05-11', 0, 'f' );


insert into CATEGORIA_NARRATIVA(NCat) values ('Avventura');
insert into CATEGORIA_NARRATIVA(NCat) values ('Lupi mannari');
insert into CATEGORIA_NARRATIVA(NCat) values ('Spirituale');
insert into CATEGORIA_NARRATIVA(NCat) values ('Azione');
insert into CATEGORIA_NARRATIVA(NCat) values ('Mistero');
insert into CATEGORIA_NARRATIVA(NCat) values ('Storie brevi');
insert into CATEGORIA_NARRATIVA(NCat) values ('Casuale');
insert into CATEGORIA_NARRATIVA(NCat) values ('Narrativa generale');
insert into CATEGORIA_NARRATIVA(NCat) values ('Storie amore');
insert into CATEGORIA_NARRATIVA(NCat) values ('Classici');
insert into CATEGORIA_NARRATIVA(NCat) values ('Narrativa storica');
insert into CATEGORIA_NARRATIVA(NCat) values ('Teen Fiction');
insert into CATEGORIA_NARRATIVA(NCat) values ('Fanfiction');
insert into CATEGORIA_NARRATIVA(NCat) values ('Paranormale');
insert into CATEGORIA_NARRATIVA(NCat) values ('Thriller');
insert into CATEGORIA_NARRATIVA(NCat) values ('Fantascienza');
insert into CATEGORIA_NARRATIVA(NCat) values ('Poesia');
insert into CATEGORIA_NARRATIVA(NCat) values ('Umorismo');
insert into CATEGORIA_NARRATIVA(NCat) values ('Fantasy');
insert into CATEGORIA_NARRATIVA(NCat) values ('Romanzi rosa');
insert into CATEGORIA_NARRATIVA(NCat) values ('Vampiri');
insert into CATEGORIA_NARRATIVA(NCat) values ('Horror');
insert into CATEGORIA_NARRATIVA(NCat) values ('Saggistica');
insert into CATEGORIA_NARRATIVA(NCat) values ('Giallo');
insert into CATEGORIA_NARRATIVA(NCat) values ('Autobiografia');


insert into TAG(NTag) values ('tartarughe');
insert into TAG(NTag) values ('tartaruga');
insert into TAG(NTag) values ('robot');
insert into TAG(NTag) values ('robots');
insert into TAG(NTag) values ('fantascienza');
insert into TAG(NTag) values ('viaggio');
insert into TAG(NTag) values ('città');
insert into TAG(NTag) values ('inseguimento');
insert into TAG(NTag) values ('nemici');
insert into TAG(NTag) values ('passato');
insert into TAG(NTag) values ('viaggi nel tempo');
insert into TAG(NTag) values ('mimi');
insert into TAG(NTag) values ('mimo');
insert into TAG(NTag) values ('danza');
insert into TAG(NTag) values ('danzare');
insert into TAG(NTag) values ('pianeta');
insert into TAG(NTag) values ('ceneri');
insert into TAG(NTag) values ('apocalisse');
insert into TAG(NTag) values ('noi');
insert into TAG(NTag) values ('loro');
insert into TAG(NTag) values ('attualità');


insert into CAPITOLO(CodId, IdCap) values (1, 1);     
insert into CAPITOLO(CodId, IdCap) values (1, 2);
insert into CAPITOLO(CodId, IdCap) values (1, 3);
insert into CAPITOLO(CodId, IdCap) values (1, 4);
insert into CAPITOLO(CodId, IdCap) values (2, 5);
insert into CAPITOLO(CodId, IdCap) values (2, 6);
insert into CAPITOLO(CodId, IdCap) values (2, 7);
insert into CAPITOLO(CodId, IdCap) values (2, 8);
insert into CAPITOLO(CodId, IdCap) values (3, 9);
insert into CAPITOLO(CodId, IdCap) values (4, 10);
insert into CAPITOLO(CodId, IdCap) values (4, 11);
insert into CAPITOLO(CodId, IdCap) values (4, 12);
insert into CAPITOLO(CodId, IdCap) values (4, 13);
insert into CAPITOLO(CodId, IdCap) values (5, 14);
insert into CAPITOLO(CodId, IdCap) values (6, 15);


insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (1, 1, 1, 'In un futuro post-apocalittico, tre robot, di cui uno ultimo membro dalla famiglia di console XBOT e un discendente di una nobile casata di baby monitor, visitano le rovine di una città umana seguendo una guida turistica. ');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (1, 2, 2, ' Durante la visita al gruppo si unisce un gatto randagio che i tre mantengono per paura che se smettessero di accarezzarlo il gatto potrebbe esplodere. L"ultima tappa della visita è una testata nucleare inesplosa in cui si scopre che l"umanità sembrerebbe essere giunta all"estinzione per l"inquinamento dell"ecosistema, ma in realtà il vero errore fu modificare geneticamente i gatti in modo da fornirli di pollice opponibile.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (1, 3, 3, 'Una volta divenuti quindi capaci di aprirsi da soli le scatolette di tonno, i gatti hanno sterminato l"umanità. Di fronte all"osservazione di uno dei due robot per cui si sarebbe trattato di un"azione davvero spietata, il gatto risponde che non dovevano aspettarsi niente di meno da dei gatti. La puntata si chiude con l"apparizione di numerosi altri gatti randagi nel silo della bomba desiderosi di essere accarezzati.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (2, 4, 1, 'Un gruppo di tre persone, un uomo e due donne, partecipa a combattimenti clandestini in cui bestie addestrate sono messe in collegamento mentale con il pilota e si scontrano in un"arena. Un ricco allibratore propone un"ingente somma al gruppo per perdere un incontro truccato, ma il gruppo rifiuta.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (2, 5, 2, 'Durante il match Sonnie ha la meglio contro l"avversario nonostante uno stratagemma ai limiti del regolamento, e ne decapita la bestia da combattimento. In seguito all"incontro, la bella assistente dell"allibratore seduce la "pilota" del mostro con la scusa dell"ammirazione, ma il tutto si rivela un doppio gioco per ucciderla.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (2, 6, 3, 'Con la pilota in fin di vita con il cranio spaccato a terra, si scopre che in realtà la mente della pilota è stata trasferita nel mostro e la puntata si conclude con il mostro stesso che uccide allibratore e assistente.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (3, 7, 1, 'Una giovane ragazza si risveglia in una camera d"albergo con dei flashback relativamente ad aver assistito a un omicidio per colpa di un uomo con i baffi e gli occhiali da sole. Guardando fuori dalla finestra si accorge che nell"edificio di fronte l"uomo del flashback la sta fissando. ');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (3, 8, 2, 'Inizia così una fuga disperata prima con un taxi poi attraverso un night club con l"uomo misterioso alle calcagna, e alla fine la ragazza entra in un condominio tallonata dall"uomo che le chiede di fermarsi per parlare.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (3, 9, 3, 'Dopo una breve colluttazione la ragazza uccide il presunto assassino con una sequenza uguale a quella dei flashback e stavolta è l"uomo a risvegliarsi nella stessa camera dell"inizio della puntata.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (4, 10, 1, 'Un archeologo e un mercenario si fanno strada in una tomba antica, fino a che non si imbattono in un mostro dalla forma umanoide che divora l"assistente dell"archeologo. Il mostro viene rivelato come essere il conte Dracula e apostrofa la squadra parlando in romeno.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (4, 11, 2, 'L"archeologo e il mercenario riescono a fuggire in una camera dove si ricongiungono ad altri due mercenari membri della spedizione, sempre tallonati dal mostro in questione. ');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (4, 12, 3, 'Per permettere la fuga viene tesa una trappola usando del C4 mentre la squadra fugge attraverso un passaggio segreto dietro al trono presente nella stanza. Il mostro viene ucciso dall"esplosione ma la squadra si ritrova in una segreta popolata dai suoi simili.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (5, 13, 1, 'Chicago. Il chirurgo Richard Kimble torna a casa una sera e trova la moglie Helen con il cranio fracassato, assassinata da un uomo con un braccio artificiale: sebbene provi a fermare l"aggressore, questi scappa. Non trovando segni di effrazione ed essendo Kimble l"unico erede della ricca moglie, il dottore viene dichiarato colpevole del delitto e condannato a morte.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (5, 14, 2, '..............................................................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (5, 15, 3, '...............................................................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (6, 16, 1, '........................................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (6, 17, 2, 'Durante il trasporto al penitenziario gli altri detenuti fanno sbandare il furgone cellulare per cercare di liberarsi, e il mezzo finisce su dei binari, venendo investito da un treno in corsa. Salvatosi dall"incidente, Kimble scappa. Il Marshal Samuel Gerard assume la direzione delle indagini, e con la sua squadra dà il via alle operazioni di ricerca per trovare Kimble.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (6, 18, 3, 'Questi nel frattempo si reca in un ospedale per cambiare aspetto e guarire le ferite che ha riportato nell"incidente. Mentre esce dall"ospedale viene riconosciuto dal poliziotto che egli stesso aveva salvato dall"incidente ed è costretto a scappare usando un"ambulanza.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (7, 19, 1, ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (7, 20, 2, ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (7, 21, 3, 'Sfuggito alla cattura organizzata da Gerard, il chirurgo fa ritorno a Chicago per cercare il vero assassino e farsi dare dei soldi dall"amico e collega Charles Nichols. ');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (8, 22, 1, '................................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (8, 23, 2, '...................................................................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (8, 24, 3, 'Al Cook County Hospital Kimble effettua una ricerca per trovare tutti i pazienti che hanno subito una modifica alla protesi del braccio destro dopo la data dell"omicidio della moglie, in quanto il braccio artificiale dell"assassino era stato danneggiato.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (9, 25, 1, 'Hill Valley, California, 25 ottobre 1985. Marty McFly è un diciassettenne studente di liceo, poco disciplinato e spesso ritardatario ma coraggioso, gentile e di buon cuore, fidanzato con Jennifer Parker, sua coetanea e compagna di scuola. Marty sogna di diventare una rockstar, e infatti suona la chitarra in una rock band, pur senza molta fortuna: il gruppo viene infatti bocciato al provino per suonare al ballo della scuola, perché "troppo rumorosi".');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (9, 26, 2, '.................................................................................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (9, 27, 3, 'Il futuro di Marty è salvo, così il ragazzo può raggiungere Doc nell"ora e nel luogo convenuto dove sta per cadere il fulmine, non prima di avergli consegnato una lettera dove gli svela che nel 1985 morirà per mano terroristica.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (10, 28, 1, 'The Joker.....................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (10, 29, 2, 'Nella Gotham City del 1981, Arthur Fleck è un aspirante cabarettista il cui scarso successo costringe di giorno a lavorare come pagliaccio.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (10, 30, 3, '...................................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (11, 31, 1, 'Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragraf');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (11, 32, 2, 'Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragra');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (11, 33, 3, 'Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragr');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (12, 34, 1, 'Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, parag');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (12, 35, 2, 'Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, para');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (12, 36, 3, 'Alienato ed emarginato dalla società, nel tentativo di ribellarsi a questa sua esistenza finisce per dare il via a una serie di eventi che lo trasformeranno in una delle peggiori menti criminali che la storia di Gotham abbia mai visto.');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (13, 37, 1, 'Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafoParagrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (13, 38, 2, 'Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (13, 39, 3, 'Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, paragrafo, Paragrafo, paragrafo, par');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (14, 40, 1, 'cxjkbg-j<cjxbvcjxbgzckzlcxgb,-zcbgn-,<zbg-,zcbjg-zjb-lzbg-jgxmf-,xg....................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (14, 41, 2, 'paragrafo 2..............................................dabfkdbfkdbfkldsfksdvflhsd');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (14, 42, 3, 'paragrafo 3 dfbdakfbdafndafjbdakfbdk............................................................');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (15, 43, 1, 'I paragrafo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (15, 44, 2, 'II paragrafo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (15, 45, 3, 'III paragrafo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');


insert into INTERAZIONE(UName, CodId, Azione) values('dario_vario', 4, 'S');
insert into INTERAZIONE(UName, CodId, Azione) values('dario_vario', 2, 'S');
insert into INTERAZIONE(UName, CodId, Azione) values('alberto_umberto', 6, 'S');
insert into INTERAZIONE(UName, CodId, Azione) values('alberto_umberto', 3, 'S');
insert into INTERAZIONE(UName, CodId, Azione) values('tiziano_lariano', 5, 'S');
insert into INTERAZIONE(UName, CodId, Azione) values('silvio_pervio', 1, 'S');
insert into INTERAZIONE(UName, CodId, Azione) values('enrico_bolscevico', 6, 'L');
insert into INTERAZIONE(UName, CodId, Azione) values('enrico_bolscevico', 4, 'L');
insert into INTERAZIONE(UName, CodId, Azione) values('bruno_digiuno', 1, 'L');
insert into INTERAZIONE(UName, CodId, Azione) values('andrea_crea', 3, 'L');
insert into INTERAZIONE(UName, CodId, Azione) values('andrea_crea', 2, 'L');
insert into INTERAZIONE(UName, CodId, Azione) values('dario_vario', 5, 'L');
insert into INTERAZIONE(UName, CodId, Azione) values('dario_vario', 6, 'L');


insert into CORRELAZIONE(UName, NCat) values('dario_vario', 'Saggistica');
insert into CORRELAZIONE(UName, NCat) values('dario_vario', 'Autobiografia');
insert into CORRELAZIONE(UName, NCat) values('alberto_umberto', 'Thriller');
insert into CORRELAZIONE(UName, NCat) values('alberto_umberto', 'Narrativa storica');
insert into CORRELAZIONE(UName, NCat) values('tiziano_lariano', 'Azione');
insert into CORRELAZIONE(UName, NCat) values('silvio_pervio', 'Fantascienza');


insert into APPARTIENE_A(CodId, NCat) values(1, 'Fantascienza');
insert into APPARTIENE_A(CodId, NCat) values(2, 'Saggistica');
insert into APPARTIENE_A(CodId, NCat) values(3, 'Narrativa storica');
insert into APPARTIENE_A(CodId, NCat) values(4, 'Autobiografia');
insert into APPARTIENE_A(CodId, NCat) values(5, 'Azione');
insert into APPARTIENE_A(CodId, NCat) values(6, 'Thriller');


insert into VOTAZIONE(UName, CodId) values('dario_vario', 1);
insert into VOTAZIONE(UName, CodId) values('dario_vario', 3);
insert into VOTAZIONE(UName, CodId) values('enrico_bolscevico', 1);
insert into VOTAZIONE(UName, CodId) values('enrico_bolscevico', 4);
insert into VOTAZIONE(UName, CodId) values('bruno_digiuno', 1);
insert into VOTAZIONE(UName, CodId) values('bruno_digiuno', 3);
insert into VOTAZIONE(UName, CodId) values('bruno_digiuno', 4);
insert into VOTAZIONE(UName, CodId) values('bruno_digiuno', 5);
insert into VOTAZIONE(UName, CodId) values('andrea_crea', 1);
insert into VOTAZIONE(UName, CodId) values('andrea_crea', 4);
insert into VOTAZIONE(UName, CodId) values('alessio_byalassio', 1);
insert into VOTAZIONE(UName, CodId) values('alessio_byalassio', 4);
insert into VOTAZIONE(UName, CodId) values('alessio_byalassio', 5);
insert into VOTAZIONE(UName, CodId) values('silvio_pervio', 2);
insert into VOTAZIONE(UName, CodId) values('silvio_pervio', 5);
insert into VOTAZIONE(UName, CodId) values('tiziano_lariano', 1);
insert into VOTAZIONE(UName, CodId) values('tiziano_lariano', 4);


insert into COMMENTO(UName, IdPar, Testo) values('dario_vario', 1, 'molto bello e profondo');
insert into COMMENTO(UName, IdPar, Testo) values('dario_vario', 2, 'mi ha coinvolto molto');
insert into COMMENTO(UName, IdPar, Testo) values('tiziano_lariano', 3, 'appassionante');
insert into COMMENTO(UName, IdPar, Testo) values('andrea_crea', 7, 'avrei voluto un finale diverso, ma comunque molto bello' );
insert into COMMENTO(UName, IdPar, Testo) values('bruno_digiuno', 3, 'molto bello' );
insert into COMMENTO(UName, IdPar, Testo) values('alessio_byalassio', 12, 'intrigante' );
insert into COMMENTO(UName, IdPar, Testo) values('andrea_crea', 2, 'inaspettato! bello' );
insert into COMMENTO(UName, IdPar, Testo) values('enrico_bolscevico', 21, 'non mi è piaciuto' );
insert into COMMENTO(UName, IdPar, Testo) values('tiziano_lariano', 15, 'appassionante' );
insert into COMMENTO(UName, IdPar, Testo) values('andrea_crea', 19, 'avrei voluto un finale diverso, ma comunque molto bello' );
insert into COMMENTO(UName, IdPar, Testo) values('bruno_digiuno', 30, 'molto bello' );
insert into COMMENTO(UName, IdPar, Testo) values('alessio_byalassio', 28, 'intrigante' );
insert into COMMENTO(UName, IdPar, Testo) values('andrea_crea', 20, 'inaspettato! bello' );
insert into COMMENTO(UName, IdPar, Testo) values('enrico_bolscevico', 39, 'non mi è piaciuto' );


insert into POSSIEDE(NTag, CodId) values('tartarughe', 1);
insert into POSSIEDE(NTag, CodId) values('tartaruga', 1);
insert into POSSIEDE(NTag, CodId) values('robot', 1);
insert into POSSIEDE(NTag, CodId) values('robots',1);
insert into POSSIEDE(NTag, CodId) values('fantascienza', 1);
insert into POSSIEDE(NTag, CodId) values('fantascienza', 3);
insert into POSSIEDE(NTag, CodId) values('viaggio', 2);
insert into POSSIEDE(NTag, CodId) values('città', 2);
insert into POSSIEDE(NTag, CodId) values('inseguimento', 2);
insert into POSSIEDE(NTag, CodId) values('nemici', 3);
insert into POSSIEDE(NTag, CodId) values('passato', 3);
insert into POSSIEDE(NTag, CodId) values('viaggi nel tempo', 3);
insert into POSSIEDE(NTag, CodId) values('mimi', 4);
insert into POSSIEDE(NTag, CodId) values('mimo', 4);
insert into POSSIEDE(NTag, CodId) values('danza', 4);
insert into POSSIEDE(NTag, CodId) values('danzare', 4);
insert into POSSIEDE(NTag, CodId) values('pianeta', 5);
insert into POSSIEDE(NTag, CodId) values('ceneri', 5);
insert into POSSIEDE(NTag, CodId) values('apocalisse', 5);
insert into POSSIEDE(NTag, CodId) values('noi', 6);
insert into POSSIEDE(NTag, CodId) values('loro', 6);
insert into POSSIEDE(NTag, CodId) values('attualità', 6);


insert into SEGUIRE(Segue, Seguace) values('enrico_bolscevico', 'bruno_digiuno');
insert into SEGUIRE(Segue, Seguace) values('andrea_crea', 'dario_vario');
insert into SEGUIRE(Segue, Seguace) values('silvio_pervio', 'alberto_umberto');
insert into SEGUIRE(Segue, Seguace) values('dario_vario', 'alessio_byalassio');
insert into SEGUIRE(Segue, Seguace) values('tiziano_lariano', 'silvio_pervio');
insert into SEGUIRE(Segue, Seguace) values('bruno_digiuno', 'andrea_crea');
insert into SEGUIRE(Segue, Seguace) values('alessio_byalassio', 'bruno_digiuno');
insert into SEGUIRE(Segue, Seguace) values('alberto_umberto', 'enrico_bolscevico');
insert into SEGUIRE(Segue, Seguace) values('alberto_umberto', 'dario_vario');
insert into SEGUIRE(Segue, Seguace) values('dario_vario', 'bruno_digiuno');
insert into SEGUIRE(Segue, Seguace) values('dario_vario', 'andrea_crea');


insert into CONSIGLIO(consiglia, consigliato) values (1, 3);
insert into CONSIGLIO(consiglia, consigliato) values (4, 3);
insert into CONSIGLIO(consiglia, consigliato) values (6, 5);
insert into CONSIGLIO(consiglia, consigliato) values (4, 1);
insert into CONSIGLIO(consiglia, consigliato) values (1, 4);
insert into CONSIGLIO(consiglia, consigliato) values (3, 2);
insert into CONSIGLIO(consiglia, consigliato) values (6, 1);
insert into CONSIGLIO(consiglia, consigliato) values (1, 2);
insert into CONSIGLIO(consiglia, consigliato) values (6, 3);
insert into CONSIGLIO(consiglia, consigliato) values (5, 3);
insert into CONSIGLIO(consiglia, consigliato) values (2, 3);
insert into CONSIGLIO(consiglia, consigliato) values (2, 6);
insert into CONSIGLIO(consiglia, consigliato) values (4, 5);
insert into CONSIGLIO(consiglia, consigliato) values (3, 5);
insert into CONSIGLIO(consiglia, consigliato) values (6, 4);
insert into CONSIGLIO(consiglia, consigliato) values (1, 5);
insert into CONSIGLIO(consiglia, consigliato) values (5, 1);