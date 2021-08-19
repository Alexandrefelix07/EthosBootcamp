public with sharing class FormularioHeroisCMPController {

    @AuraEnabled
    public static String salvarHerois( string jsonHero){       
       System.debug('meu jsonHero ::' + jsonHero);  
        
        try{
            Heroi heroi = (Heroi) JSON.deserialize(jsonHero, heroi.class);
            Contact contato = new Contact();          
            contato.FirstName       = heroi.firstname;
            contato.LastName        = heroi.lastname;
            contato.Nomedeguerra__c = heroi.Nomedeguerra;
            contato.Planeta__c      = heroi.planeta;
            contato.Description     = heroi.descricao;
            
            insert contato;

              
          return 'Heroi Criado com Sucesso'; 
            
        }catch(Exception e ){
           System.debug('Error ::' + e.getMessage());  
           return 'ops..' + e.getMessage();  
        }        
    }
    
    public class Heroi{
      public string firstname;
      public string lastname;
      public string Nomedeguerra;
      public string planeta;
      public string descricao;
        
    }
    
}