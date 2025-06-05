DROP table if exists family_fio cascade;
DROP table if exists professii cascade;
DROP table if exists family_ex cascade;
DROP table if exists categ cascade;


create table family_fio(
family_fio_id serial primary key,
family_fio_name TEXT,
family_fio_date DATE
);
create table professii(
professii_id serial primary key,
professii_name_id INT,
foreign key (professii_name_id) references family_fio(family_fio_id),
professii_prof TEXT,
professii_org TEXT,
professii_oklad INT,
professii_date DATE
);



create table categ(
categ_id serial primary key,
categ_prod_name TEXT,
categ_categoria TEXT,
categ_cena INT
);

create table family_ex(
family_ex_id serial primary key,
family_ex_date DATE,
family_ex_name_id INT,
foreign key (family_ex_name_id) references family_fio(family_fio_id),
family_ex_names_id int,
foreign key (family_ex_name_id) references categ(categ_id),
family_ex_col INT
);


insert into family_fio(family_fio_name, family_fio_date)values 
('Иванов Иван Петрович','15-06-1985'),
('Иванова Мария Сергеевна','20-09-1987'),
('Иванов Алексей Иванович','05-02-2010'),
('Иванова Елена Викторовна','10-03-1959'),
('Петров Сергей Александрович','05-12-1982');

Insert into professii(professii_name_id, professii_prof, professii_org, professii_oklad, professii_date)values
(1,'Инженер','"ООО ""ТехноСервис"""',85000,'01-03-2015'),
(2,'Бухгалтер','"АО ""ФинансГрупп"""',75000,'15-04-2012'),
(4,'Репетитор','Частная практика',15000,'10-01-2020'),
(5,'Таксист','Индивидуальная работа',30000,'01-09-2020');

insert into categ(categ_prod_name, categ_categoria, categ_cena)values 
('Хлеб','Продукты',50),
('Молоко','Продукты',80),
('Бензин','Транспорт',80),
('Билет в кино','Развлечения',300),
('Зимнее пальто','Одежда',8500),
('Учебники','Образование',400),
('Лекарства','Здоровье',25000),
('Погашение кредита','Кредиты',89000),
('Смартфон в подарок','Подарки',99900);

insert into family_ex(family_ex_date, family_ex_name_id, family_ex_names_id, family_ex_col)values
('01-02-2025',1,2,3),
('01-02-2025',1,2,1),
('06-02-2025',2,5,1),
('09-02-2025',5,3,30),
('12-02-2025',4,7,5),
('18-02-2025',1,8,1),
('22-02-2025',2,9,1),
('22-02-2025',3,4,1);

