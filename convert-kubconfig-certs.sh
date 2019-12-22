#!/bin/bash

echo "Client Certificate"
grep 'client-certificate-data' $1 | awk '{print $2}' | base64 -D
echo
echo "Client Key"
grep 'client-key-data' $1 | awk '{print $2}' | base64 -D
echo
echo "Certificate Authority"
grep 'certificate-authority-data' $1 | awk '{print $2}' | base64 -D
echo
echo "Access Token"
grep 'token:' $1 | awk '{print $2}'echo
echo
echo "Cluster Name"
grep 'cluster:' $1 | awk '{print $2}'
echo
echo "API Server"
grep 'server:' $1 | awk '{print $2}'