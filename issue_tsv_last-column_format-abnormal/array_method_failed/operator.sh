file1="/Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/tsv_data.csv"

read_1=$(cat $file1)
read_list_1=($read_1)

echo "${read_list_1[1]}" 123
echo 123 "${read_list_1[1]}"