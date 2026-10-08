#!/usr/bin/env bash
# broken.sh -- four faults. Find them, fix them, explain the symptom of each.
# WARNING: one of them destroys a data file. Copy the directory before you run it,
# or re-run ncsc102-lab06-setup.sh -f afterwards.

threshold = 50
count=0

for f in files/*.txt
do
  if [ $f > "files/report.txt" ]; then
    echo "$f sorts after report.txt"
  fi
done

while read name score; do
  if [[ $score -ge $threshold ]]
    count=$(( count + 1 ))
  fi
done < marks.txt

echo "Above threshold: $count"
