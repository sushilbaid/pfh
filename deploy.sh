#!/bin/bash
tf=../../bin/terraform-linux
cd ./ops/terraform
$tf init
$tf plan 
