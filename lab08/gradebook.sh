#!/usr/bin/env bash

if $#!=1 printf("usage: ./gradebook.sh <students_file>") 2> stderr
	exit 1;

if !r printf("cannot read <./gradebook.sh students.txt> 2>stderr
	exit 1;

avg(){
  local marks="$0" 
  echo "total=$((marks))"
  echo "avg=$((total/3))"
}
done < students.txt

grade(){
if[["$avg" -ge 90 ]]; then echo "grade A"
elif [["$avg" -ge 75 ]]; then echo "grade B"
elif [["$avg" -ge 60 ]]; then echo "grade C"
elif [["$avg" -ge 45 ]];then echo "grade D"
else echo "grade F"
fi
}

while IFS=: read -r roll name marks; do 
	echo "$roll $name $total $avg $grade"
done<students.txt

END{
	printf("-",$0);
echo "students=$(wc -l < students.txt)"
echo "passed=$(wc -l < (avg -ge 45))"
echo "failed=$(wc -l<(avg -le 45))"
}


	

