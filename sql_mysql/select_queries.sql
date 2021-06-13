/* 
 Inventory filter by model and year 
 */
SELECT *
FROM cars
    INNER JOIN inventory ON cars.id = inventory.carId
WHERE cars.model = "Fiesta"
    AND cars.year = 2016;
/* 
 Gives the no of cars in an inventory by color
 */
SELECT cars.color,
    SUM(inventory.quantity) AS numOfCars
FROM cars
    INNER JOIN inventory ON cars.id = inventory.carId
GROUP BY cars.color;
/*
 Sales on a particular day by car and model
 */
SELECT SUM(sales.quantity) AS totalSales
FROM cars
    INNER JOIN sales ON cars.id = sales.carId
WHERE sales.soldAt = "20200612";