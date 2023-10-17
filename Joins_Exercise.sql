/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

SELECT products.Name AS Product, categories.Name AS Category
FROM products
INNER JOIN categories
ON categories.CategoryID = products.CategoryID
WHERE category.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT products.Name AS Product, products.Price AS Price, reviews.Rating AS Rating
 FROM products
 INNER JOIN reviews
 ON reviews.ProductID - products.ProductID
 WHERE reviews.Rating = 5;
 
 
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.FirstName, employees.LastName, SUM(sales.Quantity) AS Total
FROM sales
INNER JOIN employees
ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY Total DESC
LIMIT 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.Name AS 'Department Name', categories.Name AS 'Category Name'
FROM departments
INNER JOIN categories
ON categories.DepartmentID = departments.DepartmentID
WHERE categories.Name = 'Appliances' OR categories.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT products.Name, SUM(sales.Quantity) AS 'Total Sold', SUM(sales.Quantitiy * sales.PricePerUnit) AS 'Total Price'
 FROM products
 INNER JOIN sales
 ON sales.ProductID = products.ProductID
 WHERE products.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.Name AS 'Product Name', reviews.Reviewer AS Reviewer, reviews.Rating AS Rating, reviews.Comment AS Comment
FROM reviews
INNER JOIN products
ON products.ProductID = reviews.ProductID
WHERE products.ProductID = 857 AND reviews.Rating = 1
LIMIT 1;


