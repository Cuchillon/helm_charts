## Helm chart for SK-service

#### Description
Helm-chart to deploy SK-service (backend + database) into a Kubernetes cluster.

#### Deploy
While deploying it is needed to override default values at least for the next parameters:
* backend.image.repository
* backend.image.tag
* database.image.repository
* database.image.tag
* backend.environment.license.agentAddress

#### Helm command examples
```
helm repo add sk-repo <sk chart repo URL>

helm repo update

helm install --name sk-service --namespace <namespace> \
--set backend.image.repository=harbor/sk-backend \
--set backend.image.tag=v1 \
--set database.image.repository=harbor/sk-database \
--set database.image.tag=v1 \
--set backend.environment.license.agentAddress=127.0.0.1:8089 \
--version 0.1.0
sk-repo/sk-chart
```
or
```
helm package ./sk-chart
```
and then distribute as an archive
```
helm install --name sk-service --namespace <namespace> \
--set backend.image.repository=harbor/sk-backend \
--set backend.image.tag=v1 \
--set database.image.repository=harbor/sk-database \
--set database.image.tag=v1 \
--set backend.environment.license.agentAddress=127.0.0.1:8089 \
--version 0.1.0
<path to archive>/sk-chart-0.1.0.tgz
```
