 {{
    config(
        materialized='table'
    )
 }}
--SELECT * FROM RAW_DB.GLOBALMART.ORDERS
SELECT * FROM {{ source('src', 'orders') }}