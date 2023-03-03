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
* Captcha in Terminal
* Save Cookies (Zefoy Session)
* Random User Agent
* Proxy
* Run in Windows, Linux and Android (Termux)

## Install

#### Windows

Requirements: [nodejs](https://nodejs.org/) >=18 (Latest [maintenance LTS](https://github.com/nodejs/Release#release-schedule) version),
 [npm](https://www.npmjs.com/) and [chrome/chromium](https://www.chromium.org/chromium-projects/).

1. Download and Install [nodejs](https://nodejs.org/en/download/)
2. [Download](https://github.com/jfadev/bottok/releases) or clone this repository in terminal

```bash
$ git clone git@github.com:jfadev/bottok.git
```

3. Install Bot Tok

```bash
$ cd bottok
$ npm install
```

#### Linux

Requirements: [nodejs](https://nodejs.org/) >=18 (Latest [maintenance LTS](https://github.com/nodejs/Release#release-schedule) version),
 [npm](https://www.npmjs.com/) and [chrome/chromium](https://www.chromium.org/chromium-projects/).

![](doc/1.png?raw=true)

1. Install [nodejs](https://nodejs.org/)
   
```bash
$ sudo apt install nodejs
```

2. [Download](https://github.com/jfadev/bottok/releases) or clone this repository in terminal

```bash
$ git clone git@github.com:jfadev/bottok.git
```

3. Install Bot Tok
```bash
$ cd bottok
$ npm install
```

#### Android

Requirements: [termux](https://termux.dev/en/)

There is no build of Google Chrome available for ARM at this moment, so using chromium instead.
Installing chromium on Termux directly requires snap which is another big hurdle so alternatively using alpine distro here.

![](doc/5.png?raw=true)

1. Install [alpine](https://alpinelinux.org) in termux

```bash
$ apt update
$ apt upgrade
$ pkg install proot-distro
$ proot-distro install alpine
$ proot-distro login alpine
$ apk update && apk add --no-cache nmap && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache \
    chromium
```

2. Install [nodejs](https://nodejs.org/) and [npm](https://www.npmjs.com/)
   
```bash
$ apk add nodejs
$ apk add npm
```

3. [Download](https://github.com/jfadev/bottok/releases) this repository

```bash
$ wget https://github.com/jfadev/bottok/archive/refs/tags/v1.0.0.zip
$ unzip v1.0.0.zip bottok
```

4. Install Bot Tok
```bash
$ cd bottok
$ npm install
```


## Use

```bash
$ node bottok.js
```
And follow the instructions, solve the captcha in the console if necessary, choose one of the available tasks and let the bot work.

## Advanced

##### Use Proxy

```bash
$ node bottok.js -p http://127.0.0.1:8080
```

##### Use Custom User Agent

```bash
$ node bottok.js -u 'Mozilla/5.0 (iPad; CPU OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4'
```

## Options

```txt
Usage: node bottok.js [options]

Options:
  -h, --help            Show help
  -v, --video <link>    TikTok video URL to perform the task on
  -t, --task <task>     Task to perform on the TikTok video (example: 'Up Views')
  -c, --cookies <file>  File path to store session cookies (default: cookies.json)
  -u, --user-agent <ua> User agent to be used (default: random user-agent)
  -p, --proxy <proxy>   The proxy to be used (example: http://localhost:8080)  
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