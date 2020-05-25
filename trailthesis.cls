%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Filename:    `trailthesis.cls'                                                                  %%        %%
%% Objective:   Style file for TRAIL thesis template
%% Created by:  Olaf Gietelink                                                                    %%
%% Date:        01-02-2007
%% %%
%% Adjusted by Rudy Negenborn, May 24, 2007
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[2007/01/01]
\ProvidesClass{trailthesis}[2007/01/01 my PhD thesis class]
\RequirePackage{fancyhdr}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[american,dutch]{babel}


\usepackage{graphicx}
%\DeclareGraphicsExtensions{.pstex}


\usepackage{color}
\usepackage{psfrag}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsbsy}
\usepackage{times}

% commenting next package changes font of calligraphic math (at least)!
%\usepackage{mathptmx}

\usepackage{latexsym}
%\usepackage{apjfonts} % uses CM font for greek letters


%\usepackage{dsfont}
%\usepackage{gensymb} % for providing some mathematical symbols like \degree
\usepackage{upgreek}

\usepackage{pifont} % provides special symbols from the ZapfDingbats font

%\usepackage{bm} % % comment this package when using apjfonts (for CM greek
%letters), uncomment for Times greek letters

%\usepackage{import}

%\usepackage{citesort}
\usepackage{subfigure}

%%\usepackage[dcucite]{harvard} %% gebruik eventueel \citeasnoun
%\usepackage{dcolumn} %% package for setting the table formatting for the IJVS column, OG, 020107

\usepackage{boxedminipage}
\usepackage{theorem}
\usepackage{tabularx}

\usepackage{pslatex} % instruction of DUP for correct fonts

\usepackage[hang,small]{caption} %% set font for figures
%\usepackage{subcaption}
\renewcommand{\captionfont}{\itshape}
\renewcommand{\captionlabelfont}{\itshape}
%\renewcommand{\captionfont}{\itshape}
%\renewcommand{\captionlabelfont}{\itshape}


%\usepackage{acronym}
%\usepackage{url}
%\usepackage{hyperref}
%\urlstyle{same}
%\usepackage{calc} % package for calculations within environment definitions
%\usepackage{makeidx} % for making index of mathematical symbols
%\makeindex

%\usepackage{robustindex}

%\usepackage[square,numbers,sort&compress]{natbib}
\usepackage{xspace}
\usepackage{slashbox} % slash box in table
\usepackage{pstricks} % provides drawing commands

% for using certain symbols
%\usepackage{textcomp}

%\usepackage{eurosans} % for euro symbol

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% added by rudy
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{2}     % section numbers up to sub-level

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Layout definition for TRAIL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[
paperheight=240mm,
paperwidth=165mm,
textheight=200mm,
textwidth=128mm,
top=20mm,
left=18.5mm,
headsep=5mm
]{geometry}

% move from center
%\addtolength{\oddsidemargin}{0.5cm}
%\addtolength{\evensidemargin}{-0.5cm} 

\linespread{1.03} % to allow for nicer line distance

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Heading commands for TRAIL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% define the headings %%%
\pagestyle{fancy}
\fancyhead[LE,RO]{\thepage}
%\fancyhead[LO]{\nouppercase{\slshape \rightmark}}
%\fancyhead[RE]{\nouppercase{\slshape \leftmark}}
\fancyhead[LO]{\nouppercase{\rightmark}}
\fancyhead[RE]{\nouppercase{\leftmark}}
\fancyfoot{}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter~~#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection~~#1}}
\renewcommand{\headrulewidth}{0.2mm}

\fancypagestyle{plain}{%
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
%\renewcommand{\footrulewidth}{0.2mm}
\fancyfoot[C]{\thepage}
}

% allow url to break urls after slashes
\def\UrlBreaks{}
\def\UrlBigBreaks{\do/}


\interdisplaylinepenalty=1000 % was infinite


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\ps@trailhead
\def\ps@trailhead{\let\@mkboth\@gobbletwo
     \def\@oddhead{\hfil}%
     \let\@evenhead=\@oddhead
     \def\@oddfoot{\hfil\thepage}%
     \def\@evenfoot{\hfil}%
     \def\@footrulewidth{0.2mm}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Floats placing commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\topfraction}{0.99}
\renewcommand{\bottomfraction}{0.99}
\renewcommand{\textfraction}{0}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Cropmark definitions for printing size
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[a4,center,noinfo]{crop}

\newcommand*\crosshairsulc{% % crosshairs
\begin{picture}(0,0)
\linethickness{0.2pt}
\put(-35,0){\line(1,0){30}}
\put(0,35){\line(0,-1){30}}
\end{picture}%
}

\newcommand*\crosshairsurc{% % crosshairs
\linethickness{0.2pt}
\begin{picture}(0,0)
\put(35,0){\line(-1,0){30}}
\put(0,35){\line(0,-1){30}}
\end{picture}%
}
\newcommand*\crosshairsllc{% % crosshairs
\linethickness{0.2pt}
\begin{picture}(0,0)
\put(-35,0){\line(1,0){30}}
\put(0,-35){\line(0,1){30}}
\end{picture}%
}
\newcommand*\crosshairslrc{% % crosshairs
\linethickness{0.2pt}
\begin{picture}(0,0)
\put(35,0){\line(-1,0){30}}
\put(0,-35){\line(0,1){30}}
\end{picture}%
}

\cropdef\crosshairsulc\crosshairsurc\crosshairsllc\crosshairslrc{crosshairs}

% cropmarks for printing
\crop[crosshairs] 
%\crop[frame]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% New environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\providecommand{\qedsymbol}{\ensuremath{\Box}}
\providecommand{\qed}{\ifmmode\qquad\qedsymbol
    \else\nobreak\hspace*{\fill}{$\qedsymbol$}\fi}

\newtheorem{theorem}{Theorem}[chapter]  %% counter is incremented by chapter
\newtheorem{problem}{Problem}[chapter]  %% counter is incremented by chapter
\newtheorem{example}{Example}[chapter]  %% counter is incremented by chapter
\newtheorem{algorithm}{Algorithm}[chapter]  %% counter is incremented by chapter
\newtheorem{definition}{Definition}[chapter]  %% counter is incremented by chapter

\newenvironment{proof}
    {\begin{trivlist}
     \item[]{\textbf{Proof\,:\,}}}
    {\qed\end{trivlist}}
\newenvironment{remark}
    {\refstepcounter{theorem}\begin{trivlist}\item[]{\bfseries
    Remark \thetheorem\,}}
    {\qed\end{trivlist}}
\newenvironment{remarknonum}
    {\begin{trivlist}\item[]{\bfseries
    Remark\,}:}
    {\qed\end{trivlist}}
\newenvironment{lemma}
    {\refstepcounter{theorem}\begin{trivlist}\item[]{\bfseries
    Lemma \thetheorem\quad} \begin{itshape}}
    {\end{itshape} \qed\end{trivlist}}

\renewenvironment{definition}[1]
    {\refstepcounter{definition}\begin{trivlist}\item[]{\bfseries
    Definition \thedefinition\quad #1}\newline}
    {\qed\end{trivlist}}
\renewenvironment{example}[1]
    {\refstepcounter{example}\begin{trivlist}\item[]{\bfseries
    Example \theexample\quad #1}\newline}
    {\qed\end{trivlist}}
\renewenvironment{problem}[1]
    {\refstepcounter{problem}\begin{trivlist}\item[]{\bfseries
    Problem \theproblem\quad #1}\newline}
    {\qed\end{trivlist}}
\renewenvironment{algorithm}[1]
    {\begin{center}\begin{boxedminipage}[t]{0.9\lw}\refstepcounter{algorithm}
    \begin{trivlist}\item[]{\bfseries Algorithm \thealgorithm\quad #1}\newline}
    {\end{trivlist}\end{boxedminipage}\end{center}}

%%% Define new command for entry environment with item in italic
\newcommand{\entrylabel}[1]{\mbox{\emph{#1}}\hfil}
\newenvironment{entry}
    {\begin{list}{}%
        {\renewcommand{\makelabel}{\entrylabel}%
%%        \setlength{\leftmargin}{0mm}%
        \setlength{\labelsep}{1em}%
        \setlength{\itemindent}{\labelwidth+\labelsep}%
        }%
    }%
    {\end{list}}

%% update figure environment to have standard small font
\renewenvironment{figure}[1][]{%
      \@float{figure}[#1]%
      \small
    \centering
  }{%
    \end@float
  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  HyperReference
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%
%\RequirePackage[dvips,ps2pdf,pdfpagelabels,plainpages=false]{hyperref}
%\RequirePackage[xetex,pdfpagelabels,plainpages=false]{hyperref}
% ------------------------------------------------------------------------
% Vincent, Oct 2019, vincent.gong7@gmail.com
% on my MacBook Pro, the dvips driver is not working and gives error.
% I have to remove the drips, ps2pdf in the below, and remove the breakurl package usage in this file.
% ------------------------------------------------------------------------
\RequirePackage[pdfpagelabels,plainpages=false]{hyperref}

\RequirePackage{colortbl}

\definecolor{darkred}{rgb}{0.5,0,0}
\definecolor{darkgreen}{rgb}{0,0.3,0}
\definecolor{darkblue}{rgb}{0,0,0.5}
%switch of blue temporarily
%\definecolor{darkblue}{rgb}{0,0,0}
\definecolor{darkbrown}{rgb}{0.28,0.07,0.07}
%
\hypersetup{colorlinks=false,
            breaklinks=true,
            citecolor=black,
            urlcolor=black,
            linkcolor=black,
            menucolor=darkblue,
            anchorcolor=red,
            pagecolor=cyan,
%  colorlinks=false,  % set for print version
%  pdfpagemode=None,  % PDF-Viewer startet ohne Inhaltsverzeichnis et.al.
	    pdfstartview=FitH, % PDF-Viewer benutzt beim Start bestimmte 
	    pdftitle={},
	    pdfauthor={},
	    pdfsubject={},
	    pdfkeywords={}
            }

%\usepackage{url}

% ------------------------------------------------------------------------
% % Vincent, Oct 2019, vincent.gong7@gmail.com
% In case using dvips driver, the "breakurl" should be used.
% ------------------------------------------------------------------------
%\usepackage{breakurl}
\urlstyle{same}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Table definitions:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\Hline{%
  \noalign{\ifnum0=`}\fi\hrule \@height 2\arrayrulewidth \futurelet
   \@tempa\@xhline}

