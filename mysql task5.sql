CREATE DATABASE pkl_info;
USE pkl_info;

CREATE TABLE pkl (
    pkl_id int not null unique ,  
    player_name varchar(20) not null,
    player_weight int not null,
    player_jersey_no int not null,
    player_role varchar(20) not null,
    team_name varchar(20) not null,
    total_raid_points int not null , 
    total_cards int not null,
    coach_id int not null unique,
    broadcast_id int not null unique);
   
    
INSERT INTO PKL (pkl_id, player_name, player_weight, player_jersey_no, player_role, team_name, total_raid_points, total_cards, coach_id, broadcast_id)  
VALUES   
(1, 'Naveen Express', 72, 7, 'Raider', 'Dabang Delhi', 1200, 3, 101, 201),  
(2, 'Deepak Hooda', 76, 12, 'All-Rounder', 'Jaipur Pink Panthers', 850, 2, 102, 202),  
(3, 'Ajay Thakur', 79, 15, 'Raider', 'Tamil Thalaivas', 1100, 2, 103, 203),  
(4, 'Rishank Devadiga', 74, 14, 'All-Rounder', 'UP Yoddha', 780, 3, 104, 204),  
(5, 'Pardeep Narwal', 75, 9, 'Raider', 'Patna Pirates', 1200, 3, 105, 205),  
(6, 'Maninder Singh', 78, 10, 'Raider', 'Bengal Warriors', 950, 2, 106, 206),  
(7, 'Fazel Atrachali', 80, 11, 'Defender', 'U Mumba', 500, 1, 107, 207),  
(8, 'Surender Nada', 79, 5, 'Defender', 'Haryana Steelers', 400, 1, 108, 208),  
(9, 'Rahul Chaudhari', 77, 13, 'Raider', 'Telugu Titans', 900, 3, 109, 209),  
(10, 'Mohit Chhillar', 78, 4, 'Defender', 'Tamil Thalaivas', 450, 1, 110, 210),  
(11, 'Parvesh Bhainswal', 81, 6, 'Defender', 'Gujarat Giants', 470, 2, 111, 211),  
(12, 'Nitin Tomar', 76, 16, 'Raider', 'Puneri Paltan', 890, 1, 112, 212),  
(13, 'Sandeep Narwal', 80, 17, 'Defender', 'U Mumba', 550, 2, 113, 213),  
(14, 'Ravi Kumar', 77, 18, 'Defender', 'Haryana Steelers', 490, 1, 114, 214),  
(15, 'Amit Hooda', 75, 19, 'Defender', 'Jaipur Pink Panthers', 460, 3, 115, 215),  
(16, 'Vishal Bhardwaj', 78, 20, 'Defender', 'Telugu Titans', 480, 2, 116, 216),  
(17, 'Girish Ernak', 79, 21, 'Defender', 'Puneri Paltan', 430, 1, 117, 217),  
(18, 'Rohit Kumar', 80, 22, 'Raider', 'Bengaluru Bulls', 920, 2, 118, 218),  
(19, 'Sachin Tanwar', 74, 23, 'Raider', 'Gujarat Giants', 970, 3, 119, 219),  
(20, 'Monu Goyat', 76, 24, 'Raider', 'Patna Pirates', 1050, 2, 120, 220);  

SELECT * FROM pkl;

ALTER TABLE PKL ADD COLUMN total_matches_played INT NOT NULL;

UPDATE PKL SET total_matches_played = 100 WHERE player_name = 'Naveen Express';  
UPDATE PKL SET total_matches_played = 150 WHERE player_name = 'Deepak Hooda';  
UPDATE PKL SET total_matches_played = 200 WHERE player_name = 'Ajay Thakur';  
UPDATE PKL SET total_matches_played = 130 WHERE player_name = 'Rishank Devadiga';  
UPDATE PKL SET total_matches_played = 180 WHERE player_name = 'Pardeep Narwal';  
UPDATE PKL SET total_matches_played = 170 WHERE player_name = 'Maninder Singh';  
UPDATE PKL SET total_matches_played = 190 WHERE player_name = 'Fazel Atrachali';  
UPDATE PKL SET total_matches_played = 160 WHERE player_name = 'Surender Nada';  
UPDATE PKL SET total_matches_played = 175 WHERE player_name = 'Rahul Chaudhari';  
UPDATE PKL SET total_matches_played = 140 WHERE player_name = 'Mohit Chhillar';  
UPDATE PKL SET total_matches_played = 135 WHERE player_name = 'Parvesh Bhainswal';  
UPDATE PKL SET total_matches_played = 145 WHERE player_name = 'Nitin Tomar';  
UPDATE PKL SET total_matches_played = 155 WHERE player_name = 'Sandeep Narwal';  
UPDATE PKL SET total_matches_played = 125 WHERE player_name = 'Ravi Kumar';  
UPDATE PKL SET total_matches_played = 130 WHERE player_name = 'Amit Hooda';  
UPDATE PKL SET total_matches_played = 120 WHERE player_name = 'Vishal Bhardwaj';  
UPDATE PKL SET total_matches_played = 110 WHERE player_name = 'Girish Ernak';  
UPDATE PKL SET total_matches_played = 195 WHERE player_name = 'Rohit Kumar';  
UPDATE PKL SET total_matches_played = 165 WHERE player_name = 'Sachin Tanwar';  
UPDATE PKL SET total_matches_played = 185 WHERE player_name = 'Monu Goyat';  

SELECT * FROM pkl;
SELECT COUNT(total_cards)as cards from pkl ;

SELECT COUNT(player_jersey_no) from pkl where player_name='Deepak Hooda';

