# dotfiles

Install and configure frequently used software for macOS and Debian-based Linux (CLI only). Inspired by https://github.com/stefanscherer/dotfiles.

## Restoring system

Clone the repository and run the restore script:

```bash
$ git clone https://github.com/scherermichael/dotfiles && dotfiles/restore.sh
```

This will install a set of commonly used software and copy the config files to the appropriate locations.

You can run `./restore.sh` any time to reset your system to the state stored in the dotfiles.

Use option `--no-scripts` to only re-initialize the configuration files.

## Creating snapshot of current system

In order to store the current configuration for later use run `./snapshot.sh`, commit the changes, and push it:

  ```bash
  $ ./snapshot.sh
  $ git add files && commit -m "Update configuration" && git push
  ```

All configuration files in the `files` folder will be updated, a new list of Homebrew packages generated, installed VS Code extentions and installed or disabled Atom plugins stored.

## Repository Layout

### files

All files that you want to copy to the local system are located under the `files` directory. It will be mapped to the user's home directory when copying the files.

### scripts

The `scripts` directory contains scripts for installing software and other setup tasks. A script must end with the suffix `.sh` and its executable flag must be set.

The scripts run **before** the `files` directory will be copied.

Folders on the same level will be processed in alphabetical order. Subfolders will be processed **before** their parent folder.

The platform is provided by the environment variable `OS` (see [lib/common.sh](lib/common.sh) for possible values). So, to run a script only on eg. MacOS, start with the following line:

```bash
[ "${OS}" == "macos" || exit 0
```

The variable `${IS_VM}` is set to `true` if the script runs in a VMware VM.

*Please note:* The working dir is always the main folder of the repository.

### private

The folder `private` will be excluded from commits.

If you place a file with the name `environment` in this folder, it will be sourced by `.bash_profile`. It's an easy way to export secret environment variables that can be used by other scripts.  

*Please note:* Do not forget to create a backup of the data in this folder. It will **not** be stored by Git!

#### Vagrant

The file `/vagrant/private/environment` will also be sourced if it exists. As you might know, the guest's folder `/vagrant` is synced with the host. On the host, just copy your dotfiles' `private` folder. After that, all private environment variables will be available in the VM, too.

To do so, open the synced folder of the VM on the host and run:

```bash
cp -r ~/dotfiles/private .
```
