USE LedgerApplication
GO
Create TABLE LedgerLiabilityAccounts(
LiabilityAccountID int,
LedgerID int,
AccountsPayable bit,
SalariesPayable bit,
RentPayable bit,
EstimatedWarrentyLiability bit,
LongTermLiability bit,
DividendsPayable bit,
TaxPayable bit
Constraint PK_LiabilityAccountID Primary Key nonclustered (LiabilityAccountID)
CONSTRAINT FK_LedgerLiabilityID Foreign Key (LedgerID)
References LedgerID(LedgerID));
SELECT *
FROM LedgerLiabilityAccounts;
