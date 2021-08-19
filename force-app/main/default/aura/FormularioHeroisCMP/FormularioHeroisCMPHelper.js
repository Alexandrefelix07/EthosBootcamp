({
	salvarheroi : function(component, event) {
	  alert('Esta Salvando Resgistro....');
        
      let objherois = {  'firstname': component.get("v.firstname"),
                          'lastname': component.get("v.lastname"),
                          'Nomedeguerra': component.get("v.Nomedeguerra"),
                          'planeta': component.get("v.planeta"),
                          'descricao': component.get("v.descricao")
                         };
        
        
        let jsonherois = JSON.stringify(objherois);
        let action = component.get("c.salvarHerois");              
        //passando parametro
        action.setParams({
            jsonHero : jsonherois
        });
        
           action.setCallback(this, function(response) {
            
            let state = response.getState();
          
            if (state === "SUCCESS") {
                 // captura retorno banckend
                 console.log('return:: ',response.getReturnValue());   
                 alert('Contato salvo ....');
                 window.location.reload(true);
             }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Errors : " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });

        $A.enqueueAction(action);     
	}
})
({
    limpartela : function(component, event) {
       this.refs.form.reset();   
    }

})