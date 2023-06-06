### shellmark is a POSIX shell script that allows you to save and jump to commonly used directories. ~~Now supports tab completion~~.

## Install

1. git clone git://github.com/huyng/shellmarks.git
2. cd shellmarks
3. make install
4. run

## Shell Commands

    shellmark -s SHELLMARK [DIRECTORY] - Saves DIRECTORY or $PWD as SHELLMARK
    shellmark -g SHELLMARK             - Goes (cd) to the directory associated with "bookmark_name"
    shellmark -p SHELLMARKs            - Prints the directories associated with the provided shellmarks
    shellmark -d SHELLMARKs            - Deletes the shellmarks
    shellmark -l                       - Lists all available bookmarks
    shellmark -L                       - Lists all available shellmarks and their associated directories
    
## Example Usage

    $ cd /var/www/
    $ shellmark -s webfolder
    $ cd /usr/local/lib/
    $ shellmark -s locallib
    $ shellmark -l
    $ shellmark -p webfolder
    $ shellmark -g web
    $ shellmark -d webfolder web

## Where shellmarks are stored
    
All of your directory bookmarks are saved in "~/.config/shell/shmal" (think SHell MArk List), but that can easily be changed just by changing the SMFILE environment variable.
