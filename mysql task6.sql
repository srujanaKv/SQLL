CREATE DATABASE Panchayat;
use Panchayat;

CREATE TABLE Districts(
id int primary key ,name varchar(50),
state varchar(50),population int,
area float,headquaters varchar(50),
is_urban boolean,no_of_blocks int,
no_of_taluks int,Dc_name varchar(50));

CREATE TABLE Blocks(
block_id int primary key,district_id int,
block_name varchar(20),block_officer varchar(20),
num_panchayats int,block_hq varchar(20),
population int,area float,state varchar(20),
country varchar(20),
foreign key(district_id) references Districts (id)); 

CREATE TABLE Panchayat(
panchayat_id int primary key,district_id int,
block_id int,panchayat_name varchar(20),
no_of_villages int,population int,origin_year int,
pincode varchar(6),district_name varchar(20),
foreign key(district_id) references Districts(id),
foreign key(block_id) references Blocks(block_id));

CREATE TABLE Villages(
village_id int primary key,panchayat_id int,
block_id int,district_id int,village_name varchar(20),
population int,has_school boolean,has_hospital boolean,
district_name varchar(20),state_name varchar(20),
foreign key(panchayat_id) references Panchayat(panchayat_id),
foreign key(block_id) references Blocks(block_id),
foreign key(district_id) references Districts(id));

CREATE TABLE Schemes(
scheme_id int primary key,village_id int,panchayat_id int,
block_id int ,district_id int,scheme_name varchar(20),
budget float,start_date date,end_date date, district_name varchar(20),
foreign key(village_id) references Villages(village_id),
foreign key(panchayat_id) references Panchayat(panchayat_id),
foreign key(block_id) references Blocks(block_id),
foreign key(district_id) references Districts(id));

ALTER TABLE Districts modify column name varchar(50) not null;
ALTER TABLE Districts add constraint population_uni UNIQUE(population);
ALTER TABLE Districts add constraint population_chk check(population>0);


ALTER TABLE Blocks add constraint block_name_uni UNIQUE(block_name);
ALTER TABLE Blocks modify column num_panchayats int not null;
ALTER TABLE Blocks add constraint population_chk check(population>0);
ALTER TABLE Blocks modify state varchar(20) not null;


ALTER TABLE Panchayat add constraint panchayat_name_uni UNIQUE(panchayat_name);
ALTER TABLE Panchayat modify column no_of_villages int not null;
ALTER TABLE Panchayat add constraint no_of_villages_chk check(no_of_villages>0);
ALTER TABLE Panchayat modify column origin_year int not null;

ALTER TABLE Villages add constraint village_name_uni UNIQUE (village_name);
ALTER TABLE Villages modify column has_hospital boolean not null;
ALTER TABLE Villages add constraint has_school_chk check(has_school=true or false);
ALTER TABLE Villages modify column state_name varchar(20) not null;

ALTER TABLE Schemes add constraint budget_chk check(budget>1000000000);
ALTER TABLE Schemes modify column start_date date not null;
ALTER TABLE Schemes add constraint scheme_name_uni unique(scheme_name);


