#!/bin/bash

file_name=$(date +%s)

wget -q -U Mozilla -O "$file_name.mp3" "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=$1"
