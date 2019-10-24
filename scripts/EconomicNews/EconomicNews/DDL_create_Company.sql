use EconomicNews;

if not exists (select * from sysobjects where name='Company' and xtype='U')
    create table Company (
		id int not null identity primary key,
		symbol_id int not null,
		exchange_id int not null
    )