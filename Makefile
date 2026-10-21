.PHONY: render apply secrets
render:
	kubectl kustomize .
apply:
	kubectl apply -k .
secrets:
	kubectl apply -f namespace.yaml
	kubectl -n paytrack create secret generic paytrack-secret --from-env-file=.env --dry-run=client -o yaml | kubectl apply -f -
