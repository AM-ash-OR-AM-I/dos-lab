echo "Enter the day (1-7): Monday-Sunday: "
read dayno
roomno="C-128"
labroom='C-022'
nolab="No lab on given day"
case $dayno in
  1)
    echo "12-1PM in $roomno";;
  2)
    echo "10-11AM in $roomno";;
  3)
    echo "10-12PM in $labroom";;
  4)
    echo $nolab;;
  5)
    echo $nolab;;
  6)
    echo "9-10AM in $roomno";;
  7)
    echo "Holiday";;
esac
