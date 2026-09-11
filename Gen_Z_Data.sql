create database Gen_Z;

use Gen_Z;

select * from [dbo].[Cleaned_Data]

----1. What industries are Gen-Z most interested in pursuing careers in?

select
New_Aspirational_Job,
count(*) as Career_Persuing
from Cleaned_Data
group by New_Aspirational_Job
order by Career_Persuing desc;

----Discribe----It shows the most popular career choices based on the number of people pursuing each aspirational job.


---2. What are the top factors influencing Gen-Z’s career choices?

select
Career_Aspiration_Influencing_Factor,
count(*) as Career_Influencing_Factor
from Cleaned_Data
group by Career_Aspiration_Influencing_Factor
order by Career_Influencing_Factor desc;

-----Discribe--It identifies the main factors influencing people's career choices, ranked from most common to least common.

----3. What is the desired work environment for Gen-Z? (e.g., remote, hybrid, in-office)

select
Working_Environment,
count(*) as Desired_Work_Environment
from Cleaned_Data
group by Working_Environment
order by Desired_Work_Environment desc;

---Discribe---It identifies the most desired working environments among respondents, ranked from most to least preferred.


---4. How do financial goals, such as salary and benefits, impact career aspirations among Gen-Z?

---(i) Career aspiration vs starting salary range

select
[New_Aspirational_Job],
[Minimum_Starting_Monthly_Salary],
count(*) as Number_of_Responders
from Cleaned_Data
group by 
		[New_Aspirational_Job],
        [Minimum_Starting_Monthly_Salary]
order by 
		[New_Aspirational_Job],
        [Minimum_Starting_Monthly_Salary] desc;

---(ii) Career aspiration vs 3-year salary expectation

select
[New_Aspirational_Job],
[Minimum_Expected_Monthly_Salary_First_3_Years],
count(*) as Number_of_Responders
from Cleaned_Data
group by 
		[New_Aspirational_Job],
        [Minimum_Expected_Monthly_Salary_First_3_Years]
order by 
		[New_Aspirational_Job],
       [Minimum_Expected_Monthly_Salary_First_3_Years] desc;

---(iii) Career aspiration vs 5-year salary expectation

select
[New_Aspirational_Job],
[Minimum_Expected_Monthly_Salary_First_5_Years],
count(*) as Number_of_Responders
from Cleaned_Data
group by 
		[New_Aspirational_Job],
        [Minimum_Expected_Monthly_Salary_First_5_Years]
order by 
		[New_Aspirational_Job],
       [Minimum_Expected_Monthly_Salary_First_5_Years] desc;

----Discribe---The analysis examines the relationship between career aspirations and salary expectations across different career stages.


----What role do personal values and social impact play in career choices for Gen-Z?

---(i) Importance of Company Mission
 select
 [New_Aspirational_Job],
 [Company_Mission],
 count(*) as Number_of_Responders
 from Cleaned_Data
 group by 
		[New_Aspirational_Job],
        [Company_Mission]
order by 
		[New_Aspirational_Job],
        [Company_Mission] desc;

---(ii) Company Mission & Action Alignment
 select
 [New_Aspirational_Job],
 [Company_Mission_Action_Alignment],
 count(*) as Number_of_Responders
 from Cleaned_Data
 group by 
		[New_Aspirational_Job],
        [Company_Mission_Action_Alignment]
order by 
		[New_Aspirational_Job],
        [Company_Mission_Action_Alignment] desc;

---(iii) Importance of Social Impact

select
 [New_Aspirational_Job],
 [Social_Impact_Importance],
 count(*) as Number_of_Responders
 from Cleaned_Data
 group by 
		[New_Aspirational_Job],
        [Social_Impact_Importance]
order by 
		[New_Aspirational_Job],
        [Social_Impact_Importance] desc;

---(iv) What role do personal values and social impact play in career choices for Gen-Z?

select
 [New_Aspirational_Job],
 [Career_Aspiration_Influencing_Factor],
 count(*) as Number_of_Responders
 from Cleaned_Data
 group by 
		[New_Aspirational_Job],
        [Career_Aspiration_Influencing_Factor]
order by 
		[New_Aspirational_Job],
        [Career_Aspiration_Influencing_Factor] desc;

---Discribe---Gen-Z career choices are influenced not only by salary but also by personal values, company mission, and social impact.










