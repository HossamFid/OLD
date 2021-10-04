-- append the hotel diff. 3 tables (2018,2019,2020)
select 
  * 
from 
  dbo.[ '2018$' ] 
union 
select 
  * 
from 
  dbo.[ '2019$' ] 
union 
select 
  * 
from 
  dbo.[ '2020$' ] 
SELECT 
  * INTO #temp_UNION 
FROM 
  (
    select 
      * 
    from 
      dbo.[ '2018$' ] 
    union 
    select 
      * 
    from 
      dbo.[ '2019$' ] 
    union 
    select 
      * 
    from 
      dbo.[ '2020$' ]
  ) a 

select 
  * 
from 
  #temp_UNION
  left join dbo.market_segment$ on dbo.#temp_UNION.market_segment = dbo.market_segment$.market_segment
  left join dbo.meal_cost$ on dbo.meal_cost$.meal = dbo.#temp_UNION.meal
