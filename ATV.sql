#Usando o DISTINCT
select * from tabela_de_produtos;
select distinct embalagem, sabor from tabela_de_produtos;
select distinct embalagem, tamanho from tabela_de_produtos;
select distinct embalagem, tamanho, sabor from tabela_de_produtos where embalagem = 'pet';
select * from tabela_de_clientes;
select distinct bairro, cidade from tabela_de_clientes where CIDADE = 'Rio de Janeiro' and estado = 'RJ';

#Usando o LIMIT
select * from tabela_de_produtos limit 3,4;
select * from notas_fiscais where DATA_VENDA = '2017-01-01' limit 10;

#Usando o ORDER BY
select * from tabela_de_produtos order by NOME_DO_PRODUTO;
select * from tabela_de_produtos order by PRECO_DE_LISTA;
select sabor, PRECO_DE_LISTA from tabela_de_produtos order by sabor desc, PRECO_DE_LISTA asc;
SELECT * from tabela_de_produtos WHERE NOME_DO_PRODUTO = 'Linha Refrescante - 1 litro - Morango/Limão';
SELECT * FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = 1101035 ORDER BY PRECO DESC, QUANTIDADE DESC;

