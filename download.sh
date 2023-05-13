## objectives
# wget
# unzip
# create download folder
# remove tar.gz

#--------------------------------------------------
## naming cell
# script path
script_path="$(dirname "$0")"

#download file
download_file_url="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Final%20Assignment/tolldata.tgz"
download_file_name="tolldata.tgz"
download_file_path="$script_path/download"



#--------------------------------------------------
## wget
# create folder, if not exist
if [ ! -d $download_file_path ]; then
    mkdir $download_file_path
fi

# download file
wget -O $download_file_path/$download_file_name $download_file_url

# unzip
tar -xf $download_file_path/$download_file_name -C $download_file_path

#remove tar file
rm $download_file_path/$download_file_name


