INSERT INTO movies(
    title,
    genre
) VALUES (
    'The Joker',
    'Drama'
),(
    'Zoolander',
    'Comedy'
),(
    'The Matrix',
    'Action'
);

INSERT INTO customer(
    full_name,
    email,
    phone_num
) VALUES (
    'Bugs Bunny',
    'Bugz@looney.com',
    '376-333-3763'
), (
    'Eric Cartman',
    'EricCartmanz@southp.com',
    '243-545-6766'
), (
    'Sponge Bob',
    'squarepants@bottom.com',
    '111-222-3333'
);

ALTER TABLE customer
DROP email;

SELECT *
FROM movies;

INSERT INTO ticket (
    customer_id,
    movie_id,
    payment_amt
) VALUES (
    1,
    3,
    '15.99'

);



INSERT INTO concession(
    customer_id,
    order_num,
    payment
) VALUES (
     1,
    'Popcorn',
    '3.99'
);

INSERT INTO customer_order(
    concession_id,
    customer_id
) VALUES (
    1,
    1
)


SELECT *
FROM concession;