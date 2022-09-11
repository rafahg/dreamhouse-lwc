sfdx force:org:create -f config/project-scratch-def.json -s -a $@
sfdx force:source:push
sfdx force:user:permset:assign -n Dreamhouse
sfdx force:data:tree:import -p data/sample-data-plan.json
sfdx force:apex:test:run -r tap


