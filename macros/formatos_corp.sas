/*
*
* Programa: formatos_corp.sas
* Autor: Natalia
* Data: 2025-06-24
* Módulo: Geral
* Versão: 1.00
* 
*/

proc format;
	value tamanho
		1= "Pequeno"
		2= "Médio"
		3= "Grande"
		4= "Extra-Grande";
run;