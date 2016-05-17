#! /bin/bash
exec >>/home/crawl-dev/logs/clean-trunks.log 2>&1

DGL=/home/crawl-dev/dgamelaunch-config/bin/dgl

# tail -n +6 to skip the header and, more importantly, the most recent
# trunk version.
readarray -t to_del < <(
    $DGL remove-trunks -v | tail -n +6 | awk '$6==0 { sub(".*g","",$4); print $4 }'
)

if (( ${#to_del[@]} )); then
    echo -n "Cleaning trunks at "
    date;
    $DGL remove-trunks "${to_del[@]}"
    echo done.
    echo
fi
