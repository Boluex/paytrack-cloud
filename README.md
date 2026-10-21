# Paytrack Kubernetes

Manifests for the application in the sibling `PayTrack` repository.

1. Start a local cluster with `minikube start` or select your intended Kubernetes context.
2. Copy `.env.example` to `.env` and replace the secret values. Keep the password URL-safe.
3. Run `make secrets`.
5. Run `make render` to review and `make apply` to deploy.

Storage uses the cluster default StorageClass; configure one before deploying. Existing StatefulSets may need a planned migration for immutable serviceName changes; preserve PVCs and back up data first. Images refer to existing published application versions; publish new versions before updating tags.

Monitoring and policy YAML files are optional and need their respective operators. Apply them separately after installing those operators. Secrets previously committed must be rotated; removing them from the current files does not remove Git history.
