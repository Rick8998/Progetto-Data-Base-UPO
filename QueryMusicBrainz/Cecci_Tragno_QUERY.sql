/*Query 1*/
/*Contare il numero di lingue in cui le release contenute nel database sono scritte (il risultato deve
contenere soltanto il numero delle lingue, rinominato “Numero_Lingue”)*/
select count (distinct name) as Numero_Lingue
from language

/*Query 2*/
/*Elencare gli artisti che hanno cantato canzoni in italiano (il risultato deve contenere il nome dell’artista
e il nome della lingua)*/
select distinct(artist_credit.name) as Nome_Artista, language.name as Nome_Lingua
from work join language on(work.language = language.id) join release on(language.id = release.language) join artist_credit on (release.artist_credit = artist_credit.id) 
where work.language = '120'
order by Nome_Artista

/*Query 3*/
/*Elencare le release di cui non si conosce la lingua (il risultato deve contenere soltanto il nome della
release)*/
select release.name as Nome_Release
from language full join release on(language.id = release.language)
where language.name is null

/*Query 4*/
/*Elencare gli artisti il cui nome contiene tutte le vocali (il risultato deve contenere soltanto il nome
dell’artista)*/
select name as Artist_Name
from artist_credit
where name like '%a%e%i%o%u%'

/*Query 5*/
/*Elencare tutti gli pseudonimi di Eminem con il loro tipo, se disponibile (il risultato deve contenere lo
pseudonimo dell'artista, il nome dell’artista (cioè Eminem) e il tipo di pseudonimo (se disponibile))*/
select artist.name as Artist_name, artist_alias.name Artist_alias, artist_alias.type artist_alias_type
from artist_alias join artist on (artist_alias.artist = artist.id)
where artist.name = 'Eminem'

/*Query 6*/
/*Trovare gli artisti con meno di venti tracce (il risultato deve contenere il nome dell’artista ed il numero
di tracce, ordinato in ordine crescente sul numero di tracce).*/
select artist_credit.name, count(distinct recording.id) as N_canzoni
from artist_credit join recording on(artist_credit.id = recording.artist_credit)
group by artist_credit.name 
having count(distinct recording.id)<20
order by N_canzoni

/*Query 7.1*/
/*Elencare le lingue cui non corrisponde nessuna release (il risultato deve contenere il nome della lingua,
il numero di release in quella lingua, cioè 0, e essere ordinato per lingua)*/
select language.name, count(release.id) N_release
from language full join release on(language.id = release.language)
group by language.name
having count (release.id) = 0
order by language.name

/*Query 7.2*/
select language.name, coalesce(release.id, 0) n_release
from language full join release on(language.id = release.language)
where language.name NOT IN 
	(select language.name
	 from language join release on(language.id = release.language)) 
order by language.name

/*Query 8.1*/
/*Ricavare la seconda registrazione per lunghezza di un artista uomo (il risultato deve comprendere
l'artista accreditato, il nome della registrazione e la sua lunghezza)*/
select tab3.name as artist, recording.name as recording, recording.length as length
from artist tab3
join artist_credit_name on artist_credit_name.artist = tab3.id
join recording on recording.artist_credit = artist_credit_name.artist_credit
join gender on tab3.gender = gender.id
where gender.name like 'Male'and recording.length in (select max(length)
													  from artist tab2
													  join artist_credit_name on artist_credit_name.artist = tab2.id
													  join recording on recording.artist_credit = artist_credit_name.artist_credit
													  join gender on tab2.gender = gender.id
													  where tab3.id = tab2.id and gender.name='Male'and recording.length < (select max(recording.length)
																														  from artist tab1
																														  join artist_credit_name on artist_credit_name.artist = tab1.id
																														  join recording on recording.artist_credit = artist_credit_name.artist_credit
																														  join gender on tab1.gender = gender.id
																														  where tab1.id = tab2.id and gender.name='Male'))
order by tab3.name asc


