# Created by Declan Mullen
# Git repository can be found at: https://github.com/declancm/git-commit-kit

if (&git rev-parse --git-dir | Out-Null) {
  $branch= &git rev-parse --abbrev-ref HEAD
  $gitDirectory= &git rev-parse --show-toplevel
  Push-Location $gitDirectory
  $remote= &git remote
  Start-Process -Wait "git add ."
  $dateAndTime= Get-Date -Format "
  Start-Process -Wait "auto commit @


}

