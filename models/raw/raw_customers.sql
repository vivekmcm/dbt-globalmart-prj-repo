 {{
    config(
        materialized='table'
    )
 }}
--SELECT * FROM RAW_DB.GLOBALMART.CUSTOMERS
SELECT * FROM {{ source('src', 'customers') }}