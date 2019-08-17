google = load '/stockMarketDataSet/google1.csv' using PigStorage (',') as (stock:chararray,dates:chararray,open:float,high:float,low:float,close:float,adj_close:float,volume:bigdecimal);
grp_google = group google all;
avg_vol_google = foreach grp_google generate AVG(google.volume);
dump avg_vol_google;