SELECT MIN(total_cards) from pkl where team_name='Telugu Titans';
SELECT MAX(total_cards)from pkl where team_name='Gujarat Giants';

SELECT AVG(total_raid_points)from pkl;

SELECT AVG(total_raid_points)from pkl where team_name='Patna Pirates';

SELECT player_name,team_name from pkl group by team_name;

SELECT player_weight,team_name from pkl group by player_weight having player_weight<75;

SELECT player_weight,team_name from pkl group by player_weight having player_weight<=74;


CREATE DATABASE Cosmetics_Info;
USE Cosmetics_Info;

CREATE TABLE Cosmetics_Info(
    cosmetic_id INT NOT NULL UNIQUE,  
    cosmetic_name VARCHAR(50) NOT NULL UNIQUE,
    country VARCHAR(50) NOT NULL,  
    type VARCHAR(30) NOT NULL,  
    brand_name VARCHAR(50) NOT NULL,  
    price DECIMAL(10,2) NOT NULL,  
    skin_type VARCHAR(30) NOT NULL,  
    customer_ratings DECIMAL(3,2) NOT NULL,  
    expiry_date DATE NOT NULL,  
    manufacture_date DATE NOT NULL  
);

INSERT INTO Cosmetics_Info(cosmetic_id, cosmetic_name, country, type, brand_name, price, skin_type, customer_ratings, expiry_date, manufacture_date)  
VALUES   

   
(1, 'Matte Lipstick', 'USA', 'Lipstick', 'Maybelline', 12.99, 'All', 4.5, '2026-08-15', '2024-03-10'),  
(2, 'Hydrating Lip Gloss', 'France', 'Lipstick', 'L’Oréal', 14.50, 'All', 4.3, '2025-12-01', '2024-05-20'),  
(3, 'Liquid Foundation', 'Germany', 'Foundation', 'MAC', 35.99, 'Oily', 4.7, '2026-06-30', '2024-02-14'),  
(4, 'Compact Powder', 'India', 'Face Powder', 'Lakmé', 10.99, 'Dry', 4.2, '2025-09-10', '2023-12-05'),  
(5, 'Anti-Dandruff Shampoo', 'India', 'Shampoo', 'Head & Shoulders', 8.99, 'All', 4.6, '2026-03-01', '2024-04-15'),  
(6, 'Herbal Shampoo', 'UK', 'Shampoo', 'Himalaya', 7.50, 'Dry', 4.4, '2025-11-25', '2024-01-30'),  
(7, 'Argan Oil Shampoo', 'Brazil', 'Shampoo', 'OGX', 9.99, 'All', 4.8, '2026-05-10', '2024-03-12'),  
(8, 'Volumizing Conditioner', 'USA', 'Conditioner', 'Pantene', 6.75, 'Oily', 4.3, '2025-07-20', '2023-11-25'),  
(9, 'Aloe Vera Moisturizer', 'Korea', 'Moisturizer', 'Innisfree', 22.50, 'Sensitive', 4.9, '2026-02-28', '2024-06-01'),  
(10, 'Vitamin C Serum', 'USA', 'Serum', 'The Ordinary', 28.00, 'All', 4.8, '2026-04-15', '2024-03-18'),  
(11, 'Sunscreen SPF 50', 'Japan', 'Sunscreen', 'Shiseido', 30.99, 'All', 4.7, '2026-08-01', '2024-05-10'),  
(12, 'Night Repair Cream', 'France', 'Moisturizer', 'Estee Lauder', 60.00, 'Dry', 4.9, '2026-01-10', '2023-12-01'),  
(13, 'Floral Perfume', 'France', 'Perfume', 'Chanel', 120.00, 'All', 5.0, '2027-06-30', '2024-01-10'),  
(14, 'Citrus Body Mist', 'USA', 'Body Mist', 'Bath & Body Works', 18.50, 'All', 4.6, '2025-09-15', '2023-11-20'),  
(15, 'Woody Eau de Parfum', 'Italy', 'Perfume', 'Gucci', 150.00, 'All', 4.9, '2027-02-10', '2024-02-01'),   
(16, 'Lavender Body Wash', 'UK', 'Body Wash', 'Dove', 9.50, 'All', 4.5, '2026-03-15', '2024-01-05'),  
(17, 'Charcoal Face Wash', 'Korea', 'Face Wash', 'Neutrogena', 12.00, 'Oily', 4.6, '2025-12-30', '2024-04-02'),  
(18, 'Hydrating Sheet Mask', 'Japan', 'Face Mask', 'Tony Moly', 5.99, 'Dry', 4.8, '2026-10-20', '2024-06-05'),  
(19, 'Gel Nail Polish', 'USA', 'Nail Polish', 'OPI', 11.99, 'All', 4.4, '2026-07-25', '2024-02-25'),  
(20, 'Waterproof Mascara', 'France', 'Mascara', 'L’Oréal', 19.99, 'All', 4.7, '2025-11-10', '2024-05-08');  

SELECT * FROM Cosmetics_Info;

ALTER TABLE Cosmetics_Info ADD column is_vegan BOOLEAN NOT NULL;

UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 1;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 2;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 3;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 4;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 5;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 6;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 7;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 8;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 9;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 10;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 11;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 12;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 13;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 14;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 15;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 16;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 17;  
UPDATE Cosmetics_Info SET is_vegan = TRUE  WHERE cosmetic_id = 18;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 19;  
UPDATE Cosmetics_Info SET is_vegan = FALSE WHERE cosmetic_id = 20;  


 SELECT COUNT(skin_type) as count_of_skin_type from Cosmetics_Info;
 
 SELECT COUNT(brand_name)from Cosmetics_Info where country='India';

