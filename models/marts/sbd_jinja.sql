{% set column_names = source('DBT_TRY1', schema= 'DBTLEARN').column_names %}

{% set columns_sql = [] %}
{% for column_name in column_names %}
    {% set columns_sql = ("\"" + column_name + "\"" + "varchar") %}
    {% set columns_sql = columns_sql + [columns_sql] %}
{% endfor %}

{{generate(
    target_name= 'DBTLEARN.MPM_EXTRACT3_New',
    schema= DBTLEARN(),
    relation_name= 'MPM_EXTRACT3_New',
    create_policy= 'create_or_replace',
    columns= columns_sql
)}}
 