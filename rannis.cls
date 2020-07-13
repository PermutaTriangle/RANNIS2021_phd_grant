\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rannis}[2015/08/11 Rannis project proposal class]
\LoadClass[12pt,a4paper,oneside]{article}

\RequirePackage{ifthen}
\newboolean{@stix}
\setboolean{@stix}{true}

\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{11pt}{\OptionNotUsed}
\DeclareOption{letterpaper}{\OptionNotUsed}
\DeclareOption{a5paper}{\OptionNotUsed}
\DeclareOption{b5paper}{\OptionNotUsed}
\DeclareOption{executivepaper}{\OptionNotUsed}
\DeclareOption{legalpaper}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{landscape}{\OptionNotUsed}
\DeclareOption{notitlepage}{\OptionNotUsed}
\DeclareOption{titlepage}{\OptionNotUsed}
\DeclareOption{openright}{\OptionNotUsed}
\DeclareOption{openany}{\OptionNotUsed}
\DeclareOption{twoside}{\OptionNotUsed}
\DeclareOption{stix}{\setboolean{@stix}{true}}
\DeclareOption{times}{\setboolean{@stix}{false}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{ifthen}
\RequirePackage{ifpdf}

% Fonts
\RequirePackage[T1]{fontenc}
\ifthenelse{\boolean{@stix}}{
  \RequirePackage{stix}
}{
  \RequirePackage{mathptmx}
}

% Required spacing
\RequirePackage{setspace}
%\onehalfspacing
\spacing{1.125}
\normalsize

% Page layout
\RequirePackage[a4paper,left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm,footskip=2em]{geometry}

% Head and foot lines
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\footnotesize The Icelandic Research Fund 2021\\
  Detailed project description}
\chead{}
\rhead{\footnotesize \@author\\}
\lfoot{\footnotesize Doctoral Student Grant\\
  New proposal}
\cfoot{}
\rfoot{\footnotesize \@title\\
  Page {\thepage} of {\lastpageref}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.5pt}
\setlength{\headheight}{26pt}

% Section headings
\RequirePackage{xcolor}
\definecolor{Heading}{rgb}{0.329,0.541,0.718}

\RequirePackage{titlesec}
\renewcommand{\thesection}{\Alph{section}}
\titleformat{\section}{\scshape\bfseries\color{Heading}}{\thesection.}{5pt}{}[\hrule]
\titleformat{\subsection}{\bfseries\color{Heading}}{\thesubsection.}{5pt}{}

% Graphics
\RequirePackage{graphicx}


% This will layout the title page.

\newcommand{\@proposalyear}{2021}
\newcommand{\proposalyear}[1]{\renewcommand{\@proposalyear}{#1}}

\renewcommand{\maketitle}{%
  \thispagestyle{empty}%
  \begin{center}
    \includegraphics[width=4.45cm]{rannsoknasjodur.png}
  \end{center}
  \vspace{0.5in}
  \begin{center}
    \Huge\bfseries\@proposalyear
  \end{center}
  \vspace{1in}
  {\color{Heading}\hrule height 2pt}
  \begin{center}
    \Large \bfseries \@author\\
%    (School of Computer Science, Reykjavik University)
  \end{center}
  \vspace{0.5in}
  \begin{center}
    \huge \bfseries\@title
  \end{center}
  \vspace{0.5in}
  \begin{center}
    \large\bfseries
    The Icelandic Research Fund \@proposalyear \\
    Doctoral Student Grant --- New proposal \\
    Detailed project description
  \end{center}
  \vspace{.5in}
  \begin{center}
    \includegraphics[width=1.83cm]{rannis.png}
  \end{center}
  \vfill
  {\color{Heading}\hrule height 2pt}
  \newpage
}
\usepackage[utf8]{inputenc}
% Bibliography
\RequirePackage{csquotes}
\RequirePackage{doi}
\RequirePackage{url}
\RequirePackage[square,semicolon,sort&compress,elide, numbers]{natbib}

\let\@rigbibsection\bibsection
\renewcommand{\bibsection}{\newpage\singlespacing\pagestyle{fancy}\@rigbibsection}

\endinput
