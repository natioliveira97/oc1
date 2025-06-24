/*
*
* Programa: libraries.sas
* Autor: Natalia
* Data: 2025-06-24
* Módulo: Geral
* Versão: 1.00
* 
*/

libname sicoob base "&caminho_libs/sicoob";

data sicoob.carros;
	set sashelp.cars;
run;
