status=$(curl -o /dev/null/ -s -w "%{http_code}" http://34.207.70.31:5000/emp)
if [[ $status == 200 ]]
then
  exit 0
else
  exit 1
fi
