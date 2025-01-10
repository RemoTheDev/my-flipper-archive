## :warning: This script was made for educational purposes only and is not meant to me used maliciously.

This script is a wifi stealer that sends every wifi passwords stored on a Windows 10/11 computer to a [discord webhook](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).

It is made to be used with a [Flipper Zero](https://flipperzero.one/) device, using the [BadUSB](https://docs.flipperzero.one/bad-usb) feature.

# Files
### Powershell scripts
- `Wifi-Stealer-Discord.ps1` - The main script, commented for readability
### Duckyscript files
- `Wifi-Stealer-Discord_Quick.txt` - A duckyscript version of the script using a minified/efficent version of the script (for Flipper Zero) pulling from webpage powershell script.

# Usage
Replace `https://discord.com/api/webhooks/<channel_id>/<webhook_id>` with your own [webhook url](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).
### Powershell
```powershell
powershell -ExecutionPolicy Bypass -File Wifi-Stealer-Discord.ps1
```
### Flipper Zero
1. Copy the .txt files to the Flipper Zero in the `badusb` folder, directly to the microSD card or using the [Flipper Zero app](https://docs.flipperzero.one/mobile-app) *(Android/iOS)* or [qFlipper](https://docs.flipperzero.one/qflipper) *(Windows/Linux/MacOS)*
2. Plug the Flipper Zero to the target computer
3. Run the script from the Flipper Zero in the `Bad USB` menu

# Result
![image](https://user-images.githubusercontent.com/54336210/251186081-3aa3261c-d14d-4ae1-a1ef-136f005d8705.png)
