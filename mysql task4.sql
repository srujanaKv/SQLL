CREATE DATABASE bmtc_info;
USE bmtc_info;

CREATE TABLE bmtc_info (
    bus_id INT,bus_number INT,
    driver_name VARCHAR(20),conductor_name VARCHAR(20),
     source VARCHAR(20),destination VARCHAR(20),
     bus_number_plate VARCHAR(20), route_number INT,
      total_seats INT, arrival_time TIME);
      
     
      SELECT * FROM bmtc_info;
        INSERT INTO bmtc_info VALUES(1,15,"ganesh","ram","kengeri","majestic",9609,19,24,9);
      INSERT INTO bmtc_info VALUES(2,20,"karthik","kumar","btm","majestic",6785,20,25,08);
	 INSERT INTO bmtc_info VALUES(3,25,"keerthan","praveen","challagatta","kengeri",6342,26,28,07);
     INSERT INTO bmtc_info VALUES(4,30,"nanjappa","ramayya","electronic city","peenya",7364,27,21,10);
	 INSERT INTO bmtc_info VALUES(5,35,"shiva","prajesh","rajajinagar","peenya",9873,28,23,11);
      INSERT INTO bmtc_info VALUES(6,40,"raju","padmarah","jaynagara","btm",8763,29,24,12);
	INSERT INTO bmtc_info VALUES(7,45,"pankaj","chandru","banashankari","jp nagar",9876,30,25,13);
	INSERT INTO bmtc_info VALUES(8,50,"ramesh","suresh","koramangala","btm",2579,31,26,14);
	INSERT INTO bmtc_info VALUES(9,55,"venkat","ramesh","malleshwaram","jaynagara",9754,32,19,07);
	INSERT INTO bmtc_info VALUES(10,60,"veeresh","shivraj","kr market","majestic",7689,33,20,06);
	INSERT INTO bmtc_info VALUES(11,65,"murali","maruthi","kr puram","dasarahalli",9087,34,22,05);
	INSERT INTO bmtc_info VALUES(12,70,"mahesh","raju","hebbal","ramohalli",9876,35,25,09);
	INSERT INTO bmtc_info VALUES(13,75,"gopal","kusum","silicon city","marathahalli",9654,36,24,10);
	INSERT INTO bmtc_info VALUES(14,80,"kushal","kumar","whitefield","manyatech",9875,37,18,11);
	INSERT INTO bmtc_info VALUES(15,85,"karun","kshem","hoskote","kr puram",5432,38,19,12);
	INSERT INTO bmtc_info VALUES(16,90,"sundara","chandru","jalahalli","majestic",9843,39,23,08);
	INSERT INTO bmtc_info VALUES(17,95,"sameer","karun","nelamangala","kunigal",9725,42,23,12);
	INSERT INTO bmtc_info VALUES(18,96,"abdul","mohan","yelahanka","koramangala",8765,32,13,02);
	INSERT INTO bmtc_info VALUES(19,87,"prasad","siddhu","majestic","btm",9865,34,19,10);
	INSERT INTO bmtc_info VALUES(20,99,"deepak","ranga","bannerghatta","chickpete",8764,35,24,11);

/*Aggregate functions*/

SELECT count(*) from bmtc_info;

SELECT count(bus_number) from bmtc_info;

SELECT sum(bus_number_plate) as sum_of_number_plate from bmtc_info;

SELECT MAX(bus_number) as max_of_bus_number from bmtc_info;

SELECT MIN(bus_number) as min_of_bus_number from bmtc_info;

SELECT AVG(bus_number_plate) as avg_of_bus_number_plate from bmtc_info;

/*group by*/
SELECT MAX(bus_number),bus_number from bmtc_info group by destination;

/*having */
SELECT min(total_seats)as min_of_total_seats,driver_name from bmtc_info group by driver_name having total_seats;

 

CREATE DATABASE tourist_details;
USE tourist_details;

CREATE TABLE Tourist_Details (
    tourist_id INT,
    full_name VARCHAR(20), date_of_birth DATE,
     travel_location VARCHAR(20),
    nationality VARCHAR(20),vehicle VARCHAR(20),
    contact_number VARCHAR(20),city VARCHAR(50),
    email VARCHAR(100),
    address TEXT);
    
    INSERT INTO Tourist_Details VALUES(1, 'Srujana', '2001-05-16', 'kerala', 'Indian', 'Car', '8088110428', 'Bangalore', 'srujana@example.com', '123, MG Road, Bangalore, Karnataka');
