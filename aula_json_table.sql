#aula de 13/04/2025

create schema empresa;
use empresa;


select t1.parentesco, t1.sexo from tb_object_funcionario
cross join
json_table(
	json_extract(json, "$.Dependentes"), "$[*]"
    columns(PARENTESCO varchar(20) path "$.Parentesco",
		sexo varchar(2) path "$.Sexo")
) as t1;

/*
Crie uma tabela baseada no campo dependentes com uma coluna para sexo, parentesco, 
data de nascimento e nome do dependente (tp_object_funcionario). Alem disso, 
utilize o INNER JOIN para adicionar o nome do departamento (tb.departamento).
*/
/*
select t1.parentesco, t1.sexo, t1.data_nascimento, t1.nome_dependente from tb_object_funcionario
cross join
json_table(
	json_extract(json, "$.Dependentes"), "$[*]"
    columns(PARENTESCO varchar(20) path "$.Parentesco",
		sexo varchar(2) path "$.Sexo",
        data_nascimento varchar(50) path "$.Data_Nascimento",
        nome_dependente varchar(100) path "$.Nome_Dependente")
) as t1
inner join tb.departamento
on ;*/

select * from tb_departamento;