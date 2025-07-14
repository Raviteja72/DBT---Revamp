{{
    config(
        materialized = 'table'
    )
}}

with fct_ratings as (
   select * from {{ ref('fct_ratings') }}
), 

seed_dates as (
    select * from {{ ref('seed_movie_release_dates') }}
)

select 
    f.*,sd.release_date,
    case    
        when sd.release_date is not null then 'Known'
        else 'Unknown'
        end as Release_info_available
from
    fct_ratings f
    left join seed_dates sd on f.movie_id = sd.movie_id
    
