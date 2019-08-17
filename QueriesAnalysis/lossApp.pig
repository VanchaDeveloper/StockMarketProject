apple = load '/stockMarketDataSet/apple1.csv' using PigStorage(',') as (stock:chararray , dates:chararray , open:float , high:float , low:float , close:float ,adj_close:float , volume:bigdecimal);
Loss_Per = FOREACH apple GENERATE dates , open , close , ((((close-open)/open)*100)>0?'G':'L') as gain_loss , ((close-open)<0?(open-close):0) as loss;
dump Loss_Per;

