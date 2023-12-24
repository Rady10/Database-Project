/*1- return top 10 most expensive products using offset */
select price
from production.products 
order by price DESC
offset 0 ROWS
Fetch next 10rows only;

/*2- return products between 1 and 20 */
select product_name
from production.products
where product_id between 1 and 20

/*3- return customer frist name , last name , address and email orderd by customer id */
select first_name , last_name ,address ,email
from sales.customers 
order by customer_id DESC

/*4- return all products but skip the first 15*/
select product_name
from production.products
order by product_id
offset 15 rows

/*5- return all products but skip frist 5 and select the next 20 products*/
select product_name
from production.products
order by product_id
offset 5 rows
fetch next 20 rows only

/*6- return top 5% most expensive products */
select top 5 percent  product_name , price 
from production.products
order by price DESC

/*7- return top 3 most cheapest products */
select top 3 product_name, price
from production.products
order by price 

/*8- return distinct phones in customer*/
select distinct phone from sales.customers

/*9- return employee that work in fisrt branch */
select first_name , last_name , employee_id 
from sales.employees 
where branch_id = 1

/*10- return products that price bigger than 50*/
select product_name , product_id , brand ,price
from production.products
where price > 50

/*11- return first name and last name of customer as FullName */
select first_name + ' '+ last_name as Fullname
from sales.customers

/*12- using join return product name , price and department name  */
select product_name , price , department_name 
from production.products inner join production.department 
on production.products.department_id = production.department.department_id

/*13- */
select product_name , price , brand
from production.products as p full outer join production.department as d 
on p.department_id = d.department_id

/*14- return number of customers in each branch */
select branch_id , count(employee_id) as employee_count
from sales.employees
group by branch_id
order by employee_count DESC

/*15- return number of department in each branch where deapartment bigger than 3 */
select branch_id , count(department_id) as department_count
from production.department
where department_id > 3 and department_id < 15
group by branch_id
order by department_count DESC

/*16- using inner join return first_name,last_name,email,phone,order_id,order_date,branch_id*/
select first_name,last_name,email,phone,order_id,order_date,employee_id
from sales.customers inner join sales.orders
on sales.customers.customer_id = sales.orders.customer_id

/*17-using full outer join return first_name,last_name,email,phone,order_id,order_date,branch_id*/
select sales.customers.customer_id,first_name,last_name,email,phone,order_id,order_date,employee_id
from sales.customers full outer join sales.orders
on sales.customers.customer_id = sales.orders.customer_id

/*18- using left outer join return first_name,last_name,email,phone,order_id,order_date,branch_id*/
select sales.customers.customer_id,first_name,last_name,email,phone,order_id,order_date,employee_id
from sales.customers left outer join sales.orders
on sales.customers.customer_id = sales.orders.customer_id

/*19- using right outer join return first_name,last_name,email,phone,order_id,order_date,branch_id*/
select sales.customers.customer_id,first_name,last_name,email,phone,order_id,order_date,employee_id
from sales.customers right outer join sales.orders
on sales.customers.customer_id = sales.orders.customer_id

/*20- using join return production.branches.branch_id,email,address,phone,production.department.department_id ,department_name,product_name,price,brand,supplier_id*/
select production.branches.branch_id,email,address,phone,production.department.department_id ,department_name,product_name,price,brand,supplier_id
from production.branches, production.department,production.products
where production.branches.branch_id = production.department.branch_id and production.department.department_id = production.products.department_id

/*21-return max price , min price , avrage , sum prices, number of products */
select max(price) as "max price" , min(price)as "min price" , avg(price) as "average price" , sum(price) as "total prices" ,count(*) as "number of products"
from production.products
 
/*22- return the last order , first order , number of orders*/
select max(order_date) , min(order_date) as "first order" , count(*) as "number of products"
from sales.orders

/*23- for each product_id return count(*),max(price),min(price),avg(price)*/
select product_id,count(*),max(price),min(price),avg(price)
from production.products
group by product_id;