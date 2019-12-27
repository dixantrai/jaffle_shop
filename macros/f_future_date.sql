{% macro create_udfs() %}

CREATE OR REPLACE FUNCTION {{target.schema}}.array_sort(a array)
  RETURNS array
  LANGUAGE JAVASCRIPT
AS
$$
  return A.sort();
$$;

{% endmacro %}