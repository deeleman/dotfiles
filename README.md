#My GIT Aliases

This is my personal boilerplate template for the .gitconfig file with useful aliases, basic (secure) login information and thorough color configuration schemes for common operations with Git.

## Aliases
* ``git st`` - shows files status
* ``git co`` - performs a ``checkout`` command
* ``git cm`` - performs a commit and expects the commit message: ``commit -m`
* ``git cam`` - same as above but adds any non-versioned file to the commit: ``commit -a -m`` 
* ``git b`` - performs a ``branch``command
* ``git l`` - retrieves the git log
* ``git up`` - performs a ``pull``command
* ``git p`` - performs a ``push``command and expects the origin data to be appended
* ``git hist`` - beautified log, equivalent to ``- log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short``
* ``git new`` - performs a ``diff --cached``command showing diff only for files staged to commit
* ``git abort`` - resets all uncomitted changes and files by executing ``reset --hard HEAD``
* ``git undo`` - undos last commit with ``reset HEAD~1``
* ``git recommit`` - execute this for ammending teh commit message
* ``git rem - enlists remotes by executing ``remote -v`` 
* ``git conflicts`` - shows list of files that have a merge conflict
* ``git unstage [file]`` - removes file from next commit
* ``git abort`` - hard resets all uncommitted changes 
* ``git new`` - shows diff for files stages to be commited only
* ``git here`` - shows only changes to files in current directory

## Colored Output
* Adds colored output to `git branch`
* Adds colored output to `git diff`
* Adds colored output to `git status`

## Acknowledgements

Remarkable parts fo this config file were borrowed from Jack Lukic's [Git-Aliases](https://github.com/jlukic/Git-Aliases) repo.
