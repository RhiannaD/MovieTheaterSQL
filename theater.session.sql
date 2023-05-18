CREATE TABLE movies (
  movie_id SERIAL,
  title VARCHAR(150),
  PRIMARY KEY (movie_id)
)



CREATE TABLE customer (
  customer_id SERIAL,
  full_name VARCHAR(50),
  email VARCHAR(100),
  phone_num VARCHAR(50),
  PRIMARY KEY (customer_id)
)

CREATE TABLE tickets (
  ticket_num SERIAL,
  customer_id INTEGER,
  movie_id INTEGER,
  payment VARCHAR(50),
  PRIMARY KEY (ticket_num),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
)

CREATE TABLE customer_order (
  customer_order SERIAL,
  concession_id INTEGER,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (concession_id) REFERENCES concession(concession_id)
)

CREATE TABLE concessions (
  concession_id SERIAL,
  customer_id INTEGER,
  order_num VARCHAR,
  payment VARCHAR(50),
  PRIMARY KEY (concession_id)
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)
