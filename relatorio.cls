\LoadClass[a4paper,11pt]{article} % Document class

%------------------------------------------------------------------------------%
%---------------------------------- Packages ----------------------------------%
%------------------------------------------------------------------------------%

\RequirePackage[left=2.5cm,right=2cm,top=2cm,bottom=3.5cm]{geometry} % Page and margins configuration
\RequirePackage[utf8]{inputenc} % Special characters
\RequirePackage[portuguese]{babel} % Document language
% \RequirePackage{lmodern}
\RequirePackage[section]{placeins} % For section placement
\RequirePackage[T1]{fontenc} % Some letters not included in UTF-8
\RequirePackage{listings}

\RequirePackage{comment}
% \RequirePackage[table]{xcolor} % for cell colors
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{booktabs, multirow, multicol} % for borders and merged ranges
\RequirePackage{mathtools} % Package for equations and mathematical symbols
\RequirePackage{siunitx} % For writing with scientific notation (Ex.: \num{2e+9})
\RequirePackage{float} % For image placement
\RequirePackage[pdftex]{graphicx} % Package for inserting images
\RequirePackage[justification=centering]{caption} % For centered captions
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{soul} % for underlines
\RequirePackage{changepage,threeparttable} % for wide tables
\RequirePackage{parskip}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{cleveref}
\RequirePackage{ntheorem}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}

\RequirePackage{ dsfont }
\RequirePackage{csvsimple} % Used to import and manage CSV files
\RequirePackage{karnaugh-map}
\RequirePackage{changepage}
\RequirePackage{gensymb}


%------------------------------------------------------------------------------%
%------------------------------ Custom Commands -------------------------------%
%------------------------------------------------------------------------------%

%------------------------------- CSV Auto Table -------------------------------%
\makeatletter
\csvset{
    autotabularcenter/.style={
        file=#1,
        after head=\csv@pretable\begin{tabular}{|*{\csv@columncount}{c|}}\csv@tablehead,
        table head=\hline\csvlinetotablerow\\\hline,
        late after line=\\,
        table foot=\\\hline,
        late after last line=\csv@tablefoot\end{tabular}\csv@posttable,
        command=\csvlinetotablerow},
    autobooktabularcenter/.style={
        file=#1,
        after head=\csv@pretable\begin{tabular}{*{\csv@columncount}{c}}\csv@tablehead,
        table head=\toprule\csvlinetotablerow\\\midrule,
        late after line=\\,
        table foot=\\\bottomrule,
        late after last line=\csv@tablefoot\end{tabular}\csv@posttable,
        command=\csvlinetotablerow},
}
\makeatother
\newcommand{\csvautotabularcenter}[2][]{\csvloop{autotabularcenter={#2},#1}}
\newcommand{\csvautobooktabularcenter}[2][]{\csvloop{autobooktabularcenter={#2},#1}}

%----------------------- UTF-8 Encoding for Code-Blocks -----------------------%
\lstset{literate=
    {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
    {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
    {à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
    {À}{{\`A}}1 {È}{{\`E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
    {ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
    {Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
    {â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
    {Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
    {ã}{{\~a}}1 {ẽ}{{\~e}}1 {ĩ}{{\~i}}1 {õ}{{\~o}}1 {ũ}{{\~u}}1
    {Ã}{{\~A}}1 {Ẽ}{{\~E}}1 {Ĩ}{{\~I}}1 {Õ}{{\~O}}1 {Ũ}{{\~U}}1
    {œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
    {ű}{{\H{u}}}1 {Ű}{{\H{U}}}1 {ő}{{\H{o}}}1 {Ő}{{\H{O}}}1
    {ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
    {€}{{\euro}}1 {£}{{\pounds}}1 {«}{{\guillemotleft}}1
    {»}{{\guillemotright}}1 {ñ}{{\~n}}1 {Ñ}{{\~N}}1 {¿}{{?`}}1 {¡}{{!`}}1 
}

\renewcommand{\lstlistingname}{Código} % Caption name for code-blocks in PT
\renewcommand{\lstlistlistingname}{Índice de códigos} % Title of Code Indices in PT

%-------------------------------------- ASM -----------------------------------%

\usetikzlibrary{arrows.meta, bending, calc, fit, positioning, shapes}

%--------------------------------------  --------------------------------------% date

\RequirePackage{datetime}
\RequirePackage{datetime2}
%------------------------------------------------------------------------------%

%------------------  ------------------%

\newcommand{\monthyeardate}{%
  \DTMenglishmonthname{\@dtm@month}, \@dtm@year
}
\addto\captionsportuguese{% Replace "english" with the language you use
  \renewcommand{\contentsname}%
    {Índice}%
}

\addto\captionsportuguese{% Replace "english" with the language you use
  \renewcommand{\contentsname}%
    {Índice}%
}
\addto\captionsportuguese{% Replace "english" with the language you use
  \renewcommand{\listfigurename}%
    {Índice de figuras}%
}

\addto\captionsportuguese{
    \renewcommand{\listtablename}
    {Índice de tabelas}%
    }


\usepackage[portuguese]{babel}