SELECT MAX(customer_ratings)from Cosmetics_Info;

SELECT MIN(customer_ratings)from Cosmetics_Info;

SELECT SUM(skin_type) from Cosmetics_Info where skin_type='All';

SELECT SUM(skin_type) from Cosmetics_Info where skin_type='Dry skin';

SELECT AVG (Customer_ratings) from Cosmetics_Info;

SELECT cosmetic_id,customer_ratings from cosmetics_info group by customer_ratings ;

SELECT price,cosmetic_name from Cosmetics_Info group by price having price>13;

CREATE DATABASE Movies;
use Movies;


CREATE TABLE Movies (
    movie_id int not null unique,  
    title varchar(50) not null unique,  
    theme varchar(50) not null,
    budget bigint not null,
    lead_actor varchar(100) not null,  
    lead_actress varchar(100) not null,  
    language varchar(50) not null, 
     release_year int not null,  
    director varchar(100) not null, 
    production_company varchar(100),  
    ratings decimal(3,1));
    
    
INSERT INTO Movies (movie_id, title, theme, budget, lead_actor, lead_actress, language, release_year, director, production_company, ratings)  
VALUES  
(1, 'Mungaru Male', 'Romance', 70000000, 'Ganesh', 'Pooja Gandhi', 'Kannada', 2006, 'Yograj Bhat', 'E. Krishnappa', 8.3),  
(2, 'Ugram', 'Action', 50000000, 'Sriimurali', 'Hariprriya', 'Kannada', 2014, 'Prashanth Neel', 'Inkfinite Pictures', 7.7),  
(3, 'The Pursuit of Happyness', 'Drama', 55000000, 'Will Smith', 'Thandiwe Newton', 'English', 2006, 'Gabriele Muccino', 'Columbia Pictures', 8.0),  
(4, 'Avengers', 'Superhero', 220000000, 'Robert Downey Jr.', 'Scarlett Johansson', 'English', 2012, 'Joss Whedon', 'Marvel Studios', 8.0),  
(5, 'Charlie', 'Drama', 15000000, 'Dulquer Salmaan', 'Parvathy Thiruvothu', 'Malayalam', 2015, 'Martin Prakkat', 'Finding Cinema', 8.0),  
(6, 'Vikram', 'Action', 120000000, 'Kamal Haasan', 'Shivani Narayanan', 'Tamil', 2022, 'Lokesh Kanagaraj', 'Raaj Kamal Films', 8.3),  
(7, 'Premam', 'Romance', 45000000, 'Nivin Pauly', 'Sai Pallavi', 'Malayalam', 2015, 'Alphonse Puthren', 'Anwar Rasheed Entertainment', 8.3),  
(8, 'Fast & Furious', 'Action', 38000000, 'Vin Diesel', 'Michelle Rodriguez', 'English', 2001, 'Rob Cohen', 'Universal Pictures', 6.8),  
(9, 'Baahubali: The Beginning', 'Fantasy', 1800000000, 'Prabhas', 'Tamannaah Bhatia', 'Telugu', 2015, 'S.S. Rajamouli', 'Arka Media Works', 8.0),  
(10, 'Dangal', 'Sports Drama', 70000000, 'Aamir Khan', 'Sanya Malhotra', 'Hindi', 2016, 'Nitesh Tiwari', 'Aamir Khan Productions', 8.4),  
(11, 'RRR', 'Action', 550000000, 'N.T. Rama Rao Jr.', 'Alia Bhatt', 'Telugu', 2022, 'S.S. Rajamouli', 'DVV Entertainment', 8.0),  
(12, '3 Idiots', 'Comedy-Drama', 55000000, 'Aamir Khan', 'Kareena Kapoor', 'Hindi', 2009, 'Rajkumar Hirani', 'Vinod Chopra Films', 8.4),  
(13, 'Interstellar', 'Sci-Fi', 165000000, 'Matthew McConaughey', 'Anne Hathaway', 'English', 2014, 'Christopher Nolan', 'Paramount Pictures', 8.7),  
(14, 'The Dark Knight', 'Action', 185000000, 'Christian Bale', 'Maggie Gyllenhaal', 'English', 2008, 'Christopher Nolan', 'Warner Bros.', 9.0),  
(15, 'Titanic', 'Romance', 200000000, 'Leonardo DiCaprio', 'Kate Winslet', 'English', 1997, 'James Cameron', '20th Century Fox', 7.9),  
(16, 'Shawshank Redemption', 'Drama', 25000000, 'Tim Robbins', 'None', 'English', 1994, 'Frank Darabont', 'Columbia Pictures', 9.3),  
(17, 'Gladiator', 'Action', 103000000, 'Russell Crowe', 'Connie Nielsen', 'English', 2000, 'Ridley Scott', 'DreamWorks Pictures', 8.5),  
(18, 'Spirited Away', 'Fantasy', 19000000, 'Rumi Hiiragi', 'None', 'Japanese', 2001, 'Hayao Miyazaki', 'Studio Ghibli', 8.6),  
(19, 'The Lion King', 'Animation', 45000000, 'Matthew Broderick', 'Moira Kelly', 'English', 1994, 'Roger Allers & Rob Minkoff', 'Disney', 8.5),  
(20, 'Harry Potter and the Sorcerer\'s Stone', 'Fantasy', 125000000, 'Daniel Radcliffe', 'Emma Watson', 'English', 2001, 'Chris Columbus', 'Warner Bros.', 7.6);  

SELECT * FROM Movies;

