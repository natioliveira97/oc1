/*
*
* Programa: load_dm.sas
* Autor: Natalia
* Data: 2025-06-25
* Módulo: Geral
* Versão: 1.00
* 
*/
%include "/opt/sas/Workshop/Git/oc1/macros/macro_vars.sas";
%include "&caminho/src/libraries.sas";

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.vendas replace;
	sheet=vendas;
run;
	

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
	out=sicoob.produtos replace;
	sheet=produtos;
run;
	