create table precios
(
    id tinyint unsigned auto_increment primary key not null,
    aproximado float not null,
    exacto decimal(9,2) not null
);

insert into precios
    values
        ( DEFAULT, 30, 41.6 ),
        ( DEFAULT, 41.6, 99.9 ),
        ( DEFAULT, 99.9, 70 ),
        ( DEFAULT, 70, 12.4 ),
        ( DEFAULT, 12.4, 30 );

SELECT SUM(aproximado), SUM(exacto)
    FROM precios;