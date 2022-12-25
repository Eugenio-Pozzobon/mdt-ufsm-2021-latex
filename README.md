# Template MDT UFSM 2021 em LaTeX

Existem duas pastas neste repositório, a pasta do TexStudio contém os arquivos necessários para compilar o documento em editores para desktop, de forma offline. Na pasta do Overleaf, constam os aquivos que funcionarão no editor online. Esses arquivos podem ser facilmente copiados usando este link do template: 

### Configurações Necessárias nos compiladores

No texstudio use o comando do PDFLATEX abaixo:
	
	pdflatex.exe -synctex=1 -interaction=nonstopmode --shell-escape %.tex

### Alterações implementadas em comparação com o tamplate da MDT 2015

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

### Bugs Corrigidos para o TexStudio
* Arquivo tocstyle necessário para compilação
* Ambiente de bibliografia não compilava corretamente 

Alterações a Fazer

* Ambiente de bibliografia não funciona no texstudio


-> Desenvolvido com base no manual da UFSM 2021 disponível em https://www.ufsm.br/app/uploads/sites/542/2021/12/Manual-de-Dissertac%CC%A7o%CC%83es-e-Teses_MDT_2021.pdf

-> Disclaimer: esse template pode conter erros. Caso detecte algo, você pode entrar em contato pelo email eugenio.pozzobon@acad.ufsm.br para resolvermos.
