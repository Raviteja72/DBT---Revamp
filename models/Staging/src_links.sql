with src_links as (
    select * from {{ source('Netflix','raw_links')}}
)

select * from src_links