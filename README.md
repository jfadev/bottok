# Bot Tok

Bot Tok is an TikTok Up Bot (likes, followers, shares, favorites and views)
based in node.js, puppeteer and zefoy.com.

🛟 Find help in [Telegram](https://t.me/bottok_help)

>**Attention:** Bot Tok automates the use of the zefoy.com and is subject to availability. Not all modes are available at all times. It depends on whether they are available on Zefoy at the moment.

>**Attention:** *Disclaimer*: Using a TikTok viewbot is against the platform's Terms of Service. We do not encourage the act or idea of artificially increasing the number of views, likes, shares or favorites of your videos. The use of BotTok is at the user's own risk.

📦 [Downloads](https://github.com/jfadev/bottok/releases)
## Features

* Up Followers
* Up Views
* Up Likes
* Up Shares
* Up Favorites
* Up Comment Likes
* Video URLs History
* Captcha in Terminal (free mode)
* Auto Captcha Solver (premium mode)
* Save Cookies (Zefoy Session)
* Random User-Agent
* Proxy
* Run in Windows, Linux and Android (Termux)

## Install

#### Windows

1. Run in terminal

```bash
curl -o win-install.bat https://raw.githubusercontent.com/jfadev/bottok/main/win-install.bat & win-install.bat

```

#### Linux

![](doc/1.png?raw=true)


1. Run in terminal

```bash
wget https://raw.githubusercontent.com/jfadev/bottok/main/ubuntu-install.sh && chmod +x ubuntu-install.sh && ./ubuntu-install.sh
```

#### Android (Termux)

![](doc/5.png?raw=true)

Requirements: [termux](https://termux.dev/en/)

1. Run in Termux terminal

```bash
pkg install wget && wget https://raw.githubusercontent.com/jfadev/bottok/main/termux-install.sh && chmod +x termux-install.sh && ./termux-install.sh
```

2. Run in Alpine terminal

```bash
wget https://raw.githubusercontent.com/jfadev/bottok/main/alpine-ssh-keygen.sh && chmod +x alpine-ssh-keygen.sh && ./alpine-ssh-keygen.sh
```
```bash
wget https://raw.githubusercontent.com/jfadev/bottok/main/alpine-install.sh && chmod +x alpine-install.sh && ./alpine-install.sh
```

## Manual Install

#### Windows

Requirements: [git](https://git-scm.com/downloads), [nodejs](https://nodejs.org/) >=18 (Latest [maintenance LTS](https://github.com/nodejs/Release#release-schedule) version),
 [npm](https://www.npmjs.com/) and [chrome/chromium](https://www.chromium.org/chromium-projects/).

1. Download and Install [nodejs](https://nodejs.org/en/download/)

2. Clone this repository in terminal

```bash
$ git clone git@github.com:jfadev/bottok.git
```

3. Install Bot Tok

```bash
$ cd bottok
$ npm install
```

#### Linux

🛟 [Install in Linux (Ubuntu) video](https://www.youtube.com/watch?v=1KEFIpNocjs)

Requirements: [git](https://git-scm.com/downloads), [nodejs](https://nodejs.org/) >=18 (Latest [maintenance LTS](https://github.com/nodejs/Release#release-schedule) version),
 [npm](https://www.npmjs.com/) and [chrome/chromium](https://www.chromium.org/chromium-projects/).


1. Install [nodejs](https://nodejs.org/)
   
```bash
$ sudo apt install nodejs
$ sudo apt install npm
$ sudo apt install git
```

2. Clone this repository in terminal

```bash
$ git clone git@github.com:jfadev/bottok.git
```

3. Install Bot Tok
```bash
$ cd bottok
$ npm install
```

#### Android (Termux)

Requirements: [termux](https://termux.dev/en/)

There is no build of Google Chrome available for ARM at this moment, so using chromium instead.
Installing chromium on Termux directly requires snap which is another big hurdle so alternatively using alpine distro here.

1. Install [alpine](https://alpinelinux.org) in termux

```bash
$ apt update
$ apt upgrade
$ pkg install proot-distro
$ proot-distro install alpine
$ proot-distro login alpine
```
In alpine:
```bash
$ apk update && apk add --no-cache nmap && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache \
    chromium
```

2. Install [git](https://git-scm.com/downloads), [nodejs](https://nodejs.org/) and [npm](https://www.npmjs.com/)
   
```bash
$ apk add nodejs
$ apk add npm
$ apk add git
```

3. Clone this repository in terminal

```bash
$ git clone git@github.com:jfadev/bottok.git
```

4. Install Bot Tok
```bash
$ cd bottok
$ npm install
```

To enter Alpine from Termux use the following command:
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

## Use

```bash
$ node bottok.js
```
And follow the instructions, solve the captcha in the console if necessary, choose one of the available tasks and let the bot work.

## Options

```txt
Usage: node bottok.js [options]

Options:
  -h, --help            Show help
  -v, --version         BotTok version
  -l, --video <link>    TikTok video URL to perform the task on
  -t, --task <task>     Task to perform on the TikTok video (example: 'Up Views')
  -c, --cookies <file>  File path to store session cookies (default: cookies.json)
  -u, --user-agent <ua> User agent to be used (default: random user-agent)
  -p, --proxy <proxy>   The proxy to be used (example: http://localhost:8080)
  -b, --browser <path>  Path to a browser executable to use instead of Chromium   
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

```bash
$ node bottok.js -b /usr/bin/google-chrome-stable
```
or
```bash
$ node bottok.js -b 'C:/Program Files (x86)/Google/Chrome/Application/chrome.exe'
```

## Premium (No Limitations)

The FREE version limited to ~5000 accumulations (views, likes, shares, etc...).

The advantage of acquiring the license is that the bot continues to 
work indefinitely and accumulates large amounts of views, shares, etc...
Unlock this limitation by purchasing a license at [here](https://jordifernandes.com/service/bottok)

Paste a License Key here:

![](doc/4.png?raw=true)

## Authors

- [Jordi Fernandes (@jfadev)](https://github.com/jfadev)