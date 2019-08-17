facebook = load '/stockMarketDataSet/facebook1.csv' using PigStorage(',') as (stock:chararray , dates:chararray , open:float , high:float , low:float , close:float ,adj_close:float , volume:bigdecimal);
changes = FOREACH facebook GENERATE dates ,open, close, (((close-open)/open)*100) as change ;
dump changes;

