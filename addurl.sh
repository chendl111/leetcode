#! /bin/bash
#建立索引运行此脚本，插入索引使用newindex.sh
# 先删除README.md再重建README.md
rm -d README.md
echo -e "# LeetCode\n\
LeetCode Solution\n\
\n\
\n\
| #    |                  Title                   |                                 Solution |\n\
| :--- | :--------------------------------------: | ---------------------------------------: |" >> README.md
ls algorithms| grep '^[0-9]'|sort -n|while read line
do
    title=`echo ${line}|cut -d . -f 2`
    declare -l url=${title}
    echo "|${line%%.*}|[$title](https://leetcode-cn.com/problems/${url//' '/'-'}/description/)|[C++](https://github.com/chendl111/leetCode/blob/master/algorithms/${line//' '/'%20'})|" >>README.md 
done
