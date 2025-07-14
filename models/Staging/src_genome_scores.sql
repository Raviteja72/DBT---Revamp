with src_genome_scores as (
    select * from {{ source('Netflix','raw_genome_scores') }}
)
select * from src_genome_scores