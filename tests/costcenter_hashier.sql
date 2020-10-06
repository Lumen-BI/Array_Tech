-- Confirm if there are hierarchy records for all keys in dim_costcenter
select parent.*
from (
    select KOKRS || '-' || KOSTL as id from dim_costcenter
) as parent
left join (
    select KOKRS || '-' || KOSTL as id from dim_costcenter_hier
) as child on parent.id = child.id
where child.id is not null
  and parent.id is null