{{
    config (
        materialized
         = 'ephemeral'
    )
}}

with src_movies as (
    select * from {{ ref('dim_movies') }}
),

src_tags as (
    select * from {{ ref('dim_genome_tags') }}
),

src_genome_scores as (
    select * from {{ ref('fct_genome_scores') }}
)

select
    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_name,
    s.relevance_scores
from
    src_movies m
    left join src_genome_scores s on s.movie_id = m.movie_id
    left join src_tags t on t.tag_id = s.tag_id