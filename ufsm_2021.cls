% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%%%% Classe LaTex - MDT-UFSM-2021 - ver. 1.1.1 				 %%%%

%%%% Por Eugênio Piveta Pozzobon 							 %%%%
%%%% adaptado da versao de Franciano Scremin Puhales, 		 %%%%
%%%% Josue Sehnem Pablo Eli Soares de Oliveira e 			 %%%%
%%%% Diogo Machado Custodio (06/09/2017)  					 %%%%
%%%% que adaptaram de Fabio Natanael Kepler (2012)  		 %%%%

%%%% Contato: eugenio.pozzobon@acad.ufsm.br                  %%%%
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufsm_2021}
\RequirePackage{appendix}
\RequirePackage{graphicx}
\RequirePackage{multicol}
\RequirePackage[utf8]{inputenc}
\RequirePackage{setspace}
\RequirePackage[dvipsnames,pdf]{pstricks}
\RequirePackage{auto-pst-pdf}
\RequirePackage{rotating} 
\RequirePackage{pstricks-add}
\RequirePackage{epstopdf}
\RequirePackage{ifthen}
\RequirePackage[]{ragged2e}
\RequirePackage{tocloft}
\usepackage{verbatim}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[12pt,a4paper]{report}
\usepackage[]{hyperref}
\hypersetup{hidelinks}

\usepackage[alf,recuo=0.0cm,abnt-etal-cite=3,abnt-etal-list=3,abnt-emphasize=bf,abnt-repeated-author-omit=yes,abnt-thesis-year=both,abnt-etal-text=default,abnt-and-type=e,abnt-full-initials=no, abnt-doi=link, abnt-url-package=url]{abntex2cite}
\usepackage[brazil]{babel}
\usepackage[T1]{fontenc}
\usepackage{indentfirst}
\usepackage{textcomp}
\usepackage{setspace}
\usepackage{picinpar}
\usepackage{ifthen}
\usepackage{path}
\usepackage{scalefnt}
\usepackage{tocloft}
\usepackage[overload]{textcase}
\usepackage{array}
\usepackage{calc}
\usepackage{amsmath}
\usepackage{enumerate}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{epsf,amsfonts}
\usepackage{amsfonts}
\usepackage{epstopdf}
\usepackage{float}

\usepackage[brazil]{babel}
\usepackage[T1]{fontenc}
\usepackage{indentfirst}
\usepackage{textcomp}
\usepackage{setspace}
\usepackage{picinpar}
\usepackage{ifthen}
\usepackage{path}
\usepackage{scalefnt}

\usepackage[overload]{textcase}
\usepackage{xstring,xifthen,totcount}
\usepackage{tocloft}
\usepackage[tocflat]{tocstyle}
\usetocstyle{standard}
\settocstylefeature[-1]{entryhook}{\large\bfseries\uppercase}
\settocstylefeature[0]{entryhook}{\bfseries\uppercase}
\settocstylefeature[0]{leaders}{\dotfill}%
\settocstylefeature[0]{entryvskip}{0pt}%
\settocstylefeature[1]{entryhook}{\uppercase}
\settocstylefeature[2]{entryhook}{\bfseries}
\settocstylefeature[3]{entryhook}{}
\settocstylefeature[4]{entryhook}{\it}

\makeatletter
\@ifpackageloaded{url}{%
	\addtociteoptionlist{abnt-url-package=url}
	\def\UrlLeft{}
	\def\UrlRight{}
	\urlstyle{same}}
\makeatother

\usepackage{newfloat}
\DeclareFloatingEnvironment[
    fileext=los,
    listname=Lista de Quadros,
    name=Quadro,
    placement=tbhp,
    within=chapter,
]{quadro}


\DeclareFloatingEnvironment[
    fileext=logg,
    listname=Lista de Gráficos,
    name=Gráfico,
    placement=tbhp,
    within=chapter,
]{grafico}

\DeclareFloatingEnvironment[
  fileext=loi,
  listname=Lista de Ilustrações,
  name=Ilustração,
  placement=tbhp,
  within=chapter,
  ]{ilustracao}

\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\counterwithout{ilustracao}{chapter}
\counterwithout{grafico}{chapter}
\counterwithout{quadro}{chapter}

\usepackage[]{caption}

\captionsetup[ilustracao]{font=footnotesize,justification=centering,singlelinecheck=off,labelsep=endash}
\captionsetup[quadro]{font=footnotesize,justification=centering,singlelinecheck=off,labelsep=endash}
\captionsetup[grafico]{font=footnotesize,justification=centering,singlelinecheck=off,labelsep=endash}
\captionsetup[table]{font=footnotesize,justification=centering,singlelinecheck=off,labelsep=endash}
\captionsetup[figure]{font=footnotesize,justification=centering,singlelinecheck=off,labelsep=endash}
\newcommand{\fonte}{\centering\footnotesize{~\\\vspace{10pt}Fonte: ~}}

\newif\ifcodifica
  \def\oesteeuropeu{\codificafalse}
  \codificatrue




