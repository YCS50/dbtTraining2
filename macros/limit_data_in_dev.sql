{% macro limit_data_in_dev(column_name) %}      --expecting a datetime field
{% if target.name == 'development' %}
where {{column_name}} >= dateadd('day', -30, current_timestamp)
{% endif %}
{% endmacro %}