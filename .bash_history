ls
/opt/ncsc101/ncsc101-lab03-setup.sh
cp handouts/ncsc101-lab03-setup.sh .
bash ncsc101-lab03-setup.sh
bash noisy.sh
bash noisy.sh > out.txt
sort names.txt | iniq -c
sort names.txt | uniq -c
cd ~/lab03
sort names.txt | uniq -c > answers/q0.txt
cat answers/q0.txt
bash noisy.sh > out.txt
bash noisy.sh 2> err.txt
bash noisy.sh 2>&1 > both.txt
cut -d' ' -f7 access.log | head -3
cut -d' ' -f1 access.log | sort -u | wc -1
cut -d' ' -f1 access.log | sort -u | wc -l
find archive -type f name "*.log"
cut -d' ' -f7 access.log | head 5
bash noisy.sh > out.txt
bash noisy.sh 2> err.txt
bash noisy.sh 2>&1 > both.txt
cut -d' ' -f7 access.log | head-3
cut -d' ' -f7 access.log | head -3
cut -d' ' -f1 access.log | sort -u | wc -1
find archive -type f -size +20k
find archive -type f -name ".logim"
find archive -type f -name ".login"
bash /opt/ncsc101/ncsc101-lab03-setup.sh
cd ~/lab03
ls
touch answers/
bash noisy.sh > answers/q1.txt
bash noisy.sh 2> answers/q2.txt
bash noisy.sh > answers/q3.txt 2>&1
wc -l < access.log > answers/q4.txt
cut -d' ' -f1 access.log | sort-u | wc-1 >answers/q5.txt
cut -d' ' -f1 access.log | sort -u | wc -1 >answers/q5.txt
cut -d' ' -f1 access.log | sort -u | wc -l >answers/q5.txt
cut -d' ' -f1 access.log | sort | uniq -c | sort -rn | head -3 > answers/q6.txt
cut -d' ' -f7 access.log | sort | uniq -c | sort -rn | head -5 > answers/q7.txt
find archive -type f -name "*.log" | wc -l > answers/q8.txt
find archive -type f -size +20k | sort > answers/q9.txt
find archive -type f -mtime -1 | sort .answers/q10.txt
find archive -type f -mtime -l | sort > answers/q10.txt
find archive -type f -mtime -1 | sort > answers/q10.txt
cd documents
scp <26je0589>@<ip_addr>:~/lab03/answers/*
scp 26je0589@ip_address:~/lab03/comman
~cd
cd ~
ssh 26je0586@172.17.152.53
bash handouts/ncsc102-lab04-setup.sh
cd ~/lab04
ls
head -2 access.log
grep -c ' 404 ' access.log
grep -c '404' access.log
grep -E '^22JE' ROLLS.TXT
grep -E '^22JE' rolls.txt
grep -E '^22JE[0-9]4$' rolls.txt
grep -E '^22JE[0-9]{4}$' rolls.txt
grep -Eo '[A-Za-z0-9._-]+@gmail.com' contacts.txt
cd ~/lab04/answers/
grep -c ' 404 ' access.log
cd ~/lab04
grep -c ' 404 ' access.log
grep ' 500 ' access.log
grep -Eo '[A-Za-z0-9._-]+@iitism.ac.in' contacts.txt
grep '^22JE[0-9]{4}$' rolls.txt
grep -E '^22JE[0-9]{4}$' rolls.txt
grep -i 'error' syslog.txt
grep -ic 'error' syslog.txt
grep -rl 'timeout' '*.log' logs
grep -rl 'timeout' __ include='*.log' logs
grep -rl 'timeout' -- include='*.log' logs
grep -rl  -- include='*.log' 'timeout' logs
grep -rl 'timeout' -- include='*.log' logs
grep -r 'timeout' -- include='*.log' logs
grep -rl 'timeout' -- include= '*.log' logs/
grep -rl 'timeout' -- include = '*.log' logs/
grep -En ' 500 ' | head -3 | sort-rn
grep -En ' 500 ' | head -3 | sort-N
grep -En ' 500 ' | head -3 | sort-n
grep -En ' 500 ' | head -3 | sort
grep -En ' 500 ' | head -3 
grep -En ' 500 '
grep -n ' 500 ' | head -3 | sort-rn
grep -n ' 500 ' access.log
grep -En ' 500 ' access.log | head -3 | sort-rn
grep -En ' 500 ' access.log | head -3 
grep -En ' 500 ' access.log | sort -rn | head -3
grep -En ' 404 ' access.log | sort -rn | head -3 | less
cut -d ' ' -f1 access.log 

grep -rl 'timeout' -- include='*.log' logs
grep -rl 'timeout' -- include= ' *.log ' logs
sed 's/a/A/' fruits.txt
bash handouts/ncsc102-lab05-setup.sh
cd ~/lab05
ls
sed 's/a/A/' fruits.txt
sed 's/a/G' config.txt
sed 's/a/G/' config.txt
sed 's/G/a/' config.txt
sed 's/g/G/' config.txt
sed 's/a/A/p' fruits.txt
sed -n 's/a/A/p' fruits.txt
sed G stack.txt
sed -n 's/i/I/;p' fruits.txt
sed -n 's/i/I/;p' stack.txt
sed -n 's/I/i/;p' stack.txt
sed -n '1!G;h;$p' stack.txt
man sed G stack.txt
sed 's/DEBUG/INFO/' config.txt
sed 's/DEBUG/INFO/g' config.txt
sed 's/DEBUG/INFO/g' config.txt > ~/lab05/answers/q1.txt
sed -n 's/DEBUG/INFO/g' config.txt
sed -n 's/a/A/p' fruits.txt
sed -n 's/DEBUG/INFO/p' config.txt
sed -n 's/DEBUG/INFO/g/p' config.txt
sed -en 's/DEBUG/INFO/g/p' config.txt
sed -en 's/DEBUG/INFO/g' config.txt
sed -en 's/DEBUG/INFO/p' config.txt
sed -n 's/DEBUG/INFO/p' config.txt
sed -n 's/DEBUG/INFO/g;p' config.txt
sed -n 's/DEBUG/INFO/gp' config.txt
sed -n 's/DEBUG/INFO/gp' config.txt > ~/lab05/answers/q2.txt
sed '2,4!d' fruits.txt
sed '1,5!d' fruits.txt
sed '2!d' fruits.txt
sed '1,5!d' fruits.txt
sed '1!d' fruits.txt
sed '{1,5}!d' fruits.txt
sed -e '{1,5}!d' fruits.txt
sed -e '[1,5]!d' fruits.txt
sed '1,5!dp' fruits.txt
sed -e '1,5!d' p fruits.txt
sed -n '1,5p' fruits.txt
sed -n '1,5d' fruits.txt
sed -n '2,4d' fruits.txt
sed -n '1,5p' fruits.txt
sed -n '!2,4p' fruits.txt
sed -en '!2,4p' fruits.txt
sed -en '!2,4d' fruits.txt
sed -en '2,4!p' fruits.txt
sed -en '2,4!d' fruits.txt
sed -en '4!d' fruits.txt
sed -n '4!d' fruits.txt
sed -n '2!d' fruits.txt
sed -n '1,5p' fruits.txt
sed -n '(1,5)p' fruits.txt
sed -n '/^error/p' server.log
sed -n '/error/p' server.log
sed -rn '/error/p' server.log
sed -Rn '/error/p' server.log
sed -n '/^error/p' server.log > ~/lab05/answers/q4.txt
sed -n '/^BEGIN SUMMARY/$END SUMMARY/p' report.txt
sed -en '/^BEGIN SUMMARY/$END SUMMARY/p' report.txt
sed -en '3,7p' report.txt
sed -n '3,7p' report.txt
sed -n '3,7p' report.txt > ~/lab05/answers/ q5.txt
sed -n '3,7p' report.txt > ~/lab05/answers/q5.txt
sed -n 's/aeiou/AEIOU/p' fruits.txt
sed -n 's/a/A/p' fruits.txt
sed -n 's/a/A/e/E/i/I/o/O/u/U/p' fruits.txt
sed -en 's/a/A/e/E/i/I/o/O/u/U/p' fruits.txt
sed -en 's/aeiou/AEIOU/p' fruits.txt
sed -en 's/{aeiou}/{AEIOU}/p' fRuits.txt
sed -en 's/[aeiou]/[AEIOU]/p' fruits.txt
sed -en 's/(aeiou)/(AEIOU)/p' fruits.txt
sed -n 's/WARN/[!]/$ACTION REQUIRED/p' server.log
sed -en 's/WARN/[!]/$ACTION REQUIRED/p' server.log
sed -n '/^error/p' -r server.log
sed -n '/^error/p' -R server.log
sed -en 's/WARN/[!]/$ACTION REQUIRED/p' server.log
sed -en 's/WARN/[!]/p' server.log
sed -en 's/WARN/[!]/; p' server.log
sed -n 's/the/THE/!^ERROR/gp' server.log
sed -en 's/the/THE/!^ERROR/gp' server.log
sed -en 's/the/THE/gp' server.log
sed -en 's/the/THE/!^ERROR/gp' server.log > ~/lab05/answers/q9.txt
sed -en 's/the/THE/^ERROR!/gp' server.log
sed -en 's/!^ERROR/the/THE/gp' server.log
sed -n '1!G;h;$p' stack.txt
sed -n '1!G;h;$p' stack.txt > ~/lab05/answers/q10.txt

bash handouts/ncsc102-lab06-setup.sh
cd ~/lab06
head -3 marks.csv server.log records.txt
awk -F, 'NR>1' marks.csv 
awk -F, 'NR>1' { print $1 "   " $2 }' marks.csv 

awk -F, 'NR>1' { print $1 "   " $2 }' marks.csv
awk -F, 'NR>1 { print $1 "  " $2 }' marks.csv
awk -F, 'NR>1 { print $1 "  " $2 }' marks.csv > ~/lab06/answers/q1.txt
awk '{ print $1 }' data.txt | wc -l
awk '{ print $1 }' data.txt 
awk '{ print $1 }' marks.csv | wc -l
awk '{ print $1 }' marks.csv
awk -F, 'NR>1 { print $1 "  " $2 }' marks.csv | wc -l
awk -F, 'NR>1 { print $1 "  " $2 }' marks.csv | wc -l > ~/lab06/answers/q2.txt
awk -F, '$4 > 50' 'NR>1' '{ PRINTF("%-8s %3d\n", $1 , $4) }'
awk -F, '$4 > 50' '{ printf("%-8s %3d\n", $1 , $4) }'
awk -F, '$4 > 50' '{ printf("%-8s %3d\n", $1 , $4) }' marks.csv
awk '$4 > 50' '{ printf("%-8s %3d\n", $1, $4) }' marks.csv
awk '$4 > 50' '{ print("%-8s %3d\n", $1, $4) }' marks.csv
awk '{ print("%-8s %3d\n", $1, $4) }' marks.csv
awk '{ printf("%-8s %3d\n", $1, $4) }' marks.csv
awk '{ printf("%-8s %3d\n", $2, $4) }' marks.csv
awk '{ printf("%-8s %3d\n",$2,$4) }' marks.csv
awk '{ printf("%-8s,%3d\n",$2,$4) }' marks.csv
awk -F '{ printf("%-8s,%3d\n",$2,$4) }' marks.csv
awk -F 'NR>1' '{ printf("%-8s,%3d\n",$2,$4) }' marks.csv
awk '{ printf("%-8s,%3d\n",$2,$4) }' marks.csv
awk '{ printf("%-8s %3d\n",$2,$4) }' marks.csv
awk -F, 'NR>1 { print $2 "  " $4 }' marks.csv
awk -F 'NR>1' '{ printf("%-8s,%3d\n",$2,$4) }' marks.csv
awk -F 'NR>1 { printf("%-8s,%3d\n",$2,$4) }' marks.csv
awk -F, 'NR>1 $4>49 { printf("%-8s,%3d\n"$2,$4) }' marks.csv
awk -F, '$4>49' 'NR>1 { printf("%-8s,%3d\n"$2,$4) }' marks.csv
awk '{ sum += $4 } END [ print "sum=", sum, "avg="' sum/NR }'
awk -F, 'NR>1 { print $3 "  " $4 }' marks.csv
awk -F, 'NR>1 { print $3 "  " $4 }' marks.csv | sort -u | head -3
awk '{ total += $4 } END { print "total"' total' "avg="' total/NR }' marks.csv
awk '{ total += $4 } END { print "total", total, "avg="' total/NR }' marks.csv
awk '{ total += $4 } END { print "total", total, "avg=", total/NR }' marks.csv
awk -F, ' $4 > 49 && NR>1 {printf ("%-8s %3d\n",$2,$4) }' marks.csv
awk -F, ' $4 > 49 && NR>1 {printf ("%-8s %3d\n",$2,$4) }' marks.csv > ~/lab06/answers/q3.txt
awk '{ total += $4 } END { print "total=", total, "avg=", total/NR }' marks.csv
awk ' NR >1 { total += $4 } END { print "total=", total, "avg=", total/NR }' marks.csv
awk -F, ' NR >1 { total += $4 } END { print "total=", total, "avg=", total/NR }' marks.csv
awk -F, ' NR >1 { total += $4 } END { print "total=", total, "avg=%.2f", total/NR }' marks.csv
awk -F, ' NR >1 { total += $4 } END { print "total=", total, "avg=", %0.2f, total/NR }' marks.csv
awk -F, ' NR >1 { total += $4 } END { print "total=", total, "avg=",%.2f, total/NR }' marks.csv
awk -F, ' NR >1 { total += $4 } END { print "%d %.2f" "total=", total, "avg=", total/NR }' marks.csv
awk '$4 == 500' server.log
awk '$4 == 500' server.log | wc -l| awk '{ print $1 }' server.log
awk '$4 == 500' '{ print $1 }' server.log
awk '$4 == 500 { print $1 }' server.log
awk '$4 == 500 { print $1 }' server.log | wc
awk '$4 == 500 { print $1 }' server.log | wc -l
awk '$4 == 500 { print $1 }' server.log && wc -l
awk '$4 == 500 { print $1 }' server.log > ~/lab06/answers/q8.txt
awk -F, ' NR >1 { total += $4 } END { print "total=", total, "avg=", total/NR }' marks.csv
awk -F, ' NR >1 { total += $4 } END { print "total=", total, "avg=", total/NR }' marks.csv > ~/lab06/answers/q4.txt
awk '{ n[$2]++ } END { for ( m in n) print m, n[m] }' server.log
awk '{ n[$2]++ } END { for ( m in n) print m, n[m] }' server.log > ~/lab06/answers/q9.txt
bash handouts/ncsc102-lab07-setup.sh
cd ~/lab07
ls
chmod +x hello.sh
cd ~
chmod +x hello.sh
vi hello.sh
chmod +x hello.sh
vi ./hello.sh
vi hello.sh
chmod -x hello.sh
bash hello.sh
echo $((7/2)) 
echo $((7%2)) 
grep -q 'carol' marks.txt ; echo "$?
grep -q 'carol' marks.txt ; echo "$?"
[10>9] 
ls
[10 -gt 9]
[3>5]
ls
[10 -gt 9]
[ 10 -gt 9 ]
ls
false && echo A || echo B 
cd ~/lab06/answer
cd ~/lab06
ls
cd answers
vi q1.sh
chmod +x q1.sh
cat marks.txt
cd ~/lab06
cat marks.txt
cd ~
ls
cd lab07
cat marks.txt
cd ~/lab06/answers
vi q2.sh
chmod +x q2.sh
vi q2.sh
while read -r name score; do
vi q2.sh
vi q3.txt
vi q8.txt
cat q2.sh
cd ~/lab07
cd answers
vi q2.txt
vi q8.txt
chmod +x q8.txt
cat q8.txt
vi q6.txt
chmod +x q6.txt
cat q6.txt
vi q8.txt
cat q8.txt
vi q7.txt
vi q5.txt
chmod +x q5.txt
cat q5.txt
bash handouts/ncsc102-setup.sh
cd ~/lab08
handouts/ncsc102-lab08-setup.sh
ls
bash handouts/ncsc102-lab08-setup.sh
cd ~/lab08
ls
cd messy
ls
cd .
cd..
cd ~/lab08
cat students.txt
cat students_big.txt
touch ./gradebook.sh students.txt
vi ./gradebook.sh students.txt
chmod +x gradebook.sh
while IFS=: read -r roll name marks;do
vi ./gradebook.sh students.txt
vi organise.sh
mkdir messy
touch messy/photo1.jpg messy/photo2.png messy/notes.txtmessy/readme.md messy/report.pdf messy/backup.shmessy/install.sh messy/system.log messy/data.csvmessy/archieve.zip
vi ./gradebook.sh students.txt
cat  ./gradebook.sh students.txt
mkdir ~/lab9
ls
cd ~/lab9
ls
cat index.html
cd
cd ~/lab9
touch index.html
ls
cd
python3 /srv/lab/ncsc102/
python3 handouts/lab9-serve
cd ~/lab9
vi index.html
cd
cp -r lab9 26je0589-lab9
ls
tar -czf 26je0589-lab9.tar.gz 26je0589-lab9
ls
vi index.html
cat index.html
