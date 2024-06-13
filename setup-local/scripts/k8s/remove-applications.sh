kubectl patch app APPNAME -n argo-cd  -p '{"metadata": {"finalizers": null}}' --type merge
kubectl delete app APPNAME

kubectl patch app APPNAME -n argo-cd  -p '{"metadata": {"finalizers": ["resources-finalizer.argocd.argoproj.io"]}}' --type merge
kubectl delete app APPNAME