%macro importar_dados(tabela, planilha);
	proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx
		out=sicoob.&tabela replace;
		sheet="&planilha";
	run;
%mend;