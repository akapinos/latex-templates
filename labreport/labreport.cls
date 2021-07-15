\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{labreport}[2021/07/15 BSU LaTex lab report class]

\def\baseclass{extreport}
\PassOptionsToClass{oneside,final,14pt}{\baseclass}
\LoadClass{\baseclass}

\input{packages.tex}

%------------
% TITLE PAGE
% -----------

\RequirePackage[a4paper,left=35mm,right=15mm,top=20mm,bottom=20mm]{geometry}

\def\universityname{Белорусский Государственный Университет}
\newcommand*{\university}{\universityname}
\newcommand*{\University}{\MakeUppercase{\universityname}}
\def\labtitle{Лабораторная работа №}
\newcommand*{\lab}[1]{\labtitle {#1}}
\newcommand*{\Lab}[1]{\MakeUppercase{\labtitle} {#1}}
\def\cityname{Минск}
\newcommand*{\city}{\cityname}
\newcommand*{\City}{\MakeUppercase{\cityname}}

\renewcommand{\maketitle}{
  \begin{titlepage}
        \thispagestyle{empty}
         \centerline{\University}
         \centerline{\Faculty}
         \centerline{\department}
         \vspace{50mm}
         \centerline{\Lab}
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
           <ФИО преподавателя>
         \end{flushleft}
         \vspace*{\fill}
         \centerline{\City~\@date}
  \end{titlepage}
  \setcounter{page}{2}
 }