# Function to check if Python and pip are installed
function Check-PythonAndPip {
    if (Get-Command python -ErrorAction SilentlyContinue) {
        Write-Host "Python is already installed."
        if (Get-Command pip -ErrorAction SilentlyContinue) {
            Write-Host "pip is already installed."
            return $true
        } else {
            Write-Host "pip is not installed, installing..."
            return $false
        }
    } else {
        Write-Host "Python is not installed, installing..."
        return $false
    }
}

# Function to install Python and pip
function Install-PythonAndPip {
    $url = "https://www.python.org/ftp/python/3.12.5/python-3.12.5-amd64.exe"
    $installer = "$env:TEMP\python-3.12.5-amd64.exe"
    
    # Download the installer
    Write-Host "Downloading Python installer..."
    Invoke-WebRequest -Uri $url -OutFile $installer

    # Install Python
    Write-Host "Installing Python..."
    Start-Process -FilePath $installer -ArgumentList "/InstallAllUsers=1 PrependPath=1" -NoNewWindow -Wait -PassThru | Wait-Process

    # Ensure pip is installed
    Write-Host "Installing pip..."
    python -m ensurepip
}

# Main script
if (-not (Check-PythonAndPip)) {
    Install-PythonAndPip
}

Write-Host "Script completed."
