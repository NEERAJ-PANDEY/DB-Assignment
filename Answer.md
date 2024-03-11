# DB-Assignment

1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
Ans:There are two other separate tables called discount, product_inventory, and "Product_Category" that are connected to "Product" through database relationships. This approach provides the greatest level of flexibility to the database.

For instance, we can simply query the "Product_Category" table to check for inventory without going through all the data associated with other related tables. This is also a good place to utilize indexes to increase the performance of the database.

2.  How could you ensure that each product in the "Product" table has a valid category assigned to it?
Ans:One way is to use a foreign key. A foreign key is a column in one table that references the primary key in another table. In this case, the foreign key would be the "Product_Category" column in the "Product" table, which would reference the "id" column in the "Category" table.
When you create a foreign key constraint, you are essentially telling the database that any value in the "category_id" column must exist in the "id" column of the "Category" table. This means that you cannot add a product to the "Product" table unless it has a valid category assigned to it.
Another way to ensure that each product has a valid category assigned to it is to use a trigger. A trigger is a piece of code that is executed automatically when a certain event occurs, such as inserting a new row into a table.
You could create a trigger that checks the "category_id" column of the "Product" table before a new row is inserted. If the "category_id" column is not valid, the trigger could prevent the row from being inserted.
Finally, you could also use a validation rule. A validation rule is a piece of code that is executed when a user attempts to save a record.
