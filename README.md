# Pewlett-Hackard-Analysis
Project Overview

The purpose of this analysis is to use the learnt SQL techniques to help Pewlett-Hackard determine the number of retiring employees per title and also determine the employees who are eligible to participate in the mentorship program.



Takeaways from deliverables

- In this first deliverable, the number retiring employees by job titles was determined. From the image below, it is clear that the Senior Engineering role is going to loose 29414 employees as they are nearing retirement and so effort has to be put in by PH to fill these roles

- The positions with the title, Manager have only 2 people retiring and so there should be no rush in actively recruiting for this position. 

- There are 1,549 employees who are eligible for mentorship in the given data for PH based on the provided criteria.
![image](https://user-images.githubusercontent.com/85662949/128120660-3e9e86ee-edc6-4388-b55e-71baff6b5fb8.png)

- There are about 90,000 employees who are looking to retire soon and so there will adequate mentorship for the 1,549 employees who require mentorship.



Summary 

The summary addresses the two questions and contains two additional queries or tables that may provide more insight.

- There are 90,398 positions that will need to be filled in the time when the positions with employees about to retire will be vacant. 


- Yes, there are enough retirement ready employees in the departments to mentor the next generation staff. I created a new table called mentor_titles which looks at the titles of mentor-eligible employees shown below.
![image](https://user-images.githubusercontent.com/85662949/128119558-d8c5d50c-ef40-43e1-8289-d4d6ca5ffb9f.png)

Comparing this table to the retirement titles employee table, it is clear that there are enough staff to provide mentorship to the different job titles in the different departments. 

![image](https://user-images.githubusercontent.com/85662949/128119756-e608714c-422f-476e-a88f-31f2a759ecf5.png)

- To further look into the job titles by departments, 2 additional tables showing the different employees by reitirng departments and mentor eligible employees by departments will give a better understanding. The image below shows the mentor eligible employees by department numbers and the query written to call that.
![image](https://user-images.githubusercontent.com/85662949/128120549-2ca4b2a1-f348-4b78-b733-aecfb29c81b8.png) 

Below shows the retiring employees by department and the query written to get the table. Comparing the previous table and the one below, it can be seen that there are again enough retiring employees to mentor the mentor-eligible employees.
![image](https://user-images.githubusercontent.com/85662949/128263624-1e65f542-5397-4712-ab6a-4a0fe832b628.png)


