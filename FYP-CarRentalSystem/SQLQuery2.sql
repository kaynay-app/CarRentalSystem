/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[UserName]
      ,[FirstName]
      ,[LastName]
      ,[Password]
      ,[EmailId]
      ,[ContactNo]
      ,[Address]
      ,[AltEmail]
      ,[AltContact]
      ,[DriverLicInfo]
  FROM [Kelem_UAT].[dbo].[Users]