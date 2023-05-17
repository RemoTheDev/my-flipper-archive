# RickRoll MAX volume on MacOS - BadUSB

A script used to perform a terminal navigation to a YouTube video on a target Mac machine, play the video, and set the volume to maximum.

**Category**: Prank

## Description

A script used to perform a terminal navigation to a YouTube video on a target Mac machine, play the video, and set the volume to maximum.

## Getting Started

### Dependencies

* An internet connection
* MacOS

### Executing program

* Plug in your device
* Invokes terminal session
* Sends command to navigate to YouTube url and plays vidoe with 'Spacebar" key
* Invokes command to increase volume to maximum

ENG 🇺🇸
```
STRING terminal
STRING open 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
STRING osascript -e 'set volume 10' && killall Terminal
```
