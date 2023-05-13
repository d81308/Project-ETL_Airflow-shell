## file management
# file template
#file1="/Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/tsv_data.csv"
#file2="/Users/global_user_file/shell_files/airflow_start/project_sixth-step-dag_tester/issue_tsv_last-column_format-abnormal/finding_root-cause/tsv_data.csv"

# file variable
file1=$1
file2=$2

# read by cat
#read_1=$(cat $file1)
read_2=$(cat $file2)

# cat to list
read_list_1=($read_1)
read_list_2=($read_2)

