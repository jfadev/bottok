# Bot Tok

Bot Tok is an TikTok Up Bot (likes, followers, shares, favorites and views)
based in node.js, puppeteer and zefoy.com.

🚨 Find help in [Telegram](https://t.me/bottok_help)

>**Attention:** Bot Tok automates the use of the zefoy.com and is subject to availability. Not all modes are available at all times. It depends on whether they are available on Zefoy at the moment.

>**Disclaimer:** Using a TikTok viewbot is against the platform's Terms of Service. We do not encourage the act or idea of artificially increasing the number of views, likes, shares or favorites of your videos. The use of BotTok is at the user's own risk.

- [Bot Tok](#bot-tok)
  - [Features](#features)
  - [Install](#install)
      - [Windows](#windows)
      - [Linux](#linux)
      - [Android (Termux)](#android-termux)
  - [Manual Install](#manual-install)
      - [Windows](#windows-1)
      - [Linux](#linux-1)
      - [Android (Termux)](#android-termux-1)
  - [Update](#update)
      - [Windows](#windows-2)
      - [Linux](#linux-2)
      - [Android (Termux)](#android-termux-2)
  - [Use](#use)
  - [Options](#options)
  - [Advanced](#advanced)
      - [Run a Task with a Video Directly](#run-a-task-with-a-video-directly)
      - [Limit Task Accumulations](#limit-task-accumulations)
      - [Use Custom Cookies](#use-custom-cookies)
      - [Use Proxy](#use-proxy)
      - [Use a Random Proxy from a List](#use-a-random-proxy-from-a-list)
      - [Use Custom User-Agent](#use-custom-user-agent)
      - [Use Custom Browser](#use-custom-browser)
      - [Run with Visible Browser Window](#run-with-visible-browser-window)
      - [Use Terminal Captcha in Premium](#use-terminal-captcha-in-premium)
      - [Write Activity Log](#write-activity-log)
  - [Expert](#expert)
      - [Detach Mode](#detach-mode)
      - [Multi Task Mode](#multi-task-mode)
  - [Premium (No Limitations)](#premium-no-limitations)
  - [Donate](#donate)
  - [Authors](#authors)

## Features

* Up Views
* Up Shares
* Up Favorites
* Up Comment Hearts
* Up Hearts (poor availability)
* Up Followers (poor availability)
* Video URLs History
* Captcha in Terminal (Free Mode)
* Auto Captcha Solver (Premium Mode)
* Save Cookies (Zefoy Session)
* Random User-Agent
* Proxy
* Random Proxy from List
* Activity Log
* Custom Accumulation Limit
* Multi Task (Premium Mode)
* Run as a Detach Process (Premium Mode)
* Run in Windows, Linux and Android (Termux)

## Install

>**Attention:** To use Git and clone the repository you will need to have *SSH Public Key*. Take a look at this: [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
Without this you may have problems installing. This will make it much easier to upgrade your BotTok to the latest version available with a single command.

>The following installation commands are provided for each operating system. Execute the command corresponding to your OS and follow the instructions, choose the default values by pressing enter or typing Y as appropriate. At some point during the installation a public ssh key will be generated and you will need to paste it into your GitHub account to continue. You can look in this documentation in the manual installation of your OS at the "Add your SSH Public Key" step for more details. After doing this step you will need to press enter on the tarminal to finish the installation. If everything went well BotTok should open.

#### Windows

📹 [Install in Windows Tutorial](https://youtu.be/4yvkC38avbs)

>**Attention:** Windows Defender may recognize BotTok as a virus. In this case you should temporarily disable the real-time scanning and install it.

First look at [how to add a SSH Public Key](https://medium.com/devops-with-valentine/2021-how-to-set-up-your-ssh-key-for-github-on-windows-10-afe6e729a3c0) in your github account on Windows.


1. Save the Windows installer file [win-install.bat](https://raw.githubusercontent.com/jfadev/bottok/main/win-install.bat) to your user folder and run it,
or Run in terminal

```bash
curl -o win-install.bat https://raw.githubusercontent.com/jfadev/bottok/main/win-install.bat & win-install.bat
```

#### Linux

📹 Install in Linux Tutorial (coming soon)

1. Run in terminal

```bash
sudo apt install wget && wget https://raw.githubusercontent.com/jfadev/bottok/main/ubuntu-install.sh && chmod +x ubuntu-install.sh && ./ubuntu-install.sh
```

#### Android (Termux)

📹 [Install in Android Tutorial](https://youtu.be/INFmtshmSM0)

Requirements: [termux](https://termux.dev/en/) (install Termux in your Android phone from F-Droid store, The PlayStore version ins outdated and not work)

1. Run in Termux terminal (Install Alpine in Termux)

```bash
pkg upgrade && pkg install wget && wget https://raw.githubusercontent.com/jfadev/bottok/main/termux-install.sh && chmod +x termux-install.sh && ./termux-install.sh
```

2. Run in Alpine terminal

```bash
wget https://raw.githubusercontent.com/jfadev/bottok/main/alpine-install.sh && chmod +x alpine-install.sh && ./alpine-install.sh
```

## Manual Install

#### Windows

![](doc/6.png?raw=true)

>**Attention:** Windows Defender may recognize BotTok as a virus. In this case you should temporarily disable the real-time scanning and install it.

Requirements: [git](https://git-scm.com/downloads), [nodejs](https://nodejs.org/) >=18 (Latest [maintenance LTS](https://github.com/nodejs/Release#release-schedule) version),
 [npm](https://www.npmjs.com/) and [chrome/chromium](https://www.chromium.org/chromium-projects/).

1. Install [nodejs](https://nodejs.org/en/download/), [git](https://git-scm.com/downloads)

2. Add your SSH Public Key to your GitHub account ([more info](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?platform=windows) and [info](https://medium.com/devops-with-valentine/2021-how-to-set-up-your-ssh-key-for-github-on-windows-10-afe6e729a3c0)). In ssh-keygen use the default values (press enter)

```bash
ssh-keygen
```

Open with Notepad.exe the file `C:\Users\{your-user}\.ssh\id_rsa.pub`, copy its content and paste it into your GitHub account in [https://github.com/settings/ssh/new](https://github.com/settings/ssh/new)

![](doc/8.png?raw=true)


3. Clone this repository in terminal (fingerprint: yes)

```bash
git clone git@github.com:jfadev/bottok.git
```

4. Install Bot Tok

```bash
cd bottok
npm install
```

#### Linux

![](doc/1.png?raw=true)

Requirements: [git](https://git-scm.com/downloads), [nodejs](https://nodejs.org/) >=18 (Latest [maintenance LTS](https://github.com/nodejs/Release#release-schedule) version),
 [npm](https://www.npmjs.com/) and [chrome/chromium](https://www.chromium.org/chromium-projects/).

1. Install [nodejs](https://nodejs.org/), [npm](https://www.npmjs.com/), [git](https://git-scm.com/downloads) and [openssh](https://www.openssh.com/)
   
```bash
$ sudo apt install nodejs
$ sudo apt install npm
$ sudo apt install git
$ sudo apt install openssh-client
```

2. Add your SSH Public Key to your GitHub account ([more info](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?platform=linux)). In ssh-keygen use the default values (press enter)

```bash
$ ssh-keygen
$ cat ~/.ssh/id_rsa.pub
```

Copy its content and paste it into your GitHub account in [https://github.com/settings/ssh/new](https://github.com/settings/ssh/new)

![](doc/8.png?raw=true)


3. Clone this repository in terminal (fingerprint: yes)

```bash
$ git clone git@github.com:jfadev/bottok.git
```

4. Install Bot Tok
```bash
$ cd bottok
$ npm install
```

#### Android (Termux)

![](doc/5.png?raw=true)

Requirements: [termux](https://termux.dev/en/) (install Termux in your Android phone from F-Droid store, The PlayStore version ins outdated and not work)

There is no build of Google Chrome available for ARM at this moment, so using chromium instead.
Installing chromium on Termux directly requires snap which is another big hurdle so alternatively using alpine distro here.

1. Install [alpine](https://alpinelinux.org) in termux

```bash
$ pkg upgrade
$ apt update
$ apt upgrade
$ pkg install proot-distro
$ proot-distro install alpine
$ proot-distro login alpine
```

2. In alpine install chromium
```bash
$ apk update && apk add --no-cache nmap && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache \
    chromium
```

3. Install [nodejs](https://nodejs.org/), [yarn](https://yarnpkg.com/), [git](https://git-scm.com/downloads), and [openssh](https://www.openssh.com/)
   
```bash
$ apk add nodejs
$ apk add yarn
$ apk add git
$ apk add openssh
```

4. Add your SSH Public Key to your GitHub account ([more info](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?platform=linux)). In ssh-keygen use the default values (press enter)

```bash
$ ssh-keygen
$ cat ~/.ssh/id_rsa.pub
```

Copy its content and paste it into your GitHub account in [https://github.com/settings/ssh/new](https://github.com/settings/ssh/new)

![](doc/8.png?raw=true)


5. Clone this repository in terminal (fingerprint: yes)

```bash
$ git clone git@github.com:jfadev/bottok.git
```

6. Install Bot Tok
```bash
$ cd bottok
$ yarn install
```

*Note:* To enter Alpine from Termux with [proot-distro](https://github.com/termux/proot-distro) use the following command:
```bash
$ proot-distro login alpine
```

## Update

#### Windows

1. Run in terminal

```bash
$ cd bottok
$ win-update.bat
```

#### Linux

1. Run in terminal

```bash
$ cd bottok
$ ./ubuntu-update.sh
```

#### Android (Termux)

1. Run in terminal

```bash
$ cd bottok
$ ./alpine-update.sh
```
*Note:* use `./ubuntu-update.sh` if instead of alpine you decided to use another distro like ubuntu for example.

## Use

Type the following command in your terminal:

```bash
$ cd bottok
$ node bottok.js
```
And follow the instructions, solve the captcha in the console if necessary, choose one of the available tasks and let the bot work.

>**Attention:** On Windows you can open BotTok by simply clicking on the `win-bottok.bat` file.

>**Attention:** On Windows Chromium can have the problem of opening multiple windows. We can control another browser like Chrome present on your machine. For this we just need the path to chrome.exe and launch BotTok as follows:

```bash
node bottok.js -b "C:\Program Files\Google\Chrome\Application\Chrome.exe"
```

## Options

```txt
Usage: node bottok.js [options]

Options:
  -h, --help             Show help
  -v, --version          BotTok version
  -l, --video <link>     TikTok video URL to perform the task on
  -t, --task <task>      Task to perform on the TikTok video (example: 'Up Views')
  -c, --cookies <path>   File path to store session cookies (default: cookies.json)
  -u, --user-agent <ua>  User agent to be used (default: random user-agent)
  -p, --proxy <proxy>    The proxy to be used (example: http://localhost:8080)
  -s, --proxies <path>   The path of the proxies file to use randomly (default: proxies.txt)
  -b, --browser <path>   Path to a browser executable to use instead of Chromium  
  -w, --no-headless      Open visible browser window  
  -k, --terminal-captcha Terminal captcha instead of auto solver  
  -o, --log              Write activity log (activity.log)
  -m, --minimal          Hide ASCII art header
  -d, --detach           Output mode for background processes
  -x, --limit <int>      By the time the accumulation limit is reached
  -b, --verbose          Display detailed processing information in logs
```

## Advanced

#### Run a Task with a Video Directly

Set task with `-t` flag (`Up Views`, `Up Shares`, `Up Favorites`) and video url with `-l` flag.
```bash
$ node bottok.js -t 'Up Views' -l https://www.tiktok.com/@jfadev/video/7216697213693529349
```

#### Limit Task Accumulations

Set the limit accumulations value with `-x` flag. The bot will stop when this limit is reached.
```bash
$ node bottok.js -t 'Up Views' -x 20000 -l https://www.tiktok.com/@jfadev/video/7216697213693529349
```


#### Use Custom Cookies

```bash
$ node bottok.js -c cookies2.json
```

#### Use Proxy

```bash
$ node bottok.js -p 127.0.0.1:8080
```
or
```bash
$ node bottok.js -p http://127.0.0.1:8080
```
or
```bash
$ node bottok.js -p user:password@127.0.0.1:8080
```
#### Use a Random Proxy from a List

```bash
$ node bottok.js -s proxies.txt
```

File example:
```txt
202.61.204.51:80
47.91.45.198:8888
user:password@47.91.45.198:8888
user2:password2@202.61.204.51:80
```

#### Use Custom User-Agent

```bash
$ node bottok.js -u 'Mozilla/5.0 (iPad; CPU OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4'
```

#### Use Custom Browser

Path to a browser executable to use instead of the bundled Chromium.
Note that Puppeteer is only guaranteed to work with the bundled Chromium, so use this setting at your own risk.

*Linux*
```bash
$ node bottok.js -b /usr/bin/google-chrome-stable
```

*Windows*
```bash
$ node bottok.js -b "C:\Program Files\Google\Chrome\Application\Chrome.exe"
```

#### Run with Visible Browser Window

```bash
$ node bottok.js -w
```

#### Use Terminal Captcha in Premium

If the auto captcha solver has problems you can solve the captcha manually.
```bash
$ node bottok.js -k
```

#### Write Activity Log

Stored in the `activity.log` file

```bash
$ node bottok.js -o
```
Record structure:
[`datetime`] [`user-gent`] [`session-id`] [`task`] `total` (+`accumulations`) `URL`

![](doc/7.png?raw=true)

## Expert

#### Detach Mode

With the `-d` or `--detach` flag BotTok manages to work as a background process opening many interesting possibilities.

#### Multi Task Mode

We provide a batch script in both Windows and Linux versions. This batch process reads from the `tasks.csv` file one task per line and launches bottok background processes with one task, one video and a specific accumulation limit in a loop. The number of simultaneous tasks will depend on the resources of your device. Feel free to modify this simple script to suit your needs. 

**Example of tasks.csv:**

Column structure:
`task`,`limit`,`URL`

Limit 0 = unlimited

![](doc/9.png?raw=true)

```txt
Up Views,10000,https://www.tiktok.com/@user/video/7218328781327584518
Up Favorites,500,https://www.tiktok.com/@user/video/7218328781327584518
Up Shares,1000,https://www.tiktok.com/@user/video/7218328781327584518
Up Views,50000,https://www.tiktok.com/@user/video/7208664677738450181
Up Favorites,5000,https://www.tiktok.com/@user/video/7208664677738450181
Up Shares,2000,https://www.tiktok.com/@user/video/7208664677738450181
Up Views,0,https://www.tiktok.com/@user/video/7194941936069922053
Up Favorites,15000,https://www.tiktok.com/@user/video/7194941936069922053
Up Shares,9000,https://www.tiktok.com/@user/video/7194941936069922053
```

Edit your `tasks.csv` file and run the batch process `multi-task.sh` or `multi-task.bat`.

*Linux*
```bash
$ ./multi-tash.sh
```
or with custom tasks file path
```bash
$ ./multi-tash.sh tasks.csv
```

*Windows*
```bash
$ multi-task.bat
```
or with custom tasks file path
```bash
$ multi-task.bat tasks.csv
```
![](doc/11.png?raw=true)

Or use the -b or --verbose flags to display more detailed information.
![](doc/10.png?raw=true)

## Premium (No Limitations)

The **FREE** version limited to **~5000** accumulations (views, likes, shares, etc...).

The advantage of acquiring the license is that the bot continues to 
work indefinitely and accumulates large amounts of views, shares, etc...
Unlock this limitation by purchasing a license at [HERE!](https://jordifernandes.com/service/bottok)

Paste a License Key here:

![](doc/4.png?raw=true)

## Donate

If you want to give a donation for the developers, you can do it here https://jordifernandes.com/donate/
Thank you very much!!!!

## Authors

- [Jordi Fernandes (@jfadev)](https://github.com/jfadev)