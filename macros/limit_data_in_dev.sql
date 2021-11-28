{% macro limit_data_in_dev(column_datetime, dev_days_of_data=3)-%}

{%-if target.name =='dev'-%}

where {{column_datetime}} <= dateadd('day',- {{dev_days_of_data}}, current_timestamp)
{% endif -%}

{%-endmacro%}



