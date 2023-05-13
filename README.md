# Project-ETL_Airflow-shell
## Summary
* Our project aims to complete an ETL (Extract-Transform-Load) process. ETL is a data processing method used to extract data from one system, transform it, and load it into another system. 
* We use shell scripts to complete the extraction, transformation, and loading processes, and use the airflow tool to schedule these shell scripts. Our goal is to create an efficient and stable ETL system to help businesses better manage and analyze data, leading to more informed business decisions.
* The content involves resolving an issue with a file format problem, and I have successfully fixed it using a single shell script code.

## Our program uses the following code to complete data processing:
* Download: We use wget to download files, tar to extract compressed files, and rm to delete files.
* Extract: We use echo to output a string, awk to parse TSV-formatted data, and the -F parameter to specify the delimiter.
* TSV abnormal file: We use cat to concatenate files, tr to convert special characters to spaces, awk to process data, and grep -o to retain only matches.
* Merge: We use paste -d to merge multiple files and the -d parameter to specify the delimiter.
* Transform: We use tr to perform data transformation, such as converting lowercase letters to uppercase letters.


## Issue: tsv file abnormal
We encountered an issue while merging TSV files due to format conversion problems, which prevented us from merging them successfully. Ultimately, we found a clever solution to this problem, as follows:

We can use the following steps to address the TSV file conversion issue:

* Read the TSV file.
* Convert tab characters to commas.
* Use awk for SELECT filtering.
* Use grep for value extraction, ensuring that the desired value format is specified.
* Output the file in CSV format.
Through this clever method, we successfully solved the TSV file conversion issue and were able to merge the files smoothly.

## Airflow：airflow_shell_ETL-tasks.py
We use Airflow to set up DAG and pipeline to ensure that the ETL process runs in order and executes automatically when needed. Through these settings, we can also easily monitor and report the progress and results of the pipeline.
