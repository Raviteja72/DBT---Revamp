{% set config = {'desired_rating':3.0,'col_name':'Best_Ratings'} %}

select movie_id, rating as {{ config.col_name }}, count(*) as count
from {{ ref('fct_ratings') }}
where rating >= {{ config.desired_rating }}
group by 1,2