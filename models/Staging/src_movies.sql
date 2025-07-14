with src_movies as (
    select * from {{ source('Netflix', 'raw_movies') }}
)
select * from src_movies