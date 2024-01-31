# UploadFilesToBlobStorage-Project

UploadFilesToBlobStorage is a command-line interface (CLI) tool designed to simplify uploading files to Azure Blob Storage. It automates the process of authentication and file transfer to Azure, providing a seamless experience for users who need a quick and efficient way to manage cloud storage.

## Features

- Easy authentication with Azure.
- Multiple files upload directly to your Azure Blob Storage container.

## Prerequisites

- [Azure CLI](https://docs.microsoft.com/cli/azure/install-azure-cli) must be installed and configured on your machine.
- An active Azure subscription, and permissions to create and manage Azure Blob Storage resources.
- Bash environment, which is available on Linux/Unix, macOS, and Windows Subsystem for Linux (WSL).

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/chunsley/UploadFilesToBlobStorage-Project.git
   ```
2. **Navigate to the Project Directory**:
   ```bash
   cd UploadFilesToBlobStorage-Project
   ```

## Usage 

To upload a file to Azure Blob Storage, use the following command:

```bash
./fileuploadscript.sh /path/to/file
```
To upload multiple files to Azure Blob Storage, use the following command:

```bash
./fileuploadscript.sh /path/to/file1 /path/to/file2 ...
```

Here is a screenshot of the tool in action: 

![UploadFileToBlobResult](https://github.com/chunsley/UploadFilesToBlobStorage-Project/assets/157833375/abe84fd0-9a9d-4e02-b113-f3a828d08b40)

## Troubleshooting

- **Authentication Issues**:
   - Ensure your Azure CLI is logged in `az login` and has the necessary permissions.
- **Upload Failures**:
   - Check if the specified file path is correct and if you have write permissions to the Azure Blob Storage container.
- **File not found errors**:
   - Ensure the paths to the files are correct and that the files exist at those locations.

## Contributing

Contributions to UploadFilesToBlobStorage-Project are welcome! If you have suggestions for improvement or have identified a bug, feel free to open an issue or submit a pull request.