ALTER TABLE Movies ADD COLUMN duration int not null;

UPDATE Movies SET duration = 147 WHERE movie_id = 1;   
UPDATE Movies SET duration = 136 WHERE movie_id = 2;  
UPDATE Movies SET duration = 117 WHERE movie_id = 3;  
UPDATE Movies SET duration = 143 WHERE movie_id = 4; 
UPDATE Movies SET duration = 130 WHERE movie_id = 5; 
UPDATE Movies SET duration = 174 WHERE movie_id = 6; 
UPDATE Movies SET duration = 156 WHERE movie_id = 7;   
UPDATE Movies SET duration = 106 WHERE movie_id = 8;   
UPDATE Movies SET duration = 159 WHERE movie_id = 9; 
UPDATE Movies SET duration = 161 WHERE movie_id = 10;
UPDATE Movies SET duration = 182 WHERE movie_id = 11; 
UPDATE Movies SET duration = 170 WHERE movie_id = 12; 
UPDATE Movies SET duration = 169 WHERE movie_id = 13; 
UPDATE Movies SET duration = 152 WHERE movie_id = 14; 
UPDATE Movies SET duration = 195 WHERE movie_id = 15;  
UPDATE Movies SET duration = 142 WHERE movie_id = 16; 
UPDATE Movies SET duration = 155 WHERE movie_id = 17; 
UPDATE Movies SET duration = 125 WHERE movie_id = 18; 
UPDATE Movies SET duration = 88  WHERE movie_id = 19; 
UPDATE Movies SET duration = 152 WHERE movie_id = 20; 



SELECT count(budget) as total_budget from Movies;

SELECT count(ratings) as no_of_ratings from Movies where duration between 130 and 147;

SELECT count(theme) from Movies where movie_id not in (5,8,9);

SELECT sum(ratings) as ratings from movies;

SELECT AVG(budget) as average_budget FROM Movies WHERE lead_actor(Ganesh);

Select min(ratings) as min_ratings From Movies WHERE language='English';

Select max(ratings) as min_ratings From Movies WHERE language='English';

select theme,lead_actor from Movies group by language;

Select sum(ratings) as rate from Movies group by movie_id Having rate<5;

CREATE DATABASE Student_details;
use Student_details;

CREATE TABLE Student_details(
id int not null unique,
first_name varchar(20),
last_name varchar(10),
reg_no varchar(50) unique,
address varchar(50) unique not null,
country varchar(20) not null,
sem int not null,
student_branch varchar(20) not null,
fav_sub varchar(20),
marks int not null,check(marks>40));

Insert into student_details values(1,'Srujana','kv','4kv22cs412','subrahmanya','india',8,'cs','dbms',55);

select * from student_details;
Insert into student_details values(2,'voeshwini','mv','4kv22cs118','madikeri','india',8,'ec','automata',60);
Insert into student_details values(3,'agasthya','hr','4kv22cs100','kerala','india',8,'mech','thermodynamics',75);
Insert into student_details values(4,'abhimanyu','ma','4kv22cs101','munnar','india',8,'civil','SOM',65);

CREATE TABLE Movies (
    movie_id int not null unique,  
    title varchar(50) not null unique,  
    theme varchar(50) not null,
    budget bigint not null,
    lead_actor varchar(100) not null,  
    lead_actress varchar(100) not null,  
    language varchar(50) not null, 
     release_year int not null,  
    director varchar(100) not null, 
    production_company varchar(100),  
    ratings decimal(3,1));

/* removing not null and unique constraints from movies table*/

ALTER TABLE Movies modify column movie_id int;
ALTER TABLE Movies modify column title varchar(50);
ALTER TABLE Movies modify column theme varchar(50);
ALTER TABLE Movies modify column budget bigint;
ALTER TABLE Movies modify column lead_actor varchar(50);
ALTER TABLE Movies modify column lead_actress varchar(50);
ALTER TABLE Movies modify column language varchar(50);
ALTER TABLE Movies modify column release_year  int;
ALTER TABLE Movies modify column director varchar(50);
ALTER TABLE Movies modify column production_company varchar(50);
ALTER TABLE Movies modify column ratings decimal(3,1);

/* Applying not null and unique constraints to the movies table */

ALTER TABLE Movies modify column movie_id int not null unique;

DESC Movies;


CREATE DATABASE indian_food;
use indian_food;

CREATE TABLE indian_food(
id int not null unique,
food_name varchar(50) not null unique,
origin_state varchar(50),
food_type varchar(50),
main_ingredients varchar(50) not null,
protien_content int not null unique,
fat_content int,
is_spicy boolean not null,
restaurant_id int unique,
food_price int,check(food_price>=250));

