{% macro create_index(table_name, index_columns) %}
{% do log("This is the source variable that is being resolved in the macro: " ~ source_variable, info=True) %}
    {% do log(table_name, info=True) %}
    CREATE INDEX IF NOT EXISTS {{ table_name.table }}_{{ index_columns|join('_') }}
    ON {{ table_name }} ({{ index_columns|join(',') }});
{% endmacro %}