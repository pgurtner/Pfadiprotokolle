\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FreiwilligPfadiprotokoll}[2023/05/07 TeX-Klasse für Protokolle von freiwilligen Orga-Treffen bei den Pfadfindern.]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{./Pfadiprotokoll.cls}}
\ProcessOptions\relax

\LoadClass{../Pfadiprotokoll}

\renewcommand{\header}[2][Protokoll Führungsrunde]{
	\title{#1}
	\date{#2}
	\author{}
	\maketitle

	\tableofcontents
}

