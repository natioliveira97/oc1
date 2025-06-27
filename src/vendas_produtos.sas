/*
*
* Programa: vendas_produtos.sas
* Autor: Natalia
* Data: 2025-06-25
* Módulo: Preparacao de Dados
* Versão: 1.00
* 
*/

%include "/opt/sas/Workshop/Git/oc1/macros/macro_vars.sas";
%include "&caminho/src/libraries.sas";

proc sort data=sicoob.vendas out=work.vendas_produto;
by CodProduto;
run;

data work.produtos_corr;
	set sicoob.produtos;
	where CodProduto is not missing;
run;

proc sort data=produtos_corr out=work.produtos_produto;
by CodProduto;
run;

data sicoobsp.vendasproduto;
	merge work.vendas_produto(in=a) work.produtos_produto(in=b);
	by CodProduto;
	if (a and b);
run;