INSERT INTO Districts VALUES(1, 'Dakshina Kannada', 'Karnataka', 2300030, 4859.0, 'Mangaluru', TRUE, 5, 3, 'Mullai mughilan'),
(2, 'Mysuru', 'Karnataka', 3050041, 6854.0, 'Mysuru', TRUE, 5, 4, 'Laxmikanth'),
(3, 'Kodagu', 'Karnataka', 1150037, 4102.0, 'Madikeri', FALSE, 3, 2, 'Venkatraj'),
(4, 'Bengaluru Rural', 'Karnataka', 990023, 2298.0, 'Bangalore', TRUE, 4, 2, 'Basavaraj'),
(5, 'Bengaluru Urban', 'Karnataka', 9620024, 2190.0, 'Bangalore', TRUE, 5, 3, 'Jagadeesha'),
(6, 'Tiruchirappalli', 'Tamil Nadu', 1200019, 2150.7, 'Trichy', TRUE, 4, 3, 'Ganesh Iyer'),
(7, 'Thiruvananthapuram', 'Kerala', 1200015, 1950.9, 'TVM', TRUE, 4, 4, 'Latha Menon'),
(8, 'Srinagar', 'Jammu & Kashmir', 1500017, 2105.0, 'Srinagar', TRUE, 3, 3, 'Yusuf Mir'),
(9, 'Ahmedabad', 'Gujarat', 3800009, 2504.3, 'Ahmedabad', TRUE, 4, 3, 'Jigna Shah'),
(10, 'Udupi', 'Karnataka', 1770046, 3563.0, 'Udupi', TRUE, 3, 2, 'Sharada R'),
(11, 'Uttara Kannada', 'Karnataka', 1830047, 10291.0, 'Karwar', FALSE, 5, 4, 'Rajani G'),
(12, 'Vijayapura', 'Karnataka', 2170048, 11240.0, 'Vijayapura', FALSE, 5, 4, 'Naveen N'),
(13, 'Yadgir', 'Karnataka', 1170049, 5234.0, 'Yadgir', FALSE, 3, 2, 'Tejaswini H'),
(14, 'Ramanagara', 'Karnataka', 1330043, 3516.0, 'Ramanagara', FALSE, 3, 2, 'Vinay K'),
(15, 'Shivamogga', 'Karnataka', 2040044, 8477.0, 'Shivamogga', TRUE, 5, 3, 'Rachana A'),
(16, 'Chikkamagaluru', 'Karnataka', 1210028, 7201.0, 'Chikkamagaluru', FALSE, 4, 3, 'Nitin Rao'),
(17, 'Panaji', 'Goa', 1100016, 1500.0, 'Panaji', TRUE, 2, 1, 'Suresh Naik'),
(18, 'Jaipur', 'Rajasthan', 2500003, 4670.5, 'Jaipur', TRUE, 7, 4, 'Suman Joshi'),
(19, 'Shimla', 'Himachal Pradesh', 1300014, 1750.6, 'Shimla', TRUE, 3, 2, 'Vineet Chauhan'),
(20, 'Davangere', 'Karnataka', 1800031, 5975.0, 'Davangere', FALSE, 6, 4, 'Kiran Kumar');

select * from Districts;


INSERT INTO Blocks VALUES
(101, 1, 'Mangalore Block', 'Anita', 6, 'Mangaluru', 300000, 150.5, 'Karnataka', 'India'),
(102, 2, 'Mysore Block', 'Naveen P', 5, 'Mysuru', 280000, 210.0, 'Karnataka', 'India'),
(103, 3, 'Madikeri Block', 'Harsha Gowda', 3, 'Madikeri', 150000, 170.0, 'Karnataka', 'India'),
(104, 4, 'Devanahalli Block', 'Rachita R', 4, 'Devanahalli', 190000, 120.6, 'Karnataka', 'India'),
(105, 5, 'Bangalore Block', 'Vinod Kumar', 5, 'Bangalore', 420000, 95.0, 'Karnataka', 'India'),
(106, 6, 'Trichy Block', 'Manoj Iyer', 4, 'Trichy', 300000, 110.2, 'Tamil Nadu', 'India'),
(107, 7, 'TVM Block', 'Sreekanth', 4, 'TVM', 310000, 85.7, 'Kerala', 'India'),
(108, 8, 'Srinagar Block', 'Bilal Mir', 3, 'Srinagar', 205000, 98.2, 'Jammu & Kashmir', 'India'),
(109, 9, 'Ahmedabad East Block', 'Neel Patel', 4, 'Ahmedabad', 360000, 140.3, 'Gujarat', 'India'),
(110, 10, 'Udupi Block', 'Sandhya Shetty', 3, 'Udupi', 185000, 75.9, 'Karnataka', 'India'),
(111, 11, 'Karwar Block', 'Ravi R', 5, 'Karwar', 220000, 180.5, 'Karnataka', 'India'),
(112, 12, 'Vijayapura Block', 'Fathima B', 5, 'Vijayapura', 250000, 200.0, 'Karnataka', 'India'),
(113, 13, 'Yadgir Block', 'Manasa K', 3, 'Yadgir', 135000, 110.0, 'Karnataka', 'India'),
(114, 14, 'Ramanagara Block', 'Sharath S', 3, 'Ramanagara', 160000, 100.5, 'Karnataka', 'India'),
(115, 15, 'Shimoga Block', 'Deepika A', 5, 'Shivamogga', 245000, 175.0, 'Karnataka', 'India'),
(116, 16, 'Chikmagalur Block', 'Uday N', 4, 'Chikkamagaluru', 180000, 135.5, 'Karnataka', 'India'),
(117, 17, 'Panaji Block', 'Mahesh N', 2, 'Panaji', 120000, 70.3, 'Goa', 'India'),
(118, 18, 'Jaipur City Block', 'Suman Jain', 7, 'Jaipur', 370000, 210.7, 'Rajasthan', 'India'),
(119, 19, 'Shimla Urban Block', 'Ritu Sharma', 3, 'Shimla', 140000, 90.2, 'Himachal Pradesh', 'India'),
(120, 20, 'Davangere Block', 'Kiran H', 6, 'Davangere', 225000, 160.4, 'Karnataka', 'India');

