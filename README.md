# Online Food Odering system
Online food ordering management system is a full stack software used to ease the customer’s and restaurants’ management. Therefore we propose an Online Food Ordering Management System which can help the customers to get food delivered immediately and can be easily maintained by back-end developers. The proposed system has a user interface , which updates everything with all available options for the customers,  orders can be easily managed, status of delivery can be checked, vehicle available for use, products availability and employee information can all be handled under one umbrella. 

 It gives an effective way to order your food and almost within no time food will be delivered. Customer, he/she has to login  with password in their account in order to secure the information details and then they can select his/her favorite food items, place the order, also mention the quantity , also can view order details and  finally they can make the payment.The order confirmation is sent to the customer. When the order is placed, it gets stored in the database of the restaurants and  the staff can go through the orders and process it efficiently. The order is placed in the queue and updated in the database and returned in real time. This system assists the staff to go through the orders in real time and process it efficiently with minimal errors. 
 
## Requirement Specifications
### Software Requirements

Below mentioned are the modules we have used in our project Online food ordering system,
- 	HTML (Hypertext Markup Language) is the most basic building block of the Web. It defines the meaning and structure of web content. Each page contains a series of connections to other pages called hyperlinks. Every web page you see on the Internet is written using one version of HTML code or another.
- 	Cascading Style Sheets (CSS) is a simple mechanism for adding styles (e.g., fonts, colors, spacing) to Web documents. CSS defines how HTML elements are to be presented on screen, paper, or in other media. CSS saves a lot of work. It can control the layout of multiple web pages all at once.
-	PHP is a server-side scripting language. that is used to develop Static websites or Dynamic websites or Web applications. PHP stands for Hypertext Preprocessor, which earlier stood for Personal Home Pages. PHP scripts can only be interpreted on a server that has PHP installed.


As mentioned above HTML, CSS and PHP are the languages used in this project. As php is a server-side language it requires a server to be interpreted. Therefore, we have used a XAMPP server.

### Server Requirements:

●	XAMPP SERVER: Xampp Server refers to a software stack for the Microsoft Windows operating system, created by Romain Bourdon and consisting of the Apache web server, MySQL database and PHP programming language.


### Database language used:

●	MySQL: MySQL is a relational database management system based on SQL – Structured Query Language. The most common use for MySQL, however, is for the purpose of a web database. Standard SQL commands such as ADD, DROP, INSERT and UPDATE can be used in MYSQL.  

## ER Diagram:

![image](https://user-images.githubusercontent.com/58532842/123509543-b7602480-d693-11eb-9c3d-de8d06c6c78b.png)
<br>
Explanation: ER Diagram stands for Entity Relationship Diagram, also known as ERD is a diagram that displays the relationship of entity sets stored in a database.ER Diagrams contain different symbols that use rectangles to represent entities, ovals to define attributes and diamond shapes to represent relationships.The purpose of ER Diagram is to represent the entity framework infrastructure.
Following are the main components and its symbols in ER Diagrams:
 -	Rectangles: This Entity Relationship Diagram symbol represents entity types
 -	Ellipses : Symbol represent attributes
 -	Diamonds: This symbol represents relationship types
 -	Lines: It links attributes to entity types and entity types with other relationship types
 -	Primary key: attributes are underlined
 -	Double Ellipses: Represent multi-valued attributes
 
One Customer can place many orders and every order contains many or one product and thus many or one product is there in one or more orders. Many orders are delivered by one Employee and every employee uses one vehicle for delivery.

## Table Design with Integrity Constraints:

![image](https://user-images.githubusercontent.com/58532842/123509817-55a0ba00-d695-11eb-9cc1-93c4194db954.png)

- Customer(**cid**,name,email,pwd,phonenumber,address,img)
- Product: (**pid**,dinning_type,name,description,price,food image)
- Employee: (**eid**,f_name,l_name,phno,email,password,type,salary,job_title,today_date)
- Cart: (id,qty,**cid**,pid)
- Orders: (**oid**,qty,status,pid,cid)
- Vehicle: (**vid**,oid,status,regnumber)