INSERT INTO indian_food (id, food_name, origin_state, food_type, main_ingredients, protien_content, fat_content, is_spicy, restaurant_id, food_price)  
VALUES  
(1, 'Mangalorean Fish Curry', 'Karnataka', 'Non-Veg', 'Fish, Coconut, Spices', 23, 12, TRUE, 101, 370),  
(2, 'Masala Dosa', 'Karnataka', 'Veg', 'Rice, Urad Dal, Potato', 10, 5, FALSE, 102, 250),  
(3, 'Butter Chicken', 'Punjab', 'Non-Veg', 'Chicken, Butter, Cream', 30, 20, TRUE, 103, 400),  
(4, 'Pani Puri', 'Maharashtra', 'Veg', 'Flour, Potato, Chickpeas', 5, 2, TRUE, NULL, 250),  
(5, 'Chole Bhature', 'Punjab', 'Veg', 'Chickpeas, Maida', 12, 15, TRUE, 104, 280),  
(6, 'Dal Makhani', 'Punjab', 'Veg', 'Black Lentils, Butter, Cream', 18, 12, FALSE, 105, 300),  
(7, 'Rogan Josh', 'Kashmir', 'Non-Veg', 'Mutton, Yogurt, Spices', 28, 22, TRUE, 106, 450),  
(8, 'Misal Pav', 'Maharashtra', 'Veg', 'Sprouted Lentils, Pav', 19, 6, TRUE, NULL, 260),  
(9, 'Bengali Fish Curry', 'West Bengal', 'Non-Veg', 'Fish, Mustard, Spices', 22, 14, TRUE, 107, 420),  
(10, 'Pongal', 'Tamil Nadu', 'Veg', 'Rice, Moong Dal, Ghee', 14, 10, FALSE, 108, 270),  
(11, 'Dhokla', 'Gujarat', 'Veg', 'Gram Flour, Curd', 9, 3, FALSE, NULL, 250),  
(12, 'Vada Pav', 'Maharashtra', 'Veg', 'Potato, Pav, Spices', 7, 5, TRUE, NULL, 250),  
(13, 'Aloo Paratha', 'Punjab', 'Veg', 'Wheat Flour, Potato', 11, 8, FALSE, 109, 280),  
(14, 'Baati Chokha', 'Rajasthan', 'Veg', 'Wheat Flour, Chana Dal', 13, 7, FALSE, 110, 260),  
(15, 'Rasam Rice', 'Tamil Nadu', 'Veg', 'Tamarind, Tomato, Spices', 6, 2, TRUE, 111, 250),  
(16, 'Gajar Ka Halwa', 'Delhi', 'Veg', 'Carrot, Milk, Ghee', 8, 15, FALSE, 112, 320),  
(17, 'Shahi Paneer', 'Uttar Pradesh', 'Veg', 'Paneer, Cream, Cashews', 21, 18, FALSE, 113, 390),  
(18, 'Keema Naan', 'Punjab', 'Non-Veg', 'Wheat Flour, Minced Meat', 24, 13, TRUE, 114, 380),  
(19, 'Hyderabadi Biryani', 'Telangana', 'Non-Veg', 'Basmati Rice, Chicken', 25, 10, TRUE, 115, 350),  
(20, 'Pesarattu', 'Andhra Pradesh', 'Veg', 'Green Gram, Rice', 16, 5, FALSE, 116, 260);  

SELECT * FROM indian_food;

ALTER TABLE indian_food ADD COLUMN cuisine varchar(20);

UPDATE indian_food SET cuisine = 'South Indian' WHERE id = 1;  
UPDATE indian_food SET cuisine = 'South Indian' WHERE id = 2; 
UPDATE indian_food SET cuisine = 'North Indian' WHERE id = 3;  
UPDATE indian_food SET cuisine = 'Street Food' WHERE id = 4; 
UPDATE indian_food SET cuisine = 'North Indian' WHERE id = 5; 
UPDATE indian_food SET cuisine = 'North Indian' WHERE id = 6;  
UPDATE indian_food SET cuisine = 'Kashmiri' WHERE id = 7;  
UPDATE indian_food SET cuisine = 'Street Food' WHERE id = 8; 
UPDATE indian_food SET cuisine = 'Bengali' WHERE id = 9;  
UPDATE indian_food SET cuisine = 'South Indian' WHERE id = 10;
UPDATE indian_food SET cuisine = 'Gujarati' WHERE id = 11; 
UPDATE indian_food SET cuisine = 'Street Food' WHERE id = 12; 
UPDATE indian_food SET cuisine = 'North Indian' WHERE id = 13; 
UPDATE indian_food SET cuisine = 'Rajasthani' WHERE id = 14; 
UPDATE indian_food SET cuisine = 'South Indian' WHERE id = 15;  
UPDATE indian_food SET cuisine = 'North Indian' WHERE id = 16; 
UPDATE indian_food SET cuisine = 'Mughlai' WHERE id = 17;  
UPDATE indian_food SET cuisine = 'North Indian' WHERE id = 18; 
UPDATE indian_food SET cuisine = 'Hyderabadi' WHERE id = 19; 
UPDATE indian_food SET cuisine = 'South Indian' WHERE id = 20;  


select * from indian_food;

/* aggregate functions */
SELECT COUNT(protien_content) from indian_food;
SELECT COUNT(protien_content) food_name from indian_food;

SELECT MAX(fat_content) as maximum_fat_content from indian_food;
SELECT MIN(fat_content) as minimum_fat_content from indian_food where origin_state='karnataka';

SELECT MIN(fat_content) as minimum_fat_content from indian_food where id in(1,2,3);

SELECT AVG(food_price) as avg_of_price from indian_food where id not in(4,6,7,8,9);

SELECT SUM(food_price) from indian_food;

/* group by and having */
SELECT origin_state,food_name from indian_food group by id;

SELECT food_price from indian_food group by id having food_price<300;


CREATE DATABASE Restaurant_information;
use Restaurant_information;

CREATE TABLE Restaurant_information (
    id int,
    name varchar(50) ,
    food_type enum('veg','non veg'),
    cuisine_type varchar(50) ,
    location varchar(50),
    rating decimal(1,1),
	owner_name varchar(50),
    opening_time varchar(50),
     has_delivery boolean,
    contact_number varchar(20)
    );

/* added constraints */
ALTER TABLE Restaurant_information MODIFY id int NOT NULL;

ALTER TABLE Restaurant_information ADD CONSTRAINT id_uni UNIQUE (id);

