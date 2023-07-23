-- This query will give us a general overview of the companies.
-- select(sigma) ... from a join(|><|) b

select a.Symbol, assetname, description from stock a join asset b on a.Symbol = b.Symbol limit 10;

-- Look at financial metrics of the technology sector
-- select(sigma) ... from a join(|><|) b where SectorDesc = 'Technology'(<SectorDesc='Technology'>)

select Symbol, MarketCapitalization, EBITDA, PERatio, BookValue, DividendYield, EPS, RevenueTTM, TrailingPE, ForwardPE from stock a join Sector b on a.Sectorid = b.Sectorid where SectorDesc = 'TECHNOLOGY';

-- Look at P/E ratios of mining and gold and silver ore producing companies
-- select(sigma) ... from a join(|><|) b where IndustryDesc = 'METAL MINING'(<SectorDesc='METAL MINING'>) or(U) IndustryDesc = 'MINING & QUARRYING OF NONMETALLIC MINERALS (NO FUELS)'(<SectorDesc='MINING & QUARRYING OF NONMETALLIC MINERALS (NO FUELS)'>) or(U) IndustryDesc = 'GOLD AND SILVER ORES'(<'GOLD AND SILVER ORES'>)
select Symbol, PERatio from stock a join Industries b on a.Industryid = b.Industryid where IndustryDesc = 'METAL MINING' or IndustryDesc = 'MINING & QUARRYING OF NONMETALLIC MINERALS (NO FUELS)' or IndustryDesc = 'GOLD AND SILVER ORES';

-- Look at dividend yields of cigarette companies
-- select(sigma) ... from a join(|><|) b where IndustryDesc = 'CIGARETTES'(<SectorDesc='CIGARETTES'>)
select Symbol, DividendYield from stock a join Industries b on a.Industryid = b.Industryid where IndustryDesc='CIGARETTES';

-- Look at financial metrics of the energy sector
-- select(sigma) ... from a join(|><|) b where SectorDesc = 'ENERGY & TRANSPORTATION'(<SectorDesc='ENERGY & TRANSPORTATION'>)
select Symbol, MarketCapitalization, EBITDA, PERatio, BookValue, DividendYield, EPS, RevenueTTM, TrailingPE, ForwardPE from stock a join Sector b on a.Sectorid = b.Sectorid where SectorDesc = 'ENERGY & TRANSPORTATION';
