const gherkin = require('gherkin-parser')
const fs = require('fs')
 
fs.createReadStream('D:\\simanov\\project1c\\billing_TDD\\СКЭК\\Начисления\\РасчетПоНормативу\\РасчетОтопленияПоНормативу.feature')
  .pipe(gherkin())
  .pipe(process.stdout)