{{ config(
    schema = 'gas_solana',
    alias = 'tx_fees_2022_q3',
    tags = ['static'],
    partition_by = ['block_date'],
    materialized = 'table',
    file_format = 'delta'
) }}

{{ solana_tx_fees_macro(
    "cast('2022-07-01' as timestamp)",
    "cast('2022-10-01' as timestamp)"
) }}
