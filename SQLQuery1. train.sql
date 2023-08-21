select * from train
select id,gender,class,Type_of_Travel from train 
where not  Gender='female' and
Class='eco' and Type_of_Travel='personal travel'

select  avg(age) as avg_age, gender from train
group by Gender
 
select count(gender)  from train 
where gender = 'male'

select * from (select gender , 
count(case when  gender = 'male' then 1 end)  as male , 
count(case when gender = 'female' then 1 end) as female
from train
group by Gender) a
order by male ,female

select id,gender,Age,satisfaction FROM train
WHERE satisfaction = 'neutral or dissatisfied'

SELECT COUNT ( SATISFACTION) as unsatisfied ,
gender from train 
where satisfaction = 'neutral or dissatisfied'
and Gender= 'male'
group by Gender

SELECT COUNT ( SATISFACTION) as unsatisfied ,
gender from train 
where satisfaction = 'neutral or dissatisfied'
and Gender= 'female'
group by Gender

select max (flight_distance) max_distancec from train

select  max(Flight_Distance) as max_distance ,Gender 
from train
where Gender= 'male'
group by Gender


	with df as (select id,
	Gender,
	age,
	case when age between 60 and 90 then 'old age'
	 when age between 18 and 59 then 'Adult age'
	 when age between 1 and 17 then 'Child age'
	 end as age_category

	from train) 

	select age_category,count(*) bucket_count1 from df
	group by age_category
