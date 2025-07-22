with src_ratings as (
    select distinct userid from {{ ref('src_ratings') }}
),

src_tags as (
    select distinct userid from {{ ref('src_tags') }}
)

select distinct userid from (
    select * from src_ratings 
    union
    select * from src_tags
)