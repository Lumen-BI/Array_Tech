/* changed on Dinesh */

/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below  
*/
/* Added few comments by NiteshRanjan Third Try*/


/* Added few comments by prashanth Test TEST TEST Try*/

/* Added few comments by prashanth Test TEST TEST Try2222222222222222222222*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values Nitesh Changes
*/

-- where id is not null
