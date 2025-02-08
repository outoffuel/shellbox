#!/usr/bin/bash

read text
yt-dlp --simulate --print "%(title)s" \"$text\"
