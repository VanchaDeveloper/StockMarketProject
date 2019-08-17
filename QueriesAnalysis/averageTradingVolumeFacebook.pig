facebook = load '/stockMarketDataSet/facebook1.csv' using PigStorage (',') as (stock:chararray,dates:chararray,open:float,high:float,low:float,close:float,adj_close:float,volume:bigdecimal);
grp_facebook = group facebook all;
avg_vol_facebook = foreach grp_facebook generate AVG(facebook.volume);
dump avg_vol_facebook;

