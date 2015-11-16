Read Me-

The following SQL command helps you categorize a column based on key words
from another column (like a description).

To illustrate the procedure now suppose that we have a table 
which contains a company name and a description of the purpose of the company.

Table B. 
Name           			Description    				Industry
1. CompanyA     	Your food service provider		Null
2. CompanyB			We educate the Youth 			Null
3. CompanyC			Constructing your future		Null


Also suppose that there are only 4 industries in this universe. 

Table A. 
Keyword			Industry
1.University 	Education
2.College 	    Education
3.School	 	Education
4.Building		Construction
5.Construction	Construction
6.Beer			Food
7.Hamburgers	Food

The procedure sets a cursor to go through the description column of table B
and update the Industry Column based on a set of keywords established in table A.

For example, in this scenario, the procedure would update table B to the following
 


Table B. 
Name           			Description    				Industry
1. CompanyA     	Your food service provider		Food
2. CompanyB			We educate the Youth 			Education
3. CompanyC			Constructing your future		Construction


Although this example may seem trivial, this procedure can assist you in categorizing
records that contain description. I used it to categorize public institutions and
to update the geographic location of firms. 

 
