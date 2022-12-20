/*Drop all tables*/
drop table customer_address;
drop table category;
drop table staff cascade constraints;
drop table order_product;
drop table orderx;
drop table product;
drop table customer;

/*Create Staff table*/
create table staff(
  staffid varchar2(6),
  staffname varchar2(40) not null,
  staffposition varchar2(20) check (staffposition in ('Admin','Clerk','Manager','Director')),
  staffmgrid varchar2(6),
  
  constraint staffpk primary key (staffid),
  constraint stafffk foreign key (staffmgrid) references staff(staffid) 
);

/*Create Customer table*/
create table customer(
 custid varchar2(6),
 custname varchar2(40) not null,
 custphone varchar2(10),
 custgender varchar2(1) check (custgender in ('L','P')),
 custstaffid varchar2(6),
 
 constraint custpk primary key (custid),
 constraint custfk foreign key (custstaffid) references staff(staffid)
);

/*Create Customer_address table*/
create table customer_address(
  caddrid varchar2(6),
  caddraddress varchar2(120) not null,
  
  constraint cust_addrpk primary key (caddrid, caddraddress),
  constraint cust_addrfk foreign key (caddrid) references customer(custid)
);

/*Create Orderx table*/
create table orderx(
  orderid varchar2(6),
  orderdate date,
  ordercustid varchar2(6),
  
  constraint orderpk primary key (orderid),
  constraint orderfk foreign key(ordercustid) references customer(custid)
);

/*Create Product table*/
create table product(
  productid varchar2(6),
  productname varchar2(40),
  productprice number,
 
  constraint productpk primary key (productid)
);

/*Create Order_Product table*/
create table order_product(
  oporderid varchar2(6),
  opproductid varchar2(6),
  opquantity number,
    
  constraint order_productpk primary key (oporderid,opproductid),
  constraint orderproductfk1 foreign key (oporderid) references orderx(orderid),
  constraint orderproductfk2 foreign key (opproductid) references product(productid)
);

/*Create Category table*/
create table category(
  categoryid varchar2(2),
  categorydesc varchar2(40),
  categoryminprice number,
  categorymaxprice number,
  
  constraint categorypk primary key (categoryid)
);


/*Insert Staff Info*/
insert into staff values('S00001','Idris Helmi','Director',null);
insert into staff values('S00002','Brandon Lee','Manager','S00001');
insert into staff values('S00003','Mardhiah Aziz','Clerk','S00002');
insert into staff values('S00004','Lee Soon Yee','Admin','S00002');
insert into staff values('S00005','Atiah Malek','Manager','S00001');
insert into staff values('S00006','Habibah Ali','Clerk','S00005');
insert into staff values('S00007','Taufek Hafizan','Clerk','S00005');
insert into staff values('S00008','Ho Yoon Mei','Clerk','S00005');
insert into staff values('S00009','Radha a/p Maniam','Admin','S00005');

/*Insert Customer Info*/
insert into customer values('C00001','Mizah Zairi','0191118888','P','S00002');
insert into customer values('C00002','Mabel Lim','0132227777','P','S00006');
insert into customer values('C00003','Linda Mohd','0174449999','P','S00006');
insert into customer values('C00004','Aizat Borhan','0121128778','L','S00007');
insert into customer values('C00005','Shamsul Baha','0141448877','L','S00008');
insert into customer values('C00006','Mohd Rizal Hamdy','0191238922','L','S00002');


/*Insert Customer Address Info*/
insert into customer_address values('C00001','No 4 Jalan Tempua 1/1 Jalan Kelang Lama');
insert into customer_address values('C00001','S12 Jalan 2/3 Serdang Raya, Seri Kembangan');
insert into customer_address values('C00001','Jabatan Sistem Maklumat, Fakulti Sains Komputer dan Teknologi Maklumat, UPM');
insert into customer_address values('C00002','Lot 1421 Jalan Perdana, Ampang');
insert into customer_address values('C00002','321 Jalan Perkasa, Putrajaya');
insert into customer_address values('C00003','No 33 Sg Besi Indah, Seri Kembangan');
insert into customer_address values('C00004','No 45 Jalan BS1/4 Bukit Serdang');
insert into customer_address values('C00004','Lot 1255 Kompleks Bunga Raya');
insert into customer_address values('C00004','No 2 Jalan Lebuh Sin Heng, Jalan Ipoh');
insert into customer_address values('C00004','Blok A, Fakulti Bahasa Moden, UPM');
insert into customer_address values('C00005','Lot 4321 Sg Sumun, Ipoh');
insert into customer_address values('C00005','No 55 Jalan Kucai 2/1, Seksyen 7, Shah Alam');
insert into customer_address values('C00006','No 7 Jalan SS1/5 Petaling Jaya');

/*Insert Orderx Info*/
insert into orderx values('T00001',to_date('2011-11-20','YYYY-MM-DD'),'C00001');
insert into orderx values('T00002',to_date('2011-11-21','YYYY-MM-DD'),'C00003');
insert into orderx values('T00003',to_date('2011-12-01','YYYY-MM-DD'),'C00004');
insert into orderx values('T00004',to_date('2011-12-23','YYYY-MM-DD'),'C00001');
insert into orderx values('T00005',to_date('2011-12-28','YYYY-MM-DD'),'C00005');
insert into orderx values('T00006',to_date('2011-12-31','YYYY-MM-DD'),'C00001');
insert into orderx values('T00007',to_date('2012-01-01','YYYY-MM-DD'),'C00006');
insert into orderx values('T00008',to_date('2012-02-03','YYYY-MM-DD'),'C00002');
insert into orderx values('T00009',to_date('2012-02-22','YYYY-MM-DD'),'C00006');
insert into orderx values('T00010',to_date('2012-03-13','YYYY-MM-DD'),'C00001');
insert into orderx values('T00011',to_date('2012-04-12','YYYY-MM-DD'),'C00005');
insert into orderx values('T00012',to_date('2012-05-09','YYYY-MM-DD'),'C00002');
insert into orderx values('T00013',to_date('2012-06-10','YYYY-MM-DD'),'C00003');
insert into orderx values('T00014',to_date('2012-07-19','YYYY-MM-DD'),'C00003');
insert into orderx values('T00015',to_date('2012-08-29','YYYY-MM-DD'),'C00004');


