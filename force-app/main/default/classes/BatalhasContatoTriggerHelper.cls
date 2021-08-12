public class BatalhasContatoTriggerHelper {
    
    public static void totalizaBatalhasEmAndmento(List<BatalhasContato__c> listaBatalha){
        //declarando variaveis 
        List<Contact> contactToUpdate = new List<Contact>();
        Set<id> contactIds = new Set<id>();
        
        //agrupar os id
        for(BatalhasContato__c Lista : listaBatalha){
            contactIds.add(Lista.Contato__c);
        }
        

        for(AggregateResult a : [select Count(id)total,Contato__c  from BatalhasContato__c  where Contato__c in :contactIds group by Contato__c ]  ) {   

          Contact contato = new Contact();
          contato.Id = String.valueOf( a.get('Contato__c'));
          contato.NumeroBatalhas__c =  Integer.valueOf(a.get('total'));   
          contactToUpdate.add(contato);  
      }
        if (! contactToUpdate.isEmpty() ) {
            update contactToUpdate;
        }     
         
            
    }
}