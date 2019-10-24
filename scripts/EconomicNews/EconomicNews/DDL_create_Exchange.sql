use EconomicNews;

if not exists (select * from sysobjects where name='Exchange' and xtype='U')
    create table Exchange (
        id int not null identity primary key,
		region_id int not null,
		[name] nvarchar(100),
		[description] nvarchar(max)
    )