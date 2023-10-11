select top 100 * 
from (
select 
	tbven.vdoc,
	COUNT(tbven.idven) as cantidad
from tbven 
group by tbven.vdoc
) sq1 
order by sq1.cantidad desc


select * from tbven where vdoc = '000494'