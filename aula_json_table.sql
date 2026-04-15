#aula de 13/04/2025

create schema empresa;
use empresa;


select t1.parentesco, t1.sexo, t1.data_nascimento, t1.nome_dependente, tdp.nome_departamento
from tb_object_funcionario
cross join
json_table(
	json_extract(json, "$.Dependentes"), "$[*]"
    columns(PARENTESCO varchar(20) path "$.Parentesco",
		sexo varchar(2) path "$.Sexo",
        data_nascimento varchar(50) path "$.Data_Nascimento",
        nome_dependente varchar(100) path "$.Nome_Dependente")
) as t1
inner join tb_departamento as tdp
on tdp.NUMERO_DEPARTAMENTO = json_unquote(json -> "$.Numero_Departamento");

select * from tb_departamento;
