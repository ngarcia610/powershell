# PSS Troubleshooting
# Error using SSH
# Corrupted MAC on input.
ssh -Q mac
ssh -m hmac-sha2-512 <user_name>@<remote_address>

reg export HKCU\Software\%userprofile%\PuTTY\Sessions ([Environment]::GetFolderPath("Desktop") + "\putty-sessions.reg")