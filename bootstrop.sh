#!/bin/bash
set -x
workdir=$(cd $(dirname $0); pwd);

# 判断本地.vimrc配置是否存在,存在则备份"

localVimrc=~/.vimrc
time=$(date "+%Y%m%d-%H:%M:%S");

if [ -f $localVimrc ];then
    #备份.vimrc
    echo "执行备份 ~/.vimrc.$time"
    cp ~/.vimrc ~/.vimrc.$time
fi
#执行新vimrc载入
cp $workdir/vimrc ~/.vimrc

