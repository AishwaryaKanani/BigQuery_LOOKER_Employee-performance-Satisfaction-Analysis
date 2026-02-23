-- Employee Dataset--
SELECT 
  FirstName,
  LastName,
  CONCAT(FirstName, ' ', LastName) AS Employee_Name
FROM `studied-biplane-488121-s1.data.Employee`;

--Age Bins (18-51)--
SELECT
  Age,
    CASE
      WHEN age BETWEEN 18 AND 24 THEN '18-24'
      WHEN age BETWEEN 25 AND 31 THEN '25-31'
      WHEN age BETWEEN 32 AND 38 THEN '32-38'
      WHEN age BETWEEN 39 AND 45 THEN '39-45'
      WHEN age BETWEEN 46 AND 51 THEN '46-51'
      ELSE 'other'
    END AS Age_Group
FROM `studied-biplane-488121-s1.data.Employee`;


--Satate full name--
SELECT   
EmployeeID,
State,
  CASE
    WHEN State = 'CA' THEN 'California'
    WHEN State = 'IL' THEN 'Illinois'
    WHEN state = 'NY' THEN 'New York'
    ELSE 'Unknown'
  END AS Full_State_Name
FROM `studied-biplane-488121-s1.data.Employee`;

--Salary Bins (20387-547204)--
SELECT
EmployeeID,
Salary,
  CASE
    WHEN Salary BETWEEN 20387 AND 50000 THEN 'Under-50K'
    WHEN Salary BETWEEN 50001 AND 150000 THEN '50K-150K'
    WHEN Salary BETWEEN 150001 AND 300000 THEN '150K-300K'
    WHEN Salary BETWEEN 300001 AND 500000 THEN '300K-500K'
    WHEn Salary > 500000 THEN 'Above 5Lac'
    ELSE 'Unknown'
  END AS Salary_Bin
FROM `studied-biplane-488121-s1.data.Employee`;



--Selecting Column From Employee Table--

SELECT
EmployeeID,
CONCAT(FirstName, ' ', LastName) AS Employee_Name,
Gender, 
BusinessTravel, 
Department, 
`DistanceFromHome KM`, 
Ethnicity, 
Education, 
EducationField, 
JobRole, 
MaritalStatus, 
StockOptionLevel, 
OverTime, 
HireDate, 
Attrition, 
YearsAtCompany,
YearsInMostRecentRole, 
YearsSinceLastPromotion, 
YearsWithCurrManager,
Age,
  CASE
      WHEN age BETWEEN 18 AND 24 THEN '18-24'
      WHEN age BETWEEN 25 AND 31 THEN '25-31'
      WHEN age BETWEEN 32 AND 38 THEN '32-38'
      WHEN age BETWEEN 39 AND 45 THEN '39-45'
      WHEN age BETWEEN 46 AND 51 THEN '46-51'
      ELSE 'other'
    END AS Age_Group,
  CASE
      WHEN State = 'CA' THEN 'California'
      WHEN State = 'IL' THEN 'Illinois'
      WHEN State = 'NY' THEN 'New York'
      ELSE 'Unknown'
    END AS Full_State_Name,
  CASE
      WHEN Salary BETWEEN 20387 AND 50000 THEN 'Under-50K'
      WHEN Salary BETWEEN 50001 AND 150000 THEN '50K-150K'
      WHEN Salary BETWEEN 150001 AND 300000 THEN '150K-300K'
      WHEN Salary BETWEEN 300001 AND 500000 THEN '300K-500K'
      WHEn Salary > 500000 THEN 'Above 5Lac'
      ELSE 'Unknown'
    END AS Salary_Bin
FROM `studied-biplane-488121-s1.data.Employee`;



--Create Table 1 by Joining Employee Table and educationalLevel Table based on primary key as Education and EducationLevelID--
CREATE TABLE `studied-biplane-488121-s1.data.table1` AS
SELECT
EmployeeID,
CONCAT(FirstName, ' ', LastName) AS Employee_Name,
Gender, 
BusinessTravel, 
Department, 
`DistanceFromHome KM`, 
Ethnicity, 
Education, 
EducationField, 
JobRole, 
MaritalStatus, 
StockOptionLevel, 
OverTime, 
HireDate, 
Attrition, 
YearsAtCompany,
YearsInMostRecentRole, 
YearsSinceLastPromotion, 
YearsWithCurrManager,
Age,
  CASE
      WHEN age BETWEEN 18 AND 24 THEN '18-24'
      WHEN age BETWEEN 25 AND 31 THEN '25-31'
      WHEN age BETWEEN 32 AND 38 THEN '32-38'
      WHEN age BETWEEN 39 AND 45 THEN '39-45'
      WHEN age BETWEEN 46 AND 51 THEN '46-51'
      ELSE 'other'
    END AS Age_Group,
  CASE
      WHEN State = 'CA' THEN 'California'
      WHEN State = 'IL' THEN 'Illinois'
      WHEN State = 'NY' THEN 'New York'
      ELSE 'Unknown'
    END AS Full_State_Name,
  CASE
      WHEN Salary BETWEEN 20387 AND 50000 THEN 'Under-50K'
      WHEN Salary BETWEEN 50001 AND 150000 THEN '50K-150K'
      WHEN Salary BETWEEN 150001 AND 300000 THEN '150K-300K'
      WHEN Salary BETWEEN 300001 AND 500000 THEN '300K-500K'
      WHEn Salary > 500000 THEN 'Above 5Lac'
      ELSE 'Unknown'
    END AS Salary_Bin,
  E1.EducationLevel
FROM `studied-biplane-488121-s1.data.Employee` E
JOIN `studied-biplane-488121-s1.data.EducationLevel` E1
ON E.Education = E1.EducationLevelID;