select * from Blocks;

INSERT INTO Panchayat VALUES
(201, 1, 101, 'Derlakatte', 5, 25000, 1955, '575018', 'Dakshina Kannada'),
(202, 2, 102, 'Srirampura', 4, 30000, 1962, '570023', 'Mysuru'),
(203, 3, 103, 'Suntikoppa', 3, 18000, 1970, '571237', 'Kodagu'),
(204, 4, 104, 'Vijayapura', 6, 32000, 1980, '562110', 'Bengaluru Rural'),
(205, 5, 105, 'Kengeri', 7, 40000, 1965, '560060', 'Bengaluru Urban'),
(206, 6, 106, 'Manikandam', 4, 27500, 1978, '620012', 'Tiruchirappalli'),
(207, 7, 107, 'Nedumangad', 6, 29500, 1985, '695541', 'Thiruvananthapuram'),
(208, 8, 108, 'Rainawari', 3, 21500, 1960, '190003', 'Srinagar'),
(209, 9, 109, 'Vastral', 5, 34000, 1973, '382418', 'Ahmedabad'),
(210, 10, 110, 'Kaup', 4, 26000, 1952, '574106', 'Udupi'),
(211, 11, 111, 'Ankola', 6, 31000, 1957, '581314', 'Uttara Kannada'),
(212, 12, 112, 'Sindagi', 5, 27000, 1982, '586128', 'Vijayapura'),
(213, 13, 113, 'Gurmitkal', 4, 22000, 1974, '585214', 'Yadgir'),
(214, 14, 114, 'Channapatna', 6, 35000, 1969, '562160', 'Ramanagara'),
(215, 15, 115, 'Thirthahalli', 5, 28500, 1958, '577432', 'Shivamogga'),
(216, 16, 116, 'Koppa', 3, 19500, 1951, '577126', 'Chikkamagaluru'),
(217, 17, 117, 'Candolim', 2, 16000, 1971, '403515', 'Panaji'),
(218, 18, 118, 'Sanganer', 7, 37500, 1966, '302029', 'Jaipur'),
(219, 19, 119, 'Chotta Shimla', 4, 21000, 1963, '171002', 'Shimla'),
(220, 20, 120, 'Harihara', 5, 29000, 1981, '577601', 'Davangere');

select * from Panchayat;

INSERT INTO Villages VALUES
(301, 201, 101, 1, 'Kotekar', 7500, TRUE, TRUE, 'Dakshina Kannada', 'Karnataka'),
(302, 202, 102, 2, 'Jayapura', 8200, TRUE, FALSE, 'Mysuru', 'Karnataka'),
(303, 203, 103, 3, 'Napoklu', 5400, TRUE, FALSE, 'Kodagu', 'Karnataka'),
(304, 204, 104, 4, 'Hoskote', 6200, TRUE, TRUE, 'Bengaluru Rural', 'Karnataka'),
(305, 205, 105, 5, 'Byatarayanapura', 15000, TRUE, TRUE, 'Bengaluru Urban', 'Karnataka'),
(306, 206, 106, 6, 'Manikandam East', 6700, TRUE, FALSE, 'Tiruchirappalli', 'Tamil Nadu'),
(307, 207, 107, 7, 'Kilimanoor', 7300, TRUE, TRUE, 'Thiruvananthapuram', 'Kerala'),
(308, 208, 108, 8, 'Khanyar', 4900, TRUE, TRUE, 'Srinagar', 'Jammu & Kashmir'),
(309, 209, 109, 9, 'Odhav', 8800, TRUE, FALSE, 'Ahmedabad', 'Gujarat'),
(310, 210, 110, 10, 'Brahmavar', 6200, TRUE, TRUE, 'Udupi', 'Karnataka'),
(311, 211, 111, 11, 'Gokarna', 5100, TRUE, TRUE, 'Uttara Kannada', 'Karnataka'),
(312, 212, 112, 12, 'Indi', 7000, TRUE, FALSE, 'Vijayapura', 'Karnataka'),
(313, 213, 113, 13, 'Shorapur', 5600, TRUE, TRUE, 'Yadgir', 'Karnataka'),
(314, 214, 114, 14, 'Harohalli', 7700, TRUE, FALSE, 'Ramanagara', 'Karnataka'),
(315, 215, 115, 15, 'Ayanur', 8300, TRUE, TRUE, 'Shivamogga', 'Karnataka'),
(316, 216, 116, 16, 'Aldur', 6000, TRUE, FALSE, 'Chikkamagaluru', 'Karnataka'),
(317, 217, 117, 17, 'Saligao', 4500, TRUE, TRUE, 'Panaji', 'Goa'),
(318, 218, 118, 18, 'Sodala', 9400, TRUE, TRUE, 'Jaipur', 'Rajasthan'),
(319, 219, 119, 19, 'Mashobra', 4000, TRUE, FALSE, 'Shimla', 'Himachal Pradesh'),
(320, 220, 120, 20, 'Mayakonda', 7200, TRUE, TRUE, 'Davangere', 'Karnataka');

