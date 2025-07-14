with src_tags as (
    select * from {{ source('Netflix','raw_tags') }}
)

select * from src_tags