# Bot Tok

Bot Tok is an TikTok Up Bot (likes, followers, shares, favorites and views)
based in node.js, puppeteer and zefoy.com.

🚨 Find help in [Telegram](https://t.me/bottok_help)

>**Attention:** Bot Tok automates the use of the zefoy.com and is subject to availability. Not all modes are available at all times. It depends on whether they are available on Zefoy at the moment.

>**Disclaimer:** Using a TikTok viewbot is against the platform's Terms of Service. We do not encourage the act or idea of artificially increasing the number of views, likes, shares or favorites of your videos. The use of BotTok is at the user's own risk.

📦 [Downloads](https://github.com/jfadev/bottok/releases)
## Features

* Up Followers
* Up Views
* Up Hearts
* Up Shares
* Up Favorites
* Up Comment Hearts
* Video URLs History
* Captcha in Terminal (Free Mode)
* Auto Captcha Solver (Premium Mode)
* Save Cookies (Zefoy Session)
* Random User-Agent
* Proxy
* Activity Log
* Run in Windows, Linux and Android (Termux)

## Install

>**Attention:** To use Git and clone the repository you will need to have *SSH Public Key*. Take a look at this: [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
Without this you may have problems installing. This will make it much easier to upgrade your BotTok to the latest version available with a single command.

>The following installation commands are provided for each operating system. Execute the command corresponding to your OS and follow the instructions, choose the default values by pressing enter or typing Y as appropriate. At some point during the installation a public ssh key will be generated and you will need to paste it into your GitHub account to continue. You can look in this documentation in the manual installation of your OS at the "Add your SSH Public Key" step for more details. After doing this step you will need to press enter on the tarminal to finish the installation. If everything went well BotTok should open.

#### Windows

📹 [Install in Windows Tutorial](.)

>**Attention:** Windows Defender may recognize BotTok as a virus. In this case you should temporarily disable the real-time scanning and install it.

First look at [how to add a SSH Public Key](https://medium.com/devops-with-valentine/2021-how-to-set-up-your-ssh-key-for-github-on-windows-10-afe6e729a3c0) in your github account on Windows.


1. Save the Windows installer file [win-install.bat](https://raw.githubusercontent.com/jfadev/bottok/main/win-install.bat) to your user folder and run it.
Or Run in terminal

```bash
curl -o win-install.bat https://raw.githubusercontent.com/jfadev/bottok/main/win-install.bat & win-install.bat
```

#### Linux

📹 [Install in Linux Tutorial](.)

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
  -c, --cookies <file>   File path to store session cookies (default: cookies.json)
  -u, --user-agent <ua>  User agent to be used (default: random user-agent)
  -p, --proxy <proxy>    The proxy to be used (example: http://localhost:8080)
  -b, --browser <path>   Path to a browser executable to use instead of Chromium  
  -w, --no-headless      Open visible browser window  
  -k, --terminal-captcha Terminal captcha instead of auto solver  
  -o, --log              Write activity log (activity.log)
  -m, --minimal          Hide ASCII art header
```

## Advanced

##### Use Custom Cookies

```bash
$ node bottok.js -c cookies2.json
```

##### Use Proxy

```bash
$ node bottok.js -p http://127.0.0.1:8080
```

##### Use Custom User-Agent

```bash
$ node bottok.js -u 'Mozilla/5.0 (iPad; CPU OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4'
```

##### Use Custom Browser

Path to a browser executable to use instead of the bundled Chromium.
Note that Puppeteer is only guaranteed to work with the bundled Chromium, so use this setting at your own risk.

###### Linux
```bash
$ node bottok.js -b /usr/bin/google-chrome-stable
```

###### Windows
```bash
$ node bottok.js -b "C:\Program Files\Google\Chrome\Application\Chrome.exe"
```

##### Run with Visible Browser Window

```bash
$ node bottok.js -w
```

##### Use Terminal Captcha in Premium

If the auto captcha solver has problems you can solve the captcha manually.
```bash
$ node bottok.js -k
```

##### Write Activity Log

Stored in the `activity.log` file

```bash
$ node bottok.js -o
```
Record structure:
[`datetime`] [`user-gent`] [`session-id`] [`task`] `total` (+`accumulations`) `URL`

![](doc/7.png?raw=true)

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