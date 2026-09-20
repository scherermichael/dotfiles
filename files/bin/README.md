# Bin folder

Here are scripts located that can be used by the user to automate certain tasks.

- `BitBar`  
  Folder contains scripts for [BitBar](https://github.com/matryer/bitbar).

- `New Safari.app`  
  Automator app to start a new instance of Safari.

- `Open RTM.app`  
  Automator app to start Remember the Milk in the background. Can be included in the user's startup configuration.

- `Open Safari.app`  
  Automator app to start Safari in the background. Can be included in the user's startup configuration.

- `Open Slack.app`  
  Automator app to start Slack in the background. Can be included in the user's startup configuration.

- `Start Black Slideshow.app`  
  Automator app to start Powerpoint with a black slide show in presentation mode. Allows to let the display stay on.

- `Timing/enable.sh`  
  Give Timing permissions to control the computer (System Preferences > Security & Privacy > Privacy > Accessibility).

- `connect-peripherals.sh`  
  Connect to Bluetooth devices.

- `create-dm-vm.sh`  
  Create VM via docker-machine.

- `enable-sudo-touchid-watch.sh`  
  Enable to use fingerprint sensor or Apple Watch instead of password for sudo.

- `install-node.sh`  
  Install a new Node.js version and some often used global modules.

- `kops-login.sh`  
  Source script to activate KOPS credentials in shell.

- `lmx`  
  One command for the local LLM slot (rapid-mlx and LM Studio). Port 8000 is treated as a single slot because 32 GB fits one large model, so `lmx up` always releases the previous one first. Also keeps the two model stores from downloading the same repo twice: `lmx pull` routes by format and refuses anything already on disk, and `lmx link` makes an HF-cache model visible to LM Studio through a symlink rather than a second copy. Deleting goes through `lmx rm` rather than LM Studio's GUI, because half those entries are links into the HF cache and `lmx rm` only ever unlinks them — it names every path and its size and makes you type the model name first. `lmx help` for the commands, `lmx doctor` when something looks wrong. From another machine: `ssh -N lmx` opens a forward to port 8000 here, and opencode there points at `127.0.0.1:8000` exactly as it does on this one — the port is never bound to the LAN, because LM Studio offers no authentication of any kind.

- `main-display-external.sh`  
  Open settings and switch main view to external monitor.

- `main-display-notebook.sh`  
  Open settings and switch main view to built-in monitor.

- `scribe2obsidian.scpt`  
  Apple Script that can run as a cron job (`*/5 * * * * osascript /Users/michael/bin/scribe2obsidian.scpt`) for scanning a mail folder for Amazon mails to import a Kindle Scribe PDF and transcription. A rule must be defined to move such mails into a dedicated folder. Runs scribe2obsidian.sh for the actual import. Please Note: Please note: Using such a script directly as an Apple Mail rule has proven to be unreliable as the mail content could not always be retrieved.
  
- `stechuhr.sh`  
  Script to log login events if added to user's startup configuration.

- `toggle-terminal-theme.sh`  
  Toggle terminal between dark and light theme.

- `wma2mp3.sh`  
  Convert WMA files to MP3.
