{%macro cents_to_dollars(column_number,decimal_point=2) -%}
 round(1.0 * {{column_number}}/100,{{decimal_point}})
{%-endmacro%}