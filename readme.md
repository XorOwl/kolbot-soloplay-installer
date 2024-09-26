# Quick Kolbot/SoloPlay installer

## How to use
- Download this repo
- Open up the repo in powershell and run `.\installer.sh`

## Alternative w/o cloning this repo directly
### WebRequest
- Open PowerShell and run the following command:
  ```powershell
  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/yourusername/yourrepo/main/installer.sh" -OutFile "installer.sh"; ./installer.sh
  ```

### curl
- Open PowerShell and run the following command:
  ```powershell
  curl -sL "https://raw.githubusercontent.com/yourusername/yourrepo/main/installer.sh" | bash
  ```

## Why?
Made this because a lot of people have gotten this wrong so this is to make it easy to get set up quickly.