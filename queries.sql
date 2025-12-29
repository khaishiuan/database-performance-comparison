/*Query 1:Full Dataset Retrieval*/
SELECT *
FROM AMAZON;

/*Query 2: Category-Based Filtering*/
SELECT *
FROM AMAZON
WHERE Category = 'Electronics';

/*Query 3: Multi-Condition Filtering*/
SELECT *
FROM AMAZON
WHERE Country = 'United States'
  AND Discount > 0.2;

/*Query 4: Total Sales Calculation (Aggregation)*/
SELECT SUM(TotalAmount) AS Total_Sales
FROM AMAZON;

/*Query 5: Sales by Category*/
SELECT Category, SUM(TotalAmount) AS Category_Sales
FROM AMAZON
GROUP BY Category;

/*Query 6: Profit-Related Analysis (Discount Impact)*/
SELECT Category, AVG(Discount) AS Avg_Discount
FROM AMAZON
GROUP BY Category;

/*Query 7: Sales by Location*/
SELECT State, SUM(TotalAmount) AS State_Sales
FROM AMAZON
WHERE Country = 'United States'
GROUP BY State;

/*Query 8: Sorting by Total Amount*/
SELECT *
FROM AMAZON
ORDER BY TotalAmount DESC;
