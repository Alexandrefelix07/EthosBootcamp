trigger contaBatalha on BatalhasContato__c (after insert,after delete) {
   if (Trigger.isInsert) {
    BatalhasContatoHandler.contaBatalhaInsert(Trigger.New);     
    }
    else if (Trigger.isDelete) {
    BatalhasContatoHandler.contaBatalhaInsert(Trigger.Old);
   } 

}