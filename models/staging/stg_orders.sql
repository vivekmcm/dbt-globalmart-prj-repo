 Select 
--from orders
 o.orderid  
,o.orderdate  
,o.shipdate  
,o.shipmode  
,o.ordersellingprice - ordercostprice  as orderprofit 
--from customers
,c.customerid
,c.customername  
,c.segment 
,c.country  
--from products
,p.category 
,p.productid 
,p.productname  
,p.subcategory  
 from 
 {{ ref('raw_orders') }} o  left outer join  {{ ref('raw_customers') }} c
                                         on o.customerid =c.customerid
                            left outer join  {{ ref('raw_products') }} p
                                         on o.productid =p.productid