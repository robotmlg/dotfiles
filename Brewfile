cask_args appdir: "/Applications"
tap "teamookla/speedtest"

brew "mas"

mas "bookmarker for pinboard", id:1451400394
mas "broadcasts", id:1469995354
mas "dark-mode-for-safari", id:1397180934
mas "deliveries", id:290986013
mas "Downlink", id:1454269192
mas "drafts", id:1435957248
mas "Numbers", id: 409203825
mas "Pages", id: 409201541
mas "pcalc", id:403504866
mas "StopTheMadness", id:1376402589
mas "Soulver 2", id:413965349
mas "TestFlight", id:899247664
mas "Vinegar - Tube Cleaner", id:1591303229
mas "Baking Soda - Tube Cleaner", id:1601151613
mas "wipr", id:1320666476

# core
cask "1password"
cask "aerial"
cask "apptrap"
cask "bartender"
cask "bbedit"
cask "bettertouchtool"
cask "coconutbattery"
cask "dash" 
cask "homebrew/cask-versions/discord-canary"
cask "docker" 
cask "fantastical"
cask "firefox"
cask "grandperspective"
cask "istat-menus"
cask "iterm2"
cask "karabiner-elements"
cask "mactex"
cask "slack-beta"
cask "the-unarchiver"

# personal
cask "netnewswire"
cast "twitterific"

# video
cask "handbrake"
cask "makemkv"
cask "iina"
cask "xact"

# Rogue Amoeba
cask "audio-hijack"
cask "loopback"
cask "soundsource"

brew "cloc"
brew "coreutils"
ALL_FFMPEG_OPTIONS = `brew options ffmpeg | grep -vE '\s' | grep -- '--with-'`.gsub("--", "").split("\n")
brew "ffmpeg", args: ALL_FFMPEG_OPTIONS
brew "fortune"
brew "git"
brew "gh"
brew "gti"
brew "nmap"
brew "reattach-to-user-namespace"
brew "sl"
brew "speedtest"
brew "ssh-copy-id"
brew "stow"
brew "streamlink"
brew "thefuck"
brew "tmux"
brew "todo-txt"
brew "tree"
brew "vim"
brew "wget"
brew "yt-dlp"

# do xcode last because it takes forever
mas "xcode", id:497799835
