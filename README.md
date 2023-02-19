# Template MDT UFSM 2021 em LaTeX

Existem duas pastas neste repositório, a pasta do TexStudio contém os arquivos necessários para compilar o documento em editores para desktop, de forma offline. Na pasta do Overleaf, constam os aquivos que funcionarão no editor online.  

## Configurações Necessárias nos compiladores

* No texstudio acesse: opções>configurar o texstudio>compilação. Altere para o XeLaTeX 
* No Overleaf acesse o menu do projeto e altere o compilador e selecone o XeLaTeX. Altere também a versão do texlive para a 2020 (legacy)

## Alterações implementadas em comparação com o template da MDT 2015

### Versão 1.1.0
Essa versão é o resultado de uma apreciação com responsáveis pela MDT da UFSM.

* Elementos pré textuais padronizados sem o itálico;
* Nomes das figuras, ilustrações, etc sem forçar letras maiúsculas;
* Folha de errata com negrito apenas no cabeçalho;
* Inclusão de um modelo de citação longa (mais de 3 linhas com recuo);
* Siglas formatadas com o mesmo padrão do resto do texto;
* Inclusão de uma lista de abreviaturas separada da lista de simbolos
* Recuo de 7 cm no texto principal da folha de rosto e aprovação
* Alterações na formatação das referências:
	* Subtítulo não inicia em letra maisúcula;
	* Título da referência não é mais formatado em caixa alta. Somente negrito.
	* Subtítulo não possui negrito;
	* Ordenar link e frase 'Acesso em';
	* Remover brachetes "<>" quando há uma URL. Não são mais utilizados.

### Versão 1.0.1
* Resumo e Abstract com espaçamento simples

### Versão 1.0.0
* Tamanho para nome e fonte de figuras/tabelas/ilustrações/quadros reduz para 10pt e fica centralizado.
* Fixar espaço de 10pt entre as legendas e figuras/tabelas/ilustrações/quadros
* Sumário e demais listas mudou espaçamento para 1,5
* Seção quinária em itálico, e não mais a quaternária
* Linha em branco entre refrências de 11pt para 12pt
* Título das referências bibliográficas ficou apenas "Referências"
* Duas linhas de espaços entre os itens do RESUMO e ABSTRACT
* Centralizar tabela de errata
* Inserir subtítulo do trabalho: capa, folha de rosto e folha de aprovação
* 'orientador' em minusculas na folha de rosto
* Negritos na Folha de Aprovação e adequação do espaçamento
* Numeração das figuras/tabelas/ilustrações/quadros de forma sequencial
* Nome dos termos figuras/tabelas/ilustrações/quadros em maiúscula nos respectivos ambientes
* Nova Ficha catalográfica

## Bugs Corrigidos para o TexStudio
* Arquivo tocstyle adicionado na pasta para compilação
* Ambiente de bibliografia não compilava corretamente 


-> Desenvolvido com base no manual da UFSM 2021 disponível em https://www.ufsm.br/app/uploads/sites/542/2021/12/Manual-de-Dissertac%CC%A7o%CC%83es-e-Teses_MDT_2021.pdf

-> Disclaimer: esse template não é oficial e pode conter erros. Caso verifique algum problema, você pode entrar em contato pelo email eugenio.pozzobon@acad.ufsm.br para resolvermos.
