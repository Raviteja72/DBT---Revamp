{% macro celsius(fahreinheit, decimal_places)%}
    ROUND(({{fahrenheit}} - 32.0) * 5/9, {{ decimal_places }})
{% endmacro %}


{% macro imdb_rating(rating) %}
    ({{ rating }} * 2.0)
{% endmacro %}