/*CREATE TABLE [dbo].[book_DIM](
    [book_SK] [int] identity (1,1),
	[book_id_BK] [int] NOT NULL,
	[title] [varchar](400) NULL,
	[isbn13] [varchar](13) NULL,
	[language_id] [int] NULL,
	[num_pages] [int] NULL,
	[publication_date] [date] NULL,
	[publisher_id] [int] NULL,
	[language_code] [varchar](8) NULL,
	[language_name] [varchar](50) NULL,
	[publisher_name] [varchar](400) NULL,
	[author_id] [int] NOT NULL,
	[author_name] [varchar](400) NULL,
	[starting_date] [datetime] not null default (getdate()),
	[ending_date] [datetime] null ,
	[is_current] [int] not null default (1))*/

/*CREATE TABLE [dbo].[Customer_DIM](
    [Customer_SK] [int] identity (1,1),
	[customer_id_BK] [int] NOT NULL,
	[first_name] [varchar](200) NULL,
	[last_name] [varchar](200) NULL,
	[email] [varchar](350) NULL,
	[address_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[address_status] [varchar](30) NULL,
	[street_number] [varchar](10) NULL,
	[street_name] [varchar](200) NULL,
	[city] [varchar](100) NULL,
	[country_id] [int] NOT NULL,
	[country_name] [varchar](200) NULL, 
	[starting_date] [datetime] not null default (getdate()),
	[ending_date] [datetime] null ,
	[is_current] [int] not null default (1))*/


/*CREATE TABLE [dbo].[Order_History_DIM](
    [Order_History_SK] [int] identity (1,1),
	[history_id_BK] [int] NOT NULL,
	[order_id] [int] not NULL,
	[status_id] [int] not NULL,
	[status_date] [datetime] NULL,
	[status_value] [varchar](20) NULL,
	[starting_date] [datetime] not null default (getdate()),
	[ending_date] [datetime] null ,
	[is_current] [int] not null default (1))*/

/*CREATE TABLE [dbo].[Shipping_Method_DIM](
    [Shipping_Method_SK] [int] identity (1,1),
	[method_id] [int] NOT NULL,
	[method_name] [varchar](100) NULL,
	[starting_date] [datetime] not null default (getdate()),
	[ending_date] [datetime] null ,
	[is_current] [int] not null default (1))*/

/*CREATE TABLE [dbo].[Order_FACT](
    [Order_Fact_SK] [int] identity (1,1),
	[book_SK_FK] [int] null ,
	[Customer_SK_FK] [int] null,
	[Order_History_SK_FK] [int] null,
	[Shipping_Method_SK_FK] [int] null ,
	[Date_SK_FK] [int] null ,
	[order_date] [datetime] NULL,
	[method_id] [int] NOT NULL,
	[price] [decimal](5, 2) NULL,
	[cost] [decimal](6, 2) NULL,
	[Created_at] [Datetime] not null default (getdate()))*/

/*alter TABLE [dbo].[Order_FACT] add Source_Code int


alter TABLE [dbo].[book_DIM] add Source_Code int


alter TABLE [dbo].[Customer_DIM] add Source_Code int


alter TABLE [dbo].[Order_History_DIM] add Source_Code int


alter TABLE [dbo].[Shipping_Method_DIM] add Source_Code int*/


/*create table last_load (id int , last_details varchar(20) , last_date datetime , last_id int )*/
truncate table order_fact
