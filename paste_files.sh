#!/bin/bash

## set path
#script path
script_path=$(dirname "$0")

#input file
extracted_file_path=$script_path/extracted
file_csv="csv_data.csv"
file_tsv="tsv_data.csv"
file_fix="fixed_width_data.csv"

#output file
output_file_path=$script_path/extracted
output_file_name="extracted_data.csv"


#----------------------------------------------------------------------
# replace test file
if [ ! -d $output_file_path/$output_file_name ]; then
    rm $output_file_path/$output_file_name
fi


#----------------------------------------------------------------------
## combine files

# paste method
file1="$output_file_path/$file_csv"
file2="$output_file_path/$file_tsv"
file3="$output_file_path/$file_fix"

paste -d, $file1 $file2 $file3 > $output_file_path/$output_file_name

