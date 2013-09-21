#! /bin/sh

( cd markdown

htmlbase="../html"
rm -rf $htmlbase
find . -type d | sed 's/^\.\/*//' | while read dir
do 
    htmldir="$htmlbase/$dir"
    [ -d $htmldir ] || mkdir -p $htmldir
done

find . -type f | sed 's/^\.\/*//' | while read file
do
    hsmarkdown $file > "../html/$file.html"
done )

xdg-open html/index.html
