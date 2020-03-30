# dotfiles

Install and configure frequently used software for macOS and Debian-based Linux (shell only). Inspired by https://github.com/stefanscherer/dotfiles.

## Restoring system

Clone the repository and run the restore script:

```sh
$ git clone https://github.com/scherermichael/dotfiles && dotfiles/restore.sh
```

This will install a set of commonly used software and copy the config files to the appropriate locations.

You can run `./restore.sh` any time to reset your system to the state stored in the dotfiles.

Use option `--no-scripts` to only re-initialize the configuration files.

Use option `--no-sudo` to run only scripts that do not require sudo permissions.

## Creating snapshot of current system

In order to store the current configuration for later use run `./snapshot.sh`, commit the changes, and push it:

  ```sh
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

```sh
[ "${OS}" = "macos" ] || exit 0
```

The variable `${IS_VM}` is set to `true` if the script runs inside a VMware or Virtualbox VM.

*Please note:* Working dir is always the main folder of the repository.

### private

The folder `private` is excluded from commits.

If you add the file `environment` to this folder, it will be sourced by your shell. It's an easy way to export secret environment variables that can be used by other scripts.  

*Please note:* Do not forget to create a backup of this folder. It will **not** be handled by Git!

#### Vagrant

The VM's folder `/vagrant` is synced with the `vagrant` folder on the host (where your `Vagrantfile` is located). Copy your `dotfiles` folder to use it within the VM:

```sh
cp -r ~/dotfiles "<vagrant folder>"
```

The file `/vagrant/dotfiles/private/environment` will also be sourced if it exists. So, all private environment variables will be available in the VM, too.
