amazon = load '/stockMarketDataSet/amazon1.csv' using PigStorage (',') as (stock:chararray,dates:chararray,open:float,high:float,low:float,close:float,adj_close:float,volume:bigdecimal);
grp_amazon = group amazon all;
avg_amazon = foreach grp_amazon generate AVG(amazon.adj_close);
dump avg_amazon;
