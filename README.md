# Financial-db
Creating the database  

Step 1. Start mysql.  

Step 2. Run the create-fin-tables.sql script:
```console
source create-fin-tables.sql
```

![step1](https://github.com/edwardedwardedward3/Financial-db/assets/90068254/dd8888c3-2b3a-48a9-bf26-ddedc3224c3a)  

Step 3. Run the populatecats.sql script. This should take less than 10 seconds to complete:
```console
source populatecats.sql
```
There are 7 Sectors and 183 Industries currently.  
![step2](https://github.com/edwardedwardedward3/Financial-db/assets/90068254/d748b261-a2e5-467d-b019-8d7253c9b356)  

Step 4. Run the populatestocks.sql script. This should take less than 30 seconds:
```console
source populatestocks.sql
```
## At this point the database is built. Example queries:  
There are just short of 500 stocks currently.  

This query will give us a general overview of the companies.  
```console
select a.Symbol, assetname, description from stock a join asset b on a.Symbol = b.Symbol limit 10;
```
![exq1](https://github.com/edwardedwardedward3/Financial-db/assets/90068254/ab870970-4ac7-49f1-89ab-c850eef66553)  

___________________________________________________________________________________________________________________________________________________________________________
Look at financial metrics of the technology sector  


select Symbol, MarketCapitalization, EBITDA, PERatio, BookValue, DividendYield, EPS, RevenueTTM, TrailingPE, ForwardPE from stock a join Sector b on a.Sectorid = b.Sectorid where SectorDesc = 'TECHNOLOGY';  
![exq2](https://github.com/edwardedwardedward3/Financial-db/assets/90068254/e47ca118-7070-4b3b-852e-0548cf531ea3)  



Look at dividend yields of cigarette companies  


select Symbol, DividendYield from stock a join Industries b on a.Industryid = b.Industryid where IndustryDesc='CIGARETTES';  


Look at P/E ratios of mining and gold and silver ore producing companies  


select Symbol, PERatio from stock a join Industries b on a.Industryid = b.Industryid where IndustryDesc = 'METAL MINING' or IndustryDesc = 'MINING & QUARRYING OF NONMETALLIC MINERALS (NO FUELS)' or IndustryDesc = 'GOLD AND SILVER ORES';  

![exq3](https://github.com/edwardedwardedward3/Financial-db/assets/90068254/d6140712-1c27-4626-9d0d-bbc93992b294)  

Look at financial metrics of the energy sector  


select Symbol, MarketCapitalization, EBITDA, PERatio, BookValue, DividendYield, EPS, RevenueTTM, TrailingPE, ForwardPE from stock a join Sector b on a.Sectorid = b.Sectorid where SectorDesc = 'ENERGY & TRANSPORTATION';  

![exq4](https://github.com/edwardedwardedward3/Financial-db/assets/90068254/7891a593-210d-4ee8-b8ff-f63db659fcf2)




