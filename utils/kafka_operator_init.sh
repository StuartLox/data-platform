cd ../
curl -o confluent-operator-20190912-v0.65.1.tar.gz https://platform-ops-bin.s3-us-west-1.amazonaws.com/operator/confluent-operator-20190912-v0.65.1.tar.gz
tar xvfz confluent-operator-20190912-v0.65.1.tar.gz
cd confluent-operator-20190912-v0.65.1/helm

kubectl create serviceaccount tiller -n kube-system
kubectl create clusterrolebinding tiller --clusterrole=cluster-admin --serviceaccount kube-system:tiller
helm init --service-account tiller

helm install -f ./providers/aws.yaml --name operator --namespace operator --set operator.enabled=true ./confluent-operator
helm install -f ./providers/aws.yaml --name zookeeper --namespace operator --set zookeeper.enabled=true ./confluent-operator
helm install -f ./providers/aws.yaml --name kafka --namespace operator --set kafka.enabled=true ./confluent-operator
helm install -f ./providers/aws.yaml --name schemaregistry --namespace operator --set schemaregistry.enabled=true ./confluent-operator