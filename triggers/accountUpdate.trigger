trigger accountUpdate on Account (after update) {
    List<Account> acclist = new List<Account>();
   /*
    code example test sjdflkajdsklfjasdlkfj
*/
    for(account acc : trigger.new){
       if(acc.accountnumber=='123456789'){
       account accs = new account();
       accs.id = acc.id;
       accs.accountnumber = '222222222222222222';
       accs.name='test';
       acclist.add(accs);
       }
    }
    if(acclist.size() > 0)
    update acclist;
}