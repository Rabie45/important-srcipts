#!/bin/bash

read -p "Enter the service name: " servicename

read -p "Enter the path : " pathe


echo "
[Service]
ExecStart=${pathe}${servicename}.sh
">${servicename}.service



