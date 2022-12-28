# SQL Coding 
It contains the solved Leetcode problems for SQL using Microsoft SQL Server.

## SQL Functions 
1. ###  **Pivot**: 
    Rotating a table-valued expression by turning the unique values from one column in the expression in multiple columns in the output. 
    
    *Example*
    ```SQL
    SELECT 'AverageCost' AS Cost_Sorted_By_Production_Days,   
    [0], [1], [2], [3], [4]  
    FROM  
    (
    SELECT DaysToManufacture, StandardCost   
    FROM Production.Product
    ) AS SourceTable  
    PIVOT  
    (  
    AVG(StandardCost)  
    FOR DaysToManufacture IN ([0], [1], [2], [3], [4])  
    ) AS PivotTable;
    ```

2. ### **UnPivot**: 
   It carries out the opposite operation to PIVOT by rotating columns of a table-valued expression into column values.

   *Example*

   ```SQL
    CREATE TABLE pvt (VendorID INT, Emp1 INT, Emp2 INT,  
        Emp3 INT, Emp4 INT, Emp5 INT);  
    GO  
    INSERT INTO pvt VALUES (1,4,3,5,4,4);  
    INSERT INTO pvt VALUES (2,4,1,5,5,5);  
    INSERT INTO pvt VALUES (3,4,3,5,4,4);  
    INSERT INTO pvt VALUES (4,4,2,5,5,4);  
    INSERT INTO pvt VALUES (5,5,1,5,5,5);  
    GO  
    -- Unpivot the table.  
    SELECT VendorID, Employee, Orders  
    FROM   
    (SELECT VendorID, Emp1, Emp2, Emp3, Emp4, Emp5  
    FROM pvt) p  
    UNPIVOT  
    (Orders FOR Employee IN   
        (Emp1, Emp2, Emp3, Emp4, Emp5)  
    )AS unpvt;  
    GO
   ```
    
## Statements
1. ### **CASE**:
   Evaluates a list of conditions and returns one of multiple possible result expressions.

   *Example*

   ```SQL
    SELECT   ProductNumber, Category =  
        CASE ProductLine  
            WHEN 'R' THEN 'Road'  
            WHEN 'M' THEN 'Mountain'  
            WHEN 'T' THEN 'Touring'  
            WHEN 'S' THEN 'Other sale items'  
            ELSE 'Not for sale'  
        END,  
    Name  
    FROM Production.Product  
    ORDER BY ProductNumber;  
    GO
   ```
