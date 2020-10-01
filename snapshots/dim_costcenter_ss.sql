{% snapshot dim_costcenter_ss %}

    {{
    config(
        unique_key='s_key',
        strategy='timestamp',
        target_schema='array_rep_dbt',
        updated_at='updated_at',
    )
    }}

select
    'KOKRS' || '-' || 'KOSTL' || '-' || 'DATETO' as s_key,
    *
from {{ source('array_rep_dbt', 'dim_costcenter') }}

{% endsnapshot %}
