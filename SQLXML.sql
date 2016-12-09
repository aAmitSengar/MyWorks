ALTER PROCEDURE [dbo].[Import_Data] 

@QXML AS XML

AS
BEGIN

BEGIN TRY 
	
DECLARE @ID AS INT

-- Set Paper ID from XML node 
;WITH XMLNAMESPACES ('http://tempuri.org/PaperImportSchema.xsd' AS ns)
SELECT TOP 1 @PaperID = x.y.value('@Id','int')
FROM @QXML.nodes('/ns:Paper/ns:QuestionPaper/ns:QuestionPaper') AS x( y )

   BEGIN
   

   ;WITH XMLNAMESPACES ('http://tempuri.org/PaperImportSchema.xsd' AS ns1)
   INSERT INTO Paper(Id,PId,Name,No1,IsCompleted,OptionNames,CreatedOn) 
   SELECT x.y.value('@Id','int'),
          x.y.value('@PId','int'),
          x.y.value('@Name','varchar(50)'),
          x.y.value('@No2','char(2)'),
          x.y.value('@IsCompleted','tinyint'),
          x.y.value('@OptionNames','varchar(20)'),
          x.y.value('@CreatedOn','datetime')
   FROM @QXML.nodes('/ns1:Paper/ns1:Paper/ns1:Paper') AS x( y )



 ;WITH XMLNAMESPACES ('http://tempuri.org/PaperImportSchema.xsd' AS ns2)
  INSERT INTO Master(ID,QueID,QueTitleEngQueModifyOn,QueModifyBy,SingleLine,DoNotShuffle,PaperId) 
   SELECT x.y.value('@QID','bigint'),
          x.y.value('@QueID','int'),
          x.y.value('@QueTitleEng','nvarchar(max)'),         
          x.y.value('@QueModifyOn','datetime'),
          x.y.value('@QueModifyBy','int'),
          x.y.value('@SingleLine','bit'),
          @ID
   FROM @QXML.nodes('/ns2:Paper/ns2:Master/ns2:Master') AS x( y )
   
   SELECT 0
   
 END 
 ELSE 
   BEGIN
     SELECT @PaperID
   END
   
   
END TRY

BEGIN CATCH
  IF @@TRANCOUNT > 0 ROLLBACK
  SELECT -1
END CATCH

		
END

