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
1)  pig -x mapreduce chApp.pig;;
2)  pig -x mapreduce gainApp.pig;;
3)  pig -x mapreduce lossApp.pig;;
4)  pig -x mapreduce averageGainApple.pig;;
5)  pig -x mapreduce movingAverageApple.pig;;
6)  hive -f varApp.sql;; 
7)  hive -f sdApp.sql;; 
8)  pig -x mapreduce RS_Apple.pig;;
9)  pig -x mapreduce RSI_Apple.pig;;
10) pig -x mapreduce averageTradingVolumeApple.pig;;
*) echo "enter a valid one"
esac
