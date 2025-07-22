with src_ratings as (
    select * from {{ ref('src_ratings') }}
)


select 
    moviesid,
    avg(rating) as ratings
from src_ratings
group by 1
having ratings < 0.0
