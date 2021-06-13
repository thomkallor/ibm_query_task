/* 
 Car 
 */
CREATE TABLE cars (
    id INT NOT NULL AUTO_INCREMENT,
    model VARCHAR(50),
    color VARCHAR(50),
    year INT,
    PRIMARY KEY(id)
);
/* 
 Inventory 
 */
CREATE TABLE inventory (
    id INT NOT NULL AUTO_INCREMENT,
    carId INT,
    quantity INT,
    PRIMARY KEY(id),
    FOREIGN KEY(carId) REFERENCES cars(id)
);
/* 
 Sale 
 */
CREATE TABLE sales (
    id INT NOT NULL AUTO_INCREMENT,
    carId INT,
    quantity INT,
    soldAt DATETIME default now(),
    PRIMARY KEY(id),
    FOREIGN KEY(carId) REFERENCES cars(id)
);