/*Query 9*/
/*Per ogni stato esistente riportare la lunghezza totale delle registrazioni di artisti di quello stato (il
risultato deve comprendere il nome dello stato e la lunghezza totale in minuti delle registrazioni (0 se lo
stato non ha registrazioni).*/
select area.name, sum (coalesce (recording.length, 0)) as tot_recordings
from recording join artist_credit on (recording.artist_credit = artist_credit.id) 
join artist_credit_name on (artist_credit.id = artist_credit_name.artist_credit)
join artist on (artist_credit_name.artist = artist.id)
join area on (artist.area = area.id)
group by area.name
order by area.name

/*Query 10.1*/
/*Considerando il numero medio di tracce tra le release pubblicate su CD, ricavare gli artisti che hanno
pubblicato esclusivamente release con più tracce della media (il risultato deve contenere il nome
dell’artista e il numero di release ed essere ordinato per numero di release discendente)*/
select distinct artist.name as artist_name, count(release.id) as N_Release
from artist join artist_credit_name on artist.id=artist_credit_name.artist
join artist_credit on artist_credit_name.artist_credit=artist_credit.id
join track on artist_credit.id=track.artist_credit
join medium on track.medium=medium.id
join medium_format on medium.format=medium_format.id
join release on medium.release=release.id
where medium_format.name like 'CD' and 
	  medium.track_count > (select avg(medium.track_count)from medium)
group by artist.name
order by N_Release desc

/*Query 10.2*/
select distinct(artist.name) as artist_name, count(release.id) as N_release
from artist join artist_credit_name on artist.id=artist_credit_name.artist
join artist_credit on artist_credit_name.artist_credit=artist_credit.id
join track on artist_credit.id=track.artist_credit
join medium on track.medium=medium.id
join medium_format on medium.format=medium_format.id
join release on medium.release=release.id
where medium_format.name like 'CD' and medium.track_count
not in
	(select medium.track_count
	 from artist join artist_credit_name on artist.id=artist_credit_name.artist
	 join artist_credit on artist_credit_name.artist_credit=artist_credit.id
	 join track on artist_credit.id=track.artist_credit
	 join medium on track.medium=medium.id
	 join medium_format on medium.format=medium_format.id
	 join release on medium.release=release.id
	 where medium.track_count in (select medium.track_count
								  from medium
								  where medium.track_count <= (select avg(medium.track_count)from medium)))
group by artist.name
order by count(release.id) desc

/*Query 11*/
/*Ricavare il primo artista morto dopo Freddie Mercury (il risultato deve contenere il nome dell’artista, la
sua data di nascita e la sua data di morte). In questa query non è possibile moltiplicare i valori di anno 
mese ed anno per altri numeri.*/
select name, begin_date_day, begin_date_month, begin_date_year, end_date_day, end_date_month, end_date_year
from artist
where type=1 and end_date_year in (select min(end_date_year) as end_date_year
                        		   from artist
                        		   where type=1 and end_date_year > (select end_date_year
                                               						 from artist
                                               						 where name='Magic Sam' and type=1)
								   or(end_date_year = (select end_date_year 
											 		   from artist
											 		   where name = 'Magic Sam')
									  and end_date_month > (select end_date_month 
												 			from artist
												 			where name = 'Magic Sam'))
								   or (end_date_year = (select end_date_year 
														from artist
														where name = 'Magic Sam')
									  and end_date_month = (select end_date_month 
															from artist
															where name = 'Magic Sam')
									  and end_date_day > (select end_date_day 
														  from artist
														  where name = 'Magic Sam')))

