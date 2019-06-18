[condition][location]There is an entity identified as {$entity}={$entity} : Entity();
[condition][location] - with name matching the regular expression {expression}=name matches "{expression}"
[condition][location] - with name not matching the regular expression {expression}=name not matches "{expression}"
[condition][location] - with name longer than {number} characters long=name.length() > {number}
[condition][location]There is no validation error=not ValidationError();
[condition][location]There is validation error=ValidationError();
[consequence][location]Log name of this rule=System.out.println("Executed Rule: " + drools.getRule().getName() );
[consequence][location]Flag with validation error message {message}=insert( new ValidationError( "{message}") );
[consequence][location]Check if abn of entity identified as {$entity} is in the blacklist and save result in {result}=String {result} = service.checkabn($entity.abn);
[consequence][location]If result identified as {result} does not contain {Active} flag with validation error message {message}=if (!{result}.contains("{Active}")) insert (new ValidationError("{result}") );