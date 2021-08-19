public class TrabalharLead implements Schedulable{

    public void execute(SchedulableContext sc) {

      run();
   }

    public void run(){
        List<Task> insertTask = new List<Task>();  
        
        for (Lead lead : [select Id from Lead where Status = 'Aberto' and LastModifiedDate < LAST_N_DAYS:3 ] ){  
          Task task = new Task(); 
          task.WhoId = lead.Id;
          Task.Status = 'Not Started';  
          Task.Priority = 'Higth'; 
          Task.Subject  ='Trabalhar no Lead'; 
          task.Description = 'Trabalhar no Lead';
          insertTask.add(task);
          System.debug('foi adicionado a lista de task'); 
        }
        
       if (! insertTask.isEmpty() ) {
         insert insertTask; 
         System.debug('foi inserido task'); 
       } 
                 
       //HelperTaskLead.Trabalhalead(leadIds);     
      //finçso para chamar a atualização
      // String sch = '0 30  * * * ?';
      // TrabalharLead teste = TrabalharLead();
      //System.Schedulable('Nome do Job',Crom,Instacia_classe_shedulable);  
      // System.schedule('Trabalhar no Lead', sch, teste);
        
    }
}