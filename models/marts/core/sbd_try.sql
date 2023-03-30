

with customers_request as(
    
select 
    ID as customer_id,
    FIRST_NAME as f_name,
    LAST_NAME as LAST_NAME,
    GENDER,
    AGE,
    ORDER_NUMBER

from sampletest1.customers

)

select * from customers_request

