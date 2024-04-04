# TB_AutoUpdate script

This script makes it simple for 3d artists to have the entire suite of Troy's custom maxscripts whenever they login to their machines. It automatically goes through the server folder and executes all maxscripts when starting 3dsmax ensuring they are completely up-to-date with any bug fixes or changes done to the script, ensuring all artists are running the exact same version of the tools.

## Demo

Demo video coming soon!

## What it does

This script runs all maxscripts related files (ms, mse, mzp, mcr) in the `src` directory from the environment variable `TB_MAXSCRIPTS`.

The environment variable `TB_MAXSCRIPTS` must exist on the machine and point to a valid location.

## Installation

There are two options for installation, choose only one method:

## Administrator/Global installation

* An administrator can run the `autoupdate/global_install.bat` file to install the scripts for all users of a machine.

## User installation

* User can run the `autoupdate/user_install.bat` file to install the autoupdate script to their `%LOCALAPPDATA%` directory. This will install the scripts for the current user only.

## References

    https://knowledge.autodesk.com/support/3ds-max/getting-started/caas/CloudHelp/cloudhelp/2021/ENU/3DSMax-Basics/files/GUID-C372E124-2B7E-41BB-94B0-5FF945D51095-htm.html
