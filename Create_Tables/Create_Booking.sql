CREATE TABLE IF NOT EXISTS Booking (
    b_id SERIAL PRIMARY KEY,             -- Unique identifier for the booking
    u_id INT NOT NULL,                 -- Foreign key linking to the Users table
    sched_id INT NOT NULL,             -- Foreign key linking to the Scheduling table
    -- Foreign Key Constraints
    FOREIGN KEY (u_id) REFERENCES user_new(id),
    FOREIGN KEY (sched_id) REFERENCES Scheduling(id)
);
select * from booking;
