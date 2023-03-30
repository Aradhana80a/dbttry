with SBD_CUSTOMER as(
    
select 
    METRIC,
    PRODUCT,
    CATEGORY,
    SCORECARD,
    BRAND,
    TIME_SCALE,
    TIME_PERIOD,
    TIME_COVERAGE,
    VALUE

from MPM_EXTRACT3_New

)

select * from SBD_CUSTOMER


