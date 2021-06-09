create table UTENTE (
	UName varchar(20) primary key,
	Email varchar(40) not null unique,
	DataIscr date default null,
	Premium boolean default false,
	Lettore boolean default false,
	Scrittore boolean default false,
  	check (Lettore != false or Scrittore != false)
);

create table LIBRO(
	CodId bigserial primary key,
	Titolo varchar(40) not null,
	Collana varchar(15) default null,
	DataIns date default null,
	Voto int default 0,
	Completamento boolean default false
);

create table CAPITOLO(
	CodId bigserial references LIBRO(CodId)
    	on update cascade
    	on delete cascade,
    IdCap bigserial primary key,
	NCap varchar(40) not null default 'CAPITOLO XXX'
);

create table PARAGRAFO(
	IdCap bigserial references CAPITOLO(IdCap) 
    	on update cascade
    	on delete cascade,
    IdPar bigserial primary key,
	NOrd int not null,
	Testo text not null unique
);

create table CATEGORIA_NARRATIVA(
	NCat varchar(20) primary key
);

create table TAG(
	NTag varchar(20) primary key
);

create table INTERAZIONE(
	UName varchar(20) references UTENTE(UName) 
    	on update cascade
    	on delete cascade,
	CodId bigserial references LIBRO(CodId) 
    	on update cascade
    	on delete cascade,
    Azione char(1) not null,
    check (Azione = 'S' or Azione = 'L'),
	primary key(UName, CodId)
);

create table VOTAZIONE(
	UName varchar(20) references UTENTE(UName) 
    	on update cascade
    	on delete cascade,
	CodId bigserial references LIBRO(CodId) 
    	on update cascade
    	on delete cascade,
    primary key(UName, CodId)	
);

create table COMMENTO(
	UName varchar(20) references UTENTE(UName) 
  		on update cascade
  		on delete cascade,
	IdPar bigserial references PARAGRAFO(IdPar) 
    	on update cascade
    	on delete cascade,
    Testo text default null,
	primary key(UName, IdPar)
);

create table CORRELAZIONE(
	UName varchar(20) references UTENTE(UName) 
    	on update cascade
    	on delete cascade,
	NCat varchar(20) references CATEGORIA_NARRATIVA(NCat)
    	on update no action
    	on delete no action,
	primary key(UName, NCat)
);

create table APPARTIENE_A(
	CodId bigserial references LIBRO(CodId) 
    	on update cascade
    	on delete cascade,
    NCat varchar(20) references CATEGORIA_NARRATIVA(NCat)
    	on update no action
    	on delete no action,
	primary key(CodId, NCat)
);

create table POSSIEDE(
	NTag varchar(20) references TAG(NTag) 
    	on update no action
    	on delete no action,
	CodId bigserial references LIBRO(CodId) 
  		on update cascade
  		on delete cascade,
	primary key(NTag, CodId)
);

create table SEGUIRE(
	Segue varchar(20) references UTENTE(UName) 
    	on update cascade
    	on delete cascade,
	Seguace varchar(20) references UTENTE(UName) 
		on update cascade
		on delete cascade,
	primary key(Segue, Seguace)
);

create table CONSIGLIO(
	Consiglia bigserial references LIBRO(CodId) 
  		on update cascade
  		on delete cascade,
	Consigliato bigserial references LIBRO(CodId) 
    	on update cascade
    	on delete cascade,
	primary key(Consiglia, Consigliato)
);