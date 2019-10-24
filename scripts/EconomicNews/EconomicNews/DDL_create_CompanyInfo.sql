use EconomicNews;

if not exists (select * from sysobjects where name='CompanyInfo' and xtype='U')
    create table CompanyInfo (
        id int not null identity primary key,
		company_id int not null,
		industry_id int not null,
		ceo_id int not null,
		website nvarchar(max),
		[description] nvarchar(max),
		employees int,
		[address] nvarchar(max)
    )