create database joins_practice;
use joins_practice;
CREATE TABLE college_details (
    college_id INT PRIMARY KEY,           
    college_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    established_year DATE,
    contact_number VARCHAR(15),
    website VARCHAR(100)
);
INSERT INTO college_details (college_id, college_name, address, city, state, postal_code, established_year, contact_number, website) VALUES
(1, 'National Institute of Technology', '123 Main St', 'Mumbai', 'Maharashtra', '400001', '1960', '022-12345678', 'www.nit.ac.in'),
(2, 'orange Institute of Technology', '124 Main St', 'bengluru', 'karnataka', '400001', '1961', '022-12345672', 'www.orange.ac.in'),
(3, 'mist Institute of Technology', '125 Main St', 'sathupalli', 'telangana', '400001', '1962', '022-12345673', 'www.mist.ac.in'),
(4, 'ssit Institute of Technology', '126 Main St', 'gudivada', 'andra', '400001', '1963', '022-12345674', 'www.ssit.ac.in'),
(5, 'Aero Institute of Technology', '127 Main St', 'HYD', 'Telanga', '400001', '1964', '022-12345675', 'www.Aero.ac.in');
select * from college_details;
CREATE TABLE course_details (
    course_id INT PRIMARY KEY,             
    course_name VARCHAR(255) NOT NULL,
    course_duration INT NOT NULL,          
    course_fee DECIMAL(10, 2),
    college_id INT,                        
    CONSTRAINT fk_college FOREIGN KEY (college_id) REFERENCES college_details(college_id)
);
INSERT INTO course_details (course_id, course_name, course_duration, course_fee, college_id) VALUES
(1, 'B.Tech', 4, 150000, 1),
(2, 'B.Sc', 3, 120000, 1),
(3, 'MBA', 2, 250000, 1),
(4, 'B.Com', 3, 100000, 1),
(5, 'BBA', 3, 180000, 1),
(6, 'M.Tech', 2, 200000, 1),
(7, 'M.Sc', 2, 140000, 1),
(8, 'MCA', 3, 180000, 1),
(9, 'M.Phil', 2, 120000, 1),
(10, 'Ph.D', 5, 0, 1);
select * from course_details;
--inner join
select college_details.college_id,college_details.college_name,college_details.address,
college_details.city,college_details.postal_code,college_details.established_year,
college_details.contact_number,college_details.website
from college_details inner join course_details
on college_details.college_id=course_details.college_id;

select * from college_details;
select * from course_details;
