# ibm_query_task

The task is to mock the queries in microservices.

The services are tested in MongoDB and MySql.

The data model is not normalized and replicated in MongoDB.

The data model is on the assumption that the inventory are completely unrelated, 

(i.e) the sale is not based on items in the inventory rather the available items (cars).

## You can find the mongodb queries in nosql_mongodb folder.

The `inventory` collection is a list of cars with `quantity`.

The `sales` collection is a list of cars with `quantity` and `soldAt` timestamp.

## You can find the MySql queries in sql_mysql folder.

The data is more normalized in an Relational DB (MySQL):

The `cars` table is a list of cars.

The `inventory` table is a list of cars and quantity with reference to the `cars` table.

The `sales` table is a list of `cars, quantity, soldAt` with reference to the `cars` table.
