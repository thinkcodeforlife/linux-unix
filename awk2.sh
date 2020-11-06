#!/bin/sh

input_file=emp.data
echo
echo 'Employee Data'
echo '=========================='
echo 'id name pay_rate work_hours'
awk '{ print NR, $0, NF }' $input_file
echo 
echo '=========================='
awk '$3 > 0 { print $1, $2 * $3 }' $input_file
echo '=========================='
awk '$3 == 0 { print $1 }' $input_file
echo '=========================='
