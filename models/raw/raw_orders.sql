 {{
    config(
        materialized='table'
    )
 }}
SELECT * FROM RAW_DB.GLOBALMART.ORDERS
