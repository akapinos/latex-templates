\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{labreport}[2021/07/14 BSU LaTex lab report class]

\def\baseclass{extreport}
\PassOptionsToClass{oneside,final,14pt}{\baseclass}
\LoadClass{\baseclass}

\input{packages.tex}

%------------
% TITLE PAGE
% -----------

\def\@university{Белорусский Государственный Университет}
\def\@University{\MakeUppercase{\@university}}
\newcommand*{\university}[1]{\def\@university{#1}}

\def\@faculty{Факультет радиофизики и компьютерных технологий}
\def\@Faculty{\MakeUppercase{\@faculty}}
\newcommand*{\faculty}[1]{\def\@faculty{#1}}

\def\@department{Кафедра физики и аэрокосмических технологий}
\def\@Department{\MakeUppercase{\@department}}
\newcommand*{\department}[1]{\def\@department{#1}}

\def\@labtitle{Лабораторная работа №}
\def\@Labtitle{\MakeUppercase{\@labtitle}}
\newcommand*{\lab}[1]{{\@labtitle} {#1}}
\newcommand*{\Lab}[1]{{\@Labtitle} {#1}}

\def\@city{Минск}
\def\@City{\MakeUppercase{\@city}}
\newcommand*{\city}[1]{\def\@city{#1}}

\let\@num\@empty
\newcommand\num[1]{\def\@num{#1}}
\let\@instructor\@empty
\newcommand\instructor[1]{\def\@instructor{#1}}

\renewcommand{\maketitle}{
  \begin{titlepage}
        \thispagestyle{empty}
         \centerline{\@University}
         \centerline{\@Faculty}
         %\centerline{\@department}
         \vspace{50mm}
         \centerline{\Lab{\@num}}
         \begin{center}
           {\bf \MakeUppercase{\@title}}
         \end{center}
         \vspace{60mm}
         \normalsize
         \begin{flushleft}%
           \setlength{\leftskip}{80mm}
           Выполнил \\
           студент 2 курса 4 группы \\
           \@author \\
           Преподаватель \\
           \@instructor
         \end{flushleft}
         \vspace*{\fill}
         \centerline{\@City~\@date}
  \end{titlepage}
  \setcounter{page}{2}
 }