INSERT INTO Tourist_Details VALUES(2, 'vojeshwini', '2003-01-20', 'Jaipur', 'Indian', 'Bus', '9823456789', 'Delhi', 'vojeshwini@example.com', '456, Connaught Place, Delhi');
 INSERT INTO Tourist_Details VALUES(3, 'agasthya', '1992-12-10', 'Goa', 'Indian', 'Bike', '9867543210', 'Pune', 'agasthya@example.com', '789, FC Road, Pune');   
INSERT INTO Tourist_Details VALUES(4, 'aryan', '1995-06-25', 'Kerala', 'Indian', 'Car', '9854321987', 'Chennai', 'aryan@example.com', '101, Anna Nagar, Chennai');
INSERT INTO Tourist_Details VALUES(5, 'Vikram Singh', '1988-11-30', 'Manali', 'Indian', 'Train', '9845612378', 'Lucknow', 'vikram.singh@example.com', '202, Hazratganj, Lucknow');
INSERT INTO Tourist_Details VALUES(6, 'Meera Nair', '1991-04-18', 'Ooty', 'Indian', 'Car', '9832145678', 'Kochi', 'meera.nair@example.com', '303, MG Road, Kochi');
INSERT INTO Tourist_Details VALUES(7, 'Sushma', '1980-02-14', 'Kolkata', 'Indian', 'Bus', '9823146789', 'Nagpur', 'sushma@example.com', '404, Dharampeth, Nagpur');
INSERT INTO Tourist_Details VALUES(8, 'Anjali Kapoor', '1997-09-22', 'Shimla', 'Indian', 'Taxi', '9814325678', 'Mumbai', 'anjali.kapoor@example.com', '505, Bandra West, Mumbai');
INSERT INTO Tourist_Details VALUES(9, 'dhoni', '1994-07-12', 'Delhi', 'Indian', 'Metro', '9801234567', 'Ahmedabad', 'dhoni@example.com', '606, SG Highway, Ahmedabad');
INSERT INTO Tourist_Details VALUES(10, 'hruthik', '1989-03-05', 'Udaipur', 'Indian', 'Train', '9798765432', 'Indore', 'hruthik@example.com', '707, Vijay Nagar, Indore');
INSERT INTO Tourist_Details VALUES(11, 'Arun Das', '1993-10-28', 'Chennai', 'Indian', 'Bike', '9785643210', 'Bhubaneswar', 'arun.das@example.com', '808, Kharavel Nagar, Bhubaneswar');
INSERT INTO Tourist_Details VALUES(12, 'Pooja Reddy', '1996-01-15', 'Pondicherry', 'Indian', 'Car', '9774321987', 'Hyderabad', 'pooja.reddy@example.com', '909, Banjara Hills, Hyderabad');
INSERT INTO Tourist_Details VALUES(13, 'Nitin Chauhan', '1982-05-09', 'Darjeeling', 'Indian', 'Train', '9765432109', 'Bhopal', 'nitin.chauhan@example.com', '1010, MP Nagar, Bhopal');
INSERT INTO Tourist_Details VALUES(14, 'Roshni Mehta', '1998-12-19', 'Agra', 'Indian', 'Bus', '9756784321', 'Surat', 'roshni.mehta@example.com', '1111, Ring Road, Surat');
INSERT INTO Tourist_Details VALUES(15, 'Ramesh Gupta', '1979-08-07', 'Varanasi', 'Indian', 'Taxi', '9743215678', 'Patna', 'ramesh.gupta@example.com', '1212, Fraser Road, Patna');
INSERT INTO Tourist_Details VALUES(16, 'Swati Kulkarni', '1990-11-14', 'Mysore', 'Indian', 'Metro', '9732146789', 'Nashik', 'swati.kulkarni@example.com', '1313, College Road, Nashik');
INSERT INTO Tourist_Details VALUES(17, 'Aditya Bansal', '1987-06-30', 'Rishikesh', 'Indian', 'Bike', '9723654789', 'Chandigarh', 'aditya.bansal@example.com', '1414, Sector 17, Chandigarh');
INSERT INTO Tourist_Details VALUES(18, 'Neha', '1995-09-25', 'Hyderabad', 'Indian', 'Car', '9712345678', 'Jaipur', 'neha@example.com', '1515, C Scheme, Jaipur');
INSERT INTO Tourist_Details VALUES(19, 'Manoj', '1992-03-11', 'Bangalore', 'Indian', 'Bus', '9709876543', 'Varanasi', 'manoj@example.com', '1616, Lanka, Varanasi');
INSERT INTO Tourist_Details VALUES(20, 'ramya', '1993-07-21', 'Coorg', 'Indian', 'Train', '9698765432', 'Trivandrum', 'ramya@example.com', '1717, Kowdiar, Trivandrum');
 SELECT * FROM Tourist_Details;
 
 