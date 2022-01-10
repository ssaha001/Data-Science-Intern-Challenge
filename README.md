# Data-Science-Intern-Challenge
This repository contains answers of the Shopify Summer 2022 Data Science Intern Challenge.
## Summer 2022 Data Science Intern Challenge 

Please complete the following questions, and provide your thought process/work. You can attach your work in a text file, link, etc. on the application page. Please ensure answers are easily visible for reviewers!


Question 1: Given some sample data, write a program to answer the following: [click here](https://github.com/ssaha001/Data-Science-Intern-Challenge/blob/main/data/2019%20Winter%20Data%20Science%20Intern%20Challenge%20Data%20Set%20-%20Sheet1.csv) to access the required data set

On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 

1. Think about what could be going wrong with our calculation. Think about a better way to evaluate this data. 
Answer:
The wrong average was calculated using this method: total of all order values/ number of order_values.
This is wrong because the formula didn't consider the fact that an order can have multiple items.
I have tried to explain the problem with code. [Click Here](https://github.com/ssaha001/Data-Science-Intern-Challenge/blob/main/data-science-intern-question1.ipynb) to view it.
2. What metric would you report for this dataset?
Answer:
The correct approach would be to divide the total of all order_values by the sum of total_items.
By following this method, we would consider the fact that an order can have multiple items.
3. What is its value?
Answer:
$357.92

Question 2: For this question you’ll need to use SQL. [Follow this link](https://www.w3schools.com/SQL/TRYSQL.ASP?FILENAME=TRYSQL_SELECT_ALL) to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.

1. How many orders were shipped by Speedy Express in total? 
Answer: 54
2. What is the last name of the employee with the most orders?
Answer: Peacock
3. What product was ordered the most by customers in Germany?
Answer: Boston Crab Meat. This product was ordered 160 times in total.

[Click here](https://github.com/ssaha001/Data-Science-Intern-Challenge/blob/main/data_science_intern.sql) to check the sql queries.

