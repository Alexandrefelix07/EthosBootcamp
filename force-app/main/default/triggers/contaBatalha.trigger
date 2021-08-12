trigger contaBatalha on BatalhasContato__c (after insert,after delete,after update) {   
   BatalhasContatoHandler handler = new BatalhasContatoHandler();
    
  switch on Trigger.operationType {
    when AFTER_UPDATE {      
      handler.contatoBatalhaUpdate(Trigger.New,Trigger.oldMap);
      System.debug('==== isUpdate ==='+Trigger.oldMap);
    }    
    when AFTER_DELETE {      
      handler.contaBatalhaDelete(Trigger.Old);
      System.debug('==== isDelete ===='+Trigger.New);
    }
    when AFTER_INSERT {       
      handler.contaBatalhaInsert(Trigger.New); 
      System.debug('==== isInsert ===='+Trigger.New);
    } 
  }    
}