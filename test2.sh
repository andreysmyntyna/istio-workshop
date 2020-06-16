#!/usr/bin/sh

# curl -L https://istio.io/downloadIstio | sh -
# cd istio-1.6.2
# export PATH=$PWD/bin:$PATH
# istioctl install --set profile=demo
# ✔ Istio core installed
# ✔ Istiod installed
# ✔ Egress gateways installed
# ✔ Ingress gateways installed
# ✔ Addons installed
# ✔ Installation complete
# kubectl label namespace default istio-injection=enabled



##kubectl config current-context

##kubectl apply -f ./k8s/chuck.yaml

# kubectl get po -n istio-system

# kubectl -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
# kubectl get svc -n istio-system

# export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
# export SECURE_INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="https")].nodePort}')
# export TCP_INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="tcp")].nodePort}')

# export INGRESS_HOST=$(minikube ip)
# 192.168.64.3

##kubectl apply -f ./gateway.yaml

##kubectl apply -f ./k8s/quote-service-v2.yaml
##kubectl apply -f ./k8s/ui-service-v2.yaml


##kubectl apply -f ./destination-rules.yaml
##kubectl apply -f ./request-routing.yaml


# http://192.168.64.3:30335/



curl -H "x-route-to: service2" http://192.168.64.3:30335/

curl http://192.168.64.3:30335/
