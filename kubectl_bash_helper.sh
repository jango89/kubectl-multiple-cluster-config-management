function join_by {
  local d=${1-} f=${2-}
  if shift 2; then
    printf %s "$f" "${@/#/$d}"
  fi
}

staging_configs=$(join_by \: $(find /Users/rohith/Documents/kubernetes_configs/staging -maxdepth 1 -type f -not -path '*/\.*' | sort));
production_configs=$(join_by \: $(find /Users/rohith/Documents/kubernetes_configs/production -maxdepth 1 -type f -not -path '*/\.*' | sort));
export KUBECONFIG=~/.kube/config:$(echo "$(join_by \: $staging_configs $production_configs)")
