
-- Question 1 --
-- Answer: 54 --
-- Query: --
-- We need to find the number of orders shipped by speedy express --
-- Steps --
-- Join Orders table with shippers table --
-- Count the number of Orders where shipper name meets our requirement --
SELECT COUNT(orderID) AS "No Orders Shipped by speedy express"
FROM Orders JOIN Shippers USING(ShipperID)
WHERE ShipperName="Speedy Express"

-- Question 2 --
-- Answer: Peacock --
-- Query: --
-- We have to find the last name of employee with maximum orders --
-- Steps --
-- Join orders and employees table on employeeID and group by the same key --
-- Count each employee's total number of orders --
-- Select the maximum value of total number of orders and the corresponding lastname --
-- Select the lastname from previously selected result --
SELECT lastname AS "Last Name"
FROM (SELECT MAX(totalOrders),lastname 
	  FROM (SELECT COUNT(orderId) AS totalOrders, employeeID, lastname 
		    FROM ORDERS JOIN employees USING(employeeID)
    GROUP BY employeeID
            )
        )

-- Question 3 --
-- Answer: Boston Crab Meat --
-- Query: --
-- Steps --
-- Join Orders table with OrderDetails --
-- Join the resulting table with Customers table --
-- Filter out the details based on country requirement --
-- Join the result with products table and group by productID and find the sum of quantity--
-- Find the maximum value for the sum of quantity and display the corresponding product name --
SELECT productName AS "Product Name" 
FROM (SELECT MAX(Total), productName 
		FROM (SELECT productID, SUM(Quantity) AS Total, productName 
        			FROM (SELECT * 
            	FROM Customers JOIN ( SELECT orderID,productID,Quantity,CustomerID 
                					             FROM Orders JOIN OrderDetails USING (orderID)
                    						)
              USING (customerID)
				WHERE LOWER(Country) LIKE "germany"
				) 
			JOIN products USING (productID)
			GROUP BY productID
        )
	)


