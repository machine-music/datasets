for FILENAME in *;
do
  mv $FILENAME $(echo $FILENAME | sed -e 's/[^A-Za-z0-9._-]/_/g').mid;
done
