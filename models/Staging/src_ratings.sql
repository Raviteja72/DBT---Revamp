with src_ratings as (
    select * from {{ source('Netflix','raw_ratings')}}
)

select * from src_ratings