select * from Villages;

INSERT INTO Schemes VALUES
(401, 301, 201, 101, 1, 'har ghar jhal', 1500000000.0, '2022-01-01', '2025-01-01', 'Dakshina Kannada'),
(402, 302, 202, 102, 2, 'Green Mysore', 1600000000.0, '2021-06-15', '2024-06-15', 'Mysuru'),
(403, 303, 203, 103, 3, 'Hill Dev', 1750000000.0, '2022-03-01', '2026-03-01', 'Kodagu'),
(404, 304, 204, 104, 4, 'Smart Rural', 1800000000.0, '2020-11-20', '2025-11-20', 'Bengaluru Rural'),
(405, 305, 205, 105, 5, 'Urban Grow', 2500000000.0, '2023-02-10', '2026-02-10', 'Bengaluru Urban'),
(406, 306, 206, 106, 6, 'Delta Lift', 1550000000.0, '2021-09-30', '2024-09-30', 'Tiruchirappalli'),
(407, 307, 207, 107, 7, 'Wellness Plan', 1700000000.0, '2022-04-01', '2025-04-01', 'Thiruvananthapuram'),
(408, 308, 208, 108, 8, 'Valley Connect', 2000000000.0, '2020-07-01', '2024-07-01', 'Srinagar'),
(409, 309, 209, 109, 9, 'City Light', 2200000000.0, '2021-12-01', '2024-12-01', 'Ahmedabad'),
(410, 310, 210, 110, 10, 'Shore Support', 1600000000.0, '2022-06-01', '2025-06-01', 'Udupi'),
(411, 311, 211, 111, 11, 'Eco Coast', 1800000000.0, '2021-05-01', '2024-05-01', 'Uttara Kannada'),
(412, 312, 212, 112, 12, 'Vijaya Vision', 1850000000.0, '2023-01-10', '2026-01-10', 'Vijayapura'),
(413, 313, 213, 113, 13, 'Yad Pragati', 1650000000.0, '2021-08-01', '2024-08-01', 'Yadgir'),
(414, 314, 214, 114, 14, 'Ram Infra', 1700000000.0, '2020-03-15', '2023-03-15', 'Ramanagara'),
(415, 315, 215, 115, 15, 'Shiv Smart', 1900000000.0, '2022-09-01', '2025-09-01', 'Shivamogga'),
(416, 316, 216, 116, 16, 'Coffee Bloom', 1750000000.0, '2021-02-10', '2024-02-10', 'Chikkamagaluru'),
(417, 317, 217, 117, 17, 'Goa Guard', 1550000000.0, '2020-12-01', '2023-12-01', 'Panaji'),
(418, 318, 218, 118, 18, 'Jaipur Clean', 2100000000.0, '2023-04-01', '2026-04-01', 'Jaipur'),
(419, 319, 219, 119, 19, 'Shimla Save', 1650000000.0, '2022-10-10', '2025-10-10', 'Shimla'),
(420, 320, 220, 120, 20, 'Davan Lift', 1900000000.0, '2021-06-01', '2024-06-01', 'Davangere');

