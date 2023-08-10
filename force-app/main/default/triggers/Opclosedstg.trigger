trigger Opclosedstg on Opportunity (Before delete) {
  for(Opportunity opp : Trigger.Old){
      if(opp.stagename=='Closed Won'){
          opp.addError('Not able to delete an Opportunity with Closed Won Stage');
          }
      }    
}