#!/bin/sh

clementine -pl $(sqlite3 -list ~/.config/Clementine/clementine.db "SELECT url FROM icecast_stations WHERE name = $(sqlite3 -list ~/.config/Clementine/clementine.db 'SELECT name FROM icecast_stations;' | dmenu -l 3 -p "Clementine Icecast:" | sed 's/$/"/' | sed 's/^/"/' );")
