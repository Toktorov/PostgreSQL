CREATE TABLE cars(
id bigint PRIMARY KEY GENERATED ALWAYS as IDENTITY,
brand varchar(50),
model varchar(50),
fuel varchar(50),
engine_volume integer,
transmission varchar(50),
year integer,
color varchar(50));

CREATE TABLE drivers(
id bigint PRIMARY KEY GENERATED ALWAYS as IDENTITY,
name varchar(50),
surname varchar(50),
date_of_birth date,
experience integer,
gender varchar(50),
id_car integer REFERENCES cars(id));

CREATE TABLE operator(
id bigint PRIMARY KEY GENERATED ALWAYS as IDENTITY,
name varchar(50),
surname varchar(50),
date_of_birth date,
experience integer,
gender varchar(50));

INSERT INTO cars(brand, model, fuel, engine_volume, transmission, year, color) 
VALUES ('BMW', 'x5', 'бензин', 18, 'автомат', 2005, 'белый'),
('Mersedes', 's350', 'дизель', 14, 'механика', 2007, 'черный'), 
('Toyota','Camry', 'электричество', 12, 'автомат', 2020, 'белый'),
('Lexus', 'IS300', 'бензин', 13, 'автомат', 2004, 'серебристый'),
('LADA', '2107', 'бензин', 6, 'механика', 2011, 'черный'),
('Daewoo', 'Tico', 'бензин', 5, 'механика', 2013, 'красный'),
('Daewoo', 'Matiz', 'бензин', 8, 'механика', 2007, 'желтый'),
('Shcoda', 'Octavia', 'бензин', 12, 'автомат', 2017, 'черный'),
('GENESIS', '400S', 'бензин', 14, 'автомат', 2020, 'черный'),
('Audi', 'S4', 'бензин', 11, 'механика', 2004, 'белый'),
('Toyota', 'Camry', 'бензин', 13, 'механика', 2013, 'белый');

INSERT INTO operator(name, surname, date_of_birth, experience, gender) 
VALUES ('Игорь', 'Максимов', '2000-01-01', 5, 'male'), 
('Андрей', 'Андреевич', '2000-01-01', 3, 'male'),
('Анна', 'Пугачева', '1999-03-04', 4, 'female'),
('Александр', 'Македонский', '1988-03-05', 3, 'male'),
('Саша', 'Пушкинов', '1977-02-14', 1, 'male'),
('Анастасия', 'Александровна', '1998-01-01', 6, 'female'),
('Ваня', 'Исктеров', '2000-03-01', 8, 'male'),
('Максим', 'Игорьев', '1977-12-01', 3, 'male'),
('Макен', 'Саламушев', '2000-01-01', 2, 'male'),
('Александра', 'Игорьевна', '1998-04-02', 5, 'female');

INSERT INTO drivers(name, surname, date_of_birth, experience, gender, id_car)
VALUES ('Канат', 'Баатыркулов', '1976-06-03', 13, 'male', 1),
('Канат', 'Баатыркулов', '1976-06-03', 13, 'male', 2),
('Эрлан', 'Эркинбаев', '1973-03-03', 14, 'male', 3),
('Бексултан', 'Ураимов', '1980-05-04', 5, 'male', 4),
('Нуртилек', 'Раимбердиев', '1999-04-01', 6, 'male', 5),
('Нурсултан', 'Сейитбеков', '1973-06-30', 3, 'male', 6),
('Элес', 'Аскарбеков', '1988-09-11', 6, 'male', 7),
('Мухаммадали', 'Кучкаров', '2000-06-03', 4, 'male', 8),
('Азиз', 'Бакиев', '1976-07-15', 3, 'male', 9),
('Артур', 'Бакиров', '1997-01-05', 4, 'male', 10),
('Кайрат', 'Канаткулов', '1998-03-04', 8, 'male', 11);

SELECT brand, model, year FROM cars WHERE brand = 'Toyota' AND model = 'Camry' ORDER BY year DESC;

SELECT DISTINCT name FROM operator ORDER BY name LIMIT 10;

UPDATE cars SET brand = 'Mersus' WHERE brand = 'Mersedes';

DELETE FROM drivers WHERE name = 'Азамат' AND surname = 'Азаматов';

SELECT COUNT(name)FROM drivers WHERE experience > 10 AND gender = 'female';

SELECT AVG(experience) FROM drivers WHERE date_of_birth > '1975-10-10';

SELECT name, surname, brand, model FROM drivers  JOIN cars ON cars.id = drivers.id_car;

SELECT COUNT(*) FROM cars ORDER BY count DESC;

SELECT COUNT(*) FROM cars JOIN drivers ON cars.id = drivers.id_car;



