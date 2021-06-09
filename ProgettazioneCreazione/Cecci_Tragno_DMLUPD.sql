
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('paolino_paperino', 'paolino@gmail.com', '2019-08-28', 'f', 't', 'f');
insert into UTENTE(uname, email, dataiscr, premium, lettore, scrittore) values ('mario_rossi', 'rossi@gmail.com', '2019-08-28', 't', 't', 't');

insert into LIBRO(CodId, Titolo, Collana, DataIns, Voto, Completamento) values (default, 'Popolo italiano', default, '2019-08-28', default, 'f' );

insert into CAPITOLO(CodId, IdCap, NCap) values (7, 16, 'Capitolo prova');

insert into PARAGRAFO(IdCap, IdPar, NOrd, Testo) values (16, 46, 1, 'BLABLABLAABLALBAALBALBALBALBALABLABLABALABLAB');

insert into INTERAZIONE(UName, CodId, Azione) values('mario_rossi', 7, 'S');

insert into VOTAZIONE(UName, CodId) values('paolino_paperino', 1);

insert into COMMENTO(UName, IdPar, Testo) values('paolino_paperino', 6, 'non mi è piaciuto');

delete from UTENTE 
	where UName = 'paolino_paperino'

delete from LIBRO
	where CodId = 7