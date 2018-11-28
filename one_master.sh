if [ $# -lt 2 ]; then
    echo '缺少参数'
    exit 1
fi
sh pre_install.sh
sh d_t.sh
sh master-one-key.sh $1 $2
sh after_init.sh
sh check_state.sh

