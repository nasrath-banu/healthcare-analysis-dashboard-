
create database healthcare;

use healthcare;

select * from patients;

-- total patients and total billing amount

select Count(*) as Total_patients , sum(Billing_Amount) as total_billing_amount from patients;

select Medical_Condition, sum(Billing_Amount) from patients group by Medical_Condition order by sum(Billing_Amount) desc limit 1;

select Medication, count(*) from patients group by Medication order by count(*) desc limit 1;

select Insurance_Provider , sum(Billing_Amount) from patients group by Insurance_Provider order by sum(Billing_Amount) desc;

select round(avg(Days_Stayed),2) from patients ;



select Age_Group, Admission_Type ,count(*) from patients where Admission_Type="Emergency" group by Age_Group order by count(*) desc;

select Test_Results, avg(Billing_Amount) from patients group by Test_Results order by avg(Billing_Amount) desc;

select Hospital, sum(billing_Amount) from patients group by Hospital order by sum(billing_Amount) desc limit 3;

select Medical_Condition ,Gender, count(*) from patients group by Medical_Condition,Gender;

select Name, Days_Stayed from patients order by Days_Stayed desc limit 5;


select Medical_Condition, round(avg(Billing_Amount),2) as Avg_billing_amount, round(avg(Days_Stayed),2) as avg_stay from patients
group by Medical_Condition order by Avg_billing_amount, avg_stay desc; 

select Month,count(*) from patients group by Month order by count(*) desc;