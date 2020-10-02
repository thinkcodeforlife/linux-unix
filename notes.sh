
# *************************************
# RESEARCH: Csv line breaks
# *************************************
# Unintended line breaks in csv file
# Fixing malformed CSV with incorrect new line
# How to remove line breaks inside a field in csv file 

cat tasks.csv | tr -s ";" "\t" | awk '{ print $1 }'
cat tasks.csv | cut -d ";" -f1,2 | awk '{ print $1 }'

cat tasks.csv | cut -d ";" -f1,2 | tr -s ";" "\t" | awk '{ print $1 }'

sed -n '$p;N;s/[[:blank:]]*\n[[:blank:]]*;/;/;P;D' tasks.csv | cut -d ";" -f3

awk 'NR==1{printf "%s",$0; gsub(/[^;]/,""); nlast=n=length($0); next;} nlast==n{printf "\n";nlast=0} {printf "%s",$0; gsub(/[^,]/,""); nlast+=length($0)} END{print ""}' tasks.csv

# py csv_to_tsv.py tasks.csv -> results.csv oldu
# *************************************

cat tasks2.csv | tr -s "\t" ","
cat tasks2.csv | cut -d " " -f1,2,3

# *************************************
# STUDY: Active usage of Awk
# *************************************
cat tasks2.csv > tasks2.data
cat tasks2.data

awk 'BEGIN { FS="\t" } { print }' tasks2.data
awk 'BEGIN { FS="\t" } { print $1, $2, $3 }' tasks2.data
awk 'BEGIN { FS="\t" } $3 ~ /.*dnan.*/ { print $1, $2, $3 }' tasks2.data

awk '{ print }' tasks2.data
awk '{ print $1 }' tasks2.data
awk '{ print $1, $3 }' tasks2.data
awk '{ print $1, $2 }' tasks2.data
awk '{ print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12 }' tasks2.data
# fields: SIRA    KONU    SORUMLU PER▒YOT M▒AT    ▒telenen Tarih  DURUM   TEBL▒▒ TAR▒H▒   A▒IKLAMA
awk '$3 == "Adnan" { print }' tasks2.data
awk '$3 ~ /.*dnan.*/ { print }' tasks2.data

awk '$5 ~ /.*dnan.*/ { print }' tasks2.data
awk '$6 ~ /.*dnan.*/ { print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12 }' tasks2.data
# *************************************
