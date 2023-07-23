create database Financials;
use Financials;
create table AssetType(
	AssetTypeid serial primary key,
	AssetTypedesc varchar(50)
);
insert into AssetType (AssetTypedesc)
values ('Stock');

create table Sector(
	Sectorid serial primary key,
	SectorDesc varchar(100)
); 

create table Industries(
	Industryid serial primary key,
	IndustryDesc varchar(100)
); 

-- the stock table stores info specific to stocks
create table stock(
	Symbol varchar(8) primary key,
	Sectorid smallint references Sector(Sectorid),
	Industryid int references Industries(Industryid),
	LatestQuarter date,
	MarketCapitalization int, -- displayed in tens of thousands
	EBITDA int, -- displayed in tens of thousands
	PERatio decimal(7, 2),
	BookValue int,
	DividendYield decimal(8, 4),
	EPS decimal(7, 4),
	RevenueTTM int, -- displayed in tens of thousands
	TrailingPE decimal (7, 2),
	ForwardPE decimal (7, 2)
);

-- the asset table stores info common to all assets
create table asset(
	assetid serial primary key,
	AssetTypeid smallint references AssetType(AssetTypeid),
	Symbol varchar(8) references stock(Symbol),
	assetname varchar(100),
	description varchar(2000)
);





