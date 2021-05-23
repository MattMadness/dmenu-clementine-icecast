# dmenu-clementine-icecast
A bash script that uses dmenu to allow the user to select a known Icecast station from Clementine and play it.

## How it works
This script accesses the cache of Icecast names and urls that Clementine's database file has. It pipes that information into dmenu, gives the user a choice, then accesses the database once more to find the matching url of the name of the Icecast stream, gives it to Clementine and plays it.

One thing to know is that Clementine has to have seen or used the station at some point. Before using this script, go into Clementine's Internet category, then the Icecast source, then just look at some of the categories to index them in Clementine's database.

## Dependencies
* Clementine Music Player
* dmenu
* sqlite3

## Installation
Simply copy the script to /usr/local/bin with your perfered name and make it executable.

Here is an example install:
```sudo cp icecastpicker.sh /usr/local/bin/icecastpicker && sudo chmod 755 /usr/local/bin/icecastpicker```
