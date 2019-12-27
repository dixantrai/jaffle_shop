{% macro create_udfs() %}

    create schema if not exists {{target.schema}};

    {{f_array_sort()}}

{% endmacro %}
