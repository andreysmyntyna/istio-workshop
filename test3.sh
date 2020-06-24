#!/usr/bin/env bash

kubectl get po -n istio-system

istioctl dashboard prometheus
istioctl dashboard grafana
istioctl dashboard jaeger
istioctl dashboard kiali


kubectl -n istio-system get envoyfilter

# NAME                        AGE
# metadata-exchange-1.4       8d
# metadata-exchange-1.5       8d
# metadata-exchange-1.6       8d
# stats-filter-1.4            8d
# stats-filter-1.5            8d
# stats-filter-1.6            8d
# tcp-metadata-exchange-1.5   8d
# tcp-metadata-exchange-1.6   8d
# tcp-stats-filter-1.5        8d
# tcp-stats-filter-1.6        8d

kubectl -n istio-system get envoyfilter stats-filter-1.6 -o yaml > stats-filter-1.6.yaml


kubectl apply -f istio/attribute_gen_service.yaml
kubectl apply -f istio/stats-filter-1.6.yaml

minikube dashboard --url

