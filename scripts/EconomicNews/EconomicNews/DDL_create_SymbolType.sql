use EconomicNews;

if not exists (select * from sysobjects where name='SymbolType' and xtype='U')
    create table SymbolType (
        id int not null identity primary key,
		[name] nvarchar(100)
    )