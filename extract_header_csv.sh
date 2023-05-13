#!/bin/bash

## set path
#script path
script_path=$(dirname "$0")

#input file
download_file_path=$script_path/download
input_file_name="vehicle-data.csv"

#output file
output_file_path=$script_path/extracted
output_file_name="csv_data.csv"


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
## insert header for csv data

# define the column names
echo "Rowid","Timestamp","Anonymized_Vehicle_number","Vehicle_type" > $output_file_path/$output_file_name

# select values, append in extracted file
awk -F ',' '{print $1","$2","$3","$4}' $download_file_path/$input_file_name >> $output_file_path/$output_file_name


