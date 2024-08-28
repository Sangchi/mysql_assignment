use views_assignment;

-- Creating Customers Table

create  table Customers (
    CustomerID int primary key,
    CustomerName varchar(100) not null,
    ContactNumber varchar(100),
    Email varchar(100)
);

-- Creating Products Table

create  table Products (
    ProductID int primary key,
    ProductName varchar(255) not null,
    Price decimal(10, 2) not null
);

-- Creating Orders Table

create table Orders (
    OrderID int primary key,
    OrderDate date not null,
    CustomerID int,
    ProductID int,
    Quantity int not null,
    foreign key (CustomerID) references Customers(CustomerID),
    foreign key(ProductID) references Products(ProductID)
);

-- insert data into tables

insert into Customers (CustomerID, CustomerName, ContactNumber, Email)
value
(1, 'John Doe', '1234567890', 'john@example.com'),
(2, 'Jane Smith', '0987654321', 'jane@example.com'),
(3, 'Mike Johnson', '5555555555', 'mike@example.com');


insert into Products (ProductID, ProductName, Price)
values
(1, 'Laptop', 800.00),
(2, 'Smartphone', 500.00),
(3, 'Tablet', 300.00);


insert into Orders (OrderID, OrderDate, CustomerID, ProductID, Quantity)
value
(1, '2024-08-01', 1, 1, 2),
(2, '2024-08-02', 2, 2, 1),
(3, '2024-08-03', 1, 3, 3),
(4, '2024-08-04', 3, 1, 1);

-- show tables data
select * from Customers;
select * from Products;
select * from Orders;

-- apply complex view on above tables

create  view CustomerOrderSummary as
select
    C.CustomerID,
    C.CustomerName,
    count(O.OrderID) AS TotalOrders,
    sum(O.Quantity) AS TotalQuantity,
    sum(O.Quantity * P.Price) AS TotalAmountSpent
from 
    Customers C
join
    Orders O on C.CustomerID = O.CustomerID
join 
    Products P on O.ProductID = P.ProductID
group by 
    C.CustomerID, C.CustomerName;
    
    
--  show complex view
select * from CustomerOrderSummary;
    
    