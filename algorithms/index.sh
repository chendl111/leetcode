#! /bin/bash
ls | grep '^[0-9]'|sort -n|while read line
do
    title=`echo ${line}|cut -d . -f 2`
    declare -l url=${title}
    echo "|${line%%.*}|[$title](https://leetcode-cn.com/problems/algorithms/url//' '/'-'}/)|[C++](https://github.com/starFalll/LeetCode/blob/master/algorithms/${line//' '/'%20'})|" >>../README.md 
done
