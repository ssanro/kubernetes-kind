#!/bin/bash

# General values
BASEDIR=$(pwd)
FLAGS='--ignore-not-found=true'

printf 'Starting cleanup process on cluster... \n'

# Clean environment values
unset KUBECONFIG

# Clean objets from chapter pods
kubectl --namespace default delete -f $BASEDIR/pods/ $FLAGS
kubectl --namespace default delete -f $BASEDIR/labels/ $FLAGS
kubectl --namespace default delete -f $BASEDIR/replicasets/ $FLAGS
kubectl --namespace default delete -f $BASEDIR/deployments/ $FLAGS
kubectl --namespace default delete -f $BASEDIR/services/ $FLAGS
kubectl delete -f $BASEDIR/ingress/nginx $FLAGS
kubectl --namespace default delete -f $BASEDIR/ingress/ $FLAGS
kubectl delete namespace ingress-nginx $FLAGS
kubectl delete -f $BASEDIR/namespaces/ $FLAGS
kubectl delete -f $BASEDIR/volumes/ $FLAGS
kubectl --namespace default delete -f $BASEDIR/configmaps/ $FLAGS
kubectl --namespace default delete -f $BASEDIR/secrets/ $FLAGS
rm -f $BASEDIR/secrets/tls.*
kubectl delete -f $BASEDIR/ssanro/ $FLAGS
rm -f $BASEDIR/ssanro/ssanro87*
rm -f $BASEDIR/ssanro/ca*
kubectl --namespace default delete -f $BASEDIR/hpa/ $FLAGS
kubectl delete -f $BASEDIR/metrics-server/ $FLAGS

printf '\nThe cleanup process on the cluster has finished.\n'
