
#!/bin/sh

KUBELET_PLUGIN_DIR="/rootfs/opt/kubernetes/kubelet-plugins/volume/exec/aws~efs/"
EFS_FILE="$KUBELET_PLUGIN_DIR/efs"

if [ -f $EFS_FILE ]; then
    echo "EFS already configured"
    return 0
fi

mkdir -p $KUBELET_PLUGIN_DIR
cp /efs $EFS_FILE

echo "done"
