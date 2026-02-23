--Performance table & Rating Level and Satisfaction Level table--
CREATE TABLE `studied-biplane-488121-s1.data.table2` AS
SELECT
  EmployeeID, 
  PerformanceID, 
  ReviewDate, 
  E5.SatisfactionLevel AS EnvironmentSatisfaction, 
  E6.SatisfactionLevel AS JobSatisfaction, 
  E7.SatisfactionLevel AS RelationshipSatisfaction, 
  TrainingOpportunitiesWithinYear, 
  TrainingOpportunitiesTaken, 
  WorkLifeBalance, 
  E3.ratingLevel AS SelfRating, 
  E4.ratingLevel AS ManagerRating
FROM `studied-biplane-488121-s1.data.PerformanceRating` E2
JOIN `studied-biplane-488121-s1.data.RatingLevel` E3
ON E2.SelfRating = E3.RatingID

JOIN `studied-biplane-488121-s1.data.RatingLevel` E4
ON E2.ManagerRating = E4.RatingID

JOIN `studied-biplane-488121-s1.data.SatisfiedLevel` E5
ON E2.EnvironmentSatisfaction = E5.SatisfactionID

JOIN `studied-biplane-488121-s1.data.SatisfiedLevel` E6
ON E2.jobSatisfaction = E6.SatisfactionID

JOIN `studied-biplane-488121-s1.data.SatisfiedLevel` E7
ON E2.RelationshipSatisfaction = E7.SatisfactionID
