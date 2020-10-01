/* changed on Dinesh */
/* changed on Dinesh - change 2*/

/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below  
*/
/* Added few comments by NiteshRanjan Third Try*/

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
