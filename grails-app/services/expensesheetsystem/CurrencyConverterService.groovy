package expensesheetsystem

import grails.gorm.transactions.Transactional
import groovy.json.JsonSlurper 

@Transactional
class CurrencyConverterService {

    def convertRandToUSD(def rand) {
        String JSON_URL = "http://data.fixer.io/api/latest?access_key=9a735553dd59bf5e7030c85fb2204d25&symbols=USD,ZAR"
        URL url = new URL(JSON_URL)
        InputStream urlStream = null
        urlStream = url.openStream()
        BufferedReader reader = new BufferedReader(new InputStreamReader(urlStream))
        JsonSlurper jsonSlurper = new JsonSlurper()
        Object result = jsonSlurper.parse(reader)
      
      
      return (rand / result.rates.ZAR) * result.rates.USD
    }

    
}
