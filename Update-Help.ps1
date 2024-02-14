# Download help locally
Update-Help -UICulture en-us -Force -ErrorAction SilentlyContinue

# Download help to a file share
Save-Help -DestinationPath \\<server>\<folder> -UICulture en-us -ErrorAction SilentlyContinue

# Retrieve Server Names from AD
$servers = Get-ADComputer -Filter {OperatingSystem -like '*server*'} | Select-Object -ExpandProperty Name

# Send Update-Help to every server
Invoke-Command -ComputerName $servers -ScriptBlock {
  Update-Help -SourcePath \\<server>\<folder> -ErrorAction SilentlyContinue
}