\newcommand{\UFSM@instituicao}{Universidade Federal de Santa Maria}
\newcommand{\UFSM@instituicaosigla}{UFSM}
\newcommand{\cidade}{\newcommand{\UFSM@cidade}}
\newcommand{\estado}{\newcommand{\UFSM@estado}}
\newcommand{\pais}{Brasil}
\newcommand{\instituicaosigla}{\newcommand{\UFSM@instituicaosigla}}
\newcommand{\centroensino}{\newcommand{\UFSM@centroensino}}
\newcommand{\centroensinosigla}{\newcommand{\UFSM@centroensinosigla}}
\newcommand{\curso}{\newcommand{\UFSM@curso}}
\newcommand{\statuscurso}{\newcommand{\UFSM@statuscurso}} 
\newcommand{\UFSM@autor}{\@author}
\newcommand{\autor}{\author}
\newcommand{\titulo}{\title}
\newcommand{\nivelensino}{\newcommand{\UFSM@nivelensino}} 
\newcommand{\grauensino}{\newcommand{\UFSM@grauensino}} 
\newcommand{\grauobtido}{\newcommand{\UFSM@grauobtido}} 
\newcommand{\areaconcentracao}{\newcommand{\UFSM@areaconcentracao}}
\newcommand{\authorcit}{\newcommand{\UFSM@authorcit}}
\newcommand{\ppg}{\newcommand{\UFSM@ppg}}
\newcommand{\UFSM@data}[3]{
\newcommand{\UFSM@diaaa}{#1}
\newcommand{\UFSM@mesnum}{#2}
\newcommand{\UFSM@ano}{#3}}
\let\data=\UFSM@data
\newcommand{\UFSM@local}{\UFSM@cidade, \UFSM@estado}


\newcommand{\UFSM@dia}{%
\ifthenelse{\equal{\UFSM@diaaa}{01}}{1º}{%
\ifthenelse{\equal{\UFSM@diaaa}{02}}{2}{%
\ifthenelse{\equal{\UFSM@diaaa}{03}}{3}{%
\ifthenelse{\equal{\UFSM@diaaa}{04}}{4}{%
\ifthenelse{\equal{\UFSM@diaaa}{05}}{5}{%
\ifthenelse{\equal{\UFSM@diaaa}{06}}{6}{%
\ifthenelse{\equal{\UFSM@diaaa}{07}}{7}{%
\ifthenelse{\equal{\UFSM@diaaa}{08}}{8}{%
\ifthenelse{\equal{\UFSM@diaaa}{09}}{9}{\UFSM@diaaa}}}}}}}}}%
}

\newcommand{\UFSM@diaen}[1]{%
\ifthenelse{\equal{\UFSM@diaaa}{01}}{1}{%
\ifthenelse{\equal{\UFSM@diaaa}{02}}{2}{%
\ifthenelse{\equal{\UFSM@diaaa}{03}}{3}{%
\ifthenelse{\equal{\UFSM@diaaa}{04}}{4}{%
\ifthenelse{\equal{\UFSM@diaaa}{05}}{5}{%
\ifthenelse{\equal{\UFSM@diaaa}{06}}{6}{%
\ifthenelse{\equal{\UFSM@diaaa}{07}}{7}{%
\ifthenelse{\equal{\UFSM@diaaa}{08}}{8}{%
\ifthenelse{\equal{\UFSM@diaaa}{09}}{9}{%
\ifthenelse{\equal{\UFSM@diaaa}{DD}}{DAY}{\UFSM@diaaa}}}}}}}}}}%
}

\newcommand{\UFSM@mes}[1]{%
\ifthenelse{\equal{\UFSM@mesnum}{01}}{janeiro }{}%
\ifthenelse{\equal{\UFSM@mesnum}{02}}{fevereiro }{}%
\ifthenelse{\equal{\UFSM@mesnum}{03}}{março }{}%
\ifthenelse{\equal{\UFSM@mesnum}{04}}{abril }{}%
\ifthenelse{\equal{\UFSM@mesnum}{05}}{maio }{}%
\ifthenelse{\equal{\UFSM@mesnum}{06}}{junho }{}%
\ifthenelse{\equal{\UFSM@mesnum}{07}}{julho }{}%
\ifthenelse{\equal{\UFSM@mesnum}{08}}{agosto }{}%
\ifthenelse{\equal{\UFSM@mesnum}{09}}{setembro }{}%
\ifthenelse{\equal{\UFSM@mesnum}{10}}{outubro }{}%
\ifthenelse{\equal{\UFSM@mesnum}{11}}{novembro }{}%
\ifthenelse{\equal{\UFSM@mesnum}{12}}{dezembro }{}%
\ifthenelse{\equal{\UFSM@mesnum}{MM}}{mes }{}%
}
\newcommand{\UFSM@mesen}[1]{%
\ifthenelse{\equal{\UFSM@mesnum}{01}}{January}{}%
\ifthenelse{\equal{\UFSM@mesnum}{02}}{February}{}%
\ifthenelse{\equal{\UFSM@mesnum}{03}}{March}{}%
\ifthenelse{\equal{\UFSM@mesnum}{04}}{April}{}%
\ifthenelse{\equal{\UFSM@mesnum}{05}}{May}{}%
\ifthenelse{\equal{\UFSM@mesnum}{06}}{June}{}%
\ifthenelse{\equal{\UFSM@mesnum}{07}}{July}{}%
\ifthenelse{\equal{\UFSM@mesnum}{08}}{August}{}%
\ifthenelse{\equal{\UFSM@mesnum}{09}}{September }{}%
\ifthenelse{\equal{\UFSM@mesnum}{10}}{October}{}%
\ifthenelse{\equal{\UFSM@mesnum}{11}}{November}{}%
\ifthenelse{\equal{\UFSM@mesnum}{12}}{December}{}%
\ifthenelse{\equal{\UFSM@mesnum}{MM}}{Month}{}%
}



\newif\if@presencial
  \def\EAD{\@presencialfalse}
  \@presencialtrue
  
\newcommand{\UFSM@instituicaoead}{
\if@presencial
\else
Universidade Aberta do Brasil
\fi} 

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
\newif\if@video
  \def\videoconferencia{\@videotrue}
\@videofalse

\newcommand{\UFSM@videoconf}{
\if@video
Defesa realizada por videoconferência.
\else
\fi} 

\newcommand{\videoconferenciabancap}{\newcommand{\UFSM@videoconferenciabancap}}
\newcommand{\UFSM@vconforip}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancap}{O}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfcoorip}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancap}{CO}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancaump}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancap}{1}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancadoisp}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancap}{2}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancatresp}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancap}{3}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancaquatrop}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancap}{4}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancacincop}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancap}{5}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfsupervisorp}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancap}{S}}{(videoconferência)}{}%
}

\newcommand{\videoconferenciabancas}{\newcommand{\UFSM@videoconferenciabancas}}
\newcommand{\UFSM@vconforis}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancas}{O}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfcooris}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancas}{CO}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancaums}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancas}{1}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancadoiss}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancas}{2}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancatress}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancas}{3}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancaquatros}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancas}{4}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfbancacincos}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancas}{S}}{(videoconferência)}{}%
}
\newcommand{\UFSM@vconfsupervisors}[1]{%
\ifthenelse{\equal{\UFSM@videoconferenciabancas}{S}}{(videoconferência)}{}%
}



% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


\def\email#1{\gdef\UFSM@email{End. Eletr.: #1}}
\newif\if@endereco
\def\endereco#1{\@enderecotrue\gdef\UFSM@endereco{Endereço: #1}}
\newif\if@fax
  \def\fax#1{\@faxtrue\gdef\UFSM@fax{Fax (0xx) #1}}
\newif\if@fone
   \def\fone#1{\@fonetrue\gdef\UFSM@fone{Fone (0xx) #1}}

\newcommand{\margemesquerda}{\newcommand{\UFSM@leftcat}}
\newcommand{\margemsuperior}{\newcommand{\UFSM@topcat}}
\newcommand{\margemdireita}{\newcommand{\UFSM@rightcat}}
\newcommand{\margeminferior}{\newcommand{\UFSM@bottomcat}}



\newif\if@orientador
  \@orientadorfalse
  \def\orientador#1#2#3#4#5{\@orientadortrue\gdef\@orientadornome{#1}\gdef\@orientadortit{#2}\gdef\@orientadorinst{#3}\gdef\@orientadorsexo{#4}\gdef\@orientadorpresidente{#5}}
\newif\if@coorientador
  \@coorientadorfalse
  \def\coorientador#1#2#3#4#5{\@coorientadortrue\gdef\@coorientadornome{#1}\gdef\@coorientadortit{#2}\gdef\@coorientadorinst{#3}\gdef\@coorientadorsexo{#4}\gdef\@coorientadorpresidente{#5}}
\newif\if@bancaum
  \@bancaumfalse
  \def\bancaum#1#2#3#4#5{\@bancaumtrue\gdef\@bancaumnome{#1}\gdef\@bancaumtit{#2}\gdef\@bancauminst{#3}\gdef\@bancaumsexo{#4}\gdef\@bancaumpresidente{#5}}
\newif\if@bancadois
  \@bancadoisfalse
  \def\bancadois#1#2#3{\@bancadoistrue\gdef\@bancadoisnome{#1}\gdef\@bancadoistit{#2}\gdef\@bancadoisinst{#3}}
\newif\if@bancatres
  \@bancatresfalse
  \def\bancatres#1#2#3{\@bancatrestrue\gdef\@bancatresnome{#1}\gdef\@bancatrestit{#2}\gdef\@bancatresinst{#3}}
\newif\if@bancaquatro
  \@bancaquatrofalse
  \def\bancaquatro#1#2#3{\@bancaquatrotrue\gdef\@bancaquatronome{#1}\gdef\@bancaquatrotit{#2}\gdef\@bancaquatroinst{#3}}  
\newif\if@bancacinco
  \@bancacincofalse
  \def\bancacinco#1#2#3{\@bancacincotrue\gdef\@bancacinconome{#1}\gdef\@bancacincotit{#2}\gdef\@bancacincoinst{#3}}  
\newif\if@supervisor
  \@supervisorfalse
  \def\supervisor#1#2#3#4#5{\@supervisortrue\gdef\@supervisornome{#1}\gdef\@supervisortit{#2}\gdef\@supervisorinst{#3}\gdef\@supervisorsexo{#4}\gdef\@supervisorpresidente{#5}}  
  
  
\newcommand{\UFSM@orientador}{
  \if@orientador \@orientador
  \else Professor Orientador\fi}
\newcommand{\UFSM@coorientador}{
  \if@coorientador \@coorientador
  \else Professor Coorientador\fi}
\newcommand{\UFSM@bancaum}{
  \if@bancaum \@bancaum
  \else Professor Banca\fi}
\newcommand{\UFSM@bancadois}{
  \if@bancadois \@bancadois
  \else Professor Banca\fi}
\newcommand{\UFSM@bancatres}{
  \if@bancatres \@bancatres
  \else Professor Banca\fi}
