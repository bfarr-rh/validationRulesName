#! /bin/bash
  

curl -X POST "http://rhpamAdmin:password1!@localhost:8080/kie-server/services/rest/server/containers/usecase1_1.5.0-SNAPSHOT/dmn" -H "accept: application/xml" -H "content-type: application/json" -d "{ \"model-namespace\" : \"https://github.com/kiegroup/drools/kie-dmn/_609AC0F3-6FCD-488B-A5DC-C7B68A6C9848\", \"model-name\" : \"GivenRuleDMN\", \"decision-name\" : [\"Decision-1\"], \"dmn-context\" : {\"GivenName\": \"$1\"}}"


