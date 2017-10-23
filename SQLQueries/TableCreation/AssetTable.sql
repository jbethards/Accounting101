--CREATE TABLE table_name(
--   column1 datatype,
--   column2 datatype,
--   column3 datatype,
--   .....
--   columnN datatype,
--   PRIMARY KEY( one or more columns )
--);
USE LedgerApplication
GO
Create TABLE LedgerAssetAccounts(
AssetAccountID int,
LedgerID int,
Cash bit,
TemporaryInvestments bit,
Inventory bit,
Supplies bit,
Property bit,
Goodwill bit
Constraint PK_AssetAccountID Primary Key nonclustered (AssetAccountID)
CONSTRAINT FK_LedgerID Foreign Key (LedgerID)
References LedgerID(LedgerID));
SELECT *
FROM LedgerAssetAccounts;
