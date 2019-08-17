clear
echo "                          Welcome to the Stock Market Analysis Project"
echo""
echo"" 
echo "                      Dataset Used - GAFA(Google Amazon Facebook Apple) Stocks"
echo"" 
echo""
echo "                                    Press c for continuing"
echo""
read select
case $select in
c) ./company.sh;;
*) echo "enter a valid one"
esac


