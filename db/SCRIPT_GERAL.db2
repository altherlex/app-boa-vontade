INSERT INTO GLB.GLB_DOMINIO VALUES('ENTRE_CONTATO','TPO_INTERACAO', 'A', 'PEDIDO DE PRECE', 1);
INSERT INTO GLB.GLB_DOMINIO VALUES('ENTRE_CONTATO','TPO_INTERACAO', 'B', 'PEDIDIR M�SICA', 2);

CREATE TABLE CRM.CRM_IGREJA(
	CDG_IGREJA INTEGER,
	DSC_IGREJA VARCHAR(60),
	DSC_ENDERECO VARCHAR(60),
	NMR_NUMERO VARCHAR(60),
	DSC_BAIRRO VARCHAR(60),
	dsc_localidade VARCHAR(60),
	NMR_TELEFONE VARCHAR(60),
	DSC_ESTADO VARCHAR(60),
	DSC_REGIAO VARCHAR(60),
	DSC_PAIS VARCHAR(60)
) IN TSDADOS1 INDEX IN TSINDICES1; 

drop sequence crm.sqc_igreja;
create sequence crm.sqc_igreja;
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Adamantina/SP', 'Alameda Fern�o Dias', '608', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Agua�/SP','Rua Doutores Paulo e Rodolfo Lanzoni', '595', 'Vila Nova Aparecida', '(19) 3652-2320');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Americana/SP','Rua Boa Vontade', '145', 'Jardim Bela Vista', '(19) 3405-4650');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ara�atuba/SP', 'Rua Alziro Zarur', '30', 'Guanabara', '(18) 3631-0797');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Avar�/SP', 'Rua Jo�o Evangelista', '34', 'Jardim Vera Cruz', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Bauru/SP', 'Rua 15 de Novembro', '2-32', 'Centro', '(14) 3223-3733');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Campinas/SP', 'Rua Silvio Rizzardo', '1.360', 'Jardim Campos El�seos', '(19) 3267-8742');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ferraz de Vasconcelos/SP', 'Av. Dom Jo�o VI', '272', 'Vila Correia', '(11) 4676-5342');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Franca/SP', 'Rua Torquato Caleiro', '915', 'Vila Nic�cio', '(16) 3723-9132');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Indaiatuba/SP', 'Av. Soldado Jo�o Carlos de Oliveira J�nior', '816 (marginal direita)', 'Jardim Bom Princ�pio', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Jundia�/SP', 'Rua Prudente de Moraes', '1.010', 'Centro', '(11) 4521-3751');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Leme/SP', 'Rua Jos� Bonfanti', '475', 'Vila S�o Jo�o', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Mar�lia/SP', 'Av. Euclides da Cunha', '140', 'S�o Miguel', '(14) 3413-1628');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ribeir�o Preto/SP', 'Rua Alagoas', '407', 'Campos El�seos', '(16) 3636-7698');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santo Andr�/SP', 'Rua General Glic�rio', '798', 'Centro', '(11) 4436-7834');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santo Ant�nio do Jardim/SP', 'S�tio Santa B�rbara', 'Irm�os de Luca', 'Santa B�rbara', '(19) 3654-1203');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santos/SP', 'Av. Conselheiro N�bias', '398', 'Encruzilhada', '(13) 3202-0080');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Jo�o da Boa Vista/SP', 'Rua S�o Jos�', '120', 'Santo Andr�', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Jos� do Rio Preto/SP', 'Rua XV de Novembro', '2.884 (esquina com a Rua Siqueira Campos)', 'Centro', '(17) 3222-5160');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Jos� dos Campos/SP', 'Av. Tenente N�vio Baracho', '429', 'Jardim Bela Vista', '(12) 3909-2100');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Paulo/SP', 'Av. Rudge', '848', 'Bom Retiro', '(11) 3225-4665');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Paulo/SP (S�o Mateus)', 'Rua Dr. Galv�o Guimar�es', '116', 'Jardim Santa Ad�lia', '(11) 2012-5110');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Paulo/SP (zona leste)', 'Av. S�o Miguel', '3.546', 'Ponte Rasa', '(11) 2046-3054');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Paulo/SP (zona sul)', 'Rua Edson R�gis', '279', 'Jardim Guarapiranga', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Vargem Grande do Sul/SP', 'Rua Rio Grande do Sul', '66', 'Polar', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Vista Alegre do Alto/SP', 'Rua Manoel Marques', '441A', 'Centro', '(16) 3287-7477');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'An�polis/GO', 'Av. S�crates Diniz', '219', 'Santo Andr�', '(62) 3313-1034');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Bom Jesus de Goi�s/GO', 'Av. Araguaia', '1.240', 'Ol�mpia', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ca�u/GO', 'Rua Clarice Machado Guimar�es', '1.277', 'Morada dos Sonhos', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Edealina/GO', 'Rua Teodolina Jos� da Silva', 'qd. 6, lt. 13', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Goian�sia/GO', 'Rua 29', '375', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Goi�nia/GO', 'Rua Jamil Abra�o', '645', 'Setor Rodovi�rio', '(62) 3531-5022');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Pontalina/GO', 'Rua Alziro Zarur/LBV', '865 (esquina com Av. Morrinhos)', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Serran�polis/GO', 'Rua Jos� de Carvalho', '34', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Aracaju/SE', 'Rua Alagoas', '1.159', 'Siqueira Campos', '(79) 3215-1565');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Arapongas/PR', 'Rua Uirapuru', '1.332' , 'Centro', '(43) 3252-2919');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Curitiba/PR', 'Av. Marechal Floriano Peixoto', '10.688', 'Boqueir�o', '(41) 3386-8428');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Foz do Igua�u/PR', 'Rua Dami�o Ferreira do Nascimento', '186', 'Polo Centro', '(45) 3573-7008');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Londrina/PR', 'Rua Serra dos Pirineus', '920', 'Jardim Bandeirante', '(43) 3328-1100');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Maring�/PR', 'Pra�a Monsenhor Bernardo Cnudde', '400', 'Zona Sete', '(44) 3269-8362');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Paranagu�/PR', 'Rua Ludovica B�rio', '1.063', 'Vila Raia', '(41) 3422-5858');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ponta Grossa/PR', 'Av. Visconde de Mau�', '750', 'Vila Oficinas', '(42) 3224-0422');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Araruama/RJ', 'Rua das Oliveiras', '264', 'Pra�a da Bandeira', '(22) 2665-1120');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Bangu/RJ', 'Rua dos A�udes', '934', null, '(21) 2401-1429');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Belford Roxo/RJ', 'Av. Retiro da Imprensa', '467', 'Centro', '(21) 3775-5036');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Cabo Frio/RJ', 'Av. Joaquim Nogueira', '772', 'S�o Crist�v�o', '(22) 2648-9000');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Campo Grande/RJ', 'Rua Artur Rios', '1.428', null, '(21) 2394-3460');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Del Castilho/RJ', 'Av. Dom H�lder C�mara', '3.214', null, '(21) 2501-2865');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Duque de Caxias/RJ', 'Av. Nilo Pe�anha', '1.190', 'Parque Lafaiete', '(21) 2671-5793');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Engenheiro Paulo de Frontin/RJ', 'Rua Arlindo Nunes', '528', null, 'Centro');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Itabora�/RJ', 'Rua Salvador Mendon�a', '678', 'Meu Sossego', '(21) 3637-7583');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Marechal Hermes/RJ', 'Rua Santa Rita de C�ssia', '198', null, '(21) 3833-0653');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Maric�/RJ', 'Av. Francisco Sabino da Costa', '259', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Morro Azul/RJ (Distrito de Engenheiro Paulo de Frontin)', 'Estrada do Barro Vermelho', '4', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Nil�polis/RJ', 'Av. Get�lio Vargas', '1.627', 'Centro', '(21) 3762-3236');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Niter�i/RJ', 'Alameda S�o Boaventura', '474', 'Fonseca', '(21) 2625-8769');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Nova Friburgo/RJ', 'Av. J�lio Antonio Thurler', '4', 'Olaria', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Paracambi/RJ', 'Estrada Alziro Zarur', '101', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Petr�polis/RJ', 'Rua Floriano Peixoto', '125', 'Centro', '(24) 2231-5668');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Porci�ncula/RJ', 'Rua Ant�nio Fernandes Vieira', '158', 'Boa Vista', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Riachuelo/RJ', 'Av. Vinte e Quatro de Maio', '388', 'Riachuelo', '(21) 2501-2446');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Gon�alo/RJ', 'Rua Coronel Moreira C�sar', '160', 'Z� Garoto', '(21) 3706-4615');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Teres�polis/RJ', 'Rua Heitor de Moura Estev�o', '300', 'V�rzea', '(21) 2742-4585');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Volta Redonda/RJ', 'Av. Nossa Senhora do Amparo', '5.079', 'Santa Rita do Zarur', '(24) 3346-7160 / 3337-8142');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Bel�m/PA', 'Trav. Francisco Monteiro', '782', 'Canudos', '(91) 3250-8500');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Bras�lia/DF', 'SGAS 915', 'Lotes 75 e 76', 'Asa Sul', '(61) 3245-1070');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Campo Grande/MS', 'Av. Marechal Deodoro', '5.055', 'Jardim Aero Rancho', '(67) 3378-1710');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Parana�ba/MS', 'Av. Get�lio Vargas', '1.145', 'Centro', '(67) 3668-1847');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Cuiab�/MT', 'Rua S�o Jos� Oper�rio', null, 'Dom Aquino', '(65) 3317-3808');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Fortaleza/CE', 'Rua Arruda C�mara', '65', 'Vila Pery', '(85) 3487-3500');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Itabuna/BA', 'Rua Bionor Rebou�as', '135', 'Caixa d'�gua', '(73) 3212-6242');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Salvador/BA', 'Rua Odilon D�rea', '676', 'Brotas', '(71) 3380-0017');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Manaus/AM', 'Av. Castelo Branco', '997', 'Cachoeirinha', '(92) 3215-7900');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Natal/RN', 'Rua dos Caic�s', '2.148', 'Dix-Sept Rosado', '(84) 3613-1655');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Vit�ria/ES', 'Rodovia Serafim Derenzi', '1.731', 'Inhanguet�', '(27) 3232-3256');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Arax�/MG', 'Av. Jo�o Moreira Sales', '255', 'Padre Alaor', '(34) 3662-9573');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Arceburgo/MG', 'Rua Presidente Vargas', '918', 'Centro', '(35) 3556-1336');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Belo Horizonte/MG', 'Av. Dr. Cristiano Guimar�es', '1.356 e 1.358', 'Planalto', '(31) 3494-3478');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Divisa Nova/MG', 'Pra�a Governador Valadares', '314', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ipatinga/MG', 'Rua Jo�o Patr�cio de Ara�jo', '225', 'Veneza 1', '(31) 3822-8600');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ituiutaba/MG', 'Rua 28', '1.876 (esquina com rua 33-A)', 'Centro', '(34) 3262-1319');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Juiz de Fora/MG', 'Rua Francisco Fontainha', '83', 'Santo Ant�nio', '(32) 3216-1406');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Montes Claros/MG', 'Rua Governador Valares', '381', 'Centro', '(38) 3216-4580');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Po�os de Caldas/MG', 'Rua Oliveira', '174', 'Jardim dos Estados', '(35) 3722-2831');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Salinas/MG', 'Av. Maroto Ferreira', '360', 'Raquel', '(38) 3841-1266');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santa Rita do Sapuca�/MG', 'Rua Juca Castelo', '434', 'Maristela', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santa Rita do Sapuca�/MG', 'Estrada do Bom Retiro', null, 'Serra dos Borges', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santa Rita do Sapuca�/MG', 'Estrada do Vint�m', null, 'Bor�', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'S�o Sebasti�o do Para�so/MG', 'Av. Monsenhor Felipe', '555', 'Vila Dalva', '(35) 3531-1866');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Te�filo Otoni/MG', 'Rua Capit�o Leonardo', '620', 'Gr�o Par�', '(33) 3522-6555');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Uberaba/MG', 'Rua Iguatama', '160', 'Abadia', '(34) 3312-4132');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Uberl�ndia/MG', 'Av. Marcos de Freitas Costa', '1.840', 'Osvaldo Resende', '(34) 3210-5450');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Una�/MG', 'Rua Arminda Rangel', '220', 'Jacil�ndia', null);

UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = LTRIM(RTRIM(SUBSTR(DSC_LOCALIDADE, LENGTH(DSC_LOCALIDADE)-1, 3)));
UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = 'SP' WHERE CDG_IGREJA = 22;
UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = 'RJ' WHERE CDG_IGREJA = 51;
UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = 'SP' WHERE CDG_IGREJA = 91;
UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = 'SP' WHERE CDG_IGREJA = 92;

CREATE TABLE GLB.GLB_ACESSO_NAVEGADOR(
	DSC_NAVEGADOR VARCHAR(500) NOT NULL
) IN TSDADOS1 INDEX IN TSINDICES1; 

ALTER TABLE GLB.GLB_ACESSO_NAVEGADOR ADD CONSTRAINT PK_ACSNAV PRIMARY KEY (DSC_NAVEGADOR);
