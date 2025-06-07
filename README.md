# Documentação do Projeto Versami

Este repositório contém os scripts SQL para a criação e inserção de dados no banco de dados da aplicação Versami, juntamente com a documentação UML, MER e DER do projeto.

## Propósito

O objetivo deste repositório é fornecer os recursos necessários para configurar o ambiente de banco de dados da aplicação Versami, além de oferecer a documentação técnica para consulta e compreensão da estrutura do sistema.

## Como Utilizar os Scripts

Para configurar o banco de dados Versami, siga as instruções abaixo na ordem de execução:

1.  **Criação do Banco de Dados e Tabelas (`script-criacar-BD.sql`)**
    * Este script é responsável por criar o banco de dados `versami` e todas as suas tabelas, incluindo chaves primárias, chaves estrangeiras e outras definições de esquema.
    * **Execute este script primeiro.**

2.  **Inserção de Dados Iniciais (`script-inserts-BD.sql`)**
    * Após a criação do esquema, este script popula as tabelas com dados essenciais para o funcionamento da aplicação (ex: permissões, perguntas secretas, gêneros, autores, livros, usuários, publicações, etc.).
    * **Atenção:** Este script contém instruções `INSERT` que referenciam imagens de capa de livros usando `OPENROWSET(BULK ...)`. Você precisará **alterar o caminho dos arquivos de imagem** para corresponder à localização em sua máquina.
    * As imagens das capas dos livros estão localizadas na pasta CAPAS_LIVROS dentro da pasta scripts (referindo-se à estrutura do repositório versami-database).
    * **Exemplo da linha a ser alterada:**
        ```sql
        (SELECT * FROM OPENROWSET(BULK 'D:\Ygor Gabriel\Documents\GitHub\versami-database\scripts\IMAGENS\CAPAS_LIVROS\domcasmurro.jpg', SINGLE_BLOB) AS img),1,2),
        ```
        Certifique-se de substituir `'D:\Ygor Gabriel\Documents\GitHub\versami-database\scripts\IMAGENS\CAPAS_LIVROS\domcasmurro.jpg'` pelo caminho absoluto onde as imagens das capas dos livros estão armazenadas em seu sistema. As imagens devem estar presentes em uma pasta acessível pelo SQL Server.
    * **Execute este script em segundo.**

3.  **Criação de Procedures (`script-procedures.sql`)**
    * Este script contém as procedures armazenadas utilizadas pela aplicação, como as de login para administradores e usuários.
    * **Execute este script por último.**

## Ordem de Execução dos Scripts:

1.  `script-criacar-BD.sql`
2.  `script-inserts-BD.sql` (Lembre-se de alterar o caminho das imagens)
3.  `script-procedures.sql`

## Documentação

Neste repositório, você também encontrará a documentação do projeto, incluindo:

* **UML (Unified Modeling Language):** Diagramas que representam a estrutura e o comportamento do sistema.
* **MER (Modelo de Entidade-Relacionamento):** Representação conceitual do banco de dados.
* **DER (Diagrama de Entidade-Relacionamento):** Representação lógica do banco de dados, mostrando as tabelas e seus relacionamentos.

Esta documentação é fundamental para entender a arquitetura do sistema e a interação entre os diferentes componentes.