ALTER TABLE Restaurant_information ADD CONSTRAINT name_uni UNIQUE (name);

ALTER TABLE Restaurant_information MODIFY food_type enum('veg','non veg')NOT NULL;

ALTER TABLE Restaurant_information MODIFY cuisine_type varchar(50) not null;

ALTER TABLE Restaurant_information MODIFY location varchar(50) not null;

ALTER TABLE Restaurant_information ADD CONSTRAINT rating_chk CHECK (rating >= 0 AND rating <= 5);

ALTER TABLE Restaurant_information ADD CONSTRAINT contact_number_uni UNIQUE (contact_number);

ALTER TABLE Restaurant_information MODIFY has_delivery boolean NOT NULL;

ALTER TABLE Restaurant_information ADD CONSTRAINT owner_name_uni UNIQUE(owner_name);

INSERT INTO Restaurant_information (id, name, food_type, cuisine_type, location, rating, owner_name, opening_time, has_delivery, contact_number) VALUES
(1, 'Udupi Cafe', 'veg', 'South Indian', 'Bangalore', 4.5, 'Venkatesh', '7:00 AM - 10:00 PM', TRUE, '9876543221'),
(2, 'meenu uta', 'non veg', 'south Indian', 'manglore', 4.5, 'agasthya shetty', '10:00 AM - 11:00 PM', TRUE, '9876543210'),
(3, 'srinivas', 'veg', 'Rajasthani', 'Mumbai', 4.7, 'mahesh', '11:00 AM - 10:30 PM', TRUE, '9876543211'),
(4, 'delicious roti', 'veg', 'South Indian', 'Chennai', 4.6, 'aryan', '7:00 AM - 10:00 PM', TRUE, '9876543212'),
(5, 'Biryani mane', 'non veg', 'south Indian', 'Banglore', 4.8, 'Asif Khan', '12:00 PM - 12:00 AM', TRUE, '9876543213'),
(6, 'Chaat Junction', 'veg', 'Street Food', 'Kolkata', 4.3, 'Suresh Agarwal', '2:00 PM - 10:00 PM', FALSE, '9876543214'),
(7, 'Punjabi Dhaba', 'non veg', 'Punjabi', 'Amritsar', 4.6, 'Harpreet Singh', '9:00 AM - 11:00 PM', TRUE, '9876543215'),
(8, 'Malabar Spice', 'non veg', 'Kerala', 'Kochi', 4.5, 'Joseph Mathew', '12:00 PM - 11:00 PM', TRUE, '9876543216'),
(9, 'Bengali Rasoi', 'veg', 'Bengali', 'Kolkata', 4.4, 'Ramesh Ghosh', '11:00 AM - 10:30 PM', TRUE, '9876543217'),
(10, 'Goan Fiesta', 'non veg', 'Goan', 'Goa', 4.7, 'Alfonso D’Souza', '1:00 PM - 12:00 AM', TRUE, '9876543218'),
(11, 'Gujju Thali', 'veg', 'Gujarati', 'Ahmedabad', 4.6, 'Paresh Patel', '11:00 AM - 10:00 PM', TRUE, '9876543219'),
(12, 'Mughlai Treat', 'non veg', 'Mughlai', 'Lucknow', 4.8, 'Nawab Ahmed', '1:00 PM - 11:00 PM', TRUE, '9876543220'),
(13, 'Pav Bhaji Corner', 'veg', 'Mumbai Street Food', 'Mumbai', 4.2, 'Mahesh Yadav', '3:00 PM - 11:00 PM', FALSE, '9876543222'),
(14, 'Andhra Spice', 'non veg', 'Andhra', 'Hyderabad', 4.7, 'Satish Reddy', '12:00 PM - 11:00 PM', TRUE, '9876543223'),
(15, 'donne biriyani', 'non veg', 'Rajasthani', 'Jaipur', 4.6, 'Pratap Singh', '11:00 AM - 10:30 PM', TRUE, '9876543224');

select * from Restaurant_information;

/* added 2 columns by alter command */

ALTER TABLE Restaurant_information ADD COLUMN seating_capacity int;
ALTER TABLE Restaurant_information ADD COLUMN no_of_employees int not null;

/*updated values for the columns */
UPDATE Restaurant_information SET seating_capacity = 55 WHERE id = 1;
UPDATE Restaurant_information SET seating_capacity = 85 WHERE id = 2;
UPDATE Restaurant_information SET seating_capacity = 75 WHERE id = 3;
UPDATE Restaurant_information SET seating_capacity = 65 WHERE id = 4;
UPDATE Restaurant_information SET seating_capacity = 95 WHERE id = 5;
UPDATE Restaurant_information SET seating_capacity = 45 WHERE id = 6;
UPDATE Restaurant_information SET seating_capacity = 90 WHERE id = 7;
UPDATE Restaurant_information SET seating_capacity = 70 WHERE id = 8;
UPDATE Restaurant_information SET seating_capacity = 60 WHERE id = 9;
UPDATE Restaurant_information SET seating_capacity = 100 WHERE id = 10;
UPDATE Restaurant_information SET seating_capacity = 68 WHERE id = 11;
UPDATE Restaurant_information SET seating_capacity = 88 WHERE id = 12;
UPDATE Restaurant_information SET seating_capacity = 52 WHERE id = 13;
UPDATE Restaurant_information SET seating_capacity = 83 WHERE id = 14;
UPDATE Restaurant_information SET seating_capacity = 78 WHERE id = 15;

