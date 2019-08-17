clear
echo "                    Select Company for your Analysis"
echo""
echo"" 
echo "                             1. Google "
echo""
echo "                             2. Amazon"
echo""
echo "                             3. Facebook"
echo""
echo "                             4. Apple"
echo""
echo""
read select
case $select in
1) ./menuGoogle.sh;;
2) ./menuAmazon.sh;;
3) ./menuFacebook.sh;;
4) ./menuApple.sh;;
*) echo "enter a valid one"
esac
