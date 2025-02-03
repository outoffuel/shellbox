#!/bin/bash
read text
qrencode -t ansi \"$text\"
