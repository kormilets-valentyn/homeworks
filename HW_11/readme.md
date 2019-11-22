# SQL Music
select concat(g.title, ' include ',count(song), ' songs') from songs inner join albums a on (a.id = songs.album_id) inner join connect c on (c.id_a=a.id) inner join genres g on (g.id=c.id_g)group by g.title;<br/>
select songs.id, song, name from songs inner join albums a on (a.id = songs.album_id) inner join artists ar on (ar.id=a.artist_id) where song = 'Intro' or song = 'Keep Yourself Alive' or song = 'Liar' or song = 'Lifeline' or song = 'Mayday Mayday' or song = 'Psycho' or song = 'Son and Daughter' order by song;<br/>
select song, count(*) as schet from songs group by song having schet >1;<br/>
select song, title, year, name from songs s inner join albums a on (s.album_id = a.id) inner join artists ar on (ar.id = a.artist_id) where year < 2000 and name = 'Queen' order by year;
