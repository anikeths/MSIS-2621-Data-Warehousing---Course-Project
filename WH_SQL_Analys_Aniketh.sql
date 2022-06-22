select sum(PRODUCTSTANDARDPRICE*ORDEREDQUANTITY), PRODUCTDESCRIPTION from pvfc.order_t o, pvfc.orderline_t y, pvfc.product_t p, pvfc.customer_t c
where o.ORDERID = y.ORDERID
and y.PRODUCTID = p.PRODUCTID
and o.CUSTOMERID = c.customerid
group by PRODUCTDESCRIPTION;

select sum(PRODUCTSTANDARDPRICE*ORDEREDQUANTITY) from pvfc.order_t o, pvfc.orderline_t y, pvfc.product_t p, pvfc.customer_t c
where o.ORDERID = y.ORDERID
and y.PRODUCTID = p.PRODUCTID
and o.CUSTOMERID = c.customerid
group by PRODUCTDESCRIPTION;

select sum(PRODUCTSTANDARDPRICE*ORDEREDQUANTITY) from pvfc.order_t o, pvfc.orderline_t y, pvfc.product_t p, pvfc.customer_t c
where o.ORDERID = y.ORDERID
and y.PRODUCTID = p.PRODUCTID
and o.CUSTOMERID = c.customerid;

select sum(PRODUCTSTANDARDPRICE*ORDEREDQUANTITY) from pvfc_ods_pentaho.order_ods;

select sum(sales) from pvfc_wh_pentaho.fact_sales;

select sum(sales), productdescription from pvfc_wh_pentaho.fact_sales f, pvfc_wh_pentaho.dim_product p
where f.product_key = p.product_key
group by productdescription;


#1# 1. Total Sales by Product
select sum(sales), productdescription, pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p
where f.product_key = p.product_key
group by productdescription;

# 2. Total Sales by Product, Campaign
select sum(sales), productdescription, campaign from  pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p,
pvfc_wh_tableau.dim_campaigns c
where f.product_key = p.product_key and f.campaign_key=c.campaign_key
group by productdescription,campaign;


# 3. Total Sales by Product, Campaign, Customer
select sum(sales), productdescription, campaign,customername from  pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p,
pvfc_wh_tableau.dim_campaigns c , pvfc_wh_tableau.dim_customer cust
where f.product_key = p.product_key and f.campaign_key=c.campaign_key and f.customer_key = cust.customer_key
group by productdescription,campaign,customername;


# 3. Total Sales by Product, Campaign, Store
select sum(sales), productdescription, campaign,store_name from  pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p,
pvfc_wh_tableau.dim_campaigns c , pvfc_wh_tableau.dim_store s
where f.product_key = p.product_key and f.campaign_key=c.campaign_key and f.store_key = s.store_key
group by productdescription,campaign,store_name;


# 5. Total Sales by Product, Store
select sum(sales), productdescription,store_name from  pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p,
 pvfc_wh_tableau.dim_store s
where f.store_key = s.store_key and f.PRODUCT_KEY=p.PRODUCT_KEY
group by productdescription,store_name;

#6. Total Sales by Product, Store, Year
select sum(sales), productdescription,store_name,year_number from  pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p,
 pvfc_wh_tableau.dim_store s,pvfc_wh_tableau.dimension_day2 d
where f.store_key = s.store_key and f.PRODUCT_KEY=p.PRODUCT_KEY and f.date_sk = d.DATE_SK
group by productdescription,store_name, year_number;

# 7. Total Sales by Product, Store, Month, Year
select sum(sales), productdescription,store_name,MONTH_NAME,year_number from  pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p,
 pvfc_wh_tableau.dim_store s,pvfc_wh_tableau.dimension_day2 d
where f.store_key = s.store_key and f.PRODUCT_KEY=p.PRODUCT_KEY and f.date_sk = d.DATE_SK
group by productdescription,store_name,MONTH_NAME, year_number;

# 8. Avg Sales by Product
select avg(ORDEREDQUANTITY*productstandardprice) as AvgSales, productdescription from 
pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p
where f.product_key= p.product_key
group by productdescription;


# 9. Avg Sales by ProductFinish
select avg(sales), productfinish from pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_product p
where f.product_key= p.product_key
group by productfinish;


# 10. Avg Sales by Customer Country
select avg(sales), customercountry from pvfc_wh_tableau.fact_sales f, pvfc_wh_tableau.dim_customer c
where f.customer_key= p.customer_key
group by customercountry;



