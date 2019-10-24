use EconomicNews;

if not exists (select * from sysobjects where name='AdvancedStats' and xtype='U')
    create table AdvancedStats (
        id int not null identity primary key,
		symbol_id int not null,
		total_cash int not null,
		gross_profit int not null,
		total_revenue int not null,
		[date] datetime not null,
    )