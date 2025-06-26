/*
*
* Programa: rel_vendas_produtos.sas
* Autor: Natalia
* Data: 2025-06-25
* Módulo: Geral
* Versão: 1.00
* 
*/

%include "/opt/sas/Workshop/Git/oc1/macros/macro_vars.sas";
%include "&caminho/src/libraries.sas";

data work.vendasproduto;
	set sicoobsp.vendasproduto;
	totalvenda = QtdeVendida*PrecoUnitario;
run;

proc print data=work.vendasproduto;
	var CodProduto Descricao QtdeVendida PrecoUnitario totalvenda;
run;

%include "&caminho/src/clear_libs.sas";