Login-AzAccount

# Two methods: Alias or Offer

# Example - Alias
$image = UbuntuLTS

New-AzVM `
-Name newvm `
-ResourceGroupName newrg `
-Location us-east `
-Image $image `
-VirtualNetworkName firstvm1-vnet `
-SubnetName default `
-SecurityGroupName firstvm1-nsg `
-PublicIpAddressName name `
-OpenPorts 22

# Example - Offer
# $vm = get-azvm -name name -resourcegroupname group
# $vm.StorageProfile.ImageReference
# Copy the 'Offer' field