use EconomicNews;

if not exists (select * from sysobjects where name='CompanyCEO' and xtype='U')
    create table CompanyCEO (
        id int not null identity primary key,
		full_name nvarchar(200),
		bio nvarchar(max),
		[site] nvarchar(max)
    )