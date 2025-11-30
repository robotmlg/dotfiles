cask_args appdir: "/Applications"
tap "teamookla/speedtest"

brew "mas"

mas "broadcasts", id:1469995354
# mas "Downlink", id:1454269192
mas "drafts", id:1435957248
mas "Numbers", id: 409203825
mas "Pages", id: 409201541
mas "pcalc", id:403504866
mas "TestFlight", id:899247664
mas "Vinegar - Tube Cleaner", id:1591303229
mas "Baking Soda - Tube Cleaner", id:1601151613

# core
cask "1password"
cask "aerial"
cask "apptrap"
cask "bbedit"
cask "bettertouchtool"
cask "coconutbattery"
cask "dash" 
cask "fantastical"
cask "firefox"
cask "grandperspective"
cask "istat-menus"
cask "iterm2"
cask "karabiner-elements"
cask "mactex"
cask "syntax-highlight"
cask "the-unarchiver"

# personal
cask "netnewswire"

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
# mas "xcode", id:497799835
