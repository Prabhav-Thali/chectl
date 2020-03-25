#!/usr/bin/env bash

source /home/abhay/env.sh
cp -rf templates /root/.cache/chectl/
helm dependencies update --skip-refresh /root/.cache/chectl/templates/kubernetes/helm/che/
helm upgrade -f /root/.cache/chectl/templates/kubernetes/helm/che/values_s390x.yaml --install che --force --namespace che --set global.ingressDomain=9.30.44.106.nip.io --set cheImage=prabhavthali/che-server:7.9.0 --set cheDevfileRegistry.image=prabhavthali/che-devfile-registry:7.9.0 --set chePluginRegistry.image=prabhavthali/che-plugin-registry:7.9.0 --set che.disableProbes=false /root/.cache/chectl/templates/kubernetes/helm/che/

