## H-1B_Applications_Analysis
The <b>H-1B</b> is a non-immigrant visa in the United States which allows U.S. employers to temporarily employ foreign workers in
specialty occupations.
For a foreign national to apply for H1B visa, an US employer must offer a job and petition for </b>H1-B</b> visa with the US immigration
department.This is the most common visa status applied for and held by international students once they complete college/ higher education
(Masters, Ph.D.) and work in a full-time position.

The goal of the project is get insights into <b>H-1B</b> applications over the year 2011 to 2016 by performing analysis using different technologies like `MapReduce`,`Hive`,`Pig`.

#### Sample Data

""|"CASE_STATUS"|"EMPLOYER_NAME"|"SOC_NAME"|"JOB_TITLE"|"FULL_TIME_POSITION"|"PREVAILING_WAGE"|"YEAR"|"WORKSITE"|"lon"|"lat"
|----|:--------:|:--------------:|:--------:|:--------:|:------------------:|:---------------:|:----:|:---------:|:---:|:--|
"1"|"CERTIFIED-WITHDRAWN"|"UNIVERSITY OF MICHIGAN"|"BIOCHEMISTS AND BIOPHYSICISTS"|"POSTDOCTORAL RESEARCH FELLOW"|"N"|36067|2016|"ANN ARBOR, MICHIGAN"|-83.7430378|42.2808256
"2"|"CERTIFIED-WITHDRAWN"|"GOODMAN NETWORKS, INC."|"CHIEF EXECUTIVES"|"CHIEF OPERATING OFFICER"|"Y"|242674|2016|"PLANO| TEXAS"|-96.6988856|33.0198431
"3"|"CERTIFIED-WITHDRAWN"|"PORTS AMERICA GROUP, INC."|"CHIEF EXECUTIVES"|"CHIEF PROCESS OFFICER"|"Y"|193066|2016|"JERSEY CITY, NEW JERSEY"|-74.0776417|40.7281575
"4"|"CERTIFIED-WITHDRAWN"|"GATES CORPORATION, A WHOLLY-OWNED SUBSIDIARY OF TOMKINS PLC"|"CHIEF EXECUTIVES"|"REGIONAL PRESIDEN, AMERICAS"|"Y"|220314|2016|"DENVER, COLORADO"|-104.990251|39.7392358
"5"|"WITHDRAWN"|"PEABODY INVESTMENTS CORP."|"CHIEF EXECUTIVES"|"PRESIDENT MONGOLIA AND INDIA"|"Y"|157518.4|2016|"ST. LOUIS, MISSOURI"|-90.1994042|38.6270025

###### Complete data set can be found [here](https://drive.google.com/file/d/0B-UpSievtnlkellOUURTT0xpMmM/view?usp= "H1-B data set") 


Dataset column description.

1. <b>CASE_STATUS:</b>Status associated with the last significant event or decision. Valid values include. 
    * "Certified": Employer filed the LCA, which was approved by DOL
    * "Certified-Withdrawn": LCA was approved but later withdrawn by employer
    * "Denied": LCA was denied by DOL
    * "Withdrawn": LCA was withdrawn by employer before 
2. <b>EMPLOYER_NAME</b>: Name of employer submitting labour condition application.
3. <b>SOC_NAME</b>: the Occupational name associated with the SOC_CODE. SOC_CODE is the occupational code associated with the job being requested for temporary labour condition, as classified by the Standard Occupational Classification (SOC) System.
4. <b>JOB_TITLE</b>: Title of the job.FULL_TIME_POSITION:
    * <b>Y</b> = Full Time Position.
    * <b>N</b> = Part Time Position.
5. <b>PREVAILING_WAGE:</b> Prevailing Wage for the job being requested for temporary labour condition. The wage is listed at annual scale in USD. The prevailing wage for a job position is defined as the average wage paid to similarly employed workers in the requested occupation in the area of intended employment. The prevailing wage is based on the employer’s minimum requirements for the position.
6. <b>YEAR:</b> Year in which the H1B visa petition was filed.
7. <b>WORKSITE:</b> City and State information of the foreign worker’s intended area of employment.
8. <b>lon:</b> longitude of the Worksite.
9. <b>lat:</b> latitude of the Worksite.


#### Questions that were answered after performing analysis.
~~~
1) Is the number of petitions with Data Engineer job title increasing over time?
2) Find top 5 job titles who are having highest growth in applications.
3) Which part of the US has the most Data Engineer jobs for each year?
4) Find top 5 locations in the US who have got certified visa for each year.
5) Which industry has the most number of Data Scientist positions?
6) Which top 5 employers file the most petitions each year?
7) Find the most popular top 10 job positions for H1B visa applications for each year?
8) Find the percentage and the count of each case status on total applications for each year. Create a graph depicting the pattern of all the cases over the period of time.
9) Create a bar graph to depict the number of applications for each year
10) Find the average Prevailing Wage for each Job for each Year (take part time and full time separate).Arrange the output in descending order.
11) Which are  employers along with the number of petitions who have the success rate more than 70% in petitions and total petitions filed more than 1000?
12) Which are the  job positions along with the number of petitions which have the success rate more than 70% in petitions and total petitions filed more than 1000?
    - Export result for question no. 12 to MySql database.  
~~~

##### Analysis were performed using [MapReduce](MapReduce),[Hive](Hive),[Pig](Pig).


