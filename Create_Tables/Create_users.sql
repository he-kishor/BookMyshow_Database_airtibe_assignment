CREATE TYPE gender_enum AS ENUM ('M', 'F', 'T', 'N');

-- -- Create Users Table
CREATE TABLE IF NOT EXISTS User_new(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    gender gender_enum,
    age INT
);

--created successufully

Insert 100 Users
INSERT INTO User_new(name, gender, age) VALUES
('John Doe', 'M', 25),
('Jane Smith', 'F', 30),
('Alex Johnson', 'M', 22),
('Emily Davis', 'F', 28),
('Taylor Brown', 'T', 24),
('Charlie Williams', 'M', 32),
('Patricia Garcia', 'F', 35),
('Jordan Martinez', 'M', 27),
('Morgan Lee', 'T', 21),
('Riley Perez', 'M', 29),
('Avery Taylor', 'F', 31),
('Dylan Moore', 'M', 34),
('Casey Wilson', 'T', 26),
('Bailey Harris', 'F', 25),
('Cameron Clark', 'M', 28),
('Harper Lewis', 'T', 33),
('Elliot Walker', 'M', 29),
('Quinn Hall', 'F', 22),
('Rowan Allen', 'T', 30),
('Logan Young', 'M', 32),
('Jordan King', 'M', 27),
('Jesse Wright', 'F', 24),
('Peyton Scott', 'T', 21),
('Dakota Adams', 'M', 35),
('Sydney Nelson', 'F', 28),
('Hunter Carter', 'M', 23),
('Kendall Mitchell', 'T', 26),
('Reagan Perez', 'F', 32),
('Morgan Roberts', 'M', 31),
('Sam Taylor', 'T', 24),
('Drew White', 'M', 29),
('Kendall Jackson', 'F', 26),
('Skylar Green', 'T', 23),
('Liam Moore', 'M', 25),
('Aiden Nelson', 'M', 30),
('Morgan Harris', 'F', 28),
('Taylor Adams', 'M', 27),
('Sierra Clark', 'F', 32),
('Carter Wright', 'M', 33),
('Savannah Walker', 'F', 24),
('Parker Mitchell', 'M', 35),
('Jamie King', 'T', 29),
('Charlie Scott', 'M', 22),
('London Harris', 'F', 25),
('Rory Young', 'T', 30),
('Payton White', 'M', 28),
('Piper Allen', 'F', 33),
('Jordan Hill', 'M', 26),
('Hunter King', 'M', 27),
('Cameron Perez', 'T', 24),
('Ryan Mitchell', 'M', 32),
('Ashlyn Green', 'F', 29),
('Kai Adams', 'M', 24),
('Aubrey Nelson', 'F', 21),
('Jayden Wilson', 'M', 25),
('Brittany Scott', 'F', 26),
('Jordan Brown', 'T', 28),
('Jade Harris', 'F', 34),
('Bailey Jackson', 'M', 27),
('Aiden Clark', 'M', 28),
('Tatum Wright', 'T', 31),
('Tyler Young', 'M', 32),
('Brady Taylor', 'M', 24),
('Lila White', 'F', 30),
('Riley Harris', 'M', 29),
('Skyler King', 'T', 33),
('Sadie Lee', 'F', 27),
('Willow Davis', 'F', 22),
('Spencer Green', 'M', 25),
('Bennett Moore', 'M', 26),
('Austin Perez', 'M', 31),
('Jordan Adams', 'F', 28),
('Emery Wilson', 'T', 24),
('Dallas Nelson', 'M', 29),
('Dorian Harris', 'M', 26),
('Gage Walker', 'M', 32),
('Sawyer Taylor', 'M', 30),
('Ellis Brown', 'M', 25),
('Blair Mitchell', 'T', 23),
('Devon Green', 'M', 31),
('Tessa Lee', 'F', 28),
('Paxton Davis', 'M', 30),
('River Adams', 'T', 22),
('Grayson Moore', 'M', 27),
('Sage Wright', 'T', 24),
('Brayden Nelson', 'M', 28),
('Luna Harris', 'F', 29),
('Freddie King', 'M', 25),
('Penny White', 'F', 31),
('Julian Walker', 'M', 27),
('Eden Brown', 'T', 22),
('Quinn King', 'T', 24),
('Aidan Lee', 'M', 26),
('Harlow Young', 'F', 29),
('Asher Perez', 'M', 30),
('Addison Wright', 'F', 28),
('Morgan White', 'T', 33),
('Rowan Lee', 'T', 25),
('Elliot Adams', 'M', 31),
('Joey Taylor', 'M', 22),
('Taylor Brown', 'F', 29),
('Maddox Young', 'M', 27),
('Eden Clark', 'T', 32),
('Larkin Perez', 'M', 24),
('Sloane Harris', 'F', 21),
('Riley White', 'M', 28),
('Beckett Green', 'M', 29),
('Blaise Taylor', 'M', 25),
('Sawyer Adams', 'T', 24),
('Blake Harris', 'M', 30),
('Dylan Wright', 'M', 29),
('Peyton Lee', 'M', 31),
('Kayla Moore', 'F', 25),
('Emory King', 'M', 32),
('Finley Adams', 'M', 33),
('Sloan Taylor', 'M', 21),
('Brielle Harris', 'F', 26),
('Jase King', 'M', 27),
('Tobin Walker', 'T', 24),
('Carter Adams', 'M', 30),
('Aidan Brown', 'M', 29);

-- --INSERT successfully executed. 121 rows were affected.
select * from User_new;
