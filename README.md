# 概述

此系列脚本是为了快速搭建k8s master。

# 重点功能

master_one_key.sh： 一键搭建master

# 辅助功能

reset_master: 如果安装master过程失败，则用此脚本来重新初始化

tear_down.sh: 如果需要剔除node，则用此脚本

node_join.sh: 初始化master后，需要获得master的信息来让node加入到master的集群中