/*Query 12*/
/*Elencare le coppie di etichette discografiche che non hanno mai fatto uscire una release in comune ma
hanno fatto uscire una release in collaborazione con una medesima terza etichetta (il risultato deve
comprendere i nomi delle coppie di etichette discografiche).*/
select distinct l1.name_label1 as nome_prima_etichetta, l2.name_label2 as nome_seconda_etichetta
from (select label1.label_id as label_id1, label2.label_id as label_id2, label3.label_id as label_id3, label1.name as name_label1, label2.name as name_label2, label3.name as name_label3, label1.release_id as release_label1, label2.release_id as release_label2, label3.release_id as release_label3
      from (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label1
            inner join 
            (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label2
            on (label1.release_id=label2.release_id)
            inner join
            (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label3
            on (label2.release_id=label3.release_id)) l1  
inner join 
      (select label1.label_id as label_id1, label2.label_id as label_id2, label3.label_id as label_id3, label1.name as name_label1, label2.name as name_label2, label3.name as name_label3, label1.release_id as release_label1, label2.release_id as release_label2, label3.release_id as release_label3
      from (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label1
            inner join 
            (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label2
            on (label1.release_id=label2.release_id)
            inner join
            (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label3
            on (label2.release_id=label3.release_id)) l2
on l1.label_id1 = l2.label_id1
inner join
      (select label1.label_id as label_id1, label2.label_id as label_id2, label3.label_id as label_id3, label1.name as name_label1, label2.name as name_label2, label3.name as name_label3, label1.release_id as release_label1, label2.release_id as release_label2, label3.release_id as release_label3
      from (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label1
            inner join 
            (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label2
            on (label1.release_id=label2.release_id)
            inner join
            (select distinct release_label.release as release_id, label.id as label_id, label.name 
            from label
            inner join release_label on (label.id = release_label.label)) as label3
            on (label2.release_id=label3.release_id)) l3
on l2.label_id2 = l3.label_id3
where l1.label_id1 != l2.label_id2 and l1.label_id1 != l3.label_id3 and l2.label_id2 != l3.label_id3 and l1.release_label1 != l2.release_label2 and l1.release_label1 = l3.release_label3 and l2.release_label2 != l3.release_label3
order by nome_prima_etichetta

/*Query 12 versione light*/
select label1.label_name as nome_prima_etichetta, label2.label_name as nome_seconda_etichetta
from (select distinct release_label.release as release_id, label.id as label_id, label.name as label_name
	from label
	inner join release_label on (label.id = release_label.label)) as label1
	inner join 
	(select distinct release_label.release as release_id, label.id as label_id, label.name as label_name
	from label
	inner join release_label on (label.id = release_label.label)) as label2
	on (label1.release_id=label2.release_id)
	inner join
	(select distinct release_label.release as release_id, label.id as label_id, label.name as label_name
	from label
	inner join release_label on (label.id = release_label.label)) as label3
	on (label2.release_id=label3.release_id)  
where label1.label_id != label2.label_id and label1.label_id != label3.label_id and label2.label_id != label3.label_id and label1.release_id != label2.release_id and label1.release_id = label3.release_id and label2.release_id != label3.release_id
order by nome_prima_etichetta

/*Query 13.1*/
/*Trovare il nome e la lunghezza della traccia più lunga appartenente a una release rilasciata in almeno
due paesi (il risultato deve contenere il nome della traccia e la sua lunghezza in secondi) (scrivere due
versioni della query).*/
select distinct name, length
from track
where length in (select MAX(length) as length
				 from track
			     inner join (select medium.id
			                 from medium
			                 inner join (select id
		                                 from release
		                                 inner join release_country on (id=release)
		                                 group by id
		                                 having count(release_country) > 1) as rel_tmp 
			                 on (medium.release = rel_tmp.id)) as medium_tmp 
     			 on (track.medium = medium_tmp.id)                
)

/*Query 13.2*/
select distinct name, length
from track
where length in (select MAX(track.length) as length
				 from track join (select track.name, track.length
								  from track join medium on (track.medium = medium.id)
								  where medium.id not in (select medium.id
								  from medium
								  inner join (select id
											  from release
											  inner join release_country on (id=release)
											  group by id
										      having count(release_country) <= 1) as rel_tmp 
								  on (medium.release = rel_tmp.id)))as tab1 
				 on (track.name = tab1.name))


/*Query 14*/
/*Trovare le release e le tracce il cui nome contiene il nome di un'area (il risultato deve contenere solo il
nome della release o della traccia, rinominato come "Nome").*/
select distinct tab.name as Nome
from (select distinct name
	  from release
	  union
	  select distinct name
	  from track) as tab, area
where tab.name like '%' || area.name || '%'
order by Nome