\def\x{@{\extracolsep{\fill}}}
\def\toprule{\\[-5.5pt]\Hline\\[-3.5pt]}
\def\colrule{\\[-7.5pt]\hline\\[-5pt]}
\def\botrule{\\[-7.7pt]\Hline}
\def\crule#1{\\[-9.5pt]#1\\[-2.5pt]}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%% POOR MAN'S BOLD (form the TeXbook) is usefulin cases where a genuine
%%%% bold-face font is not available.
%%\newbox\pmbtrailbox
%%\def\pmbtrail#1{\setbox\pmbtrailbox=\hbox{#1}%
%%  \kern-.02em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
%%  \kern.04em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
%%  \kern-.02em\raise.04em\box\pmbtrailbox }

%%%% POOR MAN'S BOLD (form the TeXbook) is usefulin cases where a genuine
%%%% bold-face font is not available.
%%%% original definition
%%\newbox\pmbbox
%%\def\pmb#1{\setbox\pmbbox=\hbox{#1}%
%%  \kern-.02em\copy\pmbbox\kern-\wd\pmbbox
%%  \kern.04em\copy\pmbbox\kern-\wd\pmbbox
%%  \kern-.02em\raise.04em\box\pmbbox }

%% POOR MAN'S BOLD (form the TeXbook) is usefulin cases where a genuine
%% bold-face font is not available.
%%%% new definition for better resolution
%%%% modified by Olaf Gietelink, 15 May 2007
\newbox\pmbtrailbox
\def\pmbtrail#1{\setbox\pmbtrailbox=\hbox{#1}%
  \kern-.02em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
  \kern.01em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
  \kern.01em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
  \kern.01em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
  \kern.01em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
  \kern-.02em\raise.02em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
  \kern-.01em\raise.02em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
  \kern.02em\raise.02em\copy\pmbtrailbox\kern-\wd\pmbtrailbox
  \kern-.01em\raise.04em\box\pmbtrailbox }



%\newcommand{\vectgreek}[1]{\pmbtrail{\ensuremath{#1}}} 
%% define matrix/vector notation in case of Greek letters for Times New Roman font
\newcommand{\vectgreek}[1]{\boldsymbol{#1}} %define matrix/vector notation in case of Greek letters for Computer Modern (standard LaTeX font)


% make new chapters start on right side 
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}

% make sure that footnotes are at the bottom of pages (under tables/figures)
\usepackage[bottom]{footmisc}

