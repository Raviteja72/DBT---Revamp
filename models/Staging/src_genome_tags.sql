with src_genome_tags as (
    select * from {{ source('Netflix','raw_genome_tags') }}
)

select * from src_genome_tags