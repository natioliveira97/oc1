/*
*
* Programa: macro_vars.sas
* Autor: Natalia
* Data: 2025-06-24
* M�dulo: Geral
* Vers�o: 1.00
* 
*/

%let caminho=/opt/sas/Workshop/Git/oc1;
%let caminho_libs=/opt/sas/Workshop/libraries;

libname sicoob base "&caminho_libs/sicoob";

data sicoob.carros;
	set sashelp.cars;
run;
