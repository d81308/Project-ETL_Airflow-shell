file2="/Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/tsv_data.csv"
file3="/Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/fixed_width_data.csv"

path="/Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/"

read_2=$(cat $file2)
read_array_2=($read_2)

read_3=$(cat $file3)
read_array_3=($read_3)

Length=${#read_array_2[@]}


for ((i=0;i<=$Length;i++))
do
	if [ ${read_array_2[$i]} != "" ]; then
		echo "${read_array_3[$i]}","${read_array_2[$i]}"
	fi
done > /Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/array_merge.csv

