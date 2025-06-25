/*
*
* Programa: relatorio_cars_usa.sas
* Autor: Natalia
* Data: 2025-06-24
* Módulo: Relatorios
* Versão: 1.00
* 
*/
%include "/opt/sas/Workshop/Git/oc1/macros/macro_vars.sas";
%include "&caminho/src/libraries.sas";

/*proc print data=sicoob.carros;*/
/*	where origin='USA';*/
/*run;*/

proc print data=sicoobsp.carros123;
	where origin='USA';
run;