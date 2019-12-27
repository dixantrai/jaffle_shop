{% macro create_udfs() %}

CREATE SCHEMA IF NOT EXISTS {{target.schema}};

CREATE OR REPLACE FUNCTION {{target.schema}}.f_future_date()
RETURNS TIMESTAMP
IMMUTABLE AS $$
SELECT '2100-01-01'::TIMESTAMP;
$$ LANGUAGE sql

{% endmacro %}