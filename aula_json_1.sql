#Aula 30/mar/2026

create table x (y json);
insert into x values ('{"nome": "Roberto", "telefone":"1234-5678"}');
insert into x values ('{"nome": "Maria"}');
insert into x values ('{"nome": "Alberto", "endereco":"Rua x numero Y"}');
insert into x values ('{"nome": "Leticia", "endereco":"Rua x numero Y", "telefone":"1234-5678"}');
select y from x;

/*seleciona na coluna 'y' onde contem 'um' 'nome' na tabela 'x' no json*/
select json_contains_path(y,"ONE", '$.nome') from x;
select json_contains_path(y,"ONE", '$.endereco') from x;
select json_contains_path(y,"ONE", '$.nome', '$.endereco') from x;
select json_contains_path(y,"ALL", '$.nome', '$.endereco') from x;

select json_contains(y, '"1234-5678"', "$.telefone") from x;

select * from x
where json_contains(y, '"1234-5678"', "$.telefone") = 1;


/*Retorna o caminho da consulta*/
select json_search(y, "ALL", "1234-5678") from x;

select json_search(y, "ONE", "Alberto") from x;

#Seleciona os paises que são repúblicas
select doc -> "$.Name" as Nome, doc -> "$.government.GovernmentForm" as "Forma de Governo"
from countryinfo
where doc -> "$.government.GovernmentForm" like '%Republic%';

select doc -> "$.demographics.LifeExpectancy" from countryinfo;

select * from countryinfo;


#Seleciona os paises da Oceania
SELECT doc -> '$.Name' AS Pais
FROM countryinfo
WHERE doc -> '$.geography.Continent' like '%Oceania%';


