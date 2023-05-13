#!/bin/bash

## set path
# script path
script_path=$(dirname "$0")

# input file
download_file_path=$script_path/download
input_file_name="tollplaza-data.tsv"

# output file
output_file_path=$script_path/extracted
output_file_name="tsv_data.csv"


#----------------------------------------------------------------------
# replace test file
if [ ! -d $output_file_path/$output_file_name]; then
    rm $output_file_path/$output_file_name
    echo "$output_file_path/$output_file_name"
fi


#----------------------------------------------------------------------
## extract and transform tsv to csv

# define the column names
echo "Number_of_axles","Tollplaza_id","Tollplaza_code" > $output_file_path/$output_file_name

cat $download_file_path/$input_file_name | tr "\t" "," | awk -F ',' '{print $5","$6","$7}' | grep -o  '[a-zA-Z0-9,]\+' >> $output_file_path/$output_file_name

#cat $download_file_path/$input_file_name | tr "\t" "," | grep -o  '[a-zA-Z0-9,]\+' | awk -F ',' '{print $5","$6","$7}' >> $output_file_path/$output_file_name
