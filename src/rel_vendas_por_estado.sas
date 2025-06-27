/*
*
* Programa: rel_VendasPorEstado.sas
* Autor: Natalia
* Data: 26/06/2025
* Módulo: Relatórios
* Versão: 1.00
* 
*/
 
%include "/opt/sas/Workshop/Git/oc1/macros/macro_vars.sas";
%include "&caminho/src/libraries.sas";
%include "&caminho/macros/limitesimposto.sas";
%include "&caminho/macros/m_rel_VendasEstado.sas";
 
%EstadoComMenorImposto
%EstadoComMaiorImposto
 
/*%mrel_VendasEstado(&est_max_pi)*/
/*%mrel_VendasEstado(&est_min_pi)*/