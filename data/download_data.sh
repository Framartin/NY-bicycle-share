# donwload and extract data
mkdir -p flows
cd flows
YEAR=2013
MONTH=7
STATUS=0
while [ $STATUS -eq 0 ] ; do
  if [ $MONTH -lt 10 ] ; then
    MONTH2="0"$MONTH
  else
    MONTH2=$MONTH
  fi
  echo "$YEAR-$MONTH2"
  wget "https://s3.amazonaws.com/tripdata/"$YEAR$MONTH2"-citibike-tripdata.zip" --quiet
  STATUS=$?
  MONTH=$(($MONTH+1))
  if [ $MONTH -gt 12 ] ; then
    YEAR=$(($YEAR+1))
    MONTH=1
  fi
done

unzip '*.zip' && rm *zip
