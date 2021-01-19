trigger contactTrigger on Contact (after insert) {
  List<Account> accList = [select id , name from account where id = '0012v00002KdbLJ'];
  for(account acc:accList){
    acc.AnnualRevenue = 1000000;
  }
  update accList;
}