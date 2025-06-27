%include "/opt/sas/Workshop/Git/oc1/macros/macro_vars.sas";
%include "&caminho/src/libraries.sas";


proc sql;
	create table sicoobsp.vendasperiodo as
	select  
		a.codProduto,
		b.descricao, 
		c.descricao as Grupo,
		d.descricao as Depto,
		e.descricao as Cor,
		f.descricao as Tamanho,
		g.Sigla,
		g.Nome as Estado,
		a.datavenda, 
		a.qtdevendida, 
		b.precounitario,
 		a.qtdevendida*b.precounitario as TotalvVnda,
		g.percimposto format=percent6.2,
		a.qtdevendida*b.precounitario*g.percimposto as TotalImposto
	from sicoob.vendas a
    inner join sicoob.produtos b on b.codProduto=a.codProduto
	inner join sicoob.grupos c on b.codgrupo=c.codgrupo
    inner join sicoob.deptos d on b.coddepto=d.coddepto
	inner join sicoob.cores e on e.codcor=a.codcor
	inner join sicoob.tamanhos f on f.codtamanho=a.codtamanho
	inner join sicoob.estados g on g.codestado=a.codestado;
quit;