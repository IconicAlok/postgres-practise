
DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students(
    -- create an auto incrementing integer
    -- 01 -> 02, 03 and so on , 4 , 5
    -- primary key - simply means this colom uniquely identifies each row

    id SERIAL PRIMARY KEY,
    -- Text - String value
    -- not null means this col required
    -- postgres is going to reject if this name value is not present
    name TEXT NOT NULL,

    -- unique means - no 2 student have same email

    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK(age >= 18),

    -- Timestamp -> stores date and time formet 
    -- default means if you dont give any value it will take by default
    created_at TIMESTAMP DEFAULT NOW()
);

-- insert some data

INSERT INTO basics.students(name, email, age)
VALUES
    ('Alok','alokkuri98@gmail.com',88),
    ('John','john@gmail.com',28);