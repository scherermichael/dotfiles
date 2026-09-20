# dotfiles

Install and configure frequently used software for macOS and Debian-based Linux (shell only). Inspired by https://github.com/stefanscherer/dotfiles.

## Restoring system

Clone the repository and run the restore script:

```sh
git clone https://github.com/scherermichael/dotfiles && dotfiles/restore.sh
```

This will install a set of commonly used software and copy the config files to the appropriate locations.

The folder `private` is not part of the repository (see below), so on a new machine copy it in by hand before running the script, or run the script again once you have.

You can run `./restore.sh` any time to reset your system to the state stored in the dotfiles.

Use option `--no-scripts` to only re-initialize the configuration files. Private files are then staged but not installed, because a script does the installing.

Use option `--no-sudo` to run only scripts that do not require sudo permissions.

## Creating snapshot of current system

In order to store the current configuration for later use, run `./snapshot.sh`, commit the changes, and push it:

```sh
./snapshot.sh
git add files && git commit -m "Update configuration" && git push
```

All configuration files in the `files` folder will be updated, a new list of Homebrew taps and packages generated, installed VS Code extentions and installed or disabled Atom plugins stored.

The snapshot mirrors the machine: a file or `.syncfolder` directory that no longer exists locally is removed from the repository as well, as is a symlink whose target is gone, so deleting a configuration file on the machine drops it from the next snapshot. Review the output and `git status` before committing.

This applies to `files` only. Nothing is ever removed from `private`, which is not covered by Git — see below.

`snapshot.sh` only runs on macOS. The Linux machines are VMs that `restore.sh` sets up once and that never snapshot back.

## Repository Layout

### files

All files that you want to copy to the local system are located under the `files` directory. It will be mapped to the user's home directory when copying the files.

If you create a directory under `files` and store an empty file `.syncfolder` in it, all files and directories under this root directory will be synced. This way you do not need to specify every single file in that directory. **Please note:** Since Git only stores files, empty directories will not be restored.

If you backup a directory via `.syncfolder`, you can skip sub-directory by placing a file with the name `.nosyncfolder` into it. The sub-folder itself (containing the file `.nosyncfolder`) will be included, but all other files and directories under this sub-directory will be ignored.

### scripts

The `scripts` directory contains scripts for installing software and other setup tasks. A script must end with the suffix `.sh` and its executable flag must be set.

The scripts run **before** the `files` directory will be copied.

Folders on the same level will be processed in alphabetical order. Subfolders will be processed **before** their parent folder.

The platform is provided by the environment variable `OS` (see [lib/common.sh](lib/common.sh) for possible values). So, to run a script only on eg. MacOS, start with the following line:

```sh
[ "${OS}" = "macos" ] || exit 0
```

The variable `${IS_VM}` is set to `true` if the script runs inside a VMware or Virtualbox VM.

*Please note:* Working dir is always the main folder of the repository.

### private

The folder `private` is excluded from commits. It is where everything goes that must not end up in a public repository.

**The repository is the master copy.** Edit a private file in `private`, never in `$HOME/private`: the copy there is overwritten by the next restore, and the snapshot cannot read an edit back from it.

`restore.sh` **stages** the whole folder to `$HOME/private`, and whatever needs something private reads it from there. A file whose application cannot be pointed at `$HOME/private` is **installed** on top of that, to its own path and mode 600, by `scripts/90_agent_configs.sh`.

If you add the file `environment` to this folder, it will be sourced by your shell. It's an easy way to export secret environment variables that can be used by other scripts. `restore.sh` reads it from the repository rather than the staged copy, so it also works on a machine that has never been restored; it falls back to the mounted `/vagrant/dotfiles` and then to `$HOME/private`, and prints which one it used.

**`snapshot.sh` never deletes from `private`.** It refreshes a private file only when a copy exists at `$HOME/<path>` — which is true for installed files only, since a staged file sits under `$HOME/private` instead and has nothing at its own path to compare against. Retiring a private file is a manual delete, in the repository, in `$HOME/private` and in the backup.

Do not add a private file whose path collides with a real file in `$HOME`, or the snapshot overwrites the private copy with the unrelated one.

#### Backup

On macOS, `restore.sh` copies `$HOME/private` to `~/Library/Mobile Documents/com~apple~CloudDocs/dotfiles/backup/<machine>/`, under the machine's local host name, before it overwrites that folder. It backs up the copy on the machine rather than the one in the repository, because that is the only one that can hold something the repository does not: a file edited in place, or one the repository has since dropped.

This is a **backup, not a transport**. Nothing ever reads it back, it holds one generation only, and because the copy never deletes it may still hold files and secrets you have long retired. Each machine writes under its own name, so recovering means picking the right machine's folder.

#### Vagrant

The VM's folder `/vagrant` is synced with the `vagrant` folder on the host (where your `Vagrantfile` is located). Copy your `dotfiles` folder to use it within the VM:

```sh
cp -r <this repository> "<vagrant folder>/dotfiles"
```

The file `/vagrant/dotfiles/private/environment` will also be sourced if it exists. So, all private environment variables will be available in the VM, too.
