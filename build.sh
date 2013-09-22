#! /bin/sh

topic=${1}

if [ ! -z $topic ] 
then
    base="markdown"
    topic_dir="links/$topic"
    topic_page="$topic_dir/$topic.html"
    [ -d $topic_dir ] || mkdir $topic_dir

    # If the topic page doesn't exist, copy in template and 
    # create link in index.
    if [ ! -f $topic_page ] 
    then
        printf "\n[%s](./%s)\n" $topic $topic_page >> markdown/index
        cp $base/template/template $base/$topic_dir/$topic
    fi
    $EDITOR $base/$topic_dir/$topic
fi

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