select * from Schemes;

 
 ALTER TABLE Districts RENAME COLUMN id to district_id;
 ALTER TABLE Districts RENAME COLUMN population to total_population;
 ALTER TABLE Districts RENAME COLUMN area to total_area;
 ALTER TABLE Districts RENAME COLUMN no_of_taluks to taluk;
 ALTER TABLE Blocks RENAME COLUMN block_officer to block_officer_name;
 ALTER TABLE Blocks RENAME COLUMN block_hq to block_headquarters;
ALTER TABLE Blocks RENAME COLUMN state to state_name;
ALTER TABLE Panchayat RENAME COLUMN origin_year to established_year;
ALTER TABLE Panchayat RENAME COLUMN district_name to district;
ALTER TABLE Panchayat RENAME COLUMN population to no_of_population;
ALTER TABLE Schemes RENAME COLUMN scheme_name to schemes_name;
ALTER TABLE Schemes RENAME COLUMN Budget to total_budget;


select * from Districts;

select * from Blocks;

select * from Panchayat;

select * from Villages;

select * from Schemes;

select * from  Districts where no_of_blocks=5;
select * from Districts where district_id not in(1,2,3,4);
select * from Districts where is_urban=1;
select * from Districts where district_id between 5 and 7;
select * from Districts where district_id between 5 and 7 or state='Tamil Nadu';
select * from Districts where district_id between 1 and 9 or state='Karnataka' not in(8,6);
select * from  Blocks where block_id=105;
select * from Blocks where block_headquarters between 'mysuru' and 'Banglore';
select * from Blocks where num_panchayats not between 5 and 4;
select * from Blocks where population in(4,8,9);
select * from Blocks where population not in(4,8,9);
select * from Blocks where state_name not in('Karntaka','Tamil Nadu');
select * from Blocks where district_id  not in(15,8,7,10);
select * from Blocks where num_panchayats=4 or state_name='Goa';
select * from Blocks where block_name='Devanahalli'  and state_name='Tamil Nadu';
select * from Panchayat where established_year=1978 or pincode=570023;
select * from Panchayat where district_id in(1,2,3,4);
select * from Panchayat where panchayat_id not in(203,209,205,207);
select * from Panchayat where panchayat_name between 'Derlakatte' and 'kaup';
select * from Panchayat where district not between 'Yadgir' and 'udupi';
select * from Panchayat where no_of_population=18000 or established_year=1962 and district_id not between 1 and 2;
select * from Villages where village_name not between 'kotekar' and 'hoskote';
select * from Villages where state_name='karnataka' or has_school=1 and district_id=2;
select * from Villages where village_name between 'Ayanur' and 'Shorapur';
select * from Schemes where schemes_name='smart Rural' or block_id in(2,4,7,9);
select * from Schemes where block_id not in(105,108,109);
select * from Schemes where block_id in(105,108,109) or village_id not in(301,304,303);
select count(budget) as total_budget from Schemes;
select sum(budget) as total_budget from Schemes;
select max(num_panchayats)as total_panchayats from Blocks;
select min(has_school)as schools from Villages;
select avg(population) as total_population from Villages;
select count(no_of_villages) as total_villages from panchayat;
select max(area) as maximum_area from Blocks;
select min(population)as minimum_population from panchayat;
select avg(area) as average_area from blocks;
SELECT min(population)as minimum_population,block_name from Blocks group by Block_name having minimum_population;
SELECT sum(total_area)as area,state from Districts group by state having area;
SELECT avg(no_of_population)as population,panchayat_name from Panchayat group by panchayat_name having population;

select * from Districts where name
like '%a';

select * from Blocks where area
like '%5%';

select * from Villages where village_name
like '%s%o%e';

select * from Panchayat where no_of_population
like '%5%0';

select * from Schemes where schemes_name
like 's%t%l';


CREATE DATABASE BANKS;
USE BANKS;

create table bank_info(
bank_id int,bank_name varchar(50),
bank_location varchar(50),ifsc_code varchar(50),
no_of_cust int);

