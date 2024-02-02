# This project is to solve a mystery murder case. Below is the case study presented

**A crime has taken place and the detective needs your help. The detective gave you the crime scene report, but you somehow lost
it. You vaguely remember that the crime was a murder that occurred sometime on Jan.15, 2018 and that it took place in SQL City. Start by retrieving the corresponding crime scene report from the police department’s database.**


# Below are the steps involved in solving and identifying the murderer.

# Step 1
# Ran a query from crime scene table to get the witnesses.
select * from crime_scene_report 
where type = 'murder' 
and date = '20180115' 
and city = 'SQL City'
 

# Step 2. 
# Ran the query below to retrieve the details of the witnesses described in the result of the query in no. 1 above
select * from person where 
 address_number = (select max(address_number) 
		  from person where address_street_name like '%NorthWestern%') or
		  (name like '%Annabel%' and address_street_name like '%Franklin%')
 

# Step 3. 
# I ran the query below to get the interview details of the witnesses using the id retrieved from the query in no. 2 above
select * from interview 
where person_id in (14887, 16371)
 

# Step 4. 
# Using the details from the interview granted by the witnesses, I ran the query below to get the persons that match the decription given by the witnesses.

select * from get_fit_now_check_in where 	
membership_id in (select id from get_fit_now_member where membership_status = 'gold' and id like '%48Z%')

# I got two people that matched the description that was given as shown in the screenshot below, so I went further to check the driver's license  table for the car that has the description given by the first witness and I got 2 males and 1 female.
 
select * from drivers_license 
where plate_number like '%H42W%'

# The witnesses said a man committed the murder so that ruled out the female from the result above, leaving us with 2 males.
 

# Step 5. 
# I still went further to run this query to confirm the real murderer based on the witnesses' statement

select person.name, person.license_id, 
drivers_license.id, drivers_license.plate_number, 
person.id, t.id as membership_id, t.membership_status, t.name
from person 
inner join drivers_license on person.license_id = drivers_license.id
inner join get_fit_now_member t on person.id = t.person_id
where (drivers_license.plate_number like '%H42W%')
and person.id in (select person_id from get_fit_now_member 
		  where membership_status = 'gold' and id like '%48Z%')
and (t.membership_status = 'gold' and t.id like '%48Z%')

# and I got only one person which was "Jeremy Bowers, with driver's license - 423327, person id - 67318
 

# However, on the day of the murder there was a facebook event which he attended. I found that out by running the query below
select * from facebook_event_checkin where person_id  = 67318
 
# CONCLUSION
# The killer is 67318. The murderer was Jeremy Bower

# Kindly check the word document in this folder to see screenshots of the records returned by each query.
