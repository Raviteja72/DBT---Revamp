{# For-Loop Demo #}

-- {% set max_number = 10 %}
-- {% for i in range(max_number) %}
--     select {{ i }} as number
--     {% if not loop.last %}
--         union
--     {% endif %}
-- {% endfor %}


{# Even #}
-- {% set even = 'Even ' %}
-- {% for i in range(20) %}
--     {% if i%2 == 0 %}
--         select {{ i }} as {{ even }}
--         {% if not loop.last and i+2 < 20 %}
--             union all
--         {% elif loop.last and i+2 == 20 %}  
--         {% endif %}
--     {% endif %}
-- {% endfor %}

{# Even / Odd #}
-- {% set config = {'even' : 'Even', 'odd':'Odd', 'Max_Count': 20} %}
-- {% for i in range(config.Max_Count) %}
--     {% if i%2 == 0 %}
--         select {{ i }} as {{ config.even }}
--     {% else %}
--         select {{ i }} as {{ config.odd }}
--     {% endif %}
--     {% if not loop.last %}
--         union all 
--     {% endif %}
-- {% endfor %}

