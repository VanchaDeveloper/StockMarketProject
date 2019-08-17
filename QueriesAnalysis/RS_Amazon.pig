amazon = load '/stockMarketDataSet/amazon1.csv' using PigStorage (',') as (stock:chararray,dates:chararray,open:float,high:float,low:float,close:float,adj_close:float,volume:bigdecimal);
amazon_gain_loss = foreach amazon generate ((close-open)>0?'G':'L') as label, ((close-open)>0?(close-open):0.0) as gain,((close-open)<0?(open-close):0.0) as loss;
grp_gain_loss = group amazon_gain_loss all;
relative_strength = foreach grp_gain_loss generate (AVG(amazon_gain_loss.gain)/AVG(amazon_gain_loss.loss));
dump relative_strength;