UPDATE Restaurant_information SET no_of_employees = 18 WHERE id = 1;
UPDATE Restaurant_information SET no_of_employees = 22 WHERE id = 2;
UPDATE Restaurant_information SET no_of_employees = 20 WHERE id = 3;
UPDATE Restaurant_information SET no_of_employees = 17 WHERE id = 4;
UPDATE Restaurant_information SET no_of_employees = 25 WHERE id = 5;
UPDATE Restaurant_information SET no_of_employees = 12 WHERE id = 6;
UPDATE Restaurant_information SET no_of_employees = 21 WHERE id = 7;
UPDATE Restaurant_information SET no_of_employees = 18 WHERE id = 8;
UPDATE Restaurant_information SET no_of_employees = 15 WHERE id = 9;
UPDATE Restaurant_information SET no_of_employees = 26 WHERE id = 10;
UPDATE Restaurant_information SET no_of_employees = 16 WHERE id = 11;
UPDATE Restaurant_information SET no_of_employees = 23 WHERE id = 12;
UPDATE Restaurant_information SET no_of_employees = 14 WHERE id = 13;
UPDATE Restaurant_information SET no_of_employees = 19 WHERE id = 14;
UPDATE Restaurant_information SET no_of_employees = 17 WHERE id = 15;


CREATE DATABASE Olympic_information;
use Olympic_information;


CREATE TABLE Olympic_information (
    id int ,
    name varchar(20),
    game_type enum('indoor','outdoor'),
    city varchar(20), country varchar(20),
    olympic_year int,total_sports int,
    total_events int,total_countries int,
    champion_country varchar(50));
    
    ALTER TABLE Olympic_information MODIFY COLUMN id int not null;
    
    ALTER TABLE Olympic_information ADD CONSTRAINT id_uni UNIQUE(id);
    
    ALTER TABLE Olympic_information ADD CONSTRAINT name_uni UNIQUE(name);
    
	ALTER TABLE Olympic_information MODIFY COLUMN game_type enum('indoor','outdoor') not null;

	ALTER TABLE Olympic_information MODIFY COLUMN city varchar(20) not null;
    
	ALTER TABLE Olympic_information MODIFY COLUMN country varchar(20) not null;
    
    ALTER TABLE Olympic_information ADD CONSTRAINT olympic_year_chk CHECK(olympic_year>1896);

    ALTER TABLE Olympic_information ADD CONSTRAINT total_sports_chk CHECK(total_sports>0);
    
	ALTER TABLE Olympic_information MODIFY COLUMN total_events int  not null;


INSERT INTO Olympic_information (id, name, game_type, city, country, olympic_year, total_sports, total_events, total_countries, champion_country) 
VALUES
(1, 'Tokyo 2020', 'outdoor', 'Tokyo', 'Japan', 2021, 33, 339, 206, 'USA'),
(2, 'Rio 2016', 'outdoor', 'Rio de Janeiro', 'Brazil', 2016, 28, 306, 207, 'USA'),
(3, 'London 2012', 'outdoor', 'London', 'UK', 2012, 26, 302, 204, 'USA'),
(4, 'Beijing 2008', 'outdoor', 'Beijing', 'China', 2008, 28, 302, 204, 'China'),
(5, 'Athens 2004', 'outdoor', 'Athens', 'Greece', 2004, 28, 301, 201, 'USA'),
(6, 'Sydney 2000', 'outdoor', 'Sydney', 'Australia', 2000, 28, 300, 200, 'USA'),
(7, 'Atlanta 1996', 'outdoor', 'Atlanta', 'USA', 1996, 26, 271, 197, 'USA'),
(8, 'Barcelona 1992', 'outdoor', 'Barcelona', 'Spain', 1992, 25, 257, 169, 'Unified Team'),
(9, 'Seoul 1988', 'outdoor', 'Seoul', 'South Korea', 1988, 23, 237, 159, 'Soviet Union'),
(10, 'Los Angeles 1984', 'outdoor', 'Los Angeles', 'USA', 1984, 21, 221, 140, 'USA'),
(11, 'Moscow 1980', 'outdoor', 'Moscow', 'Soviet Union', 1980, 21, 203, 80, 'Soviet Union'),
(12, 'Montreal 1976', 'outdoor', 'Montreal', 'Canada', 1976, 21, 198, 92, 'Soviet Union'),
(13, 'Munich 1972', 'outdoor', 'Munich', 'West Germany', 1972, 21, 195, 121, 'Soviet Union'),
(14, 'Mexico City 1968', 'outdoor', 'Mexico City', 'Mexico', 1968, 18, 172, 112, 'USA'),
(15, 'Tokyo 1964', 'outdoor', 'Tokyo', 'Japan', 1964, 19, 163, 93, 'USA');

SELECT * FROM Olympic_information;

ALTER TABLE Olympic_information ADD COLUMN top_athlete varchar(50);

ALTER TABLE Olympic_information ADD COLUMN opening_ceremony date not null;

UPDATE Olympic_information SET top_athlete = 'Caeleb Dressel' WHERE id = 1;
UPDATE Olympic_information SET top_athlete = 'Michael Phelps' WHERE id = 2;
UPDATE Olympic_information SET top_athlete = 'Michael Phelps' WHERE id = 3;
UPDATE Olympic_information SET top_athlete = 'Michael Phelps' WHERE id = 4;
UPDATE Olympic_information SET top_athlete = 'Michael Phelps' WHERE id = 5;
UPDATE Olympic_information SET top_athlete = 'Ian Thorpe' WHERE id = 6;
UPDATE Olympic_information SET top_athlete = 'Alexander Popov' WHERE id = 7;
UPDATE Olympic_information SET top_athlete = 'Vitaly Scherbo' WHERE id = 8;
UPDATE Olympic_information SET top_athlete = 'Kristin Otto' WHERE id = 9;
UPDATE Olympic_information SET top_athlete = 'Carl Lewis' WHERE id = 10;
UPDATE Olympic_information SET top_athlete = 'Nadia Comaneci' WHERE id = 11;
UPDATE Olympic_information SET top_athlete = 'Nikolai Andrianov' WHERE id = 12;
UPDATE Olympic_information SET top_athlete = 'Mark Spitz' WHERE id = 13;
UPDATE Olympic_information SET top_athlete = 'Bob Beamon' WHERE id = 14;
UPDATE Olympic_information SET top_athlete = 'Don Schollander' WHERE id = 15;


