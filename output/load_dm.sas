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
%include "&caminho/macros/importar_dados.sas";


%importar_dados(vendas, vendas);
%importar_dados(produtos, produtos);
%importar_dados(deptos, deptos);
%importar_dados(grupos, grupos);
%importar_dados(cores, cores);
%importar_dados(tamanhos, tamanhos);
%importar_dados(estados, estados);
%importar_dados(regioes, Regiões);


%include "&caminho/src/libraries.sas";
	