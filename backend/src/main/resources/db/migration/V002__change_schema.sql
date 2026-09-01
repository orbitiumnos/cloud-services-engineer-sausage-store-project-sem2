alter table orders add column date_created date default current_date;
alter table orders add primary key (id);

alter table product add column price double precision;
alter table product add primary key (id);

alter table order_product add constraint fk_order_product_orders foreign key (order_id) references orders(id);
alter table order_product add constraint fk_order_product_product foreign key (product_id) references product(id);

drop table orders_date;
drop table product_info;