/*Insert Category Info*/
insert into category values('C1','Category A',1,50);
insert into category values('C2','Category B',51,100);
insert into category values('C3','Category C',101,150);
insert into category values('C4','Category D',151,200);
insert into category values('C5','Category E',201,250);
insert into category values('C6','Category F',251,300);


/*Insert Product Info*/
insert into product values('P00001','A4 Paper',25.00);
insert into product values('P00002','Parker Pen',156.00);
insert into product values('P00003','Pencel',5.00);
insert into product values('P00004','Artline',5.00);
insert into product values('P00005','Exercise Book',5.00);
insert into product values('P00006','Watercolor',120.00);
insert into product values('P00007','Drawing Block',50.00);
insert into product values('P00008','Brush',13.00);
insert into product values('P00009','Scientific Calculator',180.00);
insert into product values('P00010','Book A',210.00);
insert into product values('P00011','Book B',250.00);
insert into product values('P00012','Magazine A',55.00);
insert into product values('P00013','Magazine B',33.00);

/*Insert Order_Product Info*/
insert into order_product values('T00001','P00001',10);
insert into order_product values('T00001','P00002',20);
insert into order_product values('T00001','P00003',20);
insert into order_product values('T00002','P00002',10);
insert into order_product values('T00002','P00003',10);
insert into order_product values('T00002','P00005',10);
insert into order_product values('T00002','P00006',10);
insert into order_product values('T00003','P00009',100);
insert into order_product values('T00004','P00003',50);
insert into order_product values('T00004','P00004',50);
insert into order_product values('T00004','P00005',50);
insert into order_product values('T00005','P00003',5);
insert into order_product values('T00006','P00005',6);
insert into order_product values('T00006','P00009',10);
insert into order_product values('T00007','P00007',14);
insert into order_product values('T00008','P00007',15);
insert into order_product values('T00008','P00005',6);
insert into order_product values('T00008','P00010',11);
insert into order_product values('T00009','P00010',10);
insert into order_product values('T00009','P00011',16);
insert into order_product values('T00010','P00011',10);
insert into order_product values('T00011','P00002',5);
insert into order_product values('T00012','P00001',11);
insert into order_product values('T00013','P00003',12);
insert into order_product values('T00014','P00004',10);
insert into order_product values('T00015','P00005',10);
insert into order_product values('T00015','P00006',10);
insert into order_product values('T00015','P00007',15);

commit;

-- Q1
SELECT staffid "Staff-Id", 
       staffname "Staff-Name",
       staffposition "Role"
FROM staff
ORDER BY staffposition;

-- Q2
SELECT custname "Customer-Name",
       COUNT(*) "No of Address"
FROM customer_address 
JOIN customer
    ON caddrid = custid
GROUP BY custname
HAVING COUNT(*)>1
ORDER BY 2 DESC;

-- Q3
SELECT custid, 
      custname, 
      SUBSTR(custphone, 1, 3) || '-' || SUBSTR(custphone, 4) "PHONE NO.",
      CASE 
      WHEN SUBSTR(custphone, 1, 3) IN ('019', '013', '017')
        THEN 'Celcom My'
      WHEN SUBSTR(custphone, 1, 3) = '012'
        THEN 'Maxis My' 
      ELSE 'Digi My'
      END provider
FROM customer;

-- Q4
SELECT m.staffid "Manager Id",
       m.staffname "Manager Name",
       s.staffid "Staff Id",
       s.staffname "Staff Name"
FROM staff s
JOIN staff m
    ON s.staffmgrid = m.staffid
ORDER BY m.staffid;


-- Q5
select 
    oporderid "Order-Id", 
    orderdate "Order-Date",
    SUM(opquantity) "TotalQuantity",
    SUM(opquantity * productprice) "TotalPrice"
from order_product
join product on productid = opproductid
join orderx on orderid = oporderid
group by oporderid, orderdate
order by 1;



-- Q6
SELECT 
    staffid "Staff ID",
    COUNT(custstaffid) "Num Customers Attended"
FROM staff
LEFT JOIN customer
    ON staffid = custstaffid
GROUP BY staffid;

-- Q7
SELECT 
    '1-Total Customer = ' || (SELECT COUNT(custid) FROM customer),
    '2-Total Staff = ' || (SELECT COUNT(staffid) FROM staff),
    '3-Total Product Price = RM' || total
FROM 
(SELECT SUM(total_p) total
FROM (
    SELECT productid,
       SUM(opquantity * productprice) total_p
FROM order_product 
JOIN product
ON productid = opproductid
group BY productid
));

-- Q8
ALTER TABLE customer
ADD custlevel varchar2(6);

-- Q9
UPDATE customer
SET custlevel = 'New'
WHERE custid IN ('C00002', 'C00003', 'C00006');


-- Q10
DELETE FROM customer_address
WHERE caddrid = 'C00003';

-- Q11