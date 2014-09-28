#My GIT Aliases

This is my personal boilerplate template for the .gitconfig file with useful aliases, basic (secure) login information and thorough color configuration schemes for common operations with Git.

## Aliases
* ``git st`` - shows files status including branch information
* ``git co`` - performs a ``checkout`` command
* ``git cb`` - performs a ``checkout`` command and creates the new branch on the fly
* ``git cm`` - performs a commit expecting a message: ``commit -m``
* ``git b`` - performs a ``branch``command
* ``git bs`` - lists all branches sorted by commit date (including the last commit ref)
* ``git df`` - performs a DIFF command with a colourful output
* ``git l`` - retrieves the git log in a colourful format
* ``git ll`` - retrieves the git log in a colourful format enfasizing the timestamp for each commit
* ``git up`` - performs a ``pull``command
* ``git upr`` - performs a ``pull``command rebasing files straight away
* ``git p`` - performs a ``push``command and expects the origin data to be appended
* ``git new`` - performs a ``diff --cached``command showing diff only for files staged to commit
* ``git abort`` - resets all uncomitted changes and files by executing ``reset --hard HEAD``
* ``git undo`` - undos last commit with ``reset HEAD~1``
* ``git recommit`` - execute this for ammending teh commit message
* ``git rem`` - enlists remotes by executing ``remote -v``
* ``git conflicts`` - shows list of files that have a merge conflict
* ``git unstage [file]`` - removes file from next commit
* ``git here`` - shows only changes to files in current directory

## Colored Output
* Adds colored output to `git branch`
* Adds colored output to `git diff`
* Adds colored output to `git status`

## Acknowledgements

Remarkable parts fo this config file were borrowed from Jack Lukic's [Git-Aliases](https://github.com/jlukic/Git-Aliases) repo.
