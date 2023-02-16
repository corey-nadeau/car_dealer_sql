insert into cars(car_serial_number,year_,make,model) values(1,2018,'chevrolet','silverado');
insert into cars(car_serial_number,year_,make,model) values(2,2020,'jeep','cherokee');
insert into cars(car_serial_number,year_,make,model) values(3,2018,'jeep','renegade');
insert into cars(car_serial_number,year_,make,model) values(4,2009,'kia','sportage');
insert into cars(car_serial_number,year_,make,model) values(5,2022,'chevrolet','camaro');

select* from customer;
insert into customer(customer_id,first_name,last_name ,phone_number ,email_address) values(1,'Jim','Johnson',5558889999,'jim@buyingcars.com');
insert into customer(customer_id,first_name,last_name ,phone_number ,email_address) values(2,'Ian','Alonzo',4789632145,'ian.alonzo@gmail.com');
insert into customer(customer_id,first_name,last_name ,phone_number ,email_address) values(3,'Steven','Branville',5226663333,'steve_b@gimmick.com');
insert into customer(customer_id,first_name,last_name ,phone_number ,email_address) values(4,'Mary','Castro',7774441111,'mary_castro@mafia.don');
insert into customer(customer_id,first_name,last_name ,phone_number ,email_address) values(5,'Ashley','Rosenberg',6662227456,'ashrose@meet.com');

select* from mechanics 

insert into mechanics(mechanic_id,first_name,last_name) values(1,'Stuart','Little');
insert into mechanics(mechanic_id,first_name,last_name) values(2,'Wayne','Letterkenny');
insert into mechanics(mechanic_id,first_name,last_name) values(3,'Ricky','Lafluer');
insert into mechanics(mechanic_id,first_name,last_name) values(4,'J','Rock');
insert into mechanics(mechanic_id,first_name,last_name) values(5,'Katy','Perry');

select* from parts;

insert into parts(part_id,part_name,part_price) values(1,'alternator',99.99);
insert into parts(part_id,part_name,part_price) values(2,'battery',126.99);
insert into parts(part_id,part_name,part_price) values(3,'steering wheel',9.99);
insert into parts(part_id,part_name,part_price) values(4,'starter',69.99);
insert into parts(part_id,part_name,part_price) values(5,'head gasket',50.99);

create or replace function add_service_ticket(_service_ticket_number NUMERIC, _customer_id NUMERIC, _mechanic_id INTEGER, _part_id INTEGER, _total_cost numeric)
returns void 
as $MAIN$
begin 
	insert into service_tickets(service_ticket_number,customer_id,mechanic_id, part_id , total_cost)
	values (_service_ticket_number, _customer_id, _mechanic_id, _part_id, _total_cost);
end
$MAIN$
language plpgsql;

select add_service_ticket(1,1,1,1,19)
select add_service_ticket(2,2,2,2,199.99);
select add_service_ticket(3,3,3,3,79.99);
select add_service_ticket(4,4,4,4,49.99);
select add_service_ticket(5,5,5,5,999.99);

select* from service_tickets 


create or replace function add_invoice(_invoice_number NUMERIC,_total_amount NUMERIC,_rep_id INTEGER,_customer_id INTEGER,_car_serial_number INTEGER,_service_ticket_number INTEGER)
returns void
as $MAIN$
begin 
	insert into invoices(invoice_number,total_amount,rep_id,customer_id,car_serial_number,service_ticket_number)
	values (_invoice_number,_total_amount,_rep_id,_customer_id,_car_serial_number,_service_ticket_number);
end
$MAIN$
language plpgsql;

select add_invoice(1,19.99,1,1,1,6)


