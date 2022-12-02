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
\RequirePackage{amssymb}
\RequirePackage{array}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tocloft}
\RequirePackage{fancyhdr}

\newcommand{\headingcolor}{\color{MidnightBlue}}
\newcommand{\stdcolor}{\color{black}}

\renewcommand\cftsecdotsep{\cftdot}
\setcounter{tocdepth}{1}
\setlength{\parindent}{0pt}

\renewcommand*\contentsname{\headingcolor Tagesordnungspunkte}
\geometry{
    a4paper,
    top=1.25cm
}
\renewcommand\maketitlehookc{\vspace{-10ex}}

\newcommand{\header}[4][Protokoll Führungsrunde]{
    \title{#1}
    \date{#2}
    \author{}
    \maketitle

    \begin{table}[h]
        \def\arraystretch{1.5}
        \centering
        \begin{tabular}{|m{0.25\textwidth}|m{0.75\textwidth}|}
            \hline
            Unentschuldigt zu spät oder abwesend & #3 \\
            \hline
            Protokollführung & #4 \\
            \hline
        \end{tabular}
    \end{table}
    \tableofcontents
}

\newcommand{\topic}[1]{%
    \headingcolor%
    \section{#1} \label{#1-1}%
    \stdcolor%
}

\newcommand{\subtopic}[1]{%
    \headingcolor%
    \subsection{#1} \label{#1-2}%
    \stdcolor%
}

\newcommand{\subsubtopic}[1]{%
    \headingcolor%
    \subsubsection{#1} \label{#1-3}%
    \stdcolor%
}

\newcommand{\notes}[1]{%
    \begin{itemize}%
        #1%
    \end{itemize}%
}

\newcommand{\nt}[1]{%
    \item #1%
}

\newcommand{\voting}[4]{
    Abstimmung: #1
    \begin{itemize}
        \item ja: #2
        \item nein: #3
        \item enthaltung: #4
    \end{itemize}
}

\newcommand{\termin}[1]{%
    \textbf{#1}%
}

\newcommand{\comment}[1]{%
    \transparent{0.6}%
    \textit{#1}%
    \transparent{1}%
}

\newcommand{\ra}{$\rightarrow$\ }
\newcommand{\la}{$\leftarrow$\ }
\newcommand{\Ra}{$\Rightarrow$\ }
\newcommand{\La}{$\Leftarrow$\ }

\renewcommand{\t}{
    $\looparrowright$\ 
}
