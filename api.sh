#!/bin/bash

ans_curl="curl -k -v -u admin:redhat https://10.10.181.147/api/v2"

# Make a POST to update the license


##$ans_curl/config/ --data @ansible.lic -X POST  -H 'Content-Type: application/json'

# Associate host to group
##$ans_curl/groups/3/hosts/ -X POST -H 'Content-Type: application/json' --data '{"id" : 4}'
##$ans_curl/groups/3/hosts/ -X POST -H 'Content-Type: application/json' --data '{"id" : 4,"disassociate" : true}'

#Add admin permissions on an inventory to a user
#$ans_curl/users/1/roles/

#Create a machine credential
##$ans_curl/credentials/ -X POST -H 'Content-Type: application/json' --data '{"credential_type": 1, "organization": 1, "name": "Second Best Credential Ever"}'
#--data credential.json

#Create a survey
#$ans_curl/job_templates/7/survey_spec/ -X POST -H 'Content-Type: application/json' \
#--data '{ "name": "Simple Survey", "description": "Description of the simple survey", "spec": [ { "type": "text", "question_name": "example question", "question_description": "What is your favorite color?", "variable": "favorite_color", "required": false, "default": "blue" } ] }' 

#Launch a job with extra_vars 
$ans_curl/job_templates/13/launch/ -X POST -H 'Content-Type: application/json' --data '{"extra_vars": "{\"test_var\": \"`hostname -f`\"}"}' 

#Launch a workflow job 
##$ans_curl/workflow_job_templates/12/launch/ -X POST -H 'Content-Type: application/json'

#Kick off a project update 
##$ans_curl/projects/9/update/ -X POST -H 'Content-Type: application/json' 

#Disassociate an instance group - https://access.redhat.com/solutions/3365311
#$ans_curl/job_templates/13/instance_groups/ -X PATCH -H 'Content-Type: application/json' -d '{"id": 1, "disassociate": true }'

#Endpoints to know about for ticket purposes (Find these and keep them handy)
#Endpoint to ask for when troubleshooting LDAP or any authentication
##/api/v2/auth/

#Endpoint to ask for individual job output
##/api/v2/jobs/{id}/stdout/

#Endpoint to ask for workflow job output
##/api/v2/jobs/{id}/stdout/

#Endpoint to ask for to see license details 
#$ans_curl/config/


#Endpoint to see individual host details
#/api/v2/hosts/{id}/

#Endpoint to look at to see mismatched heartbeats in a cluster
#/api/v2/ping/
