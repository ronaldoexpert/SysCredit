/*
	** VERSAO 1.1 - 27/08/2017 **
	- CRIACAO DA TABELA FORNECEDOR
	- AUTO COMPLETAR NO FORNECEDOR NA TELA DE FINANCEIRO
*/


CREATE TABLE FORNECEDOR(
	ID INTEGER PRIMARY KEY NOT NULL,
	DESCRICAO VARCHAR(50),
	DATACAD DATE
);

INSERT INTO AUTOINCRE VALUES('FORNECEDOR', 0, 4);