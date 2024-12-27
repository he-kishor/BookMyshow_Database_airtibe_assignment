CREATE TABLE Hall (
    id SERIAL PRIMARY KEY,
    hall_name VARCHAR(100) NOT NULL,
    theater_id INT NOT NULL,
    capacity INT NOT NULL,
    FOREIGN KEY (theater_id) REFERENCES Theater (id)
);
--hall created successfully


DO $$ 
DECLARE
    i INT;
    random_name VARCHAR(10);
    random_theater_id INT;
    random_capacity INT;
BEGIN
    FOR i IN 1..600 LOOP 
        -- Generate a random hall_name with characters (1 to 10 length)
        random_name := substring(md5(random()::text), 1, (floor(random() * 10) + 1)::int);

        -- Select a random theater_id from the existing Theater table
        SELECT id INTO random_theater_id
        FROM Theater
        ORDER BY random()
        LIMIT 1;

        -- Generate random capacity between 50 and 400
        random_capacity := floor(random() * 351) + 50;

        -- Insert the random values into the Hall table
        INSERT INTO Hall (hall_name, theater_id, capacity)
        VALUES (random_name, random_theater_id, random_capacity);
    END LOOP;
END $$;

-- Do created succesfully

select * from  hall;
