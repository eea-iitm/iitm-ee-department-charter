\ProvidesClass{charter}[2019/02/12 v1 Document class for typesetting department charter]

\LoadClass{report}

\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage[colorlinks,linkcolor=black]{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}
\RequirePackage{titling}
\RequirePackage{array}
\RequirePackage{tabularx}

\titleclass\article{straight}[\part]
\titleformat{\article}[display]{\filcenter\normalfont\bfseries\LARGE}{Article \thearticle}{0pt}{\filcenter\normalfont\bfseries\LARGE}
\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]
\newcounter{article}
\renewcommand\thearticle{\Roman{article}}

\titlecontents{article}
[1.5em]
{\bfseries}
{\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}

\titlespacing*{\section}{0mm}{0.5em}{-3em}
\makeatletter
\@addtoreset{section}{article}
\makeatother
\titleformat{\section}[hang]{\normalfont\Large\scshape}
{}{0em}{}[\hfill\vspace{1em}]

\titlespacing*{\subsection}{0mm}{0.5em}{-2.5em}
\makeatletter
\@addtoreset{subsection}{section}
\makeatother
\titleformat{\subsection}[hang]{\normalfont\scshape\large}{}{0em}{}[\hfill\vspace{1em}]

\titlespacing*{\subsubsection}{0mm}{0.5em}{-2em}
\makeatletter
\@addtoreset{subsubsection}{subsection}
\makeatother
\titleformat{\subsubsection}[hang]{\normalfont\scshape}{}{0em}{}[\hfill\vspace{1em}]

%Use chapter as a section but for annexures
\titlespacing*{\chapter}{0mm}{0.5em}{-3em}
\makeatletter
\@addtoreset{section}{article}
\makeatother
\titleformat{\chapter}[hang]{\normalfont\Large\scshape}
{}{0em}{}[\hfill\vspace{1em}]

\renewcommand{\thesection}{\arabic{section}} 
\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii}}

\newcolumntype{Y}{>{\centering\arraybackslash}X}


\makeatletter
\providecommand*{\toclevel@article}{0} 
\edef\toclevel@authorch{\the\numexpr\toclevel@article+1} 
\makeatother