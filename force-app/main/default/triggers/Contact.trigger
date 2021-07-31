trigger Contact on Contact (before insert) {
    for(Contact c : Trigger.new){
         c.Email = 'testandokkkkka@hotmail.com';
    }
}