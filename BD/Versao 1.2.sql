/*
	** VERSAO 1.2 - 10/10/2018 **
	- Criação do campo para sincronização com BdOnline
	- Opção para consulta dos valores na grid no sistema.
*/


ALTER TABLE FINANCEIRO ADD EXPORTADO VARCHAR(1);
UPDATE FINANCEIRO SET EXPORTADO = 'N';