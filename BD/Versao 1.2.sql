/*
	** VERSAO 1.2 - 10/10/2018 **
	- Cria��o do campo para sincroniza��o com BdOnline
	- Op��o para consulta dos valores na grid no sistema.
*/


ALTER TABLE FINANCEIRO ADD EXPORTADO VARCHAR(1);
UPDATE FINANCEIRO SET EXPORTADO = 'N';