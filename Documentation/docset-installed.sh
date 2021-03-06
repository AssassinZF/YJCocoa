#!/bin/sh

# 路径声明
docset_name=com.YJ.YJCocoa.docset
docset_path=Documentation/${docset_name}
docset_dest_dir=~/Library/Developer/Shared/Documentation/DocSets
docset_dest_path=${docset_dest_dir}/${docset_name}

# 对比已有的文档，如果有不同则用最新的覆盖已有的
#diff --recursive ${docset_path} ${docset_dest_path} > /dev/null
#if [[ $? != 0 ]] ; then
#
#	# 目录不存在则创建
#	if [ ! -d ${docset_dest_dir} ]; then
#  		mkdir -p ${docset_dest_dir}
#	fi
#	
#	# 复制文件
#	cp -a -f ${docset_path} ${docset_dest_path}
#
#    # 在通知中心显示提示
#    osascript -e 'display notification "请重启Xcode后在Help -> Documentation And API Reference中查看文档" with title "YJCocoa开发文档已安装"'
#
#fi

# 删除开发文档
#目录存在则删除
if [ -d ${docset_dest_path} ]; then
    rm -rf ${docset_dest_path}
    osascript -e 'display notification "请重启Xcode后在Help -> Documentation And API Reference中查看" with title "YJCocoa开发文档已删除"'
fi

# 更新记录
osascript -e 'display notification "2017-05-29 | TableViewManager 移除 cell 悬浮支持" with title "YJCocoa 6.5.0"'
osascript -e 'display notification "2017-06-02 | Leaks 增加白名单，可添加无须内存分析的类" with title "YJCocoa 6.5.0"'
osascript -e 'display notification "2017-06-14 | Dispatch 增加 dispatch_async_default(dispatch_block_t block) 方法" with title "YJCocoa 6.5.0"'



