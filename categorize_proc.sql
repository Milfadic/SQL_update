--FUCNTION UPDATED ON MARCH 13, 2015 By Milenko Fadic
--This function looks at a table and updates a set based on information from another table. 

/*Store Procedure to Update Table A from information on Table B*/

ALTER TABLE TABLEA
ADD MYNEWFIELD NVARCHAR(25)


/* Take this as an Example
Table B. 
Name           			Description    				Industry
1. CompanyA     	Your food service provider		Null
2. CompanyB			We educate the Youth 			Null
3. CompanyC			Constructing your future		Null


Table A. 
Keyword			Industry
1.University 	Education
2.College 	    Education
3.School	 	Education
4.Building		Construction
5.Construction	Construction
6.Beer			Food
7.Hamburgers	Food
*/


DECLARE @keyword nvarchar(250) 
DECLARE @CAT1 nvarchar(250) 
DECLARE @CAT2 nvarchar(250) 
DECLARE @MyCursor

CURSOR   SET @MyCursor = CURSOR FAST_FORWARD
FOR SELECT Keyword	, Industry FROM   TableA
OPEN @MyCursor
FETCH NEXT FROM @MyCursor INTO @keyword, @cat1
WHILE @@FETCH_STATUS = 0
BEGIN
declare @cat3 nvarchar(20)
set @cat3='%'+ @keyword+'%'
update TableB set Industry= @CAT1 WHERE Description    like (@cat3)
FETCH NEXT FROM @MyCursor

INTO @keyword, @cat1
END CLOSE @MyCursor DEALLOCATE @MyCursor


