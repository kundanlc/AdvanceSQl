select
distinct c.title
from 
TVProgram tv
join
Content c on tv.content_id = c.content_id
where c.kids_content = 'Y'
and to_char(tv.program_date , 'mm/yyyy') = '06/2020'
and c.content_type = 'Movies';