\newcommand{\UFSM@bancaquatro}{
  \if@bancaquatro \@bancaquatro
  \else Professor Banca\fi}
\newcommand{\UFSM@bancacinco}{
  \if@bancacinco \@bancacinco
  \else Professor Banca\fi}
\newcommand{\UFSM@supervisor}{
  \if@supervisor \@supervisor
  \else Supervisor\fi}  
  

\newcommand{\sexo}{\newcommand{\UFSM@sexo}}
\newcommand{\UFSM@sexoauthor}[1]{%
\ifthenelse{\equal{\UFSM@sexo}{M}}{AUTOR:}{}%
\ifthenelse{\equal{\UFSM@sexo}{F}}{AUTORA:}{}%
}

\newcommand{\UFSM@sexoorientador}[1]{%
\ifthenelse{\equal{\@orientadorsexo}{M}}{Orientador:}{}%
\ifthenelse{\equal{\@orientadorsexo}{F}}{Orientadora:}{}%
}

\newcommand{\UFSM@sexoorientadorprof}[1]{%
\ifthenelse{\equal{\@orientadorsexo}{M}}{Prof.}{}%
\ifthenelse{\equal{\@orientadorsexo}{F}}{Prof.${\text{\textordfeminine}}$}{}%
}


\newcommand{\UFSM@presidenteo}[1]{%
\ifthenelse{\equal{\@orientadorpresidente}{P} \AND \equal{\@orientadorsexo}{M}}{Presidente/}{}%
\ifthenelse{\equal{\@orientadorpresidente}{P} \AND \equal{\@orientadorsexo}{F}}{Presidenta/}{}%
\ifthenelse{\equal{\@orientadorpresidente}{M}}{}{}%
}

\newcommand{\UFSM@sexoorientadornew}[1]{%
\ifthenelse{\equal{\@orientadorsexo}{M}}{(\UFSM@presidenteo~Orientador)}{}%
\ifthenelse{\equal{\@orientadorsexo}{F}}{(\UFSM@presidenteo~Orientadora)}{}%
}


\newcommand{\UFSM@sexocoorientador}[1]{%
\ifthenelse{\equal{\@coorientadorsexo}{M}}{Coorientador:}{}%
\ifthenelse{\equal{\@coorientadorsexo}{F}}{Coorientadora:}{}%
}

\newcommand{\UFSM@sexocoorientadorprof}[1]{%
\ifthenelse{\equal{\@coorientadorsexo}{M}}{Prof.}{}%
\ifthenelse{\equal{\@coorientadorsexo}{F}}{Prof.${\text{\textordfeminine}}$}{}%
}


\newcommand{\UFSM@presidenteco}[1]{%
\ifthenelse{\equal{\@coorientadorpresidente}{P} \AND \equal{\@coorientadorsexo}{M}}{Presidente/}{}%
\ifthenelse{\equal{\@coorientadorpresidente}{P} \AND \equal{\@coorientadorsexo}{F}}{Presidenta/}{}%
\ifthenelse{\equal{\@coorientadorpresidente}{M}}{}{}%
}

\newcommand{\UFSM@sexocoorientadornew}[1]{%
\ifthenelse{\equal{\@coorientadorsexo}{M}}{(\UFSM@presidenteco~Coorientador)}{}%
\ifthenelse{\equal{\@coorientadorsexo}{F}}{(\UFSM@presidenteco~Coorientadora)}{}%
}



\newcommand{\UFSM@presidentebancaum}[1]{%
\ifthenelse{\equal{\@bancaumpresidente}{P} \AND \equal{\@bancaumsexo}{M}}{(Presidente)}{}%
\ifthenelse{\equal{\@bancaumpresidente}{P} \AND \equal{\@bancaumsexo}{F}}{(Presidenta)}{}%
\ifthenelse{\equal{\@bancaumpresidente}{M}}{}{}%
}

\newcommand{\UFSM@sexobancaumnew}[1]{%
\ifthenelse{\equal{\@bancaumsexo}{M}}{\UFSM@presidentebancaum~}{}%
\ifthenelse{\equal{\@bancaumsexo}{F}}{\UFSM@presidentebancaum~}{}%
}


\newcommand{\UFSM@presidentesupervisor}[1]{%
\ifthenelse{\equal{\@supervisorpresidente}{P} \AND \equal{\@supervisorsexo}{M}}{(Presidente)}{}%
\ifthenelse{\equal{\@supervisorpresidente}{P} \AND \equal{\@supervisorsexo}{F}}{(Presidenta)}{}%
\ifthenelse{\equal{\@supervisorpresidente}{M}}{}{}%
}

\newcommand{\UFSM@sexosupervisornew}[1]{%
\ifthenelse{\equal{\@supervisorsexo}{M}}{(\UFSM@presidentesupervisor~Supervisor)}{}%
\ifthenelse{\equal{\@supervisorsexo}{F}}{(\UFSM@presidentesupervisor~Supervisora)}{}%
}

\newcommand{\UFSM@sexosupervisor}[1]{%
\ifthenelse{\equal{\@supervisorsexo}{M}}{Supervisor:}{}%
\ifthenelse{\equal{\@supervisorsexo}{F}}{Supervisora:}{}%
}



\newif\if@tese
  \@tesefalse
  \def\tese{\@tesetrue\gdef\UFSM@tipo {Tese de \UFSM@grauensino}%
  \gdef\UFSM@tipoen{Doctoral Dissertation}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentada ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi, Área de Concentração em \UFSM@areaconcentracao, da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

\newif\if@qualificacao
  \@qualificacaofalse
  \def\qualificacao{\@qualificacaotrue\gdef\UFSM@tipo {Exame de Qualificação de \UFSM@grauensino}%
  \gdef\UFSM@tipoen{Qualifying Exam}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentado ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi, Área de Concentração em \UFSM@areaconcentracao, da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

\newif\if@dissertacao
  \@dissertacaofalse
  \def\dissertacao{\@dissertacaotrue\gdef\UFSM@tipo {Dissertação de \UFSM@grauensino}%
  \gdef\UFSM@tipoen{Master Thesis}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentada ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi, Área de Concentração em \UFSM@areaconcentracao, da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

\newif\if@monografia
  \@monografiafalse
  \def\monografia{\@monografiatrue\gdef\UFSM@tipo {Monografia}%
  \gdef\UFSM@tipoen{Monography}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentada ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi, Área de Concentração em \UFSM@areaconcentracao, da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.} }

\newif\if@monografiag
  \@monografiagfalse
  \def\monografiag{\@monografiatrue\gdef\UFSM@tipo {Monografia}%
  \gdef\UFSM@tipoen{Monography}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentada ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi da~\UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

\newif\if@tf
  \@tffalse
  \def\tf{\@tftrue\gdef\UFSM@tipo {Trabalho Final de \UFSM@grauensino}%
  \gdef\UFSM@tipoen{Bachelor Thesis}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentado ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi, Área de Concentração em \UFSM@areaconcentracao, da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

\newif\if@tfg
  \@tfgfalse
  \def\tfg{\@tfgtrue\gdef\UFSM@tipo {Trabalho Final de Graduação}%
  \gdef\UFSM@tipoen{Bachelor Thesis}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentado ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi~da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

\newif\if@tcc
  \@tccfalse
  \def\tcc{\@tcctrue\gdef\UFSM@tipo {Trabalho de Conclusão de Curso}%
  \gdef\UFSM@tipoen{Bachelor Thesis}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentado ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi, Área de Concentração em \UFSM@areaconcentracao, da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

\newif\if@tccg
  \@tccgfalse
  \def\tccg{\@tccgtrue\gdef\UFSM@tipo {Trabalho de Conclusão de Curso}%
  \gdef\UFSM@tipoen{Bachelor Thesis}
  \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentado ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi~da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

 \newif\if@relatorio
   \@relatoriofalse
   \def\relatorio{\@relatoriotrue\gdef\UFSM@tipo {Relatório de Estágio}%
   \gdef\UFSM@tipoen{Bachelor Thesis}
   \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentado ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi ~da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\UFSM@grauobtido~em \UFSM@curso}.}}

% % % % % % % % % % % % %    generico
   \newif\if@tipogenerico
   \@tipogenericofalse
   \def\tipogenerico#1{\@tipogenericotrue\gdef\@tipogenerico{#1}}
   \newif\if@tipogenericoen
   \@tipogenericoenfalse
   \def\tipogenericoen#1{\@tipogenericoentrue\gdef\@tipogenericoen{#1}}
   \newif\if@concordagenerico
   \@concordagenericofalse
   \def\concordagenerico#1{\@concordagenericotrue\gdef\@concordagenerico{#1}}
   \newif\if@graugenerico
   \@graugenericofalse
   \def\graugenerico#1{\@graugenericotrue\gdef\@graugenerico{#1}}
   
   \newif\if@generico
   \@genericofalse
   \def\generico{\@genericotrue\gdef\UFSM@tipo {\@tipogenerico}%
   \gdef\UFSM@tipoen {\@tipogenericoen}
   \gdef\UFSM@textofolharosto{\UFSM@tipo~apresentad\@concordagenerico~ao \UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso \if@presencial{}\else{~(EaD)}\fi~da \UFSM@instituicao~(\UFSM@instituicaosigla, RS), como requisito parcial para obtenção do grau de \textbf{\@graugenerico}.}}
% % % % % % % % % % % % % % % % 

\newif\if@errata
  \@erratafalse
  \def\errata#1{\@erratatrue\gdef\@erratatab{#1}}

\newif\if@epigrafe
  \@epigrafefalse
  \def\epigrafe#1#2{\@epigrafetrue\gdef\@epigrafetexto{#1}\gdef\@epigrafeautor{#2}}

\newif\if@dedicatoria
  \@dedicatoriafalse
  \def\dedicatoria#1{\@dedicatoriatrue\gdef\@dedicatoria{#1}}

\newif\if@agradecimentos
  \@agradecimentosfalse
  \def\agradecimentos{\@agradecimentostrue\gdef\@agradecimentos}

\newif\if@resumo
  \@resumofalse
  \def\resumo{\@resumotrue\gdef\@resumo}

\newif\if@palavrachave
  \@palavrachavefalse
  \def\palavrachave{\@palavrachavetrue\gdef\@palavrachave}

\newif\if@abstract
  \@abstractfalse
  \def\abstract{\@abstracttrue\gdef\@abstract}


\newif\if@keywords
  \@keywordsfalse
  \def\keywords{\@keywordstrue\gdef\@keywords}

\newif\if@listadesiglas
  \@listadesiglasfalse
  \def\listadesiglas{\@listadesiglastrue\gdef\@listadesiglas}
  
\newif\if@listadeabreviaturas
\@listadeabreviaturasfalse
\def\listadeabreviaturas{\@listadeabreviaturastrue\gdef\@listadeabreviaturas}


\newif\if@listadesimbolos
  \@listadesimbolosfalse
  \def\listadesimbolos{\@listadesimbolostrue\gdef\@listadesimbolos}

\newif\if@comtabelas
  \def\semtabelas{\@comtabelasfalse}
  \@comtabelastrue

\newif\if@comquadros
  \def\semquadros{\@comquadrosfalse}
  \@comquadrostrue  
  
\newif\if@comgraficos
  \def\semgraficos{\@comgraficosfalse}
  \@comgraficostrue    

\newif\if@comilustracoes
  \def\semilustracoes{\@comilustracoesfalse}
  \@comilustracoestrue    
  
\newif\if@comfiguras
  \def\semfiguras{\@comfigurasfalse}
  \@comfigurastrue

\newif\if@comapendices
  \def\semapendices{\@comapendicesfalse}
  \@comapendicestrue  

\newif\if@comanexos
  \def\semanexos{\@comanexosfalse}
  \@comanexostrue    

\newif\if@subtitulo
	\@subtitulofalse
	\def\subtitulo#1{\@subtitulotrue\gdef\@subtitulo{\MakeUppercase{#1}}}
  
\newif\if@englishtitle
  \@englishtitlefalse
  \def\englishtitle#1{\@englishtitletrue\gdef\@englishtitle{\MakeUppercase{#1}}}
  
\newif\if@subenglishtitle
	\@subenglishtitlefalse
	\def\subenglishtitle#1{\@subenglishtitletrue\gdef\@subenglishtitle{\MakeUppercase{#1}}}

\newif\if@comcatalografica
  \def\semcatalografica{\@comcatalograficafalse}
  \@comcatalograficatrue

\newif\if@esquerda
  \def\centralizado{\@esquerdafalse}
  \@esquerdatrue  
  
  
%   Defining the page size
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}
\setlength{\voffset}{-0.59cm}
\setlength{\topmargin}{0cm}
\setlength{\headheight}{0cm}
\setlength{\headsep}{1cm}
\setlength{\footskip}{0cm}
\setlength{\textheight}{24.8cm}
\setlength{\oddsidemargin}{0.45cm}
\setlength{\hoffset}{0cm}
\setlength{\marginparsep}{0mm}
\setlength{\marginparwidth}{0mm}    
\setlength{\marginparpush}{0mm}
\setlength{\marginparwidth}{0mm}    
\setlength{\textwidth}{16cm}

\if@twoside
    \setlength{\evensidemargin}{-0.55cm}
\fi



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Headers en Footers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\footnoterule}{%
  \kern -3pt
  \hrule width 5cm height 1.5pt
  \kern 2pt
}

\if@twoside
    \def\ps@UFSMhead{%
        \let\@oddfoot\@empty
        \let\@evenfoot\@empty

        \def\@evenhead{%
            \parbox{\textwidth}{\thepage\hfill	   
            }} 
        \def\@oddhead{%
	    \parbox{\textwidth}{\hfill\thepage
            }}

    }
\else
    \def\ps@UFSMhead{%
        \let\@oddfoot\@empty
        \def\@oddhead{%
            \parbox{\textwidth}{\hfill\footnotesize{\thepage}	   
            }}%
        \def\@evenhead{%
            \parbox{\textwidth}{\hfill\footnotesize{\thepage}	   
            }} 

	\let\@mkboth\markboth
	\renewcommand{\chaptermark}[1]{\markboth{##1}{}} 

        \renewcommand{\sectionmark}[1]{\markright{
          \ifnum \c@secnumdepth >\m@ne
              \thesection\hskip 1em\relax
           \fi
          ##1}}}
\fi

\if@twoside
    \def\ps@UFSMheadpre{%
        \let\@oddfoot\@empty
        \let\@evenfoot\@empty

        \def\@evenhead{%
            \parbox{\textwidth}{\hfill	   
            }} 
        \def\@oddhead{%
	    \parbox{\textwidth}{\hfill
            }}

    }
\else
    \def\ps@UFSMheadpre{%
        \let\@oddfoot\@empty
        \def\@oddhead{%
            \parbox{\textwidth}{\hfill  
            }}%
        \def\@evenhead{%
            \parbox{\textwidth}{\hfill  
            }} 
}
\fi


\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}

\if@twoside
\newcommand{\cchapter}{\@startsection{chapter}{1}{\z@}%
{-3.5ex \@plus -1ex \@minus -.2ex}%
{2\baselineskip}%
{\cleardoublepage\phantomsection\thispagestyle{empty}\centering\reset@font\bfseries\MakeUppercase}}
\else
\newcommand{\cchapter}{\@startsection{chapter}{1}{\z@}%
{-3.5ex \@plus -1ex \@minus -.2ex}%
{2\baselineskip}%
{\clearpage\phantomsection\newpage\thispagestyle{empty}\centering\reset@font\bfseries\MakeUppercase}}
\fi



\if@twoside
\renewcommand{\chapter}{\@startsection{chapter}{1}{\z@}%
{-3.5ex \@plus -1ex \@minus -.2ex}%
{2\baselineskip}%
{\cleardoublepage\phantomsection\thispagestyle{UFSMhead}\reset@font\bfseries\MakeUppercase}}
\else
\renewcommand{\chapter}{\@startsection{chapter}{1}{\z@}%
{-3.5ex \@plus -1ex \@minus -.2ex}%
{2\baselineskip}%
{\clearpage\phantomsection\thispagestyle{UFSMhead}\reset@font\bfseries\MakeUppercase}}
\fi

\newif\if@centralizado
\@centralizadofalse
\def\centralizado{\@centralizadotrue\let\chapter=\cchapter}

\renewcommand{\section}{
   \vspace{1.5\baselineskip}%
   \@startsection {section}{1}{\z@}%
   {-3.5ex \@plus -1ex \@minus -.2ex}%
   {2.3ex \@plus.2ex}%
   {\reset@font\normalsize\MakeUppercase}}

\renewcommand{\subsection}{
   \vspace{1.5\baselineskip}%
    \@startsection{subsection}{2}{\z@}%
    {-3.25ex \@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\reset@font\normalsize\bfseries}}

\renewcommand{\subsubsection}{
    \vspace{1.5\baselineskip}%
    \@startsection{subsubsection}{3}{\z@}%
    {-3.25ex \@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\reset@font\normalsize}}

   
    
\renewcommand{\paragraph}{    
    \vspace{1.5\baselineskip}%
    \@startsection{paragraph}{4}{\z@}%
    {3.25ex \@plus 1ex \@minus.2ex}%
    {1.5ex \@plus .2ex}%
    {\reset@font\normalsize\it}
    }


 % % % % % % % SUMARIO e LISTAS
\renewcommand{\@dotsep}{1}
      
      \renewcommand\l@table[2]{
	\ifnum \c@tocdepth >\m@ne
	\addpenalty{-\@highpenalty}%
	\setlength\@tempdima{2em}%
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	\leavevmode 
	\advance\leftskip 3\@tempdima
	\hskip -\leftskip
	  \renewcommand*\numberline[1]{##1\hspace{.3em}--\hspace{.3em}}
        \MakeUppercase{\tablename}~\hspace{.3em}#1\nobreak \dotfill\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
	\penalty\@highpenalty
	\endgroup
	\fi}
	
	\renewcommand\l@figure[2]{
	  \ifnum \c@tocdepth >\m@ne
	  \addpenalty{-\@highpenalty}%
	  \setlength\@tempdima{2em}%
	  \begingroup
	  \parindent \z@ \rightskip \@pnumwidth
	  \parfillskip -\@pnumwidth
	  \leavevmode 
	  \advance\leftskip 3\@tempdima
	  \hskip -\leftskip
	  \renewcommand*\numberline[1]{##1\hspace{.3em}--\hspace{.3em}}
	  {\figurename}\hspace{.3em}#1 \nobreak\dotfill\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
	  \penalty\@highpenalty
	  \endgroup
	  \fi}
	  
	  \renewcommand\l@quadro[2]{
	    \ifnum \c@tocdepth >\m@ne
	    \addpenalty{-\@highpenalty}%
	    \setlength\@tempdima{2em}%
	    \begingroup
	    \parindent \z@ \rightskip \@pnumwidth
	    \parfillskip -\@pnumwidth
	    \leavevmode 
	    \advance\leftskip 3\@tempdima
	    \hskip -\leftskip
	    \renewcommand*\numberline[1]{##1\hspace{.3em}--\hspace{.3em}}
	    {\quadroname}\hspace{.3em}#1 \nobreak\dotfill\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
	    \penalty\@highpenalty
	    \endgroup
	    \fi}
	    
	  \renewcommand\l@grafico[2]{
	    \ifnum \c@tocdepth >\m@ne
	    \addpenalty{-\@highpenalty}%
	    \setlength\@tempdima{2em}%
	    \begingroup
	    \parindent \z@ \rightskip \@pnumwidth
	    \parfillskip -\@pnumwidth
	    \leavevmode 
	    \advance\leftskip 3\@tempdima
	    \hskip -\leftskip
	    \renewcommand*\numberline[1]{##1\hspace{.3em}--\hspace{.3em}}
	    {\graficoname}\hspace{.3em}#1 \nobreak\dotfill\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
	    \penalty\@highpenalty
	    \endgroup
	    \fi}
	    
	    
	    \renewcommand\l@ilustracao[2]{
	      \ifnum \c@tocdepth >\m@ne
	      \addpenalty{-\@highpenalty}%
	      \setlength\@tempdima{2em}%
	      \begingroup
	      \parindent \z@ \rightskip \@pnumwidth
	      \parfillskip -\@pnumwidth
	      \leavevmode 
	      \advance\leftskip 3\@tempdima
	      \hskip -\leftskip
	      \renewcommand*\numberline[1]{##1\hspace{.3em}--\hspace{.3em}}
	      {\ilustracaoname}\hspace{.3em}#1 \nobreak\dotfill\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
	      \penalty\@highpenalty
	      \endgroup
	      \fi}  

  


% % % % % % Lista de símbolos
\newcommand{\abreviaturamax}{\newcommand{\UFSM@abreviaturamax}}
\newcommand{\siglamax}{\newcommand{\UFSM@siglamax}}
\newcommand{\simbolomax}{\newcommand{\UFSM@simbolomax}}
\newenvironment{listofsymbols}[1][R(x)]{ %
  \begin{list}{}{%
    \renewcommand\makelabel[1]%
    {\large\ensuremath{##1}}
    \setlength{\listparindent}{0pt}
    \settowidth{\labelwidth}{\makelabel{#1}}
    \setlength{\leftmargin}{\labelwidth}
    \addtolength{\leftmargin}{\labelsep}
    } %
    }{
% Comandos executados no fim do ambiente
  \end{list}
}



% 

% % % DEFINICOES DE APENDICE 

      
\if@twoside
\newcommand{\chapterappendix}{\@startsection{chapter}{1}{\z@}%
   {-3.5ex \@plus -1ex \@minus -.2ex}%
   {2\baselineskip}%
   {\centering\cleardoublepage\thispagestyle{empty}\reset@font\bfseries\MakeUppercase}}

   
\else
\newcommand{\chapterappendix}{\@startsection{chapter}{1}{\z@}%
   {-3.5ex \@plus -1ex \@minus -.2ex}%
   {2\baselineskip}%
   {\centering\clearpage\thispagestyle{empty}\reset@font\bfseries\MakeUppercase}}
\fi

\newcommand{\sectionappendix}{
   \vspace{1.5\baselineskip}%
   \@startsection {section}{1}{\z@}%
   {-3.5ex \@plus -1ex \@minus -.2ex}%
   {2.3ex \@plus.2ex}%
   {\noindent\normalsize\MakeUppercase}}   

\newcommand{\subsectionappendix}{
   \vspace{1.5\baselineskip}%
    \@startsection{subsection}{2}{\z@}%
    {-3.25ex \@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\reset@font\normalsize\bfseries}}

\newcommand{\subsubsectionappendix}{
    \vspace{1.5\baselineskip}%
    \@startsection{subsubsection}{3}{\z@}%
    {-3.25ex \@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\reset@font\normalsize\it}}
    
\newcommand{\paragraphappendix}{    
    \vspace{1.5\baselineskip}%
    \@startsection{paragraph}{4}{\z@}%
    {3.25ex \@plus 1ex \@minus.2ex}%
    {1.5ex \@plus .2ex}%
    {\reset@font\normalsize}}


% 
\newcommand\appendix@chapter[1]{%
\refstepcounter{chapter}%
\orig@chapter*{{Apêndice \@Alph\c@chapter~--~#1}}
\phantomsection
\addcontentsline{toc}{chapter}{\hspace{\@tempdima}\noindent Apêndice \@Alph\c@chapter~--~#1}%
}
\let\orig@chapter\chapterappendix
\g@addto@macro\appendix{\let\chapter\appendix@chapter}
\let\apendice\appendix

\newcommand\appendix@section[1]{%
\refstepcounter{section}%
\orig@section*{{\thesection~--~#1}}%
}
\let\orig@section\sectionappendix
\g@addto@macro\appendix{\let\section\appendix@section}
\let\apendice\appendix

\newcommand\appendix@subsection[1]{%
\refstepcounter{subsection}%
\orig@subsection*{{\thesubsection~--~#1}}%
}
\let\orig@subsection\subsectionappendix
\g@addto@macro\appendix{\let\subsection\appendix@subsection}
\let\apendice\appendix

\newcommand\appendix@subsubsection[1]{%
\refstepcounter{subsubsection}%
\orig@subsubsection*{{\thesubsubsection~--~#1}}%
}
\let\orig@subsubsection\subsubsectionappendix
\g@addto@macro\appendix{\let\subsubsection\appendix@subsubsection}
\let\apendice\appendix

\newcommand\appendix@paragraph[1]{%
\refstepcounter{paragraph}%
\orig@paragraph*{{\theparagraph~--~#1}}%
}
\let\orig@paragraph\paragraphappendix
\g@addto@macro\appendix{\let\paragraph\appendix@paragraph}
\let\apendice\appendix


% % % % DEFINICOES DE ANEXO
      

\newcommand\anexo{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  \setcounter{paragraph}{0}%
  \gdef\@chapapp{Anexo}%
  \gdef\thechapter{\@Alph\c@chapter}
  \newpage
  }

  
\newcommand\anexo@chapter[1]{%
\refstepcounter{chapter}%
\origa@chapter*{{Anexo \@Alph\c@chapter~--~#1}}%
\phantomsection
\addcontentsline{toc}{chapter}{\hspace{\@tempdima}\noindent Anexo~\@Alph\c@chapter~--~#1}%
}
\let\origa@chapter\chapterappendix
\g@addto@macro\anexo{\let\chapter\anexo@chapter}

\newcommand\anexo@section[1]{%
\refstepcounter{section}%
\origa@section*{{\thesection~--~#1}}%
}
\let\origa@section\sectionappendix
\g@addto@macro\anexo{\let\section\anexo@section}

\newcommand\anexo@subsection[1]{%
\refstepcounter{subsection}%
\origa@subsection*{{\thesubsection~--~#1}}%
}
\let\origa@subsection\subsectionappendix
\g@addto@macro\anexo{\let\subsection\anexo@subsection}

\newcommand\anexo@subsubsection[1]{%
\refstepcounter{subsubsection}%
\origa@subsubsection*{{\thesubsubsection~--~#1}}%
}
\let\origa@subsubsection\subsubsectionappendix
\g@addto@macro\anexo{\let\subsubsection\anexo@subsubsection}

\newcommand\anexo@paragraph[1]{%
\refstepcounter{paragraph}%
\origa@paragraph*{{\theparagraph~--~#1}}%
}
\let\origa@paragraph\paragraphappendix
\g@addto@macro\anexo{\let\paragraph\anexo@paragraph}

 
 % % % % INICIA ambiente bibliografia
 \newcommand\startbibliography{
 	\if@twoside
 	\renewcommand{\chapter}{\@startsection{chapter}{1}{\z@}%
 		{-3.5ex \@plus -1ex \@minus -.2ex}%
 		{2\baselineskip}%
 		{\cleardoublepage\phantomsection\centering\thispagestyle{empty}\reset@font\bfseries\MakeUppercase}}
 	\else
 	\renewcommand{\chapter}{\@startsection{chapter}{1}{\z@}%
 		{-3.5ex \@plus -1ex \@minus -.2ex}%
 		{2\baselineskip}%
 		{\clearpage\phantomsection\centering\thispagestyle{empty}\reset@font\bfseries\MakeUppercase}}
 	\fi 	
 }
 \renewenvironment{thebibliography}[1]
 {\chapter*{\refname}%
 	\addcontentsline{toc}{chapter}{\hspace{\@tempdima}\noindent\bibname}
 	\@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
 	\list{\@biblabel{\@arabic\c@enumiv}}%
 	{\settowidth\labelwidth{\@biblabel{#1}}%
 		\leftmargin\labelwidth
 		\advance\leftmargin\labelsep
 		\@openbib@code
 		\usecounter{enumiv}%
 		\let\p@enumiv\@empty
 		\renewcommand\theenumiv{\@arabic\c@enumiv}}%
 	\singlespacing
 	\setlength{\baselineskip}{12pt}
 	\setlength{\parskip}{1.\baselineskip}
 	\sloppy
 	\clubpenalty4000
 	\@clubpenalty \clubpenalty
 	\widowpenalty4000%
 	\sfcode`\.\@m}
 {\def\@noitemerr
 	{\@latex@warning{Empty `thebibliography' environment}}%
 	\endlist}
 
 
 
 % % % % REDEFINICOES DE COMANDOS
% % % APUD -> FAZ O APUD NO FORMATO UFSM
\renewcommand{\apudname}{apud}
\renewcommand{\apud}[3][]{(\citeauthor{#2}, \citeyear{#2} \apudname\ %
\citeauthor{#3}, \citeyear{#3}%
\ifthenelse{\equal{#1}{\empty}}{}{, #1})}
\renewcommand{\apudonline}[3][]{\citeauthoronline{#2}~(\citeyear{#2} \apudname\ %
\citeauthor{#3}, \citeyear{#3}%
\ifthenelse{\equal{#1}{\empty}}{}{, #1})}

     
    
      
%%%%%%%% capa
\newcommand{\UFSM@capa}{
\setlength{\parskip}{0.0cm}
  \begin{center}
    \singlespacing
    {\noindent\large{{\MakeUppercase{\UFSM@instituicao}}}}\\%
    \if@presencial
    \else
    {\noindent\large{{\MakeUppercase{\UFSM@instituicaoead}}}}\\%
    \fi
    {\large{{\MakeUppercase{\UFSM@centroensino}}}}\\%
    {\large{{\MakeUppercase{{\UFSM@statuscurso~de \UFSM@nivelensino~em \UFSM@curso}}}}}\\%
    \vspace{8\baselineskip}
    {\Large{\scalefont{0.926}\UFSM@autor}}\\
    \vspace{8\baselineskip}
    {\large\MakeUppercase{\textbf{\@title}}}\\
    \if@subtitulo
	    {\large\MakeUppercase{\@subtitulo}}\\
    \fi
    \vspace{\fill}
    {\large{\UFSM@local}}\\
     {\large{\UFSM@ano}}
 \end{center}
}



%%%%%%%% Folha de Rosto
\newcommand{\UFSM@folharosto}{
\if@twoside
\cleardoublepage
\else
\newpage
\fi
\setlength{\parskip}{0.0cm}
     \begin{center}
        \singlespacing
        \noindent\@author\\
        \vspace{7.0\baselineskip}
        \MakeUppercase{\textbf{\noindent\@title}}\\
        \if@subtitulo
        {\MakeUppercase{\@subtitulo}}\\
        \fi
        \vspace{5.0\baselineskip}
     \end{center}   
     \noindent\begin{flushright}
     \noindent\begin{minipage}{\textwidth-7cm}
     \singlespacing
     {\noindent\UFSM@textofolharosto\UFSM@videoconf}
     \vspace{8\baselineskip} 
     \end{minipage}
     \end{flushright}
     \begin{center}
        \singlespacing
        {{{\UFSM@sexoorientador~~\UFSM@sexoorientadorprof~~\@orientadornome}}}  

        \if@coorientador
	\vspace{1\baselineskip}
	{{{\UFSM@sexocoorientador~~\UFSM@sexocoorientadorprof~~\@coorientadornome}}}  
	\fi
	
        \if@supervisor
	\vspace{1\baselineskip}
	{{{\UFSM@sexosupervisor~~\@supervisornome}}}  
	\fi
	
    \vspace{\fill}
	
        {{\UFSM@local\\
        \UFSM@ano}}
        \end{center}
}


%%%%%%%% Ficha catalografica
\newcommand{\UFSM@fichacatalografica}{
%	\hspace{-2cm}
\noindent\includegraphics[trim=\UFSM@leftcat cm \UFSM@bottomcat cm \UFSM@rightcat cm \UFSM@topcat cm,clip,scale=0.91]{ficha_catalografica.pdf}
%\singlespacing
%{\footnotesize
%\noindent\rule{\textwidth}{1.1pt}\\
%\noindent$\text{\copyright}$\UFSM@ano\\
%\noindent Todos os direitos autorais reservados a \@author. A reprodução de partes ou do todo deste trabalho só poderá ser feita mediante a citação da fonte.\\
%\if@endereco
%\noindent \UFSM@endereco~\\
%\fi
%\if@fone
%    \if@fax
%    {\noindent \UFSM@fone;~ \UFSM@fax;~ \UFSM@email\\}
%    \else
%    {\noindent \UFSM@fone;~ \UFSM@email\\}
%    \fi
%\else
%    \if@fax
%    {\noindent \UFSM@fax;~ \UFSM@email\\}
%\else
%{\noindent \UFSM@email\\}
%\fi
%\fi
%}

}

%%%%%%%% Folha de Errata (opcional)
\newcommand{\UFSM@folhaerrata}{%
\thispagestyle{empty}
\if@twoside
    \cleardoublepage
\else
    \newpage
\fi
\setlength{\parskip}{0.0cm}
      \onehalfspacing
\noindent\begin{center}\reset@font{\textbf{ERRATA}}\vspace{\baselineskip}
\noindent\begin{tabular}{|>{\centering\arraybackslash}p{0.2\textwidth} |>{\centering\arraybackslash}p{0.2\textwidth}  |>{\centering\arraybackslash}p{0.2\textwidth} | >{\centering\arraybackslash}p{0.2\textwidth} |}
\hline
\textbf{Página} & \textbf{Linha} & \textbf{Onde se lê} & \textbf{Leia-se}\\
\hline
\@erratatab
\hline
\end{tabular}
\end{center}
}


%%%%%%%% Folha de Aprovacao
\newcommand{\UFSM@folhaaprovacao}{%
\if@twoside
    \cleardoublepage
\else
    \newpage
\fi
\newpage
\setlength{\parskip}{0.0cm}

     \begin{center}
        \singlespacing
        \textbf{\noindent\@author}\\
        
        \vspace{7\baselineskip} 
        
        
		  \if@bancadois
		 \vspace{-2\baselineskip} 
		 \fi	 
         \if@bancatres
		 \vspace{-1\baselineskip} 
		 \fi	
        
        \if@bancaquatro
        \vspace{-2\baselineskip} 
        \fi	
        \if@bancacinco
        \vspace{-1\baselineskip} 
        \fi	
        
        \MakeUppercase{\textbf{\noindent\@title}}\\     
        \if@subtitulo
        {\MakeUppercase{\@subtitulo}}\\
        \fi
        
        \vspace{6\baselineskip} 
        
         \if@bancadois
		\vspace{-2\baselineskip} 
		\fi	                
		
         \if@bancatres
        \vspace{-1\baselineskip} 
        \fi	
        
        \if@bancaquatro
        \vspace{-2\baselineskip} 
        \fi	
        \if@bancacinco
        \vspace{-1\baselineskip} 
        \fi	
        
     \end{center}   
     
     \noindent\begin{flushright}
     \noindent\begin{minipage}{\textwidth-7cm}
     \singlespacing
     {\noindent\UFSM@textofolharosto}
     \end{minipage}
     \end{flushright}
     \singlespacing
      \vspace{1\baselineskip}
      \begin{center}
     \singlespacing
     \textbf{Aprovado em \UFSM@dia~de \UFSM@mes~de \UFSM@ano:}
     \vspace{2.0\baselineskip}
     
        \if@orientador
        \ifthenelse{\equal{\@orientadorpresidente}{P} \OR \equal{\@orientadorpresidente}{M}}{%
        \vspace{1.0\baselineskip}
        \noindent\rule{0.5\textwidth}{0.5pt}\\
        \noindent\textbf{\@orientadornome,~\@orientadortit.~(\@orientadorinst)~\UFSM@vconforip~\UFSM@vconforis}\\
        \textbf{\UFSM@sexoorientadornew}\\}{}%
        \fi
        
        
	\if@coorientador
	\ifthenelse{\equal{\@coorientadorpresidente}{P} \OR \equal{\@coorientadorpresidente}{M}}{%
	\vspace{1.0\baselineskip}
	\noindent\rule{0.5\textwidth}{0.5pt}\\
        \noindent\textbf{\@coorientadornome,~\@coorientadortit.~(\@coorientadorinst)~\UFSM@vconfcoorip~\UFSM@vconfcooris}\\\textbf{
	\UFSM@sexocoorientadornew}\\}{}%
	\fi
	
        \if@supervisor
        \ifthenelse{\equal{\@supervisorpresidente}{P} \OR \equal{\@supervisorpresidente}{M}}{%
        \vspace{1.0\baselineskip}
        \noindent\rule{0.5\textwidth}{0.5pt}\\
        \noindent\textbf{\@supervisornome,~\@supervisortit.~(\@supervisorinst)~\UFSM@vconfsupervisorp~\UFSM@vconfsupervisors}\\
        \textbf{\UFSM@sexosupervisornew}\\}{}%
        \fi	
	
        
        \if@bancaum
        \ifthenelse{\equal{\@bancaumpresidente}{P} \OR \equal{\@bancaumpresidente}{M}}{%
        \vspace{1.0\baselineskip}
        \noindent\rule{0.5\textwidth}{0.5pt}\\
        \noindent\textbf{\@bancaumnome,~\@bancaumtit.~(\@bancauminst)~\UFSM@vconfbancaump~\UFSM@vconfbancaums}\\
        \UFSM@sexobancaumnew\\}{}%
        \fi
        
        
        \if@bancadois
        \vspace{1.0\baselineskip}
        \noindent\rule{0.5\textwidth}{0.5pt}\\
        \noindent\textbf{\@bancadoisnome,~\@bancadoistit.~(\@bancadoisinst)~\UFSM@vconfbancadoisp~\UFSM@vconfbancadoiss}
        \fi
	
        \if@bancatres
        \vspace{1.0\baselineskip}
        \noindent\rule{0.5\textwidth}{0.5pt}\\
        \noindent\textbf{\@bancatresnome,~\@bancatrestit.~(\@bancatresinst)~\UFSM@vconfbancatresp~\UFSM@vconfbancatress}
        \fi

        \if@bancaquatro
        \vspace{1.0\baselineskip}
        \noindent\rule{0.5\textwidth}{0.5pt}\\
        \noindent\textbf{\@bancaquatronome,~\@bancaquatrotit.~(\@bancaquatroinst)~\UFSM@vconfbancaquatrop~\UFSM@vconfbancaquatros}
        \fi

        \if@bancacinco
        \vspace{1.0\baselineskip}
        \noindent\rule{0.5\textwidth}{0.5pt}\\
        \noindent\textbf{\@bancacinconome,~\@bancacincotit.~(\@bancacincoinst)~\UFSM@vconfbancacincop~\UFSM@vconfbancacincos}
        \fi
        
        
        
        \vspace{\fill}

        \UFSM@local\\
        \UFSM@ano
        \end{center}
}



%%%%%%%% Folha de Epigrafe (opcional)
\newcommand{\UFSM@folhaepigrafe}{%
\if@twoside
\cleardoublepage
\else
\newpage
\fi
\setlength{\parskip}{0.0cm}
      \onehalfspacing
      \vspace*{\fill}
      \begin{flushright}
      \begin{minipage}{0.45\textwidth}
     \@epigrafetexto      
      \begin{flushright}\footnotesize{(\@epigrafeautor)}\end{flushright}
      \end{minipage}
      \end{flushright}
}


%%%%%%%% Folha de Dedicatoria
\newcommand{\UFSM@folhadedicatoria}{%
\if@twoside
\newpage
\cleardoublepage
\else
\newpage
\fi
\cchapter*{Dedicatória}
\setlength{\parskip}{0.0cm}
\setlength{\parindent}{1.25cm}
\onehalfspacing
\vspace*{\fill}
\begin{center}
          \@dedicatoria
\end{center}
\vspace*{\fill}
}

%%%%%%%% Folha de Agradecimentos
\newcommand{\UFSM@folhaagradecimentos}{%
\if@twoside
\newpage
\cleardoublepage
\else
\newpage
\fi
\cchapter*{Agradecimentos}
\setlength{\parskip}{0.0cm}
\setlength{\parindent}{1.25cm}
\onehalfspacing
\@agradecimentos
}

%%%%%%%% Folha de resumo
\newcommand{\UFSM@resumo}{
\if@twoside
\cleardoublepage
\fi
\newpage 
\setlength{\parskip}{0.0cm}
%   \addcontentsline{toc}{chapter}{RESUMO}
    \begin{center}
    \singlespacing
      	{\large\textbf{RESUMO}}\\
        \vspace{2\baselineskip}
        \MakeUppercase{{\large\textbf{{\@title}}}}\\ \if@subtitulo
        {\MakeUppercase{\large{\@subtitulo}}}\\ \fi
        \vspace{2\baselineskip}
      {\large{\UFSM@sexoauthor~~\UFSM@autor}}\\
      {\large{\UFSM@sexoorientador~~\@orientadornome}}\\
      \if@coorientador
      {\large{\UFSM@sexocoorientador~~\@coorientadornome}}\\
      \fi
    \end{center}
    \setlength{\parindent}{0cm}
    \singlespacing
    \@resumo~\\
    ~\\
    ~\\
    \textbf{Palavras-chave:}~{\@palavrachave}

}


%%%%%%%% Folha de Abstract

\newcommand{\UFSM@abstract}{
\if@twoside
\cleardoublepage
\fi
\newpage
\setlength{\parskip}{0.0cm}
%   \addcontentsline{toc}{chapter}{ABSTRACT}
    \begin{center}
    \singlespacing
      	{\large
        \textbf{ABSTRACT}}\\
        \vspace{2\baselineskip}
        \MakeUppercase{{\large\textbf{{\@englishtitle}}}}\\\if@subenglishtitle
        {\MakeUppercase{\large{\@subenglishtitle}}}\\ \fi \vspace{2\baselineskip}
     {\large{AUTHOR: \UFSM@autor}}\\
      {\large{ADVISOR: \@orientadornome}}\\
      \if@coorientador
      {\large{CO-ADVISOR: \@coorientadornome}}\\~\\
      \fi
    \end{center}
    \setlength{\parindent}{0cm}

    \@abstract~\\
    ~\\
    ~\\
    \textbf{Keywords:}~{\@keywords}
    
}






%%%%%%%% Lista de Tabelas
\newcommand{\UFSM@listatabelas}{%
\renewcommand\listoftables{%
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\cchapter*{\listtablename}%
\@mkboth{%
\listtablename}%
{\listtablename}%
\@starttoc{lot}%
\if@restonecol\twocolumn\fi
}
\onehalfspacing
\listoftables
}



%%%%%%% Lista de graficos
\newcommand{\UFSM@listagraficos}{%
\renewcommand\listofgraficos{%
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\cchapter*{\listgraficoname}%
\@mkboth{%
\listgraficoname}%
{\listgraficoname}%
\@starttoc{logg}%
\if@restonecol\twocolumn\fi
}
\onehalfspacing
 \listofgraficos
}




%%%%%%% Lista de quadros
\newcommand{\UFSM@listaquadros}{%
\renewcommand\listofquadros{%
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\cchapter*{\listquadroname}%
\@mkboth{%
\listquadroname}%
{\listquadroname}%
\@starttoc{los}%
\if@restonecol\twocolumn\fi
}
\onehalfspacing
\listofquadros
}

%%%%%%% Lista de Ilustracoes
\newcommand{\UFSM@listailustracoes}{%
\renewcommand\listofilustracaos{%
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\cchapter*{\listilustracaoname}%
\@mkboth{%
\listilustracaoname}%
{\listilustracaoname}%
\@starttoc{loi}%
\if@restonecol\twocolumn\fi
}

\onehalfspacing
\listofilustracaos
}


%%%%%%%% Lista de as
\newcommand{\UFSM@listafiguras}{%
\renewcommand\listoffigures{%
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\cchapter*{\listfigurename}%
\@mkboth{\listfigurename}%
{\listfigurename}%
\@starttoc{lof}%
\if@restonecol\twocolumn\fi
}

\onehalfspacing
% \settocstylefeature[1]{entryhook}{\figurename~}
\listoffigures
}


%%%%%%%% Sumario
\newcommand{\UFSM@sumario}{%
\renewcommand\tableofcontents{%
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\cchapter*{\contentsname
\@mkboth{%
\MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
\@starttoc{toc}%
\if@restonecol\twocolumn\fi
}

\onehalfspacing
\tableofcontents
}

%%%%%%%% Lista de Abreviaturas
\newcommand{\UFSM@listadeabreviaturas}{%
    \cchapter*{Lista de Abreviaturas}
    \setlength{\parskip}{0.0cm}
    \setlength{\parindent}{1.25cm}
    \onehalfspacing
\noindent\begin{tabular}{p{\widthof{\UFSM@abreviaturamax\hspace{0.5cm}}}l}
	\@listadeabreviaturas
\end{tabular}

}

%%%%%%%% Lista de siglas
\newcommand{\UFSM@listadesiglas}{%
	\cchapter*{Lista de Siglas}
	\setlength{\parskip}{0.0cm}
	\setlength{\parindent}{1.25cm}
	\onehalfspacing
	\noindent\begin{tabular}{p{\widthof{\UFSM@siglamax\hspace{0.5cm}}}l}
		\@listadesiglas
	\end{tabular}
	
}

%%%%%%%% Lista de Simbolos
\newcommand{\UFSM@listadesimbolos}{%
    \cchapter*{Lista de Símbolos}
\setlength{\parskip}{0.0cm}
\setlength{\parindent}{1.25cm}
\onehalfspacing
\begin{listofsymbols}[\UFSM@simbolomax\hspace{0.5cm}]
\@listadesimbolos
\end{listofsymbols} 

}

\newcommand\pretextual{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% pre-textuais
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifcodifica
\inputencoding{utf8}
\else
\inputencoding{latin1}
\fi
\setlength{\parskip}{0.0cm}
\pagestyle{empty}

\UFSM@capa

\UFSM@folharosto

\if@comcatalografica
  \UFSM@fichacatalografica
\fi

\if@errata
  \UFSM@folhaerrata 
\fi


{
\UFSM@folhaaprovacao
\if@twoside
    \setcounter{page}{3}
    \if@errata
       \setcounter{page}{5} 
    \fi
\else
    \setcounter{page}{2}
    \if@errata
       \setcounter{page}{3} 
    \fi
\fi
}
\pagestyle{UFSMheadpre}


\if@dedicatoria
  \UFSM@folhadedicatoria
\fi

\if@agradecimentos
  \UFSM@folhaagradecimentos
\fi

\if@epigrafe
  \UFSM@folhaepigrafe 
\fi

\if@resumo
  \UFSM@resumo
\fi

\if@abstract
  \UFSM@abstract
\fi

\if@comfiguras
   \deactivatetocstyle
    \UFSM@listafiguras
\fi

\if@comgraficos
  \deactivatetocstyle
  \UFSM@listagraficos
\fi

\if@comilustracoes
  \deactivatetocstyle
  \UFSM@listailustracoes
\fi

\if@comtabelas
  \deactivatetocstyle
  \UFSM@listatabelas
\fi

\if@comquadros
  \UFSM@listaquadros
\fi

\if@listadeabreviaturas
  \UFSM@listadeabreviaturas
\fi


\if@listadesiglas
\UFSM@listadesiglas
\fi


\if@listadesimbolos
  \UFSM@listadesimbolos
\fi
\reactivatetocstyle
 \UFSM@sumario
 
 
 \onehalfspacing
 \setlength{\parindent}{1.25cm}
 

 {\null\clearpage
 \thispagestyle{empty}}
 
 \pagestyle{UFSMhead}

}


