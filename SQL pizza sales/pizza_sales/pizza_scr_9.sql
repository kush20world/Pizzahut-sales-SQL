-- group the orders by date and calculate the average numbers of pizzas ordered per day.


SELECT 
    ROUND(AVG(quantity), 0)as avg_order_per_day
FROM
    (SELECT 
        orders.order_date,
            ROUND(SUM(order_details.quantity), 2) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS order_quantity;
    
    
    