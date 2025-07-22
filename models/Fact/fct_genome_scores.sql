with src_scores as (
    select * from {{ ref('src_genome_scores') }}
)

select  
    movieid as movie_id,
    tagid as tag_id,
    round(relevance, 4) as relevance_scores
from src_scores
where relevance > 0