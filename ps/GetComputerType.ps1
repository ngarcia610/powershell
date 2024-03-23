# Inventory the machines in a windows domain

$computers = Get-ADComputer -Filter *

foreach ($c in $computers) {

  $os = Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $c.Name

  # Use product type numbers to determine the type of machine
  switch ($os.ProductType) {
    1 { $type = 'Workstation' }
    2 { $type = 'Domain Controller' }
    3 { $type = 'Server' }
    Default { $type = 'Unknown' }
  }

  "$($c.Name) is a $type."
}