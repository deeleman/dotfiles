# Pablo Deeleman's Dotfiles

This repository contains is my personal boilerplate templates for interacting with the BASH command line or GIT by roviding useful aliases, basic (secure) login information and thorough color configuration schemes for common operations.

## 1. GIT Aliases

### 1.a. Aliases
* ``git st`` - shows files status and current branch in use
* ``git co`` - performs a ``checkout`` command
* ``git cb`` - performs a ``checkout`` command and creates the new branch on the fly
* ``git ca`` - adds any non-versioned file and performs a commit: ``commit -a -m``
* ``git cm`` - performs a commit expecting a message: ``commit -m``
* ``git b`` - performs a ``branch``command
* ``git bs`` - lists all branches sorted by commit date (including the last commit ref)
* ``git df`` - performs a DIFF command with a colourful output
* ``git dfl`` - performs a DIFF command with a colourful output
* ``git l`` - retrieves the git log in a colourful format
* ``git ll`` - retrieves the git log, emphasizing the datetime for each commit
* ``git up`` - performs a ``pull``command
* ``git upr`` - performs a ``pull``command rebasing local files with remote
* ``git p`` - performs a ``push``command and expects the origin data to be appended
* ``git abort`` - resets all uncomitted changes and files by executing ``reset --hard HEAD``
* ``git undo`` - undos last commit with ``reset HEAD~1``
* ``git recommit`` - execute this for ammending teh commit message
* ``git rem`` - enlists remotes by executing ``remote -v``
* ``git conflicts`` - shows list of files that have a merge conflict
* ``git unstage [file]`` - removes file from next commit
* ``git here`` - shows only changes to files in current directory
* * ``git unpushed`` - enlists unpushed local commits

### 1.b. Colored Output
* Adds colored output to `git branch`
* Adds colored output to `git diff`
* Adds colored output to `git status`

### 1.c. Installation

Clone the following repository onto your local machine and copy the ```.gitconfig``` file to your system by executing the following command from your repository root folder:

```$ sudo cp git/.gitconfig $HOME/.gitconfig```

### 1.d. Acknowledgements

Remarkable parts fo this config file were borrowed from Jack Lukic's [Git-Aliases](https://github.com/jlukic/Git-Aliases) repo.
