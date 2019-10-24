use EconomicNews;

if not exists (select * from sysobjects where name='Symbol' and xtype='U')
    create table Symbol (
        id int not null identity primary key,
		[name] nvarchar(200),
		[enabled] bit
    )