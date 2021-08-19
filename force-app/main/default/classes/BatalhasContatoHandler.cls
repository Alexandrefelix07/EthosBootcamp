public  class BatalhasContatoHandler {
    
    public void contaBatalhaInsert(List<BatalhasContato__c> listaBatalha){       
     BatalhasContatoTriggerHelper.totalizaBatalhasEmAndmento(listaBatalha);                        
    }  
    
    public void contaBatalhaDelete(List<BatalhasContato__c> listaBatalha){
      BatalhasContatoTriggerHelper.totalizaBatalhasEmAndmento(listaBatalha);                       
    }   
    
    public void contatoBatalhaUpdate(List<BatalhasContato__c> listaBatalha, Map<id,BatalhasContato__c> mapOld ){      
        list<BatalhasContato__c> batalhasContatos = new list<BatalhasContato__c>();
                
        for(BatalhasContato__c batalhasContato : listaBatalha ){
            
            if ( mapOld.get(batalhasContato.id).Contato__c != batalhasContato.contato__c  ) {               
                batalhasContatos.add(mapOld.get(batalhasContato.id));
                batalhasContatos.add(batalhasContato);             
            }                       
        }
        
        BatalhasContatoTriggerHelper.totalizaBatalhasEmAndmento(batalhasContatos);  
                
    }

          
   
}