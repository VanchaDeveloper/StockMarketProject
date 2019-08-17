facebook = load '/stockMarketDataSet/facebook1.csv' using PigStorage(',') as (stock:chararray , dates:chararray , open:float , high:float , low:float , close:float ,adj_close:float , volume:bigdecimal);
gain_Per = FOREACH facebook GENERATE dates , open , close , ((((close-open)/open)*100)>0?'G':'L') as gain_loss , ((close-open)>0?(close-open):0) as gain;
dump gain_Per;

