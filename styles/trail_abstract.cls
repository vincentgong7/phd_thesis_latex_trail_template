% TRAIL class file
%
% 10/08/04 Created by Rudy Negenborn
%
% Usage:
% You should have the following preamble:
%
%   \documentclass{trail_abstract} or
%
% ... and then specify keywords in preamble, like this:
%   \keywords{My keywords, Second keyword}
%
% after \begin{document}:
%   \copyrightauthors{X, Y, Z}      % if applicable
%   \shortpapertitle{Short title}   % if applicable
%   \trailtitlepage{Title}{Author 1, Author 2}{Faculty, University}
% or
%   \trailtitlepage[Subtitle]{Title}{Author 1, Author 2}{Faculty, University}
%
% Then use for your abstract:
%   \begin{trailabstract}
% In this abstract a short summary of the results of this paper is given.
%   \end{trailabstract}

% For tables and figures you should probably need [h] to prevent placing
% above a new section.

% Finally, use the trail.bst style file for your references:
%   \bibliographystyle{trail_04}
%   \bibliography{references}


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{trail_abstract}[2004/08/04]

\LoadClass[twoside,a4paper,12pt]{article}

\newif\if@loadsubfigure
\@loadsubfigurefalse
\DeclareOption{subfigure}{\@loadsubfiguretrue}
\newif\if@sortcitations
\@sortcitationsfalse
\DeclareOption{sortcitations}{\@sortcitationstrue}
\ProcessOptions

\RequirePackage{times}
\RequirePackage{fancyhdr}
\RequirePackage{sectsty}
\if@sortcitations
   \RequirePackage[sort]{natbib}
\else
   \RequirePackage{natbib}
\fi

\if@loadsubfigure
   \usepackage[subfigure]{tocloft}
   \usepackage{subfigure}
\else
   \usepackage{tocloft}
\fi

\sectionfont{\clearpage}


\renewcommand\footnoterule{%
\kern-3\p@
\hrule\@width51mm
\kern2.6\p@}

\renewcommand{\cftdot}{.}
\renewcommand{\cftdotsep}{1}
\renewcommand{\cftsecdotsep}{\cftdotsep}



\cftlocalchange{toc}{150mm}{0mm}
\cftaddtitleline{toc}{section}{Abstract}{}
\cftlocalchange{toc}{1em}{1em}

\setlength{\cftsubsecindent}{0pt}
\setlength{\cftsubsubsecindent}{0pt}
\setlength{\cftparaindent}{0pt}
\setlength{\cftsecnumwidth}{20mm}
\setlength{\cftsubsecnumwidth}{20mm}
\setlength{\cftsubsubsecnumwidth}{20mm}
\setlength{\cftparanumwidth}{20mm}
\setlength{\cftbeforesecskip}{7mm}
\setlength{\cftbeforesubsecskip}{3mm}

\setlength{\cftbeforetoctitleskip}{-5mm}
\setlength{\cftaftertoctitleskip}{20mm}


\newlength{\myleftmargin}
\newlength{\mytopmargin}
\newlength{\myrightmargin}
\newlength{\mybottommargin}

\setlength{\myleftmargin}{3.81cm}
\setlength{\mytopmargin}{1.3cm}
\setlength{\myrightmargin}{2.54cm}
\setlength{\mybottommargin}{2.8cm}

\setlength{\hoffset}{-1in}
\setlength{\voffset}{-1in}
\setlength{\oddsidemargin}{\myleftmargin}
\setlength{\evensidemargin}{\myrightmargin}
\setlength{\topmargin}{\mytopmargin}
\setlength{\textwidth}{21cm}
\addtolength{\textwidth}{-\myleftmargin}
\addtolength{\textwidth}{-\myrightmargin}
\setlength{\textheight}{29.7cm}
\addtolength{\textheight}{-\mytopmargin}
\addtolength{\textheight}{-\mybottommargin}
\setlength{\headheight}{14pt}
\setlength{\headsep}{1cm}
\addtolength{\textheight}{-\headheight}
\addtolength{\textheight}{-\headsep}
\addtolength{\textheight}{-\headrulewidth}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\bfseries #1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    \bfseries #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}


\newcommand{\trailyear}{2004}
\newcommand{\trailmonth}{November}
\newcommand{\keywords}[1]{\newcommand{\trailkeywords}{#1}}
\newcommand{\conferencetitle}{TRAIL Research School, Delft,
                              \trailmonth\ \trailyear}

\newcommand{\objectives}[1]{\newcommand{\trailobjectives}{#1}}
\renewcommand{\abstract}[1]{\newcommand{\trailabstract}{#1}}
\newcommand{\relevance}[1]{\newcommand{\trailrelevance}{#1}}
\renewcommand{\title}[1]{\newcommand{\trailtitle}{#1}}
\newcommand{\authors}[1]{\newcommand{\trailauthors}{#1}}
\newcommand{\addresses}[1]{\newcommand{\trailaddresses}{#1}}


\pagestyle{empty}

\newcommand{\trailabstractpage}[1][]{%

 % \thispagestyle{empty}
  
  {\noindent \Large \bf \trailtitle}
  \\
  \\
  {\large \bf \trailauthors}\\
  {\large \trailaddresses}\\
  \\
  \\
  \\
  {\noindent \large \bf Objectives}\\
  {\large \textit{\trailobjectives}}
  \\
  \\
  \\
  {\noindent \large \bf Abstract}\\
  {\large \textit{\trailabstract}}
  \\
  \\
  \\
  {\noindent \large \bf Relevance}\\
  {\large \textit{\trailrelevance}}
  
}




