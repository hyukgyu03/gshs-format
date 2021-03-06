% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % % LaTeX document class for the letter-formatted Human Tech paper % % %
% % % Last edition 2015.10.30 by Chinook Mok % % % % % % % % % % % % % % %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
\ProvidesClass{abstract_hutech}
\LoadClass[pdftex, a4size, twoside, 10pt, twocolumn]{article}


\usepackage[T1]{fontenc}   % To use Times New Roman
\usepackage[utf8]{inputenc}% To use Times New Roman
\usepackage{mathptmx}      % To use Times New Roman
\usepackage{fancyhdr}      % To customize header and footer
\usepackage{ifthen}        % To distinguish the first page in header
\usepackage{abstract}      % To customize abstract
\usepackage{titlesec}      % To resize the titles of section/subsection/etc...
\usepackage{indentfirst}
\usepackage{kotex}         % korean paper
\usepackage{graphicx}
\usepackage[font=small,labelfont=bf,labelsep=period,skip=0pt]{caption} % Caption setup
\usepackage{ctable} % To customize table
\usepackage{cite}     % To display citations as [1-3] instead of [1,2,3]
\usepackage{enumitem} % To remove the hanging indentation.
\usepackage{color} % To color header and footer as gray

%%% following packages are optional %%%
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{amsthm} 
\usepackage[makeroom]{cancel} %To use cancelto of terms in equation


%%%%%%%%%% page setting %%%%%%%%%%%
\setlength{\paperwidth}{210mm}
\setlength{\paperheight}{297mm}
\setlength{\hoffset}{-1in}
\setlength{\oddsidemargin}{18mm}
\setlength{\evensidemargin}{18mm}
\setlength{\textwidth}{180mm}
\setlength{\marginparsep}{0mm}
\setlength{\marginparwidth}{0mm}
\setlength{\voffset}{-1in}
\setlength{\topmargin}{10mm}
\setlength{\headheight}{12pt}
\setlength{\headsep}{12pt}
\setlength{\textheight}{244mm}
%\setlength{\footskip}{56pt}
%%%% two column setting %%%
\setlength{\columnsep}{20pt}

%%%%%%%%% Header & Footer setting %%%%
\pagestyle{fancy}
%\rhead{}
%\chead{}
%\lhead{\ifthenelse{\value{page}=1}{\fontsize{12}{0}\selectfont $\bf{26}^{\bf th}\textbf{ HumanTech Paper Award}$}{\fontsize{9}{0}\selectfont $26^{\rm th}\textrm{ HumanTech Paper Award}$}}

\fancyhead[RO,LE]{\color{gray} \fontsize{9}{0}\selectfont $26^{\rm th}\textrm{ HumanTech Paper Award}$}
\fancyhead[LO,RE]{}
\fancyfoot[RO,LE]{\color{gray} \thepage}
\fancyfoot[C]{}
\renewcommand{\headrulewidth}{0pt}

\fancypagestyle{firstpage}{
\fancyhf{}
\fancyhead[L]{\color{gray} \fontsize{12}{0}\selectfont $\bf{26}^{\bf th}\textbf{ HumanTech Paper Award}$}
\fancyfoot[R]{\color{gray} \thepage}
}

\makeatletter
\let\ps@plain\ps@fancy 
\makeatother

%%%%%%%% Title Setting %%%%%%
\makeatletter
\renewcommand{\maketitle}{\vspace*{8pt}\bgroup\setlength{\parindent}{0pt}
\begin{flushleft}
  \fontsize{20}{0}\selectfont{\textbf{\vspace{15pt}\@title}}
\end{flushleft}\egroup
}
\makeatother

%%%%%%% Abstract Setting %%%%%
\renewcommand{\abstractname}{}
\renewcommand{\absnamepos}{empty}
\renewenvironment{abstract}
 {\small
%  \bfseries \abstractname\vspace{-2em}\vspace{0pt}
  \list{}{
    \setlength{\leftmargin}{0mm}
    \setlength{\rightmargin}{\leftmargin}
  }
  \item\relax
  }
 {\endlist}
 

%%%%%% Section Title Setting %%%%%%%
\titleformat*{\section}{\fontsize{11}{11}\selectfont\bfseries}
\titleformat*{\subsection}{\fontsize{10}{10}\selectfont}
\titleformat*{\subsubsection}{\fontsize{10}{10}\selectfont}
\def\thesection{\arabic{section}.}
\def\thesubsection{\arabic{section}.\arabic{subsection}.}
\def\thesubsubsection{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
\makeatletter
\renewcommand{\@seccntformat}[1]{\csname the#1\endcsname\ }
\makeatother

%%%%% Caption(Figure/Table) Setting %%%%%%%
\captionsetup[figure]{
name=Fig.,  % Figure label (FIG: --> FIGURE)
singlelinecheck=off} 
\captionsetup[table]{
name=Table,   % Table label (Table --> TABLE)
singlelinecheck=off  % Left aligned
}

%%%%% Theorem Setting %%%%%
\theoremstyle{plain}
\newtheorem{thm}{Theorem}

\theoremstyle{definition}
\newtheorem{defn}{Definition}

%%%%% Declaration of Modified mathsymbol `mycdot' %%%%%
\newcommand*\mycdot{{\mkern -1mu\cdot\mkern -1mu}}

%%%% Reference Setting %%%%
\renewcommand\refname{REFERENCES}

\makeatletter
\renewcommand{\@biblabel}[1]{[#1]\hfill}
\makeatother

\makeatletter
\renewenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \begin{enumerate}[label={[\arabic{enumi}]},itemindent=*,leftmargin=0pt,itemsep=-3pt]
      \@openbib@code
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \end{enumerate}}
\makeatother

