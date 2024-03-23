# Create a remote session
New-PSSession -ComputerName dc01

# Enter a session
Enter-PSSession -Id 1

# Check access on 
get-aduser -filter *

# Connect to multiple sessions at the same time
Invoke-Command -ScriptBlock {Get-Process} -ComputerName("dc01", "srv3")