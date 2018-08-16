# dotfiles

Install and configure frequently used software for Mac and (Debian-based) Linux. Inspired by https://github.com/stefanscherer/dotfiles.

## (Re-)Initialize the systems

Clone the repository and run the initialization script:

```bash
$ cd ~ && git clone https://github.com/scherermichael/dotfiles && cd dotfiles && ./init.sh
```

This will install a set of commonly used software and copy the config files to the appropriate locations.

You can run `./init.sh` any time to reset your system to the state stored in the dotfiles.

## Storing the current configuration

In order to store the current configuration for later use run `./snapshot.sh`, commit the changes, and push it:

  ```bash
  $ cd ~/dotfiles && ./snapshot.sh
  $ git add files && commit -m "Update config files." && git push
  ```

All configuration files in the `files` folder will be updated, a new list of Homebrew packages generated, and all installed or disabled Atom plugins stored.

## Repository Layout

### files

All files that you want to copy to the local system are located under the `files` directory. It will be mapped to the user's home directory when copying the files.

### scripts

The `scripts` directory contains scripts for installing software and other setup tasks. A script must end with the suffix `.sh` and its executable flag must be set.

The scripts run **before** the `files` directory will be copied.

Folders on the same level will be processed in alphabetical order. Subfolders will be processed **before** their parent folder.

The platform is provided by the environment variable `OS` (see [lib/common.sh](lib/common.sh) for possible values). So, to run a script only on MacOS, start with the following line:

```bash
[ "${OS}" == "macos" || exit
```

The variable `${ISHOST}` is set to `true` if the script runs on the host system. In a vm, it's set to `false`.

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
