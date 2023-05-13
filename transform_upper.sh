#!/bin/bash

## set path
# script path
script_path=$(dirname "$0")

# input file
input_file_path=$script_path/extracted
input_file_name="extracted_data.csv"

# output file
output_file_path=$script_path/transformed
output_file_name="transformed_data.csv"


#----------------------------------------------------------------------
# create folder, if not exist
if [ ! -d $output_file_path ]; then
    mkdir $output_file_path
fi

# replace test file
if [ ! -d $output_file_path/$output_file_name ]; then
    rm $output_file_path/$output_file_name
fi

#----------------------------------------------------------------------
#transform phase

cat $input_file_path/$input_file_name | tr "[:lower:]" "[:upper:]" > $output_file_path/$output_file_name
