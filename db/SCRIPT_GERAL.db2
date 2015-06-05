INSERT INTO GLB.GLB_DOMINIO VALUES('ENTRE_CONTATO','TPO_INTERACAO', 'A', 'PEDIDO DE PRECE', 1);
INSERT INTO GLB.GLB_DOMINIO VALUES('ENTRE_CONTATO','TPO_INTERACAO', 'B', 'PEDIDIR MÚSICA', 2);

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
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Adamantina/SP', 'Alameda Fernão Dias', '608', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Aguaí/SP','Rua Doutores Paulo e Rodolfo Lanzoni', '595', 'Vila Nova Aparecida', '(19) 3652-2320');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Americana/SP','Rua Boa Vontade', '145', 'Jardim Bela Vista', '(19) 3405-4650');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Araçatuba/SP', 'Rua Alziro Zarur', '30', 'Guanabara', '(18) 3631-0797');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Avaré/SP', 'Rua João Evangelista', '34', 'Jardim Vera Cruz', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Bauru/SP', 'Rua 15 de Novembro', '2-32', 'Centro', '(14) 3223-3733');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Campinas/SP', 'Rua Silvio Rizzardo', '1.360', 'Jardim Campos Elíseos', '(19) 3267-8742');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ferraz de Vasconcelos/SP', 'Av. Dom João VI', '272', 'Vila Correia', '(11) 4676-5342');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Franca/SP', 'Rua Torquato Caleiro', '915', 'Vila Nicácio', '(16) 3723-9132');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Indaiatuba/SP', 'Av. Soldado João Carlos de Oliveira Júnior', '816 (marginal direita)', 'Jardim Bom Princípio', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Jundiaí/SP', 'Rua Prudente de Moraes', '1.010', 'Centro', '(11) 4521-3751');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Leme/SP', 'Rua José Bonfanti', '475', 'Vila São João', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Marília/SP', 'Av. Euclides da Cunha', '140', 'São Miguel', '(14) 3413-1628');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ribeirão Preto/SP', 'Rua Alagoas', '407', 'Campos Elíseos', '(16) 3636-7698');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santo André/SP', 'Rua General Glicério', '798', 'Centro', '(11) 4436-7834');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santo Antônio do Jardim/SP', 'Sítio Santa Bárbara', 'Irmãos de Luca', 'Santa Bárbara', '(19) 3654-1203');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santos/SP', 'Av. Conselheiro Nébias', '398', 'Encruzilhada', '(13) 3202-0080');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São João da Boa Vista/SP', 'Rua São José', '120', 'Santo André', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São José do Rio Preto/SP', 'Rua XV de Novembro', '2.884 (esquina com a Rua Siqueira Campos)', 'Centro', '(17) 3222-5160');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São José dos Campos/SP', 'Av. Tenente Névio Baracho', '429', 'Jardim Bela Vista', '(12) 3909-2100');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São Paulo/SP', 'Av. Rudge', '848', 'Bom Retiro', '(11) 3225-4665');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São Paulo/SP (São Mateus)', 'Rua Dr. Galvão Guimarães', '116', 'Jardim Santa Adélia', '(11) 2012-5110');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São Paulo/SP (zona leste)', 'Av. São Miguel', '3.546', 'Ponte Rasa', '(11) 2046-3054');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São Paulo/SP (zona sul)', 'Rua Edson Régis', '279', 'Jardim Guarapiranga', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Vargem Grande do Sul/SP', 'Rua Rio Grande do Sul', '66', 'Polar', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Vista Alegre do Alto/SP', 'Rua Manoel Marques', '441A', 'Centro', '(16) 3287-7477');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Anápolis/GO', 'Av. Sócrates Diniz', '219', 'Santo André', '(62) 3313-1034');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Bom Jesus de Goiás/GO', 'Av. Araguaia', '1.240', 'Olímpia', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Caçu/GO', 'Rua Clarice Machado Guimarães', '1.277', 'Morada dos Sonhos', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Edealina/GO', 'Rua Teodolina José da Silva', 'qd. 6, lt. 13', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Goianésia/GO', 'Rua 29', '375', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Goiânia/GO', 'Rua Jamil Abraão', '645', 'Setor Rodoviário', '(62) 3531-5022');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Pontalina/GO', 'Rua Alziro Zarur/LBV', '865 (esquina com Av. Morrinhos)', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Serranópolis/GO', 'Rua José de Carvalho', '34', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Aracaju/SE', 'Rua Alagoas', '1.159', 'Siqueira Campos', '(79) 3215-1565');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Arapongas/PR', 'Rua Uirapuru', '1.332' , 'Centro', '(43) 3252-2919');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Curitiba/PR', 'Av. Marechal Floriano Peixoto', '10.688', 'Boqueirão', '(41) 3386-8428');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Foz do Iguaçu/PR', 'Rua Damião Ferreira do Nascimento', '186', 'Polo Centro', '(45) 3573-7008');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Londrina/PR', 'Rua Serra dos Pirineus', '920', 'Jardim Bandeirante', '(43) 3328-1100');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Maringá/PR', 'Praça Monsenhor Bernardo Cnudde', '400', 'Zona Sete', '(44) 3269-8362');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Paranaguá/PR', 'Rua Ludovica Bório', '1.063', 'Vila Raia', '(41) 3422-5858');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ponta Grossa/PR', 'Av. Visconde de Mauá', '750', 'Vila Oficinas', '(42) 3224-0422');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Araruama/RJ', 'Rua das Oliveiras', '264', 'Praça da Bandeira', '(22) 2665-1120');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Bangu/RJ', 'Rua dos Açudes', '934', null, '(21) 2401-1429');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Belford Roxo/RJ', 'Av. Retiro da Imprensa', '467', 'Centro', '(21) 3775-5036');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Cabo Frio/RJ', 'Av. Joaquim Nogueira', '772', 'São Cristóvão', '(22) 2648-9000');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Campo Grande/RJ', 'Rua Artur Rios', '1.428', null, '(21) 2394-3460');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Del Castilho/RJ', 'Av. Dom Hélder Câmara', '3.214', null, '(21) 2501-2865');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Duque de Caxias/RJ', 'Av. Nilo Peçanha', '1.190', 'Parque Lafaiete', '(21) 2671-5793');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Engenheiro Paulo de Frontin/RJ', 'Rua Arlindo Nunes', '528', null, 'Centro');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Itaboraí/RJ', 'Rua Salvador Mendonça', '678', 'Meu Sossego', '(21) 3637-7583');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Marechal Hermes/RJ', 'Rua Santa Rita de Cássia', '198', null, '(21) 3833-0653');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Maricá/RJ', 'Av. Francisco Sabino da Costa', '259', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Morro Azul/RJ (Distrito de Engenheiro Paulo de Frontin)', 'Estrada do Barro Vermelho', '4', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Nilópolis/RJ', 'Av. Getúlio Vargas', '1.627', 'Centro', '(21) 3762-3236');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Niterói/RJ', 'Alameda São Boaventura', '474', 'Fonseca', '(21) 2625-8769');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Nova Friburgo/RJ', 'Av. Júlio Antonio Thurler', '4', 'Olaria', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Paracambi/RJ', 'Estrada Alziro Zarur', '101', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Petrópolis/RJ', 'Rua Floriano Peixoto', '125', 'Centro', '(24) 2231-5668');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Porciúncula/RJ', 'Rua Antônio Fernandes Vieira', '158', 'Boa Vista', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Riachuelo/RJ', 'Av. Vinte e Quatro de Maio', '388', 'Riachuelo', '(21) 2501-2446');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São Gonçalo/RJ', 'Rua Coronel Moreira César', '160', 'Zé Garoto', '(21) 3706-4615');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Teresópolis/RJ', 'Rua Heitor de Moura Estevão', '300', 'Várzea', '(21) 2742-4585');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Volta Redonda/RJ', 'Av. Nossa Senhora do Amparo', '5.079', 'Santa Rita do Zarur', '(24) 3346-7160 / 3337-8142');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Belém/PA', 'Trav. Francisco Monteiro', '782', 'Canudos', '(91) 3250-8500');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Brasília/DF', 'SGAS 915', 'Lotes 75 e 76', 'Asa Sul', '(61) 3245-1070');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Campo Grande/MS', 'Av. Marechal Deodoro', '5.055', 'Jardim Aero Rancho', '(67) 3378-1710');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Paranaíba/MS', 'Av. Getúlio Vargas', '1.145', 'Centro', '(67) 3668-1847');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Cuiabá/MT', 'Rua São José Operário', null, 'Dom Aquino', '(65) 3317-3808');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Fortaleza/CE', 'Rua Arruda Câmara', '65', 'Vila Pery', '(85) 3487-3500');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Itabuna/BA', 'Rua Bionor Rebouças', '135', 'Caixa d'Água', '(73) 3212-6242');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Salvador/BA', 'Rua Odilon Dórea', '676', 'Brotas', '(71) 3380-0017');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Manaus/AM', 'Av. Castelo Branco', '997', 'Cachoeirinha', '(92) 3215-7900');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Natal/RN', 'Rua dos Caicós', '2.148', 'Dix-Sept Rosado', '(84) 3613-1655');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Vitória/ES', 'Rodovia Serafim Derenzi', '1.731', 'Inhanguetá', '(27) 3232-3256');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Araxá/MG', 'Av. João Moreira Sales', '255', 'Padre Alaor', '(34) 3662-9573');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Arceburgo/MG', 'Rua Presidente Vargas', '918', 'Centro', '(35) 3556-1336');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Belo Horizonte/MG', 'Av. Dr. Cristiano Guimarães', '1.356 e 1.358', 'Planalto', '(31) 3494-3478');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Divisa Nova/MG', 'Praça Governador Valadares', '314', 'Centro', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ipatinga/MG', 'Rua João Patrício de Araújo', '225', 'Veneza 1', '(31) 3822-8600');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Ituiutaba/MG', 'Rua 28', '1.876 (esquina com rua 33-A)', 'Centro', '(34) 3262-1319');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Juiz de Fora/MG', 'Rua Francisco Fontainha', '83', 'Santo Antônio', '(32) 3216-1406');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Montes Claros/MG', 'Rua Governador Valares', '381', 'Centro', '(38) 3216-4580');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Poços de Caldas/MG', 'Rua Oliveira', '174', 'Jardim dos Estados', '(35) 3722-2831');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Salinas/MG', 'Av. Maroto Ferreira', '360', 'Raquel', '(38) 3841-1266');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santa Rita do Sapucaí/MG', 'Rua Juca Castelo', '434', 'Maristela', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santa Rita do Sapucaí/MG', 'Estrada do Bom Retiro', null, 'Serra dos Borges', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Santa Rita do Sapucaí/MG', 'Estrada do Vintém', null, 'Borá', null);
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'São Sebastião do Paraíso/MG', 'Av. Monsenhor Felipe', '555', 'Vila Dalva', '(35) 3531-1866');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Teófilo Otoni/MG', 'Rua Capitão Leonardo', '620', 'Grão Pará', '(33) 3522-6555');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Uberaba/MG', 'Rua Iguatama', '160', 'Abadia', '(34) 3312-4132');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Uberlândia/MG', 'Av. Marcos de Freitas Costa', '1.840', 'Osvaldo Resende', '(34) 3210-5450');
INSERT INTO CRM.CRM_IGREJA(CDG_IGREJA, dsc_localidade, DSC_ENDERECO, NMR_NUMERO, DSC_BAIRRO, nmr_telefone) VALUES(nextval for crm.sqc_igreja, 'Unaí/MG', 'Rua Arminda Rangel', '220', 'Jacilândia', null);

UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = LTRIM(RTRIM(SUBSTR(DSC_LOCALIDADE, LENGTH(DSC_LOCALIDADE)-1, 3)));
UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = 'SP' WHERE CDG_IGREJA = 22;
UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = 'RJ' WHERE CDG_IGREJA = 51;
UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = 'SP' WHERE CDG_IGREJA = 91;
UPDATE CRM.CRM_IGREJA SET DSC_ESTADO = 'SP' WHERE CDG_IGREJA = 92;

CREATE TABLE GLB.GLB_ACESSO_NAVEGADOR(
	DSC_NAVEGADOR VARCHAR(500) NOT NULL
) IN TSDADOS1 INDEX IN TSINDICES1; 

ALTER TABLE GLB.GLB_ACESSO_NAVEGADOR ADD CONSTRAINT PK_ACSNAV PRIMARY KEY (DSC_NAVEGADOR);
