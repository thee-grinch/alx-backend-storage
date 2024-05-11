--  a SQL script that creates a trigger that decreases the quantity of an item after adding a new order.

delimiter //
CREATE TRIGGER decrease_quantity
AFTER
INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - 1
    WHERE name = NEW.item_name;
END//
delimiter ;