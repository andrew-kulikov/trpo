use EconomicNews;

if not exists (select * from sysobjects where name='Currency' and xtype='U')
    create table Currency (
        id int not null identity primary key,
		[name] nvarchar(100)
    )