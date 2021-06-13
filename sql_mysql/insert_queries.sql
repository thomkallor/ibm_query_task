/* 
 Car 
 */
INSERT INTO cars (id, model, color, year)
VALUES (1, "Accord", "Red", 2012),
    (2, "Punto", "White", 2014),
    (3, "Fiesta", "Black", 2016),
    (4, "Fiesta", "Blue", 2016),
    (5, "Punto", "Blue", 2016);
/* 
 Inventory 
 */
INSERT INTO inventory (carId, quantity)
VALUES (1, 4),
    (2, 3),
    (3, 2),
    (4, 2),
    (5, 2);
/* 
 Sale 
 */
INSERT INTO sales (carId, quantity, soldAt)
VALUES (1, 1, "20200611"),
    (2, 1, "20200611"),
    (3, 1, "20200612"),
    (4, 1, "20200612"),
    (4, 1, "20200624");