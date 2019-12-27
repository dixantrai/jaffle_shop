{% macro create_udfs() %}

CREATE SCHEMA IF NOT EXISTS {{target.schema}};

CREATE OR REPLACE FUNCTION {{target.schema}}.array_sort(a array)
  RETURNS array
  LANGUAGE JAVASCRIPT
AS
$$
  return A.sort();
$$;

{% endmacro %}