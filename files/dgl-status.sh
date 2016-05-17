#! /bin/sh

echo Content-type: text/plain
echo
umask 0022
exec /usr/local/sbin/dgamelaunch -s
