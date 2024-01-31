#!/bin/bash

# Log in to Azure account
az login

blob_file_upload() {
  local container_name=mycontainer
  local storage_account=mystorageaccount
  local account_key="mystorageaccountkey"

  # Use for loop to check for multiple files
  for file_path in "$@"; do
    local blob_name=$(basename "$file_path")

    # Check if the blob already exists
    az storage blob show \
      --account-name $storage_account \
      --container-name $container_name \
      --name $blob_name \
      --account-key $account_key > /dev/null 2>&1

    if [ $? -eq 0 ]; then
      echo "File '$blob_name' already exists. Skipping upload."
    else
      # File does not exist, proceed with upload
      error_message=$(az storage blob upload \
        --account-name $storage_account \
        --container-name $container_name \
        --name $blob_name \
        --type block \
        --account-key $account_key \
        --type block \
        --file "$file_path")

      if [ $? -ne 0 ]; then
        echo "File upload failed for '$blob_name'."
        echo "Error: $error_message"
      else
        echo "File '$blob_name' uploaded successfully."
      fi
    fi
  done
}

# Call the blob_file_upload function with multiple file paths
blob_file_upload "./TestUpload1.txt" "./TestUpload2.txt" "./TestUpload3.txt"
