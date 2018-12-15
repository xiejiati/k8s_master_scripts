if [ $# -lt 2 ]; then
    echo '缺少参数'
    exit 1
fi
sh util_scripts/pre_install.sh
sh util_scripts/d_t.sh
sh util_scripts/master-main.sh $1 $2
sh util_scripts/after_init.sh
sh util_scripts/check_state.sh

