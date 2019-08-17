apple = load '/stockMarketDataSet/apple1.csv' using PigStorage (',') as (stock:chararray,dates:chararray,open:float,high:float,low:float,close:float,adj_close:float,volume:bigdecimal);
grp_apple = group apple all;
avg_apple = foreach grp_apple generate AVG(apple.adj_close);
dump avg_apple;

