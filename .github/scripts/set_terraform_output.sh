#!/bin/bash

# Sets Terraform output to GitHub Actions output
# Params:
#  $1: Terraform output name
#  $2: GitHub output name  
set_terraform_output() {
    TF_OUTPUT_NAME=$1
    GH_OUTPUT_NAME=$2

    terraform output $TF_OUTPUT_NAME
    OUTPUT_VALUE=$(terraform output $TF_OUTPUT_NAME | tr -d '"')
    
    echo "::set-output name=$GH_OUTPUT_NAME::$OUTPUT_VALUE"
}

set_terraform_output $1 $2