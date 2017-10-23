USE LedgerApplication
GO
Create TABLE LedgerEquityAccounts(
LiabilityEquityID int,
LedgerID int,
OwnersEquity bit,
OwnersWithdrawal bit,
CommonShares bit,
PreferedShares bit,
RetainedEarnings bit,
Dividends bit
Constraint PK_EquityAccountID Primary Key nonclustered (LiabilityEquityID)
CONSTRAINT FK_LedgerEquityLiabilityID Foreign Key (LedgerID)
References LedgerID(LedgerID));
SELECT *
FROM LedgerEquityAccounts