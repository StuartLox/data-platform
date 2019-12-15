# Data Platform

IaC to spin up EKS, and Confluent Operator to run Kafka On Kubernetes

## Deploy

```bash
cd utils

# Deploy EKS 
./deploy.sh

# Download operator and init kafka on K8s
./kafka_operator_init.sh
```