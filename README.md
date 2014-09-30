#My Dotfiles

These are my personal boilerplate templates for GIT and BASH config files with useful aliases, basic (secure) login information and thorough color configuration schemes for common operations.

## 1. Git


### 1.a. Aliases
* ``git st`` - shows files status including branch information
* ``git co`` - performs a ``checkout`` command
* ``git cb`` - performs a ``checkout`` command and creates the new branch on the fly
* ``git cm`` - performs a commit expecting a message: ``commit -m``
* ``git b`` - performs a ``branch``command
* ``git bs`` - lists all branches sorted by commit date (including the last commit ref)
* ``git df`` - performs a DIFF command with a colorful output
* ``git l`` - retrieves the git log in a colorful format
* ``git ll`` - retrieves the git log in a colorful format emphasizing the timestamp for each commit
* ``git up`` - performs a ``pull``command
* ``git upr`` - performs a ``pull``command rebasing files straight away
* ``git p`` - performs a ``push``command and expects the origin data to be appended
* ``git abort`` - resets all uncomitted changes and files by executing ``reset --hard HEAD``
* ``git undo`` - undos last commit with ``reset HEAD~1``
* ``git recommit`` - execute this for ammending the commit message
* ``git rem`` - enlists remotes by executing ``remote -v``
* ``git conflicts`` - shows list of files that have a merge conflict
* ``git unstage [file]`` - removes file from next commit
* ``git pending`` - lists all unpushed commits made so far
* ``git here`` - shows only changes to files in current directory

### 1.b. Colored Output
* Adds colored output to `git branch`
* Adds colored output to `git diff`
* Adds colored output to `git status`

## 2. BASH

### 2.a. Desktop Program Launchers

* ``preview`` - Open a preview window
* ``safari`` - Open a Safari window
* ``firefox`` - Open a Firefox window
* ``chrome`` - Open a Chrome window
* ``f`` - Open a Finder window
* ``textedit`` - Open a Textedit window
* ``skype`` - Open a Skype window

### 2.b. Directory Browsing Aliases

* ``home`` - Moves prompt to ``~``
* ``..`` - Moves prompt up one level
* ``up`` - Same as above
* ``all`` - Lists all files, including hidden files
* ``lx`` - Lists all files sorted by extension
* ``lk`` - Lists all files sorted by size ascending
* ``lt`` - Lists all files sorted by date descending
* ``lc`` - Lists all files sorted by/show change time,most recent last
* ``lu`` - Lists all files sorted by/show access time,most recent last

### 2.c. File Operations Aliases (mostly added interactive flags)

* ``rm`` - Equivalent to ``rm -i``
* ``cp`` - Equivalent to ``cp -i``
* ``mv`` - Equivalent to ``mv -i``
* ``mkdir``- Equivalent to ``mkdir -p``. Prevents accidentally clobbering files
* ``dsclean`` - Get rid of those pesky .DS_Store files recursively from current location
* ``ax`` - Assigns execution permissions (a+x)

### 2.d. Environmental Aliases

* ``flush`` - Flush your dns cache
* ``showhidden`` - Show hidden files in Finder (for Mac OS X Mavericks)
* ``hidehidden`` - Hide hidden files in Finder (for Mac OS X Mavericks)
* ``path`` - Beautified display of PATH variables
* ``libpath`` - Beautified display of LIBRARY PATH variables
* ``du`` - Yields disk usage in a more readable format
* ``df`` - Yields disk available in a more readable format
* ``which`` - Describe a command
* ``h`` - Console history
* ``j`` - Print currently running jobs and their status

## 3. Installation

If you're on a Mac/ you can leverage the install script included. For doing so you will need to execute the following command with ```sudo``` permission at the root folder of your cloned repo. It will copy the dotfiles in a location inside your ``$HOME`` directory and will *symlink* those where required. **Please note:** You will need execute permissions on the install file. After the install, do not forget to run the ```source``` command to update the terminal in use.

```
$ chmod +x ./install.sh
$ sudo ./install.sh
$ source $HOME/.bash_profile
```

## 4. Acknowledgements

Remarkable parts fo the GIT config file were borrowed from Jack Lukic's [Git-Aliases](https://github.com/jlukic/Git-Aliases) repo. The GIT exclusion file implements a good cut of the one proposed by Todd Motto in [Fireshell](https://github.com/toddmotto/fireshell).
The BASH config file is inspired on different sources but mostly on the [one maintained](https://github.com/bt3gl/Dotfiles-and-Bash-Examples/blob/master/configs/bashrc) by Marina AKA [bt3gl](https://github.com/bt3gl).
Last but not least, the install script is mostly inspired by the one [provided by Paul Miller](https://github.com/paulmillr/dotfiles).
