# Teams Voice
# Block a number
New-CsInboundBlockedNumberPattern -Name "BlockedCaller002" -Enabled $True -Description "Requested by Lisa Cozza-Thomas 5/6/2022" -Pattern "^\+?13473733805$"