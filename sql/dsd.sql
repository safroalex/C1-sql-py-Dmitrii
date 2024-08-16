CREATE TABLE Trip(
    trip_id int PRIMARY KEY,
    company int,
    plane varchar(30),
    town_from VARCHAR(30),
    town_to VARCHAR(30),
    time_out DATETIME,
    time_in DATETIME,
    FOREIGN KEY (company) REFERENCES Company(id)
)
CREATE TABLE company(
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
)
CREATE TABLE Pass_in_trip(
    id INT PRIMARY KEY,
    trip INT,
    passenger INT,
    place VARCHAR(30)
    FOREIGN KEY (trip) REFERENCES Trip(id),
    FOREIGN KEY (passenger) REFERENCES Passenger(id)
)
CREATE TABLE Passenger(
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
)

