CREATE TABLE "salesperson" (
  "rep_id" SERIAL primary key,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100)
);

CREATE TABLE "cars" (
  "car_serial_number" SERIAL primary key,
  "year_" NUMERIC(4),
  "make" VARCHAR(50),
  "model" VARCHAR(50)
);

CREATE TABLE "invoices" (
  "invoice_number" SERIAL primary key,
  "total_amount" NUMERIC(5,2),
  "rep_id" INTEGER,
  "customer_id" INTEGER,
  "car_serial_number" INTEGER,
  "service_ticket_number" INTEGER,
  foreign key (rep_id) references salesperson(rep_id),
  foreign key (customer_id) references customer(customer_id),
  foreign key (car_serial_number) references cars(car_serial_number),
  foreign key (service_ticket_number) references service_tickets(service_ticket_number)
);

CREATE TABLE "customer" (
  "customer_id" SERIAL primary key,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "phone_number" NUMERIC(10),
  "email_address" VARCHAR(150)
);

CREATE TABLE "service_tickets" (
  "service_ticket_number" SERIAL primary key,
  "customer_id" INTEGER,
  "mechanic_id" INTEGER,
  "part_id" INTEGER,
  "total_cost" NUMERIC(5,2)
);

CREATE TABLE "mechanics" (
  "mechanic_id" SERIAL primary key,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100)
);

CREATE TABLE "parts" (
  "part_id" SERIAL primary key,
  "part_name" VARCHAR(150),
  "part_price" NUMERIC(5,2)
);
