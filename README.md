# dotfiles

Install and configure frequently used software for Mac and (Debian-based) Linux. Inspired by https://github.com/stefanscherer/dotfiles.

## Initial setup

Clone the repository and run the initialization script:

```bash
$ git clone https://github.com/scherermichael/dotfiles && cd dotfiles && ./init.sh
```

This will install a set of commonly used software and copy the config files to the appropriate locations.

*Please note:* By default, only a subset of all stored software packages will be installed. To install all packages, use `./init.sh --full`:

```bash
$ git clone https://github.com/scherermichael/dotfiles && cd dotfiles && ./init.sh --full
```

The additional packages are listed in [scripts/10_brew-cask/packages.full.list](scripts/10_brew-cask/packages.full.list).

If you only want to update your configuration, use:

```bash
$ git clone https://github.com/scherermichael/dotfiles && cd dotfiles && ./restore.sh
```

## Backup

In order to backup the configuration files for later use, we have to copy all registered config files back to the repository, commit the changes, push it to the origin. To do so, switch to the `dotfiles` dir and type:

  ```bash
  $ ./backup.sh
  ```

*Please note:* Any merge conflict that may occur must be resolved by hand. Please watch the output of the script.

## Restore

Restoring the configuration from the repository is just as simple. There is a script that fetches all changes from the repository and overwrites the local config files. Switch to the `dotfiles` dir and type:

```bash
$ ./restore.sh
```

*Please note:* The scripts folder will not be processed. Config files that no longer exist in the repository will not be deleted on the local system.

## Repository Layout

### files

All files that you want to copy to the local system are located under the `files` directory. It will be mapped to the user's home directory when copying the files.

### scripts

The `scripts` directory contains scripts for installing software and other setup tasks. A script must end with the suffix `.sh` and its executable flag must be set.

Folders on the same level will be processed in alphabetical order. Subfolders will be processed **before** their parent folder.

The platform is provided by the environment variable `OS` (see [lib/common.sh](lib/common.sh) for possible values). So, to run a script only on OS X, start with the following line:

```bash
if [ "${OS}" != "osx" ]; then exit; fi
```

*Please note:* The working dir will be set to the folder that contains the script.

### private

If you create a folder `private`, it will be excluded from commits.
