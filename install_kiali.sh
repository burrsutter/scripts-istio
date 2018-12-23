# URLS for Jaeger and Grafana
JAEGER_URL="https://tracing-istio-system.$(minishift ip).nip.io"
GRAFANA_URL="https://grafana-istio-system.$(minishift ip).nip.io"
VERSION_LABEL="v0.10.0"

# Installs Kiali's configmap
curl https://raw.githubusercontent.com/kiali/kiali/${VERSION_LABEL}/deploy/openshift/kiali-configmap.yaml | \
  VERSION_LABEL=${VERSION_LABEL} \
  JAEGER_URL=${JAEGER_URL}  \
  GRAFANA_URL=${GRAFANA_URL} envsubst | oc create -n istio-system -f -

# Installs Kiali's secrets
curl https://raw.githubusercontent.com/kiali/kiali/${VERSION_LABEL}/deploy/openshift/kiali-secrets.yaml | \
  VERSION_LABEL=${VERSION_LABEL} envsubst | oc create -n istio-system -f -

# Deploys Kiali to the cluster
curl https://raw.githubusercontent.com/kiali/kiali/${VERSION_LABEL}/deploy/openshift/kiali.yaml | \
  VERSION_LABEL=${VERSION_LABEL}  \
  IMAGE_NAME=kiali/kiali \
  IMAGE_VERSION=${VERSION_LABEL}  \
  NAMESPACE=istio-system  \
  VERBOSE_MODE=4  \
  IMAGE_PULL_POLICY_TOKEN="imagePullPolicy: Always" envsubst | oc create -n istio-system -f -