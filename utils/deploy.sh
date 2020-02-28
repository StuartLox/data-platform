
cd ../deploy/
ACTION=${1-apply}

#===================#
# EXECUTE TERRAFORM #
#===================#

TF_VAR_environment=dev \
TF_VAR_account=prod \
TF_VAR_kube_config=$HOME/.kube/config \
TF_VAR_region=ap-southeast-2 \
terragrunt $ACTION -lock=false

#==========#
# CLEAN UP #
#==========#

rm -rf .terraform
cd ../utils