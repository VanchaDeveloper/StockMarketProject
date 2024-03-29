clear
echo "                             Stock Market analysis"
echo""
echo"" 
echo "                             1. Percentage Change "
echo""
echo "                             2. Gain Per Day"
echo""
echo "                             3. Loss Per Day"
echo""
echo "                             4. Average Gain and Average Loss"
echo""
echo "                             5. Moving Average"
echo""
echo "                             6. Variance of Adjust Close "
echo""
echo "                             7. Standard Deviation of Adjust Close"
echo""
echo "                             8. Relative Strength"
echo""
echo "                             9. Relative Strength Index"
echo""
echo "                             10. Average Trading Volume"
echo""
read select
case $select in
1) pig -x mapreduce chgoo.pig;;
2) pig -x mapreduce gaingoo.pig;;
3) pig -x mapreduce lossgoo.pig;;
4) pig -x mapreduce averageGainGoogle.pig;;
5) pig -x mapreduce movingAverageGoogle.pig;;
6)  hive -f varGoo.sql;; 
7)  hive -f sdGoo.sql;; 
8) pig -x mapreduce RS_Google.pig;;
9) pig -x mapreduce RSI_Google.pig;;
10) pig -x mapreduce averageTradingVolumeGoogle.pig;;
*) echo "enter a valid one"
esac
