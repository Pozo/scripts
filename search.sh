#!/bin/sh
#deprecated lines but could be useful elsewhere
#first we need a perl library 
#wget -O ~/uri.tar.gz http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/URI-1.60.tar.gz
#tar -xvf ~/uri.tar.gz -C /usr/lib

ruby --version &> /dev/null
if [ $? -ne 0 ]; then
	echo no availabe ruby, so we need to install
	sudo apt-get install ruby
fi

value="$(ruby -ruri -e 'print URI.escape(ARGV[0])' "$1 stackoverflow" )"
lynx -accept_all_cookies "http://www.google.com/search?q=$value&btnI=I"
