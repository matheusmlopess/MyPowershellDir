Set-ExecutionPolicy RemoteSigned

# By default the ssh-agent service is disabled. Allow it to be manually started for the next step to work.
# Make sure you're running as an Administrator.
Get-Service ssh-agent | Set-Service -StartupType Manual

# Start the service
Start-Service ssh-agent

# This should return a status of Running
Get-Service ssh-agent

#ssh-keygen.exe -t ed25519 -C "matheusmlopess@gmail.com" -f D:\config_files\.ssh\teste_key
