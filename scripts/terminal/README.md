# Import profiles into Terminal

Any `.terminal` file in this folder will be added to the Terminal's list of profiles.
The name of the profile is extracted from the XML contents of the file. Hence, the name of the file is not important.

Set variable `DEFAULT_PROFILE` in `init.sh` to the profile you want to use as default.

In order to add a new profile or update an existing one, use the export function of the Terminal app. Just save the exported `.terminal` file into this folder.

**Please note:** This script can only *add* new profiles to the Terminal app. If you want to import new settings for an existing profile, you must delete it beforehand.