INSERT INTO bank_info VALUES
(1, 'State Bank of India', 'Bengaluru', 'SBIN0001234', 1200),
(2, 'Canara Bank', 'Mysuru', 'CNRB0005678', 950),
(3, 'Karnataka Bank', 'Mangaluru', 'KARB0000010', 800),
(4, 'Vijaya Bank', 'Hubballi', 'VIJB0007890', 700),
(5, 'Syndicate Bank', 'Udupi', 'SYNB0003456', 600),
(6, 'Corporation Bank', 'Dharwad', 'CORP0004321', 670),
(7, 'Bank of Baroda', 'Kalaburagi', 'BARB0KALABU', 850),
(8, 'HDFC Bank', 'Belagavi', 'HDFC0009876', 1300),
(9, 'ICICI Bank', 'Davangere', 'ICIC0001122', 1100),
(10, 'Union Bank of India', 'Shivamogga', 'UBIN0537203', 780),
(11, 'Punjab National Bank', 'Ballari', 'PUNB0612300', 560),
(12, 'Axis Bank', 'Tumakuru', 'UTIB0003344', 900),
(13, 'IDBI Bank', 'Raichur', 'IBKL0007896', 430),
(14, 'Indian Overseas Bank', 'Bidar', 'IOBA0000950', 500),
(15, 'South Indian Bank', 'Hassan', 'SIBL0000456', 390);

select * from bank_info;

Create table cust_info(
cust_id int,cust_name varchar(20),
acc_no bigint,bank_id int,balance bigint);

INSERT INTO cust_info VALUES
(201, 'Srujana', 387654321001, 1, 150000),
(202, 'Vojeshwini', 287654321002, 2, 220000),
(203, 'sneha', 487654321003, 3, 134000),
(204, 'agasthya', 987654321004, 4, 195000),
(205, 'aaryan', 587654321005, 5, 120000),
(206, 'vashishta', 987654321006, 6, 87000),
(207, 'kavya', 387654321007, 101, 99000),
(208, 'Sudeep B', 998654321008, 102, 205000),
(209, 'Lakshmi N', 967654321009, 103, 175000),
(210, 'Nikhil Patil', 987654321010, 104, 68000),
(211, 'Bhavana K', 587654321011, 105, 143000),
(212, 'Ramesh H', 987654321012, 106, 98000),
(214, 'Sharath T', 987654321014, 107, 153000),
(215, 'Anusha M', 187654321015, 108, 84000);

select * from cust_info;

Create table loan_info(
loan_id int,loan_name varchar(50),
bank_id int,cust_id int,loan_amount bigint);

INSERT INTO loan_info VALUES
(301, 'Home Loan', 1, 201, 1200000),
(302, 'Car Loan', 2, 202, 550000),
(303, 'Personal Loan', 3, 203, 300000),
(304, 'Education Loan', 4, 204, 450000),
(305, 'Business Loan', 5, 205, 800000),
(306, 'Gold Loan', 6, 206, 200000),
(307, 'Home Loan', 7, 207, 950000),
(308, 'Agriculture Loan', 8,208, 500000),
(309, 'Personal Loan', 9, 9, 275000),
(310, 'Car Loan', 10, 10, 400000),
(311, 'Home Renovation Loan', 11, 11, 350000),
(312, 'Education Loan', 12, 12, 300000),
(313, 'Business Loan', 13, 13, 420000),
(314, 'Gold Loan', 14, 14, 180000),
(315, 'Home Loan', 15, 15, 980000);

select * from loan_info;

create table insurance_info(
insurance_id int,insur_typr varchar(50),
policy_no int,bank_id int,cust_id int,loan_id int);


INSERT INTO insurance_info VALUES
(401, 'Life Insurance', 10001, 1, 201, 301),
(402, 'Car Insurance', 10002, 2, 202, 302),
(403, 'Health Insurance', 10003, 3, 203, 303),
(404, 'Education Insurance', 10004, 4, 204, 304),
(405, 'Business Insurance', 10005, 5, 205, 305),
(406, 'Gold Insurance', 10006, 6, 206, 306),
(407, 'Property Insurance', 10007, 7, 207, 307),
(408, 'Agriculture Insurance', 10008, 8, 208, 8),
(409, 'Personal Accident Insurance', 10009, 9, 9, 9),
(410, 'Vehicle Insurance', 10010, 10, 10, 10),
(411, 'Home Insurance', 10011, 11, 11, 11),
(412, 'Student Insurance', 10012, 12, 12, 12),
(413, 'Fire Insurance', 10013, 13, 13, 13),
(414, 'Jewellery Insurance', 10014, 14, 14, 14),
(415, 'Life Insurance', 10015, 15, 15, 15);

select * from insurance_info;


















