use EconomicNews;

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_AdvancedStats_Symbol')
	and parent_object_id = OBJECT_ID(N'dbo.AdvancedStats')
)
	alter table AdvancedStats 
	add constraint FK_AdvancedStats_Symbol foreign key (symbol_id)
	references Symbol (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_SymbolInfo_Symbol')
	and parent_object_id = OBJECT_ID(N'dbo.SymbolInfo')
)
	alter table SymbolInfo 
	add constraint FK_SymbolInfo_Symbol foreign key (symbol_id)
	references Symbol (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_SymbolInfo_SymbolType')
	and parent_object_id = OBJECT_ID(N'dbo.SymbolInfo')
)
	alter table SymbolInfo 
	add constraint FK_SymbolInfo_SymbolType foreign key ([type_id])
	references SymbolType (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_SymbolInfo_Exchange')
	and parent_object_id = OBJECT_ID(N'dbo.SymbolInfo')
)
	alter table SymbolInfo 
	add constraint FK_SymbolInfo_Exchange foreign key (exchange_id)
	references Exchange (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_SymbolInfo_Currency')
	and parent_object_id = OBJECT_ID(N'dbo.SymbolInfo')
)
	alter table SymbolInfo 
	add constraint FK_SymbolInfo_Currency foreign key (currency_id)
	references Currency (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_Exchange_Region')
	and parent_object_id = OBJECT_ID(N'dbo.Exchange')
)
	alter table Exchange 
	add constraint FK_Exchange_Region foreign key (region_id)
	references Region (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_Company_Symbol')
	and parent_object_id = OBJECT_ID(N'dbo.Company')
)
	alter table Company 
	add constraint FK_Company_Symbol foreign key (symbol_id)
	references Symbol (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_Company_Exchange')
	and parent_object_id = OBJECT_ID(N'dbo.Company')
)
	alter table Company 
	add constraint FK_Company_Exchange foreign key (exchange_id)
	references Exchange (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_CompanyInfo_Company')
	and parent_object_id = OBJECT_ID(N'dbo.CompanyInfo')
)
	alter table CompanyInfo 
	add constraint FK_CompanyInfo_Company foreign key (company_id)
	references Company (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_CompanyInfo_Industry')
	and parent_object_id = OBJECT_ID(N'dbo.CompanyInfo')
)
	alter table CompanyInfo 
	add constraint FK_CompanyInfo_Industry foreign key (industry_id)
	references Industry (id);

if not exists (
	select * from sys.foreign_keys 
	where object_id = object_id(N'dbo.FK_CompanyInfo_CompanyCEO')
	and parent_object_id = OBJECT_ID(N'dbo.CompanyInfo')
)
	alter table CompanyInfo 
	add constraint FK_CompanyInfo_CompanyCEO foreign key (ceo_id)
	references CompanyCEO (id);