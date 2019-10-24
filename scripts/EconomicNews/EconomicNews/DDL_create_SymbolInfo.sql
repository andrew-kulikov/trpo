use EconomicNews;

if not exists (select * from sysobjects where name='SymbolInfo' and xtype='U')
    create table SymbolInfo (
        id int not null identity primary key,
		symbol_id int not null,
		[type_id] int not null,
		exchange_id int not null,
		currency_id int not null,
    )