/*
*
* Programa: libraries.sas
* Autor: Natalia
* Data: 2025-06-24
* M�dulo: Geral
* Vers�o: 1.00
* 
*/

libname sicoob base "&caminho_libs/sicoob";

data sicoob.carros;
	set sashelp.cars;
run;
