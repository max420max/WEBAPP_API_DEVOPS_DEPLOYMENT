status=$(curl -o /dev/null/ -s -w "%{http_code}" http://34.207.70.31:5000/emp)
if [[ $status == 200 ]]
then
  echo "success"
else
  echo "fail"
fi
