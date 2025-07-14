{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

with src_ratings as (
    select * from {{ ref('src_ratings') }}
)

select
    userid as user_id, 
    moviesid as movie_id,
    rating,
    timestamp as rating_timestamp
from src_ratings
where rating is not null

{% if is_incremental() %}
 AND rating_timestamp > (select max(rating_timestamp) from {{ this }})
{% endif %}