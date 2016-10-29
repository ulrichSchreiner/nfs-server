#!/bin/sh

#exportfs -o "*(rw,sync,no_subtree_check,no_root_squash,fsid=0)" /data
exportfs -o "rw,sync,no_subtree_check,no_root_squash,fsid=0" *:/data
rpcbind 
rpc.statd 
rpc.nfsd 
exec rpc.mountd --foreground
