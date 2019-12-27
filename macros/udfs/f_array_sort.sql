{% macro f_array_sort() %}

CREATE OR REPLACE FUNCTION {{target.schema}}.f_array_sort(a array)
  RETURNS array
  LANGUAGE JAVASCRIPT
AS
$$
  return A.sort();
$$;

{% endmacro %}