
select * from x;

#json merge_patch - mesclar elementos -atualizando
#manteve a chave2, criou a chave1, e removeu as anteriores que não foram informadas
update x set y = json_merge_patch('{"chave2":"new_valor2"}','{"chave1":"valor1"}');

#Preserva a chave criando uma lista(array) e removeu as anteriores que não foram informadas
update x set y = json_merge_preserve('{"chave1":"valor"}', '{"chave1": "valor1.2"}');


#Medir a profundidade de um documento/nivel
#nivel 1
select json_depth('123');

#nivel 2
select json_depth('{"nome":"Ainstein"}');

#nivel 3
select json_depth('{"usuario": {"id":1}}');

#Contar o numero de elementos/chaves
#contém 2
select json_length('{"nome":"Ainstein", "idade": "undead"}');


#Indentifica o tipo de dado armazenado - objeto, array, string...
#objeto
select json_type('{"nome": "alguem"}');
#string
select json_type('"Olá"');

#Verifica se o json é valido ou não
#retornão 1
select json_valid('{"nome":"eu"}');
select json_valid('[1,2,3');

#retornão 0
select json_valid('texto puro sem aspas duplas');
select json_valid('{"nome":"eu}');
