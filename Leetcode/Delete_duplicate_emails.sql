DELETE p1 FROM
Person p1
, Person AS p2
WHERE p1.ID>P2.ID
AND P1.EMAIL =P2.EMAIL