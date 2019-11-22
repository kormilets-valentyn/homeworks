<H3>Comand</H3>
select concat(g.title, ' include ',count(song), ' songs') from songs inner join albums a on (a.id = songs.album_id) inner join connect c on (c.id_a=a.id) inner join genres g on (g.id=c.id_g)group by g.title;
