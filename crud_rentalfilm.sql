use rentalfilm;


# membuat table customers
CREATE TABLE customers (
    ID int AUTO_INCREMENT PRIMARY KEY,
    NAMAID varchar(255) NOT NULL,
    NAMALENGKAP varchar(255) NOT NULL,
    EMAIL varchar(255) NOT NULL,
    UNIQUE (NAMAID, EMAIL)
);

# menampilkan table
show tables;

# Untuk Mengetahui detail dari tabel 
describe customers;

# memasukkan data
insert into customers (namaid, namalengkap, email)
values ('Astrid', 'Astrid Gruber', 'astrid.gruber@apple.at')
;

# memasukkan banyak data
insert into customers (namaid, namalengkap, email)
values 
('Fernanda','Fernanda Ramos', 'fernandaramos4@uol.com.br'),
('Mark', 'Mark Philips', 'mphilips12@shaw.ca'),
('Jennifer', 'Jennifer Peterson', 'jenniferp@rogers.ca');

# mengubah data
update customers
set namalengkap = 'Jennifer Lauren',
	email = 'jenniferl@rogers.ca'
where id = 4;

# menghapus data
delete from customers
where id = 4;

select * from customers;