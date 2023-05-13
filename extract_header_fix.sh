#!/bin/bash

## set path
# script path
script_path=$(dirname "$0")

# input file
download_file_path=$script_path/download
input_file_name="payment-data.txt"

# output file
output_file_path=$script_path/extracted
output_file_name="fixed_width_data.csv"


#----------------------------------------------------------------------
# replace test file
if [ ! -d $output_file_path/$output_file_name]; then
    rm $output_file_path/$output_file_name
    echo "$output_file_path/$output_file_name"
fi


#----------------------------------------------------------------------
## extract and transform tsv to csv

# define the column names
echo "Type_of_payment_code","Vehicle_code" > $output_file_path/$output_file_name

# remove useless spaces and select columns
awk '{$1=$1; OFS=","; print $10","$11}' $download_file_path/$input_file_name >> $output_file_path/$output_file_name