UPDATE Olympic_information SET opening_ceremony = '2021-07-23' WHERE id = 1;
UPDATE Olympic_information SET opening_ceremony = '2016-08-05' WHERE id = 2;
UPDATE Olympic_information SET opening_ceremony = '2012-07-27' WHERE id = 3;
UPDATE Olympic_information SET opening_ceremony = '2008-08-08' WHERE id = 4;
UPDATE Olympic_information SET opening_ceremony = '2004-08-13' WHERE id = 5;
UPDATE Olympic_information SET opening_ceremony = '2000-09-15' WHERE id = 6;
UPDATE Olympic_information SET opening_ceremony = '1996-07-19' WHERE id = 7;
UPDATE Olympic_information SET opening_ceremony = '1992-07-25' WHERE id = 8;
UPDATE Olympic_information SET opening_ceremony = '1988-09-17' WHERE id = 9;
UPDATE Olympic_information SET opening_ceremony = '1984-07-28' WHERE id = 10;
UPDATE Olympic_information SET opening_ceremony = '1980-07-19' WHERE id = 11;
UPDATE Olympic_information SET opening_ceremony = '1976-07-17' WHERE id = 12;
UPDATE Olympic_information SET opening_ceremony = '1972-08-26' WHERE id = 13;
UPDATE Olympic_information SET opening_ceremony = '1968-10-12' WHERE id = 14;
UPDATE Olympic_information SET opening_ceremony = '1964-10-10' WHERE id = 15;


CREATE DATABASE Furniture_information;
use Furniture_information;

CREATE TABLE Furniture_information(
id int,name varchar(20),
furniture_color varchar(20),furniture_type enum('chair','table','sofa','bed','desk','shelf'),
material varchar(20),price bigint,weight float,
style varchar(20),warranty varchar(20),
stock int);

 ALTER TABLE Furniture_information ADD CONSTRAINT id_uni UNIQUE(id);
 
 ALTER TABLE Furniture_information MODIFY column id int not null;

desc Furniture_information;
 
 ALTER TABLE Furniture_information ADD CONSTRAINT name_uni UNIQUE(name);

ALTER TABLE Furniture_information MODIFY COLUMN furniture_color varchar(20) not null;

ALTER TABLE Furniture_information MODIFY COLUMN furniture_type enum('chair','table','sofa','bed','desk','shelf') not null;

ALTER TABLE Furniture_information MODIFY COLUMN material varchar(20) not null;

ALTER TABLE Furniture_information ADD CONSTRAINT price_uni UNIQUE(price);

ALTER TABLE Furniture_information ADD CONSTRAINT weight_chk CHECK(weight>=200);


INSERT INTO Furniture_information (id, name, furniture_color, furniture_type, material, price, weight, style, warranty, stock) VALUES
(1, 'ClassicChair', 'Brown', 'chair', 'Wood', 12000, 210, 'Vintage', '2 years', 15),
(2, 'ModernTable', 'Black', 'table', 'Metal', 25000, 220, 'Modern', '5 years', 10),
(3, 'CozySofa', 'Blue', 'sofa', 'Fabric', 40000, 300, 'Contemporary', '3 years', 8),
(4, 'KingBed', 'White', 'bed', 'Wood', 55000, 500, 'Luxury', '10 years', 5),
(5, 'OfficeDesk', 'Grey', 'desk', 'Wood', 18000, 230, 'Minimalist', '3 years', 12),
(6, 'CornerShelf', 'White', 'shelf', 'Metal', 15000, 250, 'Industrial', '2 years', 20),
(7, 'ReclinerSofa', 'Red', 'sofa', 'Leather', 60000, 350, 'Classic', '5 years', 6),
(8, 'DiningTable', 'Brown', 'table', 'Wood', 32000, 280, 'Rustic', '8 years', 7),
(9, 'StudyDesk', 'Black', 'desk', 'Plastic', 14000, 210, 'Modern', '2 years', 18),
(10, 'FloatingShelf', 'Beige', 'shelf', 'Wood', 13000, 220, 'Minimalist', '1 year', 25),
(11, 'LoungeChair', 'Grey', 'chair', 'Metal', 17000, 250, 'Ergonomic', '3 years', 14),
(12, 'BunkBed', 'Blue', 'bed', 'Metal', 48000, 450, 'Space-saving', '7 years', 9),
(13, 'BookShelf', 'Black', 'shelf', 'Wood', 26000, 300, 'Classic', '5 years', 11),
(14, 'FoldableTable', 'White', 'table', 'Plastic', 22000, 240, 'Portable', '2 years', 16),
(15, 'MassageChair', 'Brown', 'chair', 'Leather', 75000, 320, 'Luxury', '5 years', 4);

select * from Furniture_information;

alter table Furniture_information add column brand varchar(20) not null;

alter table Furniture_information add column dimensions varchar(20);

update Furniture_information set brand='furnitureco';