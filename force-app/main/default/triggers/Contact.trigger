trigger Contact on Contact (before insert,after insert,before update,after update ) {
    
    if (trigger.isBefore){
        System.debug('>>> BEFORE <<<');
       
    }else if(Trigger.isAfter) {
        System.debug('>>> AFTER <<<<');
    }

     
}