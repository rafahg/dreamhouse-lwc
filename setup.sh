#!/bin/zsh


    #Capturing user input and storaging it in variables

    vared -p "Enter username using email format: " -c username
    vared -p "Enter admin user email: " -c adminEmail 
    vared -p "Enter Scratch Org Alias: " -c soAlias 
    vared -p "Enter and Integer for Scratch Org preferred duration ( 1 - 30 ) " -c duration

    # Salesforce DX commands passing the parameter from user imput
    sfdx force:org:create -f config/project-scratch-def.json -s -a $soAlias --setdefaultusername --durationdays $duration adminEmail=$adminEmail \
         username=$username
    sfdx force:source:push
    sfdx force:user:permset:assign -n Dreamhouse
    sfdx force:data:tree:import -p data/sample-data-plan.json
    sfdx force:apex:test:run -r tap




