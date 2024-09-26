# Quick Kolbot/SoloPlay installer

## How to use
- Download this repo
- Open up the repo in powershell and run `.\installer.sh`

## Alternative w/o cloning this repo directly
### WebRequest
- Open PowerShell and run the following command:
  ```powershell
  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/theBGuy/kolbot-soloplay-installer/master/installer.sh" -OutFile "installer.sh"; ./installer.sh
  ```

### curl
- Open cmd and run the following command:
  ```bash
  curl -sL "https://raw.githubusercontent.com/theBGuy/kolbot-soloplay-installer/master/installer.sh" | bash
  ```

## Why?
Made this because a lot of people have gotten this wrong so this is to make it easy to get set up quickly.