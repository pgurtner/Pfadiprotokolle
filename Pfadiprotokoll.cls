\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Pfadiprotokoll}[2022/09/23 TeX-Klasse für Protokolle bei den Pfadfindern]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{titling}
\RequirePackage{transparent}
\RequirePackage[normalem]{ulem}

\setcounter{tocdepth}{1}
\setlength{\parindent}{0pt}

\renewcommand*\contentsname{TOPs}
\geometry{
    a4paper,
    top=1.25cm
}
\renewcommand\maketitlehookc{\vspace{-10ex}}

\newcommand{\header}[5][Protokoll Führungsrunde]{
    \title{#1}
    \date{#2}
    \author{}
    \maketitle
    \begin{itemize}
        \item Anwesend: #3
        \item Unentschuldigt abwesend oder zu spät: #4
        \item Protokollführung: #5
    \end{itemize}
    \tableofcontents
}

\newcommand{\topic}[1]{
    \section{#1} \label{#1}
}

\newcommand{\subtopic}[1]{
    \subsection{#1} \label{#1}
}

\newcommand{\subsubtopic}[1]{
    \subsubsection{#1} \label{#1}
}

\newcommand{\voting}[4]{
    Abstimmung: #1
    \begin{itemize}
        \item ja: #2
        \item nein: #3
        \item enthaltung: #4
    \end{itemize}
}

\newcommand{\termin}[1]{
    \textbf{#1}
}
\newcommand{\comment}[1]{
    \transparent{0.6}
    \textit{#1}
    \transparent{1}
}
\newcommand{\ra}{$\rightarrow$\ }
\newcommand{\la}{$\leftarrow$\ }
\newcommand{\Ra}{$\Rightarrow$\ }
\newcommand{\La}{$\Leftarrow$\ }