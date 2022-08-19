-- Cleansed DIM_Customers Table --
SELECT 
  c.customerkey AS CustomerKey, 
  --      ,[GeographyKey]
  --      ,[CustomerAlternateKey]
       [Title],
  --firstname AS [First Name], 
  --      ,[MiddleName]
  --lastname AS [Last Name], 
  c.firstname + ' ' + lastname AS [Full Name], 
  -- Combined First and Last Name
  --      ,[NameStyle]
  --      ,[BirthDate]
   --    [MaritalStatus],
  --      ,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
    CASE c.MaritalStatus WHEN 'M' THEN 'Married' WHEN 'S' THEN 'Single' END AS Marital_Status,

  --      ,[EmailAddress]
  --      ,[YearlyIncome]
       [TotalChildren],
      --  [NumberChildrenAtHome]
       [EnglishEducation] AS Education,
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --      ,[AddressLine1]
  --      ,[AddressLine2]
  --      ,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --      ,[CommuteDistance]
  g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey
