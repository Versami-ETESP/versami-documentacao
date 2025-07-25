/*
* ATEN��O: ANTES DE EXCECUTAR VERIFICAR SE O BANCO DE DADOS VERSAMI FOI CRIADO CONFORME O ARQUIVO 'script-criacaoBD'.
* SEGUIR EXATAMENTE A ORDEM QUE ESTA DISPOSTA NESSE ARQUIVO PARA NAO HAVER ERROS AO INSERIR OS DADOS NO BANCO. 
*/

USE versami

INSERT INTO tblPermissao VALUES
	('MASTER'),
	('EDITAR LIVROS'),
	('MODERAR PUBLICACOES'),
	('PUBLICAR BLOG');

INSERT INTO tblPerguntaSecreta(pergunta) VALUES
	('Qual � o nome do seu primeiro animal de estima��o?'),
	('Em que cidade voc� nasceu?'),
	('Qual � o nome da sua escola prim�ria?'),
	('Qual � o nome do seu melhor amigo de inf�ncia?'),
	('Qual � o nome do seu filme favorito?'),
	('Qual � a profiss�o dos seus pais?'),
	('Qual era a marca do seu primeiro carro?'),
	('Qual � o nome do seu livro favorito?'),
	('Qual o nome do seu professor favorito na escola?'),
	('Qual foi o destino da sua primeira viagem?');

INSERT INTO tblStatusDenuncia(descStatus) VALUES
	('PENDENTE'),
	('DEFERIDO'),
	('INDEFERIDO');

INSERT INTO tblTipoNotificacao(descTipo) VALUES
	('CURTIDA POST'),
	('CURTIDA COMENTARIO'),
	('COMENTARIO'),
	('SEGUIU'),
	('FEEDBACK DENUNCIA'),
	('POST DELETADO');

INSERT INTO tblGenero(nomeGenero,descGenero) VALUES
	('Romance','Narrativa focada em relacionamentos e emo��es humanas'),
	('Fantasia','Hist�rias com elementos m�gicos e mundos imagin�rios'),
	('Terror','Narrativas que buscam causar medo e tens�o'),
	('Suspense','Hist�rias com clima de mist�rio e expectativa'),
	('Fic��o Cient�fica','Enredos baseados em ci�ncia e tecnologia geralmente futuristas'),
	('Drama','Narrativas intensas que exploram conflitos humanos profundos'),
	('Com�dia','Textos com humor e situa��es engra�adas'),
	('Mist�rio','Hist�rias centradas na resolu��o de enigmas ou crimes'),
	('Biografia','Relato da vida real de uma pessoa'),
	('Cr�nica','Texto curto sobre fatos cotidianos com tom reflexivo ou leve'),
	('Poesia','Texto com linguagem figurada, ritmo e m�trica, que expressa sentimentos ou ideias de forma est�tica'),
	('Aventura', 'Hist�rias com explora��o, desafios e jornadas emocionantes'),
    ('Distopia', 'Narrativas ambientadas em sociedades opressoras ou futuristas decadentes'),
    ('Romance Policial', 'Tramas investigativas envolvendo crimes e detetives'),
    ('Er�tico', 'Textos com foco em rela��es �ntimas e sensualidade'),
    ('Literatura Infantil', 'Obras voltadas para crian�as, com linguagem acess�vel e temas educativos'),
    ('Young Adult (YA)', 'Hist�rias voltadas para o p�blico jovem-adulto, com temas de amadurecimento'),
    ('Hist�rico', 'Narrativas ambientadas em per�odos hist�ricos reais, com contextualiza��o da �poca'),
    ('Autoajuda', 'Livros com conselhos e reflex�es para desenvolvimento pessoal'),
    ('Cl�ssico', 'Obras reconhecidas historicamente por seu valor liter�rio e cultural'),
    ('Epistolar', 'Narrativas contadas por meio de cartas, e-mails ou trocas de mensagens');

INSERT INTO tblAutor(nomeAutor,descAutor) VALUES
	('Autor Desconhecido','Sem Informa��es'),
	('Machado de Assis', 'Cl�ssico brasileiro, mestre do realismo e da ironia'),
	('Coleen Hoover', 'Autora americana de romances contempor�neos populares'),
	('George R. R. Martin', 'Criador da saga �pica As Cr�nicas de Gelo e Fogo'),
	('J.K. Rowling', 'Autora brit�nica da s�rie Harry Potter'),
	('Stephen King', '�cone do terror e suspense contempor�neo'),
	('Clarice Lispector', 'Escritora brasileira de estilo introspectivo e po�tico'),
	('Agatha Christie', 'Rainha do mist�rio e dos romances policiais'),
	('J. R. R. Tolkien', 'Criador de mundos fant�sticos como em O Senhor dos An�is'),
	('Jane Austen', 'Romancista inglesa conhecida por Orgulho e Preconceito'),
	('Gabriel Garc�a M�rquez', 'Colombiano, mestre do realismo m�gico'),
	('Franz Kafka', 'Autor tcheco de obras existencialistas e absurdas'),
	('Monteiro Lobato', 'Pioneiro da literatura infantil no Brasil'),
	('Ernest Hemingway', 'Estilo direto e conciso, vencedor do Nobel de Literatura'),
	('Virginia Woolf', 'Inovadora da narrativa moderna e voz do feminismo liter�rio'),
	('Paulo Coelho', 'Autor brasileiro de best-sellers espirituais como O Alquimista'),
	('Carlos Drummond de Andrade', 'Poeta modernista brasileiro, conhecido por sua sensibilidade e cr�tica social'),
    ('Lygia Fagundes Telles', 'Autora brasileira premiada, mestre do conto e da introspec��o'),
    ('Cec�lia Meireles', 'Importante poetisa brasileira, com obras l�ricas e educativas'),
    ('Rubem Fonseca', 'Autor brasileiro de romances policiais e urbanos, com linguagem direta'),
    ('Jorge Amado', 'Escritor baiano que retratou o povo e a cultura do Brasil com vivacidade'),
    ('Graciliano Ramos', 'Representante do regionalismo brasileiro com forte cr�tica social'),
    ('Jos� de Alencar', 'Romancista brasileiro do s�culo XIX, autor de O Guarani e Iracema'),
    ('Mario Quintana', 'Poeta brasileiro com estilo simples, filos�fico e bem-humorado'),
    ('Fernando Sabino', 'Cronista e romancista brasileiro, conhecido por seu estilo leve e reflexivo'),
    ('Haruki Murakami', 'Autor japon�s de realismo m�gico e surrealismo contempor�neo'),
    ('Isabel Allende', 'Escritora chilena, refer�ncia no realismo m�gico latino-americano'),
    ('Neil Gaiman', 'Autor brit�nico de fantasia, terror e fic��o especulativa'),
    ('Margaret Atwood', 'Escritora canadense, autora de distopias como O Conto da Aia'),
    ('Leo Tolstoy', 'Romancista russo cl�ssico, autor de Guerra e Paz e Anna Karenina'),
    ('Albert Camus', 'Escritor e fil�sofo franc�s, representante do existencialismo e absurdo'),
	('Suzanne Collins', 'Autora americana da trilogia Jogos Vorazes, sucesso mundial de distopia jovem'),
	('Raphael Montes', 'Autor brasileiro contempor�neo de suspense e terror psicol�gico'),
	('Itamar Vieira Junior', 'Autor brasileiro de Torto Arado, com foco em quest�es sociais e identit�rias');

/*
* ATENCAO: FAVOR EXECUTAR OS SEGUINTES COMANDOS ANTES DE PROSSEGUIR COM OS INSERTS DA TABELA tblLivro
* ESTE PASSO � IMPORTANTE PARA CONFIGURAR O SQL SERVER A RECEBER OS ARQUIVOS DE IMAGEM SEM ERROS.
*/

EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
EXEC sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;

/*
* ATENCAO: ALTERAR OS SEGUINTES TRECHOS DO INSERT QUE CONTEM 
*'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS'
*
* AQUI SERA NECESSARIO INSERIR O CAMINHO DA PASTA ONDE FOI SALVO AS CAPAS DOS LIVROS.
* ESSAS IMAGENS VIERAM JUNTO QUANDO O REPOSITORIO FOI CLONADO E ESTAO NA PASTA ..\SCRIPTS DB\CAPAS_LIVROS
*/

BEGIN TRY
	INSERT INTO tblLivro(nomeLivro,descLivro,imgCapa,idGenero,idAutor) VALUES 
		('DOM CASMURRO', 'Dom Casmurro conta a hist�ria de Bento Santiago, um homem que se apaixona por Capitu e abandona o semin�rio.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\domcasmurro.jpg', SINGLE_BLOB) AS img),1,2),
		('A GUERRA DOS TRONOS', 'Narra a vida dos nobres de Westeros 15 anos ap�s a rebeli�o que pos fim a dinatia Targaryen.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\got.jpeg', SINGLE_BLOB) AS img),2,4),
		('� ASSIM QUE ACABA', 'A vida de Lily muda ap�s a morte de seu pai. Ela se redescobre em Boston, onde abre um neg�cio.', 
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\assimqueacaba.jpg', SINGLE_BLOB) AS img),6,3),
		('HARRY POTTER E A PEDRA FILOSOFAL', 'Primeiro volume da s�rie onde Harry descobre que � um bruxo e vai para Hogwarts.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\harrypotter1.jpg', SINGLE_BLOB) AS img),2,5),
		('A FURIA DOS REIS', 'A guerra dos 5 reis come�a em westeros ap�s a morte de Ned Stark. os drag�es ressurgem e Daenerys continua sua peregrina��o em Essos.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\furiareis.jpg', SINGLE_BLOB) AS img),2,4),
		('IT: A COISA', 'Em Derry, um grupo de amigos enfrenta uma entidade maligna que assume a forma de um palha�o.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\it.jpg', SINGLE_BLOB) AS img),3,6),
		('O PEQUENO PR�NCIPE', 'Um piloto encontra um pr�ncipe vindo de um asteroide e aprende li��es sobre a vida.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\pequenoprincipe.jpg', SINGLE_BLOB) AS img),20,1),
		('CEM ANOS DE SOLID�O', 'Saga da fam�lia Buend�a na fict�cia Macondo, misturando realidade e fantasia.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\cemanos.jpg', SINGLE_BLOB) AS img),1,11),
		('ENSAIO SOBRE A CEGUEIRA', 'Uma epidemia de cegueira branca atinge uma cidade e revela a fragilidade da sociedade.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\ensaiocegueira.jpg', SINGLE_BLOB) AS img),5,1),
		('ORGULHO E PRECONCEITO', 'Elizabeth Bennet enfrenta quest�es de moralidade e casamento na Inglaterra do s�culo XIX.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\orgulhoepreconceito.jpg', SINGLE_BLOB) AS img),1,10),
		('O CONTO DA AIA', 'Em um regime totalit�rio, mulheres s�o subjugadas e usadas para reprodu��o.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\contodaia.jpg', SINGLE_BLOB) AS img),13,28),
		('TORTO ARADO', 'A vida de duas irm�s no sert�o baiano marcada por ancestralidade e injusti�a social.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\tortoarado.jpg', SINGLE_BLOB) AS img),6,33),
		('O SENHOR DOS AN�IS: A SOCIEDADE DO ANEL', 'Um grupo parte em miss�o para destruir um anel de poder.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\sociedadedoanel.jpg', SINGLE_BLOB) AS img),2,9),
		('O ILUMINADO', 'Uma fam�lia isolada em um hotel come�a a vivenciar manifesta��es sobrenaturais.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\oiluminado.jpg', SINGLE_BLOB) AS img),3,6),
		('VER�NIKA DECIDE MORRER', 'Ver�nika tenta o suic�dio, mas acorda em uma cl�nica e come�a a repensar sua vida.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\veronika.jpg', SINGLE_BLOB) AS img),6,16),
		('A REVOLU��O DOS BICHOS', 'F�bula pol�tica em que animais se rebelam contra humanos para formar uma sociedade igualit�ria.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\revolucaobichos.jpg', SINGLE_BLOB) AS img),13,1),
		('O DI�RIO DE ANNE FRANK', 'Relato real de uma jovem judia escondida durante a ocupa��o nazista.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\diarioanne.jpg', SINGLE_BLOB) AS img),21,1),
		('JOGOS VORAZES', 'Katniss participa de um jogo mortal transmitido ao vivo em uma sociedade dist�pica.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\jogosvorazes.jpg', SINGLE_BLOB) AS img),13,31),
		('A METAMORFOSE', 'Kafka narra a transforma��o de Gregor Samsa em um inseto e seu isolamento.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\metamorfose.jpg', SINGLE_BLOB) AS img),6,12),
		('POESIA COMPLETA', 'Colet�nea das principais obras po�ticas de Carlos Drummond de Andrade.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\poesiacompleta.jpg', SINGLE_BLOB) AS img),11,17),
		('VIDA E MORTE DE M.J. GONZAGA DE S�', 'Narrativas filos�ficas e fragment�rias que discutem a exist�ncia.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\vidamorte.jpg', SINGLE_BLOB) AS img),10,7),
		('NEUROMANCER', 'Um hacker � contratado para uma miss�o perigosa em um mundo cyberpunk.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\neuromancer.jpg', SINGLE_BLOB) AS img),5,1),
		('AS CR�NICAS DE N�RNIA', 'Quatro irm�os descobrem um mundo m�gico dentro de um guarda-roupa.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\narnia.jpg', SINGLE_BLOB) AS img),2,1),
		('O MORRO DOS VENTOS UIVANTES', 'Uma intensa hist�ria de amor e vingan�a nas charnecas inglesas.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\morro.jpg', SINGLE_BLOB) AS img),1,1),
		('ENQUANTO EU N�O TE ENCONTRO', 'Romance LGBTQIA+ com humor e descobertas, ambientado no Brasil.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\enquantonao.jpg', SINGLE_BLOB) AS img),1,1),
		('O NOME DO VENTO', 'Kvothe, um her�i lend�rio, conta sua pr�pria hist�ria em um mundo m�gico e cruel.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\nomevento.jpg', SINGLE_BLOB) AS img),2,1),
		('PEQUENAS GRANDES MENTIRAS', 'Tr�s mulheres se envolvem em um crime chocante e mist�rios do cotidiano.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\pequenasgrandes.jpg', SINGLE_BLOB) AS img),4,1),
		('O PERFUME', 'Um assassino com olfato extraordin�rio busca criar a ess�ncia perfeita com v�timas humanas.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\perfume.jpg', SINGLE_BLOB) AS img),4,1),
		('A HORA DA ESTRELA', 'Macab�a, nordestina pobre no Rio de Janeiro, enfrenta invisibilidade social.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\horaestrela.jpg', SINGLE_BLOB) AS img),6,7),
		('SUICIDAS', 'Nove jovens se matam em um jogo misterioso com reviravoltas sombrias.',
			(SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-documentacao\SCRIPTS DB\CAPAS_LIVROS\suicidas.jpg', SINGLE_BLOB) AS img),4,32);
END TRY
BEGIN CATCH
	PRINT 'ERRO AO INSERIR LIVROS. VERIFIQUE O CAMPO DO CAMINHO DA IMAGEM. MAIS DETALHES: ' + ERROR_MESSAGE();
	RETURN;
END CATCH

-- A senha para todos os usuarios e ADMS �: 12345678 e a resposta para a pergunta secreta � 'S�o Paulo'

INSERT INTO tblAdmin(nome,data_nasc,email,senha,arroba_usuario,permissao,pergunta,resposta) VALUES
	('Teste Master',getdate(),'adm-master@versami.com','EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F','master-admin',1,2,'21A70F398236BC7FD6B6EEF154B88BEF5C6C04404B468508980CD40C840A453B'),
	('Teste Livros',getdate(),'adm-livros@versami.com','EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F','livros-admin',2,2,'21A70F398236BC7FD6B6EEF154B88BEF5C6C04404B468508980CD40C840A453B'),
	('Teste Mod',getdate(),'adm-moderador@versami.com','EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F','moderador-admin',3,2,'21A70F398236BC7FD6B6EEF154B88BEF5C6C04404B468508980CD40C840A453B'),
	('Teste Blog',getdate(),'adm-blog@versami.com','EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F','blog-admin',4,2,'21A70F398236BC7FD6B6EEF154B88BEF5C6C04404B468508980CD40C840A453B');

INSERT INTO tblUsuario (nome, data_nasc, email, senha, arroba_usuario, bio_usuario, resposta, idPergunta) VALUES
	('Jo�o da Silva', '1990-05-12', 'joao.silva@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'joaosilva', 'Amante de livros de aventura.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Maria Oliveira', '1988-09-23', 'maria.oliveira@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'mariaoliveira', 'Apaixonada por romances hist�ricos.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Carlos Pereira', '1995-02-01', 'carlos.pereira@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'carlosp', 'F� de fic��o cient�fica e tecnologia.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Ana Souza', '2000-07-18', 'ana.souza@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'anasouza', 'Leitora de poesia nas horas vagas.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Lucas Mendes', '1992-11-30', 'lucas.mendes@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'lucasm', 'Curioso por biografias e hist�ria.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Fernanda Lima', '1996-03-14', 'fernanda.lima@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'ferlima', 'Estudante de letras e cr�tica liter�ria.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Bruno Rocha', '1985-12-08', 'bruno.rocha@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'brunor', 'Cr�tico de livros de terror.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Larissa Alves', '1998-10-27', 'larissa.alves@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'lari', 'Autora independente de contos.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Diego Martins', '1991-06-02', 'diego.martins@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'diegom', 'Gosta de livros t�cnicos e ci�ncia.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Juliana Costa', '1993-08-16', 'juliana.costa@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'jucosta', 'Curiosa por filosofia e existencialismo.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Rafael Gomes', '1997-04-22', 'rafael.gomes@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'rafag', 'Aficionado por mang�s e HQs.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Patr�cia Silva', '1989-01-10', 'patricia.silva@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'patisilva', 'Ama sagas e universos fant�sticos.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Gustavo Nunes', '1994-09-05', 'gustavo.nunes@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'gustavon', 'Compartilha resenhas em seu blog.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Camila Ribeiro', '2001-12-19', 'camila.ribeiro@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'camiribeiro', 'L� de tudo um pouco.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Vin�cius Leal', '1990-11-11', 'vinicius.leal@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'vini', 'Historiador que ama livros antigos.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Isabela Duarte', '1999-02-25', 'isabela.duarte@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'isabelad', 'Redatora e revisora de textos.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Eduardo Castro', '1987-06-06', 'eduardo.castro@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'eduardoc', 'Adora biografias e livros t�cnicos.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Tha�s Moreira', '1996-07-29', 'thais.moreira@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'thais', 'Compartilha trechos favoritos.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Henrique Lopes', '1993-03-03', 'henrique.lopes@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'hlopes', 'Leitor de cl�ssicos brasileiros.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2),
	('Aline Ferreira', '1998-05-20', 'aline.ferreira@email.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'alinef', 'Romancista em forma��o.', '21a70f398236bc7fd6b6eef154b88bef5c6c04404b468508980cd40c840a453b', 2);

INSERT INTO tblSeguidores(idSeguidor,idSeguido) VALUES
(1, 2),
(1, 3),
(1, 5),
(1, 8),
(2, 1),
(2, 4),
(2, 6),
(3, 2),
(3, 7),
(3, 9),
(4, 1),
(4, 5),
(4, 10),
(5, 6),
(5, 7),
(5, 2),
(6, 8),
(6, 1),
(6, 9),
(7, 3),
(7, 4),
(7, 10),
(8, 5),
(8, 2),
(8, 6),
(9, 1),
(9, 7),
(9, 8),
(10, 3),
(10, 6),
(10, 4),
(11, 12),
(11, 13),
(11, 14),
(12, 11),
(12, 15),
(12, 16),
(13, 12),
(13, 17),
(14, 11),
(14, 15),
(15, 13),
(15, 16),
(16, 11),
(16, 14),
(17, 12),
(17, 18),
(18, 13),
(19, 20),
(20, 19);

INSERT INTO tblLivrosFavoritos(idUsuario, idLivro) VALUES
(1, 1),
(1, 3),
(2, 5),
(2, 14),
(3, 2),
(3, 7),
(3, 12),
(4, 4),
(4, 10),
(5, 6),
(6, 8),
(7, 9),
(8, 3),
(8, 11),
(9, 18),
(9, 19),
(9, 6),
(10, 20),
(11, 13),
(12, 4),
(12, 2),
(12, 1),
(13, 7),
(14, 16),
(14, 21),
(15, 23),
(15, 14),
(16, 26),
(17, 27),
(17, 28),
(18, 30),
(18, 10),
(18, 25),
(19, 17),
(20, 15);

INSERT INTO tblBlogPost(titulo, conteudo, dataPost, idAdmin) VALUES
('Versami estreou!','Estamos em festa! A comunidade Versami convida os amantes de leitura para participar da nossa comunidade. Agradecemos a cada um que compartilha seu amor pela leitura aqui. E vem mais por a�: prepare-se para desafios liter�rios e eventos exclusivos!',
 SYSDATETIME(), 2),
('Lan�amento: Novo livro de Colleen Hoover chega ao Brasil','Os f�s da autora de �� Assim Que Acaba� j� podem comemorar: o novo romance de Colleen Hoover, intitulado �Cora��es Partidos�, chega �s livrarias brasileiras no pr�ximo m�s. A obra promete mais uma hist�ria intensa e envolvente sobre amor, trauma e supera��o.',
 SYSDATETIME(), 2),
 ('Agora � poss�vel favoritar os livros que voc� mais gosta!','A rede Versami acaba de lan�ar um novo recurso: Favoritar Livro! Al�m da classica resenha com a tag do livro, agora voc� pode expressar seus gostos marcando seus livros prediletos. Atualize seu app e experimente a novidade!',
 SYSDATETIME(), 2),
('Vencedores do Pr�mio Jabuti 2024 s�o anunciados','A premia��o liter�ria mais prestigiada do Brasil revelou seus vencedores em uma cerim�nia emocionante. O destaque da noite foi para o autor Itamar Vieira Junior, que levou o pr�mio de romance liter�rio com �O Peso do P�ssaro Morto�.',
 SYSDATETIME(), 2);

INSERT INTO tblPublicacao (conteudo, dataPublic, idUsuario, idLivro) VALUES
('Algu�m mais est� animado com a nova funcionalidade do app?', DATEADD(day, -2, SYSDATETIME()), 11, NULL),
('Acabei de participar do clube de leitura e foi incr�vel trocar ideias com outros leitores.', DATEADD(day, -9, SYSDATETIME()), 12, NULL),
('Qual seu g�nero liter�rio favorito? Estou buscando novas recomenda��es!', DATEADD(day, -1, SYSDATETIME()), 13, NULL),
('A interface do app est� cada vez mais amig�vel, parab�ns ao time de desenvolvimento!', DATEADD(day, -7, SYSDATETIME()), 14, NULL),
('Descobri um autor fant�stico essa semana, vale a pena dar uma olhada nas obras dele.', DATEADD(day, -2, SYSDATETIME()), 15, NULL),
('Estou organizando uma reuni�o virtual do clube de leitura para discutir cl�ssicos.', DATEADD(day, -7, SYSDATETIME()), 16, NULL),
('Algu�m recomenda livros de suspense psicol�gico? Estou curioso para come�ar.', DATEADD(day, -5, SYSDATETIME()), 17, NULL),
('Adoro quando o app destaca livros novos em destaque na p�gina inicial.', DATEADD(day, -8, SYSDATETIME()), 18, NULL),
('O f�rum est� �timo para trocar experi�ncias liter�rias, tenho aprendido muito.', DATEADD(day, -10, SYSDATETIME()), 19, NULL),
('Que tal criarmos desafios semanais para incentivar a leitura entre os usu�rios?', DATEADD(day, -20, SYSDATETIME()), 20, NULL);

INSERT INTO tblPublicacao (conteudo, dataPublic, idUsuario, idLivro) VALUES
('Acabei de reler "Dom Casmurro" e me surpreendi com as nuances do Bentinho.', DATEADD(day, -2, SYSDATETIME()), 1, 1),
('A Guerra dos Tronos � uma s�rie que nunca envelhece, cheia de reviravoltas.', DATEADD(day, -7, SYSDATETIME()), 2, 2),
('A escrita de �� Assim Que Acaba� me tocou profundamente, recomendo muito.', DATEADD(day, -1, SYSDATETIME()), 3, 3),
('Quem mais � f� de Harry Potter? O primeiro livro traz tanta magia e nostalgia!', DATEADD(day, -15, SYSDATETIME()), 4, 4),
('Terminei �It: A Coisa� e o suspense me deixou sem dormir por dias.', DATEADD(hour, -36, SYSDATETIME()), 5, 6),
('O Pequeno Pr�ncipe � uma leitura que nunca perde a import�ncia, para todas as idades.', DATEADD(day, -7, SYSDATETIME()), 6, 7),
('�Cem Anos de Solid�o� � um mergulho intenso na magia do realismo fant�stico.', DATEADD(day, -3, SYSDATETIME()), 7, 8),
('�Orgulho e Preconceito� � meu romance hist�rico favorito, adoro Elizabeth Bennet.', DATEADD(day, -8, SYSDATETIME()), 8, 10),
('Recomendo �O Conto da Aia� para quem gosta de distopias provocativas e cr�ticas sociais.', DATEADD(day, -4, SYSDATETIME()), 9, 11),
('�O Senhor dos An�is: A Sociedade do Anel� � uma jornada �pica que nunca cansa.', DATEADD(day, -20, SYSDATETIME()), 10, 13);


INSERT INTO tblComentario (comentario, data_coment, idPublicacao, idUsuario) VALUES
('Sim! Essa nova fun��o vai facilitar muito o uso di�rio.', DATEADD(hour, -3, SYSDATETIME()), 1, 12),
('Adoro essas trocas, sempre descubro livros incr�veis.', DATEADD(day, -2, SYSDATETIME()), 2, 13),
('Gosto muito de fantasia, recomendo "O Nome do Vento".', DATEADD(day, -1, SYSDATETIME()), 3, 14),
('O layout ficou muito mais intuitivo mesmo, parab�ns!', DATEADD(hour, -15, SYSDATETIME()), 4, 15),
('Compartilha o nome dele! Estou curioso tamb�m.', DATEADD(hour, -6, SYSDATETIME()), 5, 16),
('Boa ideia! Poder�amos usar o Google Meet ou Discord.', DATEADD(day, -3, SYSDATETIME()), 6, 17),
('Tenta �Garota Exemplar�, � excelente nesse estilo.', DATEADD(hour, -9, SYSDATETIME()), 7, 18),
('Essa funcionalidade me fez conhecer autores novos.', DATEADD(day, -4, SYSDATETIME()), 8, 19),
('Tenho aprendido muito com as experi�ncias que leio l�.', DATEADD(hour, -18, SYSDATETIME()), 9, 20),
('Apoiado! Isso pode incentivar quem est� parado.', DATEADD(day, -6, SYSDATETIME()), 10, 11);


INSERT INTO tblComentario (comentario, data_coment, idPublicacao, idUsuario) VALUES
('Concordo totalmente! Bentinho � um personagem complexo.', DATEADD(hour, -10, SYSDATETIME()), 11, 2),
('Essa s�rie tem tantas reviravoltas que sempre fico surpreso.', DATEADD(day, -4, SYSDATETIME()), 12, 3),
('Tamb�m fiquei muito tocado por esse livro, emociona demais.', DATEADD(day, -1, SYSDATETIME()), 13, 1),
('Harry Potter marcou minha inf�ncia, inesquec�vel!', DATEADD(day, -9, SYSDATETIME()), 14, 5),
('Suspense � comigo mesmo, It � realmente assustador.', DATEADD(hour, -30, SYSDATETIME()), 15, 6),
('Pequeno Pr�ncipe � uma obra-prima para todas as idades.', DATEADD(day, -6, SYSDATETIME()), 16, 7),
('Magia do realismo fant�stico que prende do come�o ao fim.', DATEADD(day, -2, SYSDATETIME()), 17, 8),
('Elizabeth Bennet � uma personagem que admiro demais.', DATEADD(day, -7, SYSDATETIME()), 18, 9),
('Distopias sempre fazem a gente pensar, �tima recomenda��o.', DATEADD(day, -3, SYSDATETIME()), 19, 10),
('Essa jornada �pica merece ser relida v�rias vezes.', DATEADD(day, -5, SYSDATETIME()), 20, 4);


INSERT INTO tblLikesPorPost (idUsuario, idPublicacao) VALUES
(2, 1),   
(3, 2),   
(5, 3),  
(6, 4),  
(7, 5), 
(8, 6), 
(9, 7), 
(10, 8),
(11, 9),
(12, 10);


INSERT INTO tblLikesPorComentario (idUsuario, idComentario) VALUES
(4, 1),  
(5, 2),   
(6, 3),  
(7, 4),  
(8, 5),  
(9, 6), 
(10, 7), 
(11, 8),
(12, 9),
(13, 10);


INSERT INTO tblDenuncia (idUsuario, idPublicacao, statusDenun) VALUES
(3, 5, 1),
(4, 8, 1),
(6, 2, 1),
(7, 9, 1),
(2, 4, 1),
(9, 3, 1),
(8, 7, 1),
(5, 10, 1),
(1, 6, 1),
(10, 7, 1);