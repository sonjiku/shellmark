# About Shellmark

Shellmark is a bash shell script that allows you to save and jump to commonly used directories.


## Install

1. `git clone git://github.com/sonjiku/shellmark.git`
2. `cd shellmarks`
3. `make install INSTALL_DIR="$HOME/bin"`
4. `source $(INSTALL_DIR)/`
4. run `cdm`


## Shell Commands

```
cdm -s SHELLMARK [DIRECTORY] - Saves DIRECTORY or $PWD as SHELLMARK
cdm -g SHELLMARK             - Goes (cd) to the directory associated with "bookmark_name"
cdm -p SHELLMARKs            - Prints the directories associated with the provided shellmarks
cdm -d SHELLMARKs            - Deletes the shellmarks
cdm -l                       - Lists all available bookmarks
cdm -L                       - Lists all available shellmarks and their associated directories
```

## Example Usage

```
$ cd /var/www/
$ cdm -s webfolder
$ pwd
/var/www/
$ cd /usr/local/lib/
$ cdm -s locallib
$ cdm -l
locallib
webfolder
$ cdm -p webfolder
/var/www/

$ cdm --go <TAB><TAB>
webfolder     locallib
$ cdm --go  l<TAB>
  $ cdm --go locallib
$ cdm web
$ pwd
/var/www/
$ cdm simpsons
bash: cd: Error: Shellmark does not exist!: No such file or directory
$ cdm -d webfolder web
```

## Where shellmarks are stored

All of your directory bookmarks are saved in `~/.config/shell/shmal` (think SHell MArk List),
but that can easily be changed just by changing the SMFILE environment variable.
