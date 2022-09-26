create database JOINS;
USE JOINS;
SELECT*
FROM JOINS.order2;
#USE JOINS
SELECT
orders.*,
Warehouse.warehouse_alias,
Warehouse.state
FROM
joins.order2 AS orders
LEFT JOIN
joins.warehouse As warehouse ON orders.warehouse_id = warehouse.warehouse_id;

#use count distinct
SELECT
COUNT(DISTINCT Warehouse.state)AS num_states
FROM
joins.order2 AS orders
JOIN
joins.warehouse AS warehouse ON orders.warehouse_id = warehouse.warehouse_id;

#use count and group by
SELECT
warehouse.state AS state,
COUNT(DISTINCT ï»¿order_id) AS num_orders
FROM
joins.order2 AS Orders
JOIN
joins.warehouse AS Warehouse ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
Warehouse.state;

