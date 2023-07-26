create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
       flight_number varchar(255),
        leg_number integer,
        date timestamp(6),
        number_of_available_seats integer,
        airplane_type_name varchar(255),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        primary key (serial_number)
    );
    
    drop table leg_instance

    INSERT INTO leg_instance VALUES (1,'IN560', 1, '2023-05-28 00:00:00',29,'Airbus-A320','CCJ', '531PM', 'IXL', '814PM');
INSERT INTO leg_instance VALUES (2,'AA6624',1,'2023-05-28 00:00:00',32,'Airbus-A319','MAA','406PM', 'IXL', '451PM');
INSERT INTO leg_instance VALUES (3,'AI5841', 1,'2023-05-29 00:00:00',12,'Boeing-707', 'IXS', '1240PM', 'MAA', '200PM');
INSERT INTO leg_instance VALUES (4,'SJ1149',1,'2023-05-27 00:00:00',22,'Boeing-737','LDA','645PM', 'IXS', '1043PM');
    
    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_instance varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    drop  table seat_reservation
    create table seat_reservation (
       booking_id integer not null,
       flight_number varchar(255),
        leg_number varchar(255),
        date_of_flight timestamp(6),
        seat_number integer,
        customer_name varchar(255),
        customer_phone varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
    
    select * from seat_reservation
    
    INSERT INTO seat_reservation VALUES (1,'IN560', 1, '2023-05-28 00:00:00', 1, 'Abhishek Baral', '9439408040');
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    select * from customer
    
    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );
    
              1 IN560         1          2023-05-28 00:00:00.0           1 Abhishek Baral 9439408040     INDI345

INSERT INTO customer VALUES ('INDI345','abhishekbaral@gmail.com', 'Abhsihek Baral', '****bala***');
    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date timestamp(6),
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );
    
    select * from fare

    
    
    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number integer,
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
    
    drop table seat_reservation
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight timestamp(6),
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        day_of_week smallint,
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
    
    INSERT INTO flight_leg VALUES ('KF3472',1, 'Airbus-A320', 180, 'BLR',3,'6:45PM', 'HYD', '10:43PM');
INSERT INTO flight_leg VALUES ('KF3472',2, 'Airbus-A320', 180, 'HYD',3,'11:00PM', 'BOM', '1:00AM');
INSERT INTO flight_leg VALUES ('GA1522',1, 'Boeing-737', 124, 'BLR',3,'7:45PM', 'BOM', '11:43PM');
INSERT INTO flight_leg VALUES ('KF3472',1, 'Airbus-A320', 180, 'BLR',4,'6:45PM', 'HYD', '10:43PM');
INSERT INTO flight_leg VALUES ('KF3472',2, 'Airbus-A320', 180, 'HYD',4,'11:00PM', 'BOM', '1:00AM');
INSERT INTO flight_leg VALUES ('GA1522',1, 'Boeing-737', 124, 'BLR',5,'7:45PM', 'BOM', '11:43PM');
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );
drop table flight_leg
    create table flight_leg (
    	flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        total_number_of_seats integer,
         departure_airport_code varchar(255),
         day_of_week smallint not null,
         scheduled_departure_time varchar(255),
         arrival_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        primary key (day_of_week, flight_number, leg_number)
    );

    INSERT INTO flight_leg VALUES ('IN560', 1, 'Airbus-A320', 180, 'CCJ', 1,'5:31PM', 'IXL', '8:14PM');
INSERT INTO flight_leg VALUES ('AA6624', 1, 'Airbus-A319', 156, 'MAA', 2,'4:06PM', 'IXL', '4:51PM');
INSERT INTO flight_leg VALUES ('AI5841', 1, 'Boeing-707', 189, 'IXS', 3,'12:40PM', 'MAA', '2:00PM');
INSERT INTO flight_leg VALUES ('SJ1149',1, 'Boeing-737', 124, 'LDA',2,'6:45PM', 'IXS', '10:43PM');
INSERT INTO flight_leg VALUES ('KF3472',1, 'Airbus-A320', 180, 'BLR',2,'6:45PM', 'HYD', '10:43PM');
INSERT INTO flight_leg VALUES ('KF3472',2, 'Airbus-A320', 180, 'HYD',2,'11:00PM', 'BOM', '1:00AM');
INSERT INTO flight_leg VALUES ('GA1522',1, 'Boeing-737', 124, 'BLR',2,'7:45PM', 'BOM', '11:43PM');
INSERT INTO flight_leg VALUES ('KF3472',1, 'Airbus-A320', 180, 'BLR',1,'6:45PM', 'HYD', '10:43PM');
INSERT INTO flight_leg VALUES ('KF3472',2, 'Airbus-A320', 180, 'HYD',1,'11:00PM', 'BOM', '1:00AM');
INSERT INTO flight_leg VALUES ('GA1522',1, 'Boeing-737', 124, 'BLR',1,'7:45PM', 'BOM', '11:43PM');
INSERT INTO flight_leg VALUES ('KF3472',1, 'Airbus-A320', 180, 'BLR',4,'6:45PM', 'HYD', '10:43PM');
INSERT INTO flight_leg VALUES ('KF3472',2, 'Airbus-A320', 180, 'HYD',4,'11:00PM', 'BOM', '1:00AM');
INSERT INTO flight_leg VALUES ('GA1522',1, 'Boeing-737', 124, 'BLR',5,'7:45PM', 'BOM', '11:43PM');


select * from leg_instance 
    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    truncate table leg_instance
    
    select * from fare
    INSERT INTO fare VALUES ('GA1522','Y', 250, false);
INSERT INTO fare VALUES ('KF3472','Y', 150, true);
INSERT INTO fare VALUES ('IN560','Y', 250, false);
    
	select count(*) from leg_instance
	
	select * from leg_instance
	
    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
create sequence leg_instance_seq start with 1 increment by 50;
create sequence seat_reservation_seq start with 1 increment by 50;

    create table airport (
       airport_sr_id integer not null,
        airport_city varchar(255),
        airport_code varchar(255),
        airport_name varchar(255),
        primary key (airport_sr_id)
    );

    create table customer (
       customer_id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        psswd varchar(255),
        primary key (customer_id)
    );

    create table fare (
       fare_code varchar(255) not null,
        flight_number varchar(255) not null,
        amount integer,
        restrictions boolean,
        primary key (fare_code, flight_number)
    );

    create table flight (
       flight_number varchar(255) not null,
        airline varchar(255),
        weekdays boolean,
        primary key (flight_number)
    );

    create table flight_leg (
       day_of_week smallint not null,
        flight_number varchar(255) not null,
        leg_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        departure_airport_code varchar(255),
        scheduled_arrival_time varchar(255),
        scheduled_departure_time varchar(255),
        total_number_of_seats integer,
        primary key (day_of_week, flight_number, leg_number)
    );

    create table leg_instance (
       serial_number integer not null,
        airplane_type_name varchar(255),
        arrival_airport_code varchar(255),
        arrival_time varchar(255),
        date date,
        departure_airport_code varchar(255),
        departure_time varchar(255),
        flight_number varchar(255),
        leg_number integer,
        number_of_available_seats integer,
        primary key (serial_number)
    );

    create table seat_reservation (
       booking_id integer not null,
        customer_name varchar(255),
        customer_phone varchar(255),
        date_of_flight date,
        flight_number varchar(255),
        leg_number varchar(255),
        seat_number varchar(255),
        user_id varchar(255),
        primary key (booking_id)
    );
