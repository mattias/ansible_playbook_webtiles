#! /bin/bash
exec >>/home/crawl-dev/logs/compress-ttyrecs.log 2>&1
/home/crawl-dev/dgamelaunch-config/bin/dgl compress-ttyrecs
