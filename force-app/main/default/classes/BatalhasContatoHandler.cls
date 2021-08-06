public  class BatalhasContatoHandler {
    

    public static void contaBatalhaInsert(List<BatalhasContato__c> listaBatalha){
        
        List<BatalhasContato__c> listBatalhaCotato = [select id from BatalhasContato__c where Contato__c = :listaBatalha.get(0).Contato__c];   
                                               
        Integer qtdBatalhas = listBatalhaCotato.size();
        
        Contact contato = [select id from contact where id = :listaBatalha.get(0).Contato__c];
        
        contato.NumeroBatalhas__c = qtdBatalhas;
        
        update contato;              
                
    }   
    public static void contaBatalhaDelete(List<BatalhasContato__c> listaBatalha){
        
        List<BatalhasContato__c> listBatalhaCotato = [select id from BatalhasContato__c where Contato__c = :listaBatalha.get(0).Contato__c];   
        
        Integer qtdBatalhas = listBatalhaCotato.size();
        
        Contact contato = [select id from contact where id = :listaBatalha.get(0).Contato__c];
        
        contato.NumeroBatalhas__c = qtdBatalhas;
        
        update contato;    
        
    }   
    
    // public static void contatoBatalhaTodos(){  

    //   private List<Contact> listNova;
      
    //   List<BatalhasContatoc> listaBatalha = [select id,Contato__c, Batalha__c from BatalhasContato__c order by Batalha__c ];

    //   for(BatalhasContatoc a : listaBatalha) {

    //     if (a.Contato__c.contains(listNova.id) ){
    //       listNova.get(a.id) .NumeroBatalhas__c ++;       
    //     }else{
    //       listNova.add(listaBatalha.Contato__c);
    //     }
           
    //   }
    //   Contact contato = [select id from contact where id = :listaBatalha.get(0).Contato__c];
        
    //   contato.NumeroBatalhas__c = qtdBatalhas;
      
    //   update contato;    

    // }


}