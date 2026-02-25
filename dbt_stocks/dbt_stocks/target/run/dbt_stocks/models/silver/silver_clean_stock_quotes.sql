
  create or replace   view STOCKS_MDS.COMMON.silver_clean_stock_quotes
  
  
  
  
  as (
    select
symbol,
current_price,
round(day_high, 2) as day_high,
round(day_low, 2) as day_low,
round(day_open, 2) as day_open,
round(prev_close, 2) as prev_close,
change_amount,
round(change_percent, 4) as change_percent,
market_timestamp,
fetched_at
from STOCKS_MDS.COMMON.bronze_stg_stock_quotes
where current_price is not null
  );

