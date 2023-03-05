﻿CREATE TABLE LM.Lessee
(
  LesseeId     INT           NOT NULL,
  ExternalId   NVARCHAR(100)     NULL,
  ResidentId   INT           NOT NULL,
  RelationId   INT           NOT NULL,
  SuffixId     INT               NULL,
  FirstName    NVARCHAR(100)     NULL,
  MiddleName   NVARCHAR(100)     NULL,
  LastName     NVARCHAR(100) NOT NULL,
  EmailAddress NVARCHAR(200)     NULL,
  CONSTRAINT pkcLessee PRIMARY KEY CLUSTERED (LesseeId)
)