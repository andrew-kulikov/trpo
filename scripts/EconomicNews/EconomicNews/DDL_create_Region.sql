use EconomicNews;

if not exists (select * from sysobjects where name='Region' and xtype='U')
    create table Region (
        id int not null identity primary key,
		[name] nvarchar(100)
    )