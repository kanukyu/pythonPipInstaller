# Python and pip Installation Script

This project provides a PowerShell script to check for the installation of Python and pip, and install them if necessary.

## Features

- **Check** if Python and pip are installed.
- **Install** Python (3.12.5) and pip if they are not installed.

## Requirements

- Internet connection (to download the Python installer)
- Administrative privileges (for installing Python)

## Usage Instructions

### Running the Script

**Command Prompt (CMD)**
1. Open Command Prompt as an administrator.
2. Navigate to the directory where your PowerShell script (`pythonPipInstaller.ps1`) is located.
3. Run the following command to execute the PowerShell script:
   - Open CMD (`Win + R`, type `cmd`, press `Enter`).
   - Navigate to the project folder:
     ```bash
     cd path\to\your\project
     ```
   - Run the Python script:
     ```cmd
     powershell -ExecutionPolicy Bypass -File pythonPipInstaller.ps1
     ```
## PowerShell

1. Open PowerShell as an administrator.
2. Navigate to the directory where your PowerShell script (`pythonPipInstaller.ps1`) is located.
3. Run the following command to execute the PowerShell script:
   - Open PowerShell (`Win + X`, select **Windows PowerShell**).
   - Navigate to the project folder:
     ```bash
     cd path\to\your\project
     ```
   - Run the script:
     ```bash
     .\pythonPipInstaller.ps1
     ```
## Git Bash

1. Open Git Bash.
2. Navigate to the directory where your PowerShell script (`pythonPipInstaller.ps1`) is located.
3. Run the following command to execute the PowerShell script:
   - Open Git Bash.
   - Navigate to the project folder:
     ```bash
     cd /path/to/your/project
     ```
   - Run the Python script:
     ```bash
     powershell -ExecutionPolicy Bypass -File pythonPipInstaller.ps1
     ```
## Notes
- The script will download Python 3.12.6 and install it, including pip.
- Ensure you have the required permissions to install software on your system.
- License
- This project is licensed under the Apache-2.0 License.
