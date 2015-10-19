# dotfiles

Install and configure frequently used software for Mac and (Debian-based) Linux. Inspired by https://github.com/stefanscherer/dotfiles.

## Initial setup

Clone the repository and run the initialization script:

```bash
$ git clone https://github.com/scherermichael/dotfiles && cd dotfiles && ./init.sh
```

This will install a set of commonly used software and copy the config files to the appropriate locations.

## Saving changed configuration

In order to backup the configuration files for later use, we have to copy all registered config files back to the repository, commit the changes, push it to the origin. To do so, switch to the `dotfiles` dir and type:

  ```bash
  $ ./backup.sh
  ```

*Please note:* Any merge conflict that may occur must be resolved by hand. Please watch the output of the script.

## Updating configuration

Restoring the configuration from the repository is just as simple. There is a script that fetches all changes from the repository and overwrites the local config files. Switch to the `dotfiles` dir and type:

```bash
$ ./restore.sh
```

*Please note:* The script does not install or uninstall any software. Config files that no longer exist in the repository will not be deleted on the local system.

## Repository Layout

There is a directory for each platform (e.g. `osx`). Each directory contains the following folders.

### files

All files that you want to copy to the local system are located under the [files](./files) directory. It will be mapped to the root of the system when copying the files. The folder `files/~/` will be mapped to the home direcory of the current user.

### scripts

The [scripts](./scripts) directory contains install scripts for any software you want to use. To add a new program, just create a new folder that contains a executable shell script. This script is responsible for retrieving and installing the software.

Folder on the same level will be processed in alphabetical order. Subfolders will be processed **before** their parent folder.

*Please note:* The working dir will be set to the folder that contains the install script.

### private

If you create a folder `private`, it will be excluded from commits.
