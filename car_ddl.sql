-- DDL

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);

CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);

CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	make VARCHAR(20),
	model VARCHAR(20),
	color VARCHAR(20),
	year_ VARCHAR(4),
	VIN VARCHAR(20),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	salesperson_id INTEGER NOT NULL,
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);

CREATE TABLE car_mechanic(
	car_id INTEGER NOT NULL,
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	mechanic_id INTEGER NOT NULL,
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	date_ TIMESTAMP DEFAULT current_timestamp,
	description VARCHAR(200),
	amount NUMERIC(7,2),
	salesperson_id INTEGER NOT NULL,
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
	car_id INTEGER NOT NULL,
	FOREIGN KEY (car_id) REFERENCES car(car_id)	
);

CREATE TABLE service_ticket(
	service_ticket_id SERIAL PRIMARY KEY,
	date_ TIMESTAMP DEFAULT current_timestamp,
	description VARCHAR(200),
	amount NUMERIC(7,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	car_id INTEGER NOT NULL,
	FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE service_history(
	service_history_id SERIAL PRIMARY KEY,
	description VARCHAR(200),
	VIN VARCHAR(20),
	car_id INTEGER NOT NULL,
	FOREIGN KEY (car_id) REFERENCES car(car_id)
);

SELECT*
FROM customer








