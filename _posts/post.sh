#!/bin/bash
date=$(date '+%Y-%m-%d')
t=$(date '+%H:%M:%S')
s="$@"
title="${s// /-}"

echo --- > $date-${title,,}.md
echo layout: post >> $date-${title,,}.md
echo title: \'$s\' >> $date-${title,,}.md
echo date: \'$date $t -0400\' >> $date-${title,,}.md
echo --- >> $date-${title,,}.md

nano $date-${title,,}.md

echo $date-${title,,}.md

#echo Delete post filename with todays date? \(Do this if you are back-dating posts\) [y/n]?
#read delToday
#if $delToday==y ( del $date-${title,,}.md )

#echo $date-${title,,}.md
#echo title: \'$s\'
