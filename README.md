# dotfiles

Install and configure frequently used software for Mac and (Debian-based) Linux. Inspired by https://github.com/StefanScherer/dotfiles.

## Initial setup

Clone the repository and run the initialization script:

```bash
$ git clone https://github.com/SchererMichael/dotfiles && cd dotfiles && ./init.sh
```

This will install a set of commonly used software and copy the config files to the appropriate locations.

*Please note:* All scripts are expected to be run from within the main repository folder (`dotfiles`).

## Saving changed configuration

In order to save changed configuration files for later use, we have to copy all registered config files back to the repository, commit the changes, push it to the origin. To do so, switch to the `dotfiles` dir and type:

  ```bash
  $ ./save.sh
  ```

*Please note:* Any merge conflict that may occur must be resolved by hand.

## Updating configuration

If you work with multiple machines at once, you probably want to keep the settings the up to date on all of them. There is a script that fetches all changed from origin and replaces the config files. Switch to the `dotfiles` dir and type:

```bash
$ ./update.sh
```

*Please note:* This script does not install or uninstall any software. Config files that no longer exist in the origin repository will not be deleted.

## Repository Layout

### software

The [software](./software) directory contains install scripts for any software you want to use. To add a new program, just create a new folder that contains a executable `install.sh`. This script is responsible for retrieving and installing the software under Linux and OS X.

After the `install.sh` has been finished, any existing subfolder will be search for `install.sh`. This allow to hierarchical structure more complex setups.

Folder on the same level will be processed in alphabetical order.

*Please note:* The working dir will be set to the folder that contains the install script.

BTW: Its not a good idea to use spaces within a folder name ;-).

### userconfig

The [userconfig](./userconfig) directory contains all config files that should be copied into the user's home directory. Files on the top level will be directly copied into the home dir. Any folder structure and permissions will be preserved.

### lib

The [lib](./lib) directory contains just some utility files used by the main scripts. E.g. for getting the current platform (Linux or OS X).
