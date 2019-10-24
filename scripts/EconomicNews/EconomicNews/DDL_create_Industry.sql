use EconomicNews;

if not exists (select * from sysobjects where name='Industry' and xtype='U')
    create table Industry (
        id int not null identity primary key,
		[name] nvarchar(100)
    )