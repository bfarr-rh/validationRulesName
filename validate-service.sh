#! /bin/bash
  
export BASEURL="http://localhost:9080/validate"

curl -H "accept: application/json" -H "content-type: application/json" -H "DEFAULT_DM_URL: http://localhost:8080/kie-server/services/rest/server/containers/instances/dataValidation" -X POST  \
-d "{
        \"name\": \"$1\"
}" \
$BASEURL

