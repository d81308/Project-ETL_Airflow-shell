file1="/Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/tsv_data.csv"
file2="/Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/fixed_width_data.csv"

source /Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/cat_list.sh $file1 $file2

#source /Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/new_column_solution.sh $file1 $file2


##read each elements
# extract
read=$(cat $file1)
list=($read)

line1="${list[1]}"

# key: print each elements
#echo $line1 | tr " " "," | sed -e 's/\(.\)/\1\n/g'

#echo ${line1:0:100}


string="abcde"
while read -n 1 char ; do
	if [ -z "$char" ]
	then
		echo "empty"
	else
		echo "1"
	fi
done <<< "$line1"
