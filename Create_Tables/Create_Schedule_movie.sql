CREATE TABLE IF NOT EXISTS Scheduling (
    id SERIAL PRIMARY KEY,             -- Unique identifier for the schedule
    theater_id INT NOT NULL,           -- Foreign key to the Theater table
    hall_id INT NOT NULL,              -- Foreign key to the Hall table
    movie_id INT NOT NULL,             -- Foreign key to the Movie table
    fees DECIMAL(10, 2) NOT NULL,      -- Ticket fees for the schedule
    start_time TIMESTAMP NOT NULL,     -- Schedule start time
    end_time TIMESTAMP NOT NULL,       -- Schedule end time
    -- Foreign Key Constraints
    FOREIGN KEY (theater_id) REFERENCES Theater(id),
    FOREIGN KEY (hall_id) REFERENCES Hall(id),
    FOREIGN KEY (movie_id) REFERENCES Movie(id)
);

select * from Scheduling;