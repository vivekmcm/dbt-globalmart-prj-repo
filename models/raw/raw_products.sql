 {{
    config(
        materialized='table'
    )
 }}
 --SELECT * FROM RAW_DB.GLOBALMART.PRODUCTS
 SELECT * FROM {{ source('src', 'products') }}