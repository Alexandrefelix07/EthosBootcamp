public  class BatalhasContatoHandler {
    
    public void contaBatalhaInsert(List<BatalhasContato__c> listaBatalha){       
     BatalhasContatoTriggerHelper.totalizaBatalhasEmAndmento(listaBatalha);                        
    }  
    
    public void contaBatalhaDelete(List<BatalhasContato__c> listaBatalha){
      BatalhasContatoTriggerHelper.totalizaBatalhasEmAndmento(listaBatalha);                       
    }   
    
    public void contatoBatalhaUpdate(List<BatalhasContato__c> listaBatalha, Map<id,BatalhasContato__c> oldMapBatalhasContatos ){
    
    }      

          
   
}