% vim: set filetype=tex

% The SamTeX cheatsheet class
% https://github.com/Samasaur1/samtex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{samtex-cheatsheet}[2022/10/15 A cheatsheet class based off of http://wch.github.io/latexsheet/]

\newcommand{\@colcount}{3}

\DeclareOption{twocol}{\renewcommand{\@colcount}{2}}
\DeclareOption{fourcol}{\renewcommand{\@colcount}{4}}

\newcommand{\@cheatsheetbodysize}{\footnotesize}

\DeclareOption{small}{\renewcommand{\@cheatsheetbodysize}{\scriptsize}}
\DeclareOption{extrasmall}{\renewcommand{\@cheatsheetbodysize}{\tiny}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[10pt,landscape]{article}
\RequirePackage{multicol}
\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage{geometry}
\RequirePackage{hyperref}

\ifthenelse{\lengthtest { \paperwidth = 11in}}
	{ \geometry{top=.5in,left=.5in,right=.5in,bottom=.5in} }
	{\ifthenelse{ \lengthtest{ \paperwidth = 297mm}}
		{\geometry{top=1cm,left=1cm,right=1cm,bottom=1cm} }
		{\geometry{top=1cm,left=1cm,right=1cm,bottom=1cm} }
	}

% Turn off header and footer
\pagestyle{empty}
 

% Redefine section commands to use less space
\renewcommand{\section}{\@startsection{section}{1}{0mm}%
                                {-1ex plus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%x
                                {\normalfont\large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}%
                                {-1explus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%
                                {\normalfont\normalsize\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}%
                                {-1ex plus -.5ex minus -.2ex}%
                                {1ex plus .2ex}%
                                {\normalfont\small\bfseries}}

% Don't print section numbers
\setcounter{secnumdepth}{0}


\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt plus 0.5ex}

\AtBeginDocument{
    \raggedright
    \@cheatsheetbodysize
    \begin{multicols}{\@colcount}


    % multicol parameters
    % These lengths are set only within the two main columns
    %\setlength{\columnseprule}{0.25pt}
    \setlength{\premulticols}{1pt}
    \setlength{\postmulticols}{1pt}
    \setlength{\multicolsep}{1pt}
    \setlength{\columnsep}{2pt}
}
\AtEndDocument{
    \end{multicols}
}
