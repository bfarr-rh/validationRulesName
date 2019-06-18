#! /bin/bash
  
export BASEURL="http://localhost:9080/validate"

curl -H "accept: application/json" -H "content-type: application/json" -X POST  \
-d "{
  \"lookup\" : \"statelessSession\",
  \"commands\" : [
    {\"set-global\":
  {\"identifier\":\"service\",\"object\":
  {\"com.redhat.demo.blacklistclient.Client\":{}}}},
    {
    \"insert\" : {
      \"out-identifier\" : \"person\",
      \"return-object\" : \"true\",
      \"object\" : {\"com.myspace.datavalidation.Person\": {
        \"name\": \"$1\"
      }

    }}}, {
      \"fire-all-rules\" : \"\"
  },
  {\"query\":{\"out-identifier\":\"error\",\"name\":\"get_validation_error\"} 
  }]
}" \
http://rhpamAdmin:password1!@localhost:8080/kie-server/services/rest/server/containers/instances/dataValidation

