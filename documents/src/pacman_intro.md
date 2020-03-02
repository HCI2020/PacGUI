Pacman Package Manager: Core Functionality
==========================================

Pacman is the simple but surprisingly effective (IMHO) command-line package manager of the Arch Linux project. At it's core, it has the ability to sync with an external repository and install packages from it, upgrade updated packages, search for packages, uninstall packages, more. Pacman does automatic package signing and dependency management. It does core tasks extremely quickly, and this fact is a key part of its user experience.

Pacman has a number of commands, each with their own set of subcommands.

Sync
----
 For your standard daily use, the "-S" (Sync) command will often be sufficient. -S communicates with an external software repository to search for packages (-Ss package-name), download packages (-S package-name), update the local database (-Sy), upgrade the locally installed packages (-Su), and get details about individual packages (-Si). There are other options to alter the operation, but we can get to those later.

Query
-----
the "-Q" (Query) command is used to inspect the *local* database. The most command operations used are getting the info about an installed package (-Qi), listing the files owned by a specific package (-Ql) often useful for finding the binary files included with a package, searching the local database (-Qs), and listing outdated packages (-Qu).

This command is noticibly similar to Sync, with the main difference being working with the local database rather than an external one.

Files
-----
Get information about which package owns specific files with the "-F" ("Files") command, especially useful for when you need to install a program and don't know which package it is in. It also allows you to list the files owned by a package (-Fl). The "File Database" is seperate from the core package database, and can be updated seperately (-Fy).

Removing
--------
Remove packages from the local system with the -R ("Remove") command. Useful subcommands include also removing associated configuration files (-Rn) and also recursively removing dependencies that aren't needed by anything else (-Rs). A very common command combines these two subcommands (-Rns). 

Installing From Other Sources 
-----------------------------
Packages can be installed from other sources (URL or file) with the -U command. This command will also install dependencies from the standard external repositories

Searching For Packages
----------------------
Pacman has a very simple searching mechanism, searching by a string with one of the "s" subcommands. Only packages whose name contains that string will be returned. Pacman Apparently has the ability to search via regexp, but it is not explained anywhere the format of the regular expressions (I'm guessing "standard"). This is an area of pacman that could *very much* use some improvement with more complex searches, fuzzy searching, etc.

Makepkg
-------
In addition to the standard binary package repositories, pacman also has the community-driven "Arch User Repository" (AUR) where users can download, compile, and install from source code. This is done with the "makepkg" command and then installed with pacman. While not strictly part of pacman, makepkg and the AUR is closely linked to it and often used in the management of an Arch Linux system. If we end up lacking screens in the UI, it might be a good idea to include this functionality. 


