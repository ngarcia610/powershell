# Returns basic information about a device

# Make sure winrm is enabled on the target host
# Ask for a host name
$server = Read-Host -Prompt "Enter a host name: (Default: localhost)"

# If no value is provided use 'localhost'
if ($server -eq "") {
    $server = "localhost"
}

# A one-line if statement could be as follows
# $server = ($server -eq "") ? "localhost" : $server

# Gather host info
$os = Get-CimInstance Win32_OperatingSystem -ComputerName $server
$memTotal = [math]::Round(($os.TotalVisibleMemorySize / 1MB), 2)
$memAvailable = [math]::Round(($os.FreePhysicalMemory / 1MB), 2)

# Write out stats
Write-Host "Stats for $server" -ForegroundColor Green
Write-Host ('-' * 25)
Write-Host "Total Memory     : $memTotal GB"
Write-Host "Available Memory : $memAvailable GB"
Write-Host "Used Memory      : $($memTotal - $memAvailable) GB"
Write-Host "Operating System : $($os.Caption)"
Write-Host "System Drive     : $($os.SystemDrive)\"