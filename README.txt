################## Helm Install ##########################

################## Helm Package Creation #################

$ helm package $folder_name (where Chart.yaml file exit)
ex:
$ helm package spinnaker\

$ helm repo index $folder_name --url $repo_url (folder_name is where tgz package are available and index.yaml will create )
$ helm repo index charts --url https://smartlizzard.github.io/helm/charts/
$ git add .
$ git commit -m ""
$ git push
$ helm repo add helm-repo https://smartlizzard.github.io/helm/charts/
$ helm repo update (for update helm repo)
$ helm install sonarqube helm-repo/sonarqube