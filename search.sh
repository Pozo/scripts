#!/bin/sh
#first we need a perl library
wget -O ~/uri.tar.gz http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/URI-1.60.tar.gz
tar -xvf ~/uri.tar.gz -C /usr/lib

value="$(perl -I/usr/lib/URI-1.60 -MURI::Escape -e 'print uri_escape($ARGV[0]);' "$1 stackoverflow" )"

lynx -accept_all_cookies "http://www.google.com/search?q=$value&btnI=I"


