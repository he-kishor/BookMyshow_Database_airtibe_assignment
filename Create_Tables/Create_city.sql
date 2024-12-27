--create the city table
CREATE TABLE City (
    ID SERIAL PRIMARY KEY,
    state VARCHAR(100) NOT NULL,
    city_name VARCHAR(100) NOT NULL
);
-- city table created successfully


--**************************************************************************************************************************
Insert 20 Indian cities into the City table
INSERT INTO City (state, city_name) VALUES
('Maharashtra', 'Mumbai'),
('Delhi', 'New Delhi'),
('Tamil Nadu', 'Chennai'),
('West Bengal', 'Kolkata'),
('Karnataka', 'Bengaluru'),
('Gujarat', 'Ahmedabad'),
('Uttar Pradesh', 'Lucknow'),
('Rajasthan', 'Jaipur'),
('Telangana', 'Hyderabad'),
('Punjab', 'Amritsar'),
('Madhya Pradesh', 'Bhopal'),
('Kerala', 'Thiruvananthapuram'),
('Bihar', 'Patna'),
('Odisha', 'Bhubaneswar'),
('Jharkhand', 'Ranchi'),
('Assam', 'Guwahati'),
('Chhattisgarh', 'Raipur'),
('Haryana', 'Chandigarh'),
('Uttarakhand', 'Dehradun'),
('Goa', 'Panaji');

-- INSERT successfully executed. 20 rows were affected.


--**************************************************************************************************************************
select * from city;