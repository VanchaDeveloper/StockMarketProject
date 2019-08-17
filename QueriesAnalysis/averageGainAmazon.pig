amazon = load '/stockMarketDataSet/amazon1.csv' using PigStorage (',') as (stock:chararray,dates:chararray,open:float,high:float,low:float,close:float,adj_close:float,volume:bigdecimal);
Gain_Loss_per_day = FOREACH amazon GENERATE dates , (((close-open)/open)*100) as change , ((((close-open)/open)*100)>0?'G':'L') as gain_loss , ((close-open)>0?(close-open):0) as gain ,((close-open)<0?(open-close):0) as loss;
group_gain_loss = group Gain_Loss_per_day all;
avg_gain_loss = foreach group_gain_loss generate AVG(Gain_Loss_per_day.gain) as avggain,AVG(Gain_Loss_per_day.loss) as avgloss;
dump avg_gain_loss;

