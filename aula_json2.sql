#Aula 8/abril/26

create database testjson;
use testjson;


/*
Estrututura de dados que armazena uma coleção sequencial e ordenada de elementos, geralmente do mesmo tipo e sob um único nome de uma variável
*/
# ["A", "B", "C"]
# $[0] = "A", $[1] = "B", $[2] = "C"

create table x(y json);

insert x values('["A", "B", "C"]');
select * from x;

#Limpa os registros da tabela
truncate x;

insert x values('["A", "B", "C"]');

#json_array_append
#Insere novos elementos dentro do array
update x set y = json_array_append(y, "$[0]", "A1");
update x set y = json_array_append(y, "$[1]", "B1");
update x set y = json_array_append(y, "$[2]", "C1");

select * from x;

truncate x;

insert into x values ('{"chave1":"valor1"}');
select * from x;

#json insert - adiciona novos elementos
update x set y = json_insert (y, "$.chave2", "valor2", "$.chave3", "valor3", "$.chave4", "valor4");

#json replace - substitui elementos
update x set y = json_replace (y, "$.chave2", "new_valor2");

#json remove - remove elementos
update x set y = json_remove (y, "$.chave1");









