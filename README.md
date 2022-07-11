# kubectl-multiple-cluster-config-management
Managing multiple kubernetes configurations in your local using kubectl

## How to?

1. Update folder path(s) inside "kubectl_bash_helper.sh" accordingly.
2. Export "kubectl_bash_helper.sh" as source or add the contents to your "zshrc" bash file.
3. `kubectl config view` should now merge all the configs and helps us to select resepctive contexts.
