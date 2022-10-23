-- DML

-- insert customer values
INSERT INTO customer (
	first_name,
	last_name
) VALUES (
	'Don',
	'Draper'
), (
	'Bert',
	'Cooper'
);

CREATE OR REPLACE PROCEDURE add_customer(
	first_name VARCHAR(50),
	last_name VARCHAR(50)
)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO customer(first_name, last_name)
	VALUES (first_name, last_name);
END;
$$;

CALL add_customer('Betty', 'Draper');

SELECT* FROM customer;

-- insert salesperson values
INSERT INTO salesperson (
	first_name,
	last_name
) VALUES (
	'Joan',
	'Harris'
), (
	'Peggy',
	'Olsen'
);

CREATE OR REPLACE PROCEDURE add_salesperson (
	first_name VARCHAR(50),
	last_name VARCHAR(50)
)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO salesperson (first_name, last_name)
	VALUES (first_name, last_name);
END;
$$;

CALL add_salesperson ('Roger', 'Sterling');

SELECT* FROM salesperson;

-- insert mechanic values
INSERT INTO mechanic (
	first_name,
	last_name 
) VALUES (
	'Pete',
	'Campbell'
), (
	'Megan',
	'Draper'
);

SELECT* FROM mechanic;

-- insert car values
INSERT INTO car(
	make,
	model,
	color,
	year_,
	salesperson_id,
	customer_id 
) VALUES (
	'Jaguar',
	'420',
	'black',
	'1966',
	1,
	1
), (
	'Jaguar',
	'XJ13',
	'white',
	'1966',
	2,
	2
);

SELECT*
FROM car;

-- insert invoice values
INSERT INTO invoice(
	amount,
	salesperson_id,
	car_id
) VALUES (
	5000,
	1,
	1
), (
	4500,
	2,
	2
);

SELECT* FROM invoice;

-- insert service ticket values
INSERT INTO service_ticket (
	amount,
	customer_id,
	car_id
) VALUES (
	100,
	1,
	1
);

INSERT INTO service_ticket (
	amount,
	customer_id,
	car_id
) VALUES (
	120.50,
	2,
	2
);

SELECT* FROM service_ticket;

-- insert service history values
INSERT INTO service_history (
	VIN,
	car_id
) VALUES (
	'ABCDEFG1234567',
	1
), (
	'HIJKLMN1234567',
	2
);

SELECT* FROM service_history;





