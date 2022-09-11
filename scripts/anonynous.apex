List<Account> accs = [Select Id, Name from Account];



List<Property__c> properties = [Select Id , Name from Property__c];

System.debug(properties.size());

