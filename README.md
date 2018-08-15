# dotfiles

Install and configure frequently used software for Mac and (Debian-based) Linux. Inspired by https://github.com/stefanscherer/dotfiles.

## Initial setup

Clone the repository and run the initialization script:

```bash
$ cd ~ && git clone https://github.com/scherermichael/dotfiles && cd dotfiles && ./init.sh
```

This will install a set of commonly used software and copy the config files to the appropriate locations.

*Please note:* By default, only a subset of all stored software packages will be installed. To install all packages, use `./init.sh --full`:

```bash
$ cd ~ && git clone https://github.com/scherermichael/dotfiles && cd dotfiles && ./init.sh --full
```

The additional packages are listed in [scripts/10_brew-cask/packages.full.list](scripts/10_brew-cask/packages.full.list).

If you only want to update your configuration, use:

```bash
$ cd ~ && git clone https://github.com/scherermichael/dotfiles && cd dotfiles && ./restore.sh
```

## Backup

In order to backup the configuration files for later use, you have to copy all registered config files back to the repository, commit the changes, push it to the origin:

  ```bash
  $ cd ~/dotfiles && ./backup.sh
  ```

*Please note:* Any merge conflict that may occur must be resolved by hand. Please watch the output of the script.

## Restore

Restoring the configuration from the repository is just as simple. There is a script that fetches all changes from the repository and overwrites the local config files:

```bash
$ cd ~/dotfiles && ./restore.sh
```

*Please note:* The `init` folder will not be processed. Config files that no longer exist in the repository will not be deleted on the local system.

## Repository Layout

### files

All files that you want to copy to the local system are located under the `files` directory. It will be mapped to the user's home directory when copying the files.

### init

The `init` directory contains scripts for installing software and other setup tasks. A script must end with the suffix `.sh` and its executable flag must be set.

The scripts run **before** the `files` directory will be copied.

Folders on the same level will be processed in alphabetical order. Subfolders will be processed **before** their parent folder.

The platform is provided by the environment variable `OS` (see [lib/common.sh](lib/common.sh) for possible values). So, to run a script only on OS X, start with the following line:

```bash
if [ "${OS}" != "macos" ]; then exit; fi
```

*Please note:* The working dir will be set to the folder that contains the script.

### private

The folder `private` will be excluded from commits.

If you place a file with the name `environment` in this folder, it will be sourced by `.bash_profile`. It's an easy way to export secret environment variables that can be used by other scripts.  

*Please note:* Do not forget to create a backup of the data in this folder. It will NOT be stored by Git!

#### Vagrant

The file `/vagrant/private/environment` will also be sourced if it exists. As you might know, the guest's folder `/vagrant` is synced with the host. On the host, just copy your dotfiles' `private` folder. After that, all private environment variables will be available in the VM, too.

To do so, open the synced folder of the VM on the host and run:

```bash
cp -r ~/dotfiles/private .
```
