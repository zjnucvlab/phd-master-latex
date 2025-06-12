%% 
%% This is file `zjnuthesis.cls'

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zjnuthesis}
[2023/8/17 v2.0 ZJNU Thesis Template]
\InputIfFileExists{zjnuthesis.cfg}{}{}
%% 选项
\DeclareOption{master}{\def\zjnudegree{M}}
\DeclareOption{doctor}{\def\zjnudegree{D}}

\newif\ifzjnu@side\zjnu@sidetrue
\DeclareOption{twoside}{\zjnu@sidetrue}
\DeclareOption{oneside}{\zjnu@sidefalse}

\newif\ifZJNU@typeinfo \ZJNU@typeinfotrue

\PassOptionsToPackage{AutoFakeBold}{xeCJK}

\ExecuteOptions{twoside,oneside}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\ifzjnu@side
  \LoadClass[a4paper,12pt,twoside,titlepage,openright,hyperref]{ctexbook}
  \def\zjnuside{T}
\else
  \LoadClass[a4paper,12pt,oneside,titlepage,hyperref]{ctexbook}
  \def\zjnuside{O}
\fi
%% ==============================================================

%% 宏包=========================================================
\RequirePackage[top=2.0cm,bottom=2.4cm,left=3.4cm,right=2.4cm,includehead,includefoot]{geometry} %页面设置
\RequirePackage{xifthen} %逻辑语言
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,mathrsfs,bm}% math packages 数学公式包，非数学系可无视之
\RequirePackage[perpage,symbol]{footmisc}
\setfnsymbol{wiley}
\RequirePackage[UTF8,heading = true]{ctex}% 中文
\RequirePackage{times} % 字体美化
\RequirePackage[OT1]{fontenc}% 字体美化2
\RequirePackage{graphicx,graphics,epstopdf}% 图像
\RequirePackage{fancyhdr}% fancy页面格式
\RequirePackage{titlesec}%标题定制1
\RequirePackage{titletoc}%目录标题定制2
\RequirePackage{caption}%标题定制3
\RequirePackage{nomencl}%术语表
\RequirePackage{float}%图片浮动
\RequirePackage{calc}%???
\RequirePackage{indentfirst}%默认空两格
\RequirePackage{algpseudocode}% algorithmicx宏包
\RequirePackage{algorithm}% algorithmicx宏包
\RequirePackage{tocbibind}% 将目录自己加进去
\RequirePackage[titles]{tocloft}%目录与插图
\RequirePackage{hyperref}%超链接
% \RequirePackage{url}%超链接
% \urlstyle{tt}%超链接形式
\RequirePackage{lscape}%横排页
\RequirePackage{longtable}%长表格
\RequirePackage{booktabs}%三线表
\RequirePackage{multirow}%多行合并
\RequirePackage{dcolumn}%???
\RequirePackage{colortbl}%???
\RequirePackage{threeparttable}%???
\RequirePackage{array}%对齐
\RequirePackage{csquotes}%中文引号
% super is for superscipt citation, numbers is necessary to generate the order. 
\RequirePackage[numbers,square,comma,super,sort&compress]{natbib}%参考文献样式
\bibliographystyle{preparations/gbt7714-2005.bst}%参考文献要求
%% ===============================================================
% 其他宏包
% \RequirePackage{tabularray}
\RequirePackage{multicol,tasks}

\RequirePackage{xcolor}

\RequirePackage{tikz}
\RequirePackage{ulem}

\RequirePackage{setspace}
\DeclareRobustCommand\nobreakspace{\leavevmode\nobreak\ }
% ==========================一些定义==============================================
\newcommand{\ZJNUthesis}{\makebox{\rmfamily \textsc{ZjnuThesis}}}
\newcommand{\ZJNU}{\makebox{\rmfamily \textsc{ZjNu}}}

\hypersetup{CJKbookmarks,%
  bookmarksnumbered,%
  colorlinks,%
  linkcolor=blue,%
  citecolor=blue,%
  plainpages=false,%
  pdfstartview=FitH,
  hidelinks
}

% ================================================================ 排版 =========================================================
\newcommand\hangju[1]{\def\ZJNU@value@hangju{#1}}
\parskip 0.5ex plus 0.25ex minus 0.25ex
\renewcommand{\baselinestretch}{1.25}  % 行距
\renewcommand{\arraystretch}{0.8} % 公式间距

% \abovedisplayskip=12pt plus 3pt minus 9pt
% \abovedisplayshortskip=0pt plus 3pt
% \belowdisplayskip=12pt plus 3pt minus 9pt
% \belowdisplayshortskip=7pt plus 3pt minus 4pt

\addtolength{\bibsep}{-0.5em}

% ================================================================================================================================

% ================================================================= 字号 =========================================================
\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}%初号
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}%小初
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}%一号
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{\baselineskip}\selectfont}%小一
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}%二号
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}%小二
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}%三号
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}%小三
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}%四号
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}%小四
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}%五号
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}%小五
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}%六号
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}%小六
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}%七号
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}%小七
% =================================================================================================================================

% ===============================================================字体准备==========================================================
% \newCJKfontfamily\Songti[AutoFakeBold = {1.7},Path=preparations/]{SimSun}%宋体
% \newCJKfontfamily[fs]\Fangsong[AutoFakeBold = {1.7},Path=preparations/]{Fangsong}%仿宋
% \newCJKfontfamily[kai]\Kaiti[AutoFakeBold = {1.7},Path=preparations/]{KaiTi}%楷体
% \newCJKfontfamily[hei]\Heiti[AutoFakeBold = {1.7},Path=preparations/]{SimHei}%黑体
\setCJKfamilyfont{song}[AutoFakeBold = {1.5},Path=preparations/]{SimSun}%宋体
\newcommand{\Songti}{\CJKfamily{song}}
\setCJKfamilyfont{fs}[AutoFakeBold = {1.5},Path=preparations/]{Fangsong}%仿宋
\newcommand{\Fangsong}{\CJKfamily{fs}}
\setCJKfamilyfont{kai}[AutoFakeBold = {1.5},Path=preparations/]{KaiTi}%楷体
\newcommand{\Kaiti}{\CJKfamily{kai}}
\setCJKfamilyfont{hei}[AutoFakeBold = {1.5},Path=preparations/]{SimHei}%黑体
\newcommand{\Heiti}{\CJKfamily{hei}}

\newcommand{\TNR}{\fontspec[Path=preparations/]{Times New Roman}}%Times New Roman

% \DeclareRobustCommand{\Fangsong}{\CJKfamily{fangsong}}
% \DeclareRobustCommand{\Heiti}{\CJKfamily{heiti}}
% \DeclareRobustCommand{\Kaiti}{\CJKfamily{kaiti}}
% \DeclareRobustCommand{\lishu}{\CJKfamily{lishu}}
% \DeclareRobustCommand{\Songti}{\CJKfamily{songti}}
% \DeclareRobustCommand{\youti}{\CJKfamily{youti}}

\setmainfont[BoldFont=Timesbd, Path=preparations/]{Times New Roman}%英文默认 Times New Roman
\setCJKmainfont[Path=preparations/]{SimSun}%中文默认宋体

% ====================================================================================================================================

% ====================================================================== 封面设计 =====================================================
% \def\ZJNU@underline[#1]#2{%
% \uline{\hbox to #1{\hfill#2\hfill}}}
% \def\ZJNUunderline{\@ifnextchar[\ZJNU@underline\uline}
\def\ZJNU@underline[#1]#2{%
  \uline{\centering\hb@xt@ #1{\hss#2\hss}\hskip3pt}}
\def\ZJNUunderline{\@ifnextchar[\ZJNU@underline\uline}
% \def\ZJNUunderline[#1]#2{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
%% 
%% labels in the title page
%% 
\def\ZJNU@value@SchoolName{浙~江~师~范~大~学}
\def\ZJNU@value@DegreeThesis{\ifthenelse{\equal{\zjnudegree}{D}}{博\hspace{24pt}士\hspace{24pt}学\hspace{24pt}位\hspace{24pt}论\hspace{24pt}文}{硕\hspace{36pt}士\hspace{36pt}学\hspace{36pt}位\hspace{36pt}论\hspace{36pt}文}}
\def\ZJNU@label@SchoolCode{\ifthenelse{\equal{\zjnudegree}{D}}{学校代码:}{学校代码}}
\def\ZJNU@label@ResearchType{\ifthenelse{\equal{\zjnudegree}{D}}{研究类型:}{研究类型}}
% \def\ZJNU@label@stuno{学\hspace{24pt}号:}
\def\ZJNU@label@cfdlevel{密\hspace{32pt}级:}%博士
\def\ZJNU@label@SchoolName{学校名称}
\def\ZJNU@label@DegreeThesis{硕士学位论文}
\def\ZJNU@label@Title{题~~目:}
\def\ZJNU@label@SubjectMajor{学\hspace{5.2pt}科\hspace{5.2pt}专\hspace{5.2pt}业：}
\def\ZJNU@label@Major{专\hspace{24pt}业:}
\def\ZJNU@label@FirstDiscip{一级学科:}%博士
\def\ZJNU@label@SecDiscip{二级学科:}%博士
\def\ZJNU@label@ResearchDir{研究方向:}%博士
\def\ZJNU@label@college{所在学院:}%博士
\def\ZJNU@label@Degree{学\hspace{24pt}位:}
\def\ZJNU@label@Institute{授予单位:}
\def\ZJNU@label@Grade{年\hspace{48pt}级:}
\def\ZJNU@label@StudentID{学\hspace{32pt}号:}
\def\ZJNU@label@Graduate{研\hspace{16pt}究\hspace{16pt}生:}
\def\ZJNU@label@Author{\ifthenelse{\equal{\zjnudegree}{D}}{作\hspace{32pt}者:}{作\hspace{15pt}者:}}
\def\ZJNU@label@author{作\hspace{15pt}者:}
\def\ZJNU@label@Advisor{指导教师:}
\def\ZJNU@label@Classification{中图分类号:}
\def\ZJNU@label@SubmitDate{论文提交时间:}
\def\ZJNU@label@submitDate{提交日期:}

%% 定义论文封面中需要用到的新命令
%% 
\newcommand\ZJNU@value@SchoolCode{\TNR \sanhao 10345}
\newcommand\ResearchType[1]{\def\ZJNU@value@ResearchType{#1}}
\newcommand\SchoolName[1]{\def\ZJNU@value@SchoolName{#1}}
\newcommand\DegreeThesis[1]{\def\ZJNU@value@DegreeThesis{#1}}
\newcommand\Title[1]{\def\ZJNU@value@Title{#1}}
\newcommand\SubjectMajor[1]{\def\ZJNU@value@SubjectMajor{#1}}
\newcommand\Major[1]{\def\ZJNU@value@Major{#1}}
\newcommand\Degree[1]{\def\ZJNU@value@Degree{#1}}
\newcommand\Institute[1]{\def\ZJNU@value@Institute{#1}}
\newcommand\Grade[1]{\def\ZJNU@value@Grade{#1}}
\newcommand\StudentID[1]{\def\ZJNU@value@StudentID{#1}}
\newcommand\Graduate[1]{\def\ZJNU@value@Graduate{#1}}
\newcommand\Author[1]{\def\ZJNU@value@Author{#1}}
\newcommand\Advisor[1]{\def\ZJNU@value@Advisor{#1}}
\newcommand\Classification[1]{\def\ZJNU@value@Classification{#1}}
\newcommand\SubmitDate[1]{\ifthenelse{\equal{\zjnudegree}{M}}{\def\ZJNU@value@SubmitDate{#1}}{}}
\newcommand\submitDate[1]{\ifthenelse{\equal{\zjnudegree}{D}}{\def\ZJNU@value@submitDate{#1}}{}}
\newcommand\Cfdlevel[1]{\ifthenelse{\equal{\zjnudegree}{D}}{\def\ZJNU@value@cfdlevel{#1}}{}}
\newcommand\FirstDiscip[1]{\ifthenelse{\equal{\zjnudegree}{D}}{\def\ZJNU@value@FirstDiscip{#1}}{}}
\newcommand\SecDiscip[1]{\ifthenelse{\equal{\zjnudegree}{D}}{\def\ZJNU@value@SecDiscip{#1}}{}}
\newcommand\ResearchDir[1]{\ifthenelse{\equal{\zjnudegree}{D}}{\def\ZJNU@value@ResearchDir{#1}}{}}
\newcommand\college[1]{\ifthenelse{\equal{\zjnudegree}{D}}{\def\ZJNU@value@college{#1}}{}}

%% 
%% 封面的排版格式
%% 
\newcommand\maketitlecn{%
  \cleardoublepage
  \thispagestyle{empty}
  \ifthenelse{\equal{\zjnudegree}{M}}{%硕士中文封面================================================================================
    \begin{center}
      \bf\Kaiti\sanhao
      \ZJNU@label@SchoolCode~
      \ZJNUunderline[100pt]{\ZJNU@value@SchoolCode}
      \hfill
      \ZJNU@label@ResearchType~
      \ZJNUunderline[100pt]{\ZJNU@value@ResearchType}
      \vskip \stretch{4}
      \begin{figure}[h]
        \begin{center}
          \scalebox{0.75}{\includegraphics{logo/ZJNULogo.eps}}
        \end{center}
      \end{figure}
      \vskip \stretch{2}
      \bf\Kaiti\xiaochu
      \ZJNU@value@DegreeThesis
      \vskip \stretch{4}
      \begin{tblr}{width=0.80\linewidth, colspec={@{}cX[c]@{}},%
          rowsep=-.17\baselineskip,% work with \raisebox{} below
          column{2}={font=\xiaoer\Heiti\centering},% 小2号、黑体
          hline{2} = {2}{leftpos=-1,rightpos=-1}, 
        }
        {\xiaoer\Heiti\ZJNU@label@Title}&{%\setstretch{1.2}%
          \makebox[0pt][s]{%
            \parbox[t]{.99\linewidth}{%
              \centering\ZJNU@value@Title\strut%\fbox{你好\strut}                  
            }}%
          \raisebox{-.177\baselineskip}[0pt][0pt]{% work with rowsep above
            \noindent\rule{\linewidth}{.4pt}}}\\%
      \end{tblr}

      \vskip \stretch{4}
      \bf\Kaiti\sanhao
      \def\tabcolsep{1pt}
      \def\arraystretch{1.5}
      \begin{tabular}{llcrl}
        \ZJNU@label@SubjectMajor 
        & \multicolumn{4}{l}{\ZJNUunderline[310pt]{\ZJNU@value@SubjectMajor}}
        \\
        \ZJNU@label@Grade 
        & \ZJNUunderline[70pt]{\ZJNU@value@Grade} 
        & \hspace{5pt} 
        & \ZJNU@label@StudentID 
        & \ZJNUunderline[130pt]{\ZJNU@value@StudentID}
        \\
        \ZJNU@label@Graduate 
        & \ZJNUunderline[70pt]{\ZJNU@value@Graduate} 
        & 
        & \ZJNU@label@Advisor 
        & \ZJNUunderline[130pt]{\ZJNU@value@Advisor}
        \\
        \ZJNU@label@Classification 
        & \ZJNUunderline[70pt]{\ZJNU@value@Classification} 
        & 
        & \ZJNU@label@SubmitDate 
        & \ZJNUunderline[130pt]{\ZJNU@value@SubmitDate}
      \end{tabular}
    \end{center}
    \clearpage
    \ifzjnu@side
      \thispagestyle{empty}
      \ifZJNU@typeinfo
        \vspace*{\stretch{1}}
        \begin{footnotesize}
          \noindent
          %% Typeset by \LaTeXe{} at \CTEX@todayold \\
          %% With package \texttt{ZJNUThesis} \CASTfileversion{} made by Ling.
        \end{footnotesize}
      \fi
      \cleardoublepage
    \fi
  }
  {%博士中文封面====================================================================================================================
    \newgeometry{% 研究生页边距
      paper=a4paper,
      top=3.1cm,
      bottom=3.3cm,
      left=2.6cm,
      right=2.6cm,
      headheight=0.8cm,
      headsep=0.7cm,
      footskip=1.4cm,
      % includehead,
      % includefoot,
    }
    \begin{center}
      \begin{tabular}{llcrr}
        \bf\Kaiti\sanhao
        \ZJNU@label@SchoolCode 
        & \ZJNUunderline[120pt]{\ZJNU@value@SchoolCode}
        & \quad\hspace{2cm}
        & \bf\Kaiti\sanhao\ZJNU@label@ResearchType 
        & \ZJNUunderline[120pt]{\Kaiti\sanhao\ZJNU@value@ResearchType}\\[.8em]
        \bf\Kaiti\sanhao\ZJNU@label@StudentID 
        & \ZJNUunderline[120pt]{\sanhao\ZJNU@value@StudentID}
        & 
        & \bf\Kaiti\sanhao\ZJNU@label@cfdlevel 
        & \ZJNUunderline[120pt]{\Kaiti\sanhao\ZJNU@value@cfdlevel}
      \end{tabular}
      \vskip \stretch{1.5}
      \begin{figure}[h]
        \begin{center}
          \scalebox{0.75}{\includegraphics{logo/ZJNULogo.eps}}
        \end{center}
      \end{figure}
      %	\vskip \stretch{2}
      \bf\Kaiti\xiaochu
      \ZJNU@value@DegreeThesis
      \vskip \stretch{2}
      \makebox[5em][c]{
        \parbox[t]{.99\linewidth}{
          \centering\Heiti\xiaoer\ZJNU@value@Title
        }}
      \vskip \stretch{2}
      \bf\Kaiti\sanhao
      \def\tabcolsep{1pt}
      \def\arraystretch{1.5}
      \begin{tabular}{rl}
        \ZJNU@label@Author~~~ 
        & \ZJNUunderline[200pt]{\ZJNU@value@Graduate}
        \\[-.25em]
        \ZJNU@label@Advisor~~~ 
        & \ZJNUunderline[200pt]{\ZJNU@value@Advisor} 
        \\[-.25em]
        \ZJNU@label@FirstDiscip~~~ 
        & \ZJNUunderline[200pt]{\ZJNU@value@FirstDiscip}
        \\[-.25em]
        \ZJNU@label@SecDiscip~~~ 
        & \ZJNUunderline[200pt]{\ZJNU@value@SecDiscip}
        \\[-.25em]
        \ZJNU@label@ResearchDir~~~ 
        & \ZJNUunderline[200pt]{\ZJNU@value@ResearchDir}
        \\[-.25em]
        \ZJNU@label@college~~~ 
        & \ZJNUunderline[200pt]{\ZJNU@value@college}
        \\[-.25em]
        \ZJNU@label@Classification~~~ 
        & \ZJNUunderline[200pt]{\ZJNU@value@Classification}
        \\[-.25em]
        \ZJNU@label@submitDate~~~ 
        & \ZJNUunderline[200pt]{\ZJNU@value@submitDate}
      \end{tabular}
      % \vskip \stretch{1}
    \end{center}
    \clearpage
    \ifzjnu@side
      \thispagestyle{empty}
      \ifZJNU@typeinfo
        \vspace*{\stretch{1}}
        \begin{footnotesize}
          \noindent
          %% Typeset by \LaTeXe{} at \CTEX@todayold \\
          %% With package \texttt{ZJNUThesis} \CASTfileversion{} made by Ling.
        \end{footnotesize}
      \fi
      \cleardoublepage
    \fi
  }
}
% \restoregeometry
%% 定义论文扉页中需要用到的新命令==================================================================================================
%% 
\def\ZJNU@label@EnglishAuthor{Author:}
\def\ZJNU@label@EnglishAdvisor{Supervisor:}
\def\ZJNU@label@EnglishMajor{Major:}
\def\ZJNU@label@EnglishDegree{Degree:}
\def\ZJNU@label@EnglishInstitute{Institute:}
%% 
%% string values filled in the english title page
%% 
\def\ZJNU@value@EnglishTitle{(English Title of Thesis)}
\def\ZJNU@value@EnglishAuthor{(Author Name)}
\def\ZJNU@value@EnglishAdvisor{(Supervisor's Name)}
\def\ZJNU@value@EnglishInstitute{(Institute Name)}
\def\ZJNU@value@EnglishDate{%
  \ifcase\month\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December\fi
  , \number\year}
\def\ZJNU@value@EnglishDegree{}
\def\ZJNU@value@EnglishMajor{}

\newcommand\EnglishTitle[1]{\def\ZJNU@value@EnglishTitle{#1}}
\newcommand\EnglishAuthor[1]{\def\ZJNU@value@EnglishAuthor{#1}}
\newcommand\EnglishAdvisor[1]{\def\ZJNU@value@EnglishAdvisor{#1}}
\newcommand\EnglishInstitute[1]{\def\ZJNU@value@EnglishInstitute{#1}}
\newcommand\EnglishDate[1]{\def\ZJNU@value@EnglishDate{#1}}
\newcommand\EnglishDegree[1]{\def\ZJNU@value@EnglishDegree{#1}}
\newcommand\EnglishMajor[1]{\def\ZJNU@value@EnglishMajor{#1}}
%% 
%% 扉页的排版格式
%% 
\newcommand\maketitleen{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \bf\Heiti\sanhao  \ZJNU@value@Title
    \vskip 40pt
    \bf\sanhao \ZJNU@value@EnglishTitle
    \vskip 60pt
    \Songti\xiaosan
    \ZJNU@label@author \hspace{5pt}
    \ZJNUunderline[120pt]{\ZJNU@value@Author}
    \vskip 20pt
    \Songti\xiaosan
    \ZJNU@label@EnglishAuthor \hspace{5pt}
    \ZJNUunderline[120pt]{\ZJNU@value@EnglishAuthor}
    \vskip \stretch{1}
    \bf\Kaiti\xiaosi
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \begin{tabular}{llcrl}
      \ZJNU@label@Advisor 
      & \ZJNUunderline[100pt]{\ZJNU@value@Advisor} 
      & \hspace{5pt} 
      & \ZJNU@label@EnglishAdvisor \hspace{5pt} 
      & \ZJNUunderline[180pt]{\ZJNU@value@EnglishAdvisor}
      \\[-30pt]
      \ZJNU@label@Major 
      & \ZJNUunderline[100pt]{\ZJNU@value@Major} 
      & \hspace{5pt} 
      & \ZJNU@label@EnglishMajor \hspace{5pt} 
      & \ZJNUunderline[180pt]{\ZJNU@value@EnglishMajor}
      \\[-30pt]
      \ZJNU@label@Degree 
      & \ZJNUunderline[100pt]{\ZJNU@value@Degree} 
      & \hspace{5pt} 
      & \ZJNU@label@EnglishDegree \hspace{5pt} 
      & \ZJNUunderline[180pt]{\ZJNU@value@EnglishDegree}
      \\[-30pt]
      \ZJNU@label@Institute 
      & \ZJNUunderline[100pt]{\ZJNU@value@Institute} 
      & \hspace{5pt} 
      & \ZJNU@label@EnglishInstitute \hspace{5pt} 
      & \ZJNUunderline[180pt]{\ZJNU@value@EnglishInstitute}
      \\
    \end{tabular}
    \vskip 50pt
    \normalfont\xiaosan \ZJNU@value@EnglishDate
  \end{center}
  \clearpage
  \ifzjnu@side
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
% \renewcommand{\baselinestretch}{\ZJNU@value@hangju}

% =================================================================================================================================
% ====================================摘要, 研究成果, 承诺书, 独创性声明===========================================================
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}
\newcommand\NNchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter*{#1}%
    \@mainmattertrue%
  \else
    \chapter*{#1}%
  \fi}
\newcommand\Nsection[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \section{\sihao #1}%
    \@mainmattertrue%
  \else
    \section*{\sihao #1}%
  \fi}

%% 中文摘要
%% 
\def\ZJNU@label@Abstract{\Heiti\xiaosan 摘\quad 要}
\def\ZJNU@label@EnglishAbstract{\TNR \xiaosan ABSTRACT}
\def\ZJNU@label@Keywords{关键词：}
\def\ZJNU@label@EnglishKeywords{KEY WORDS:~}
\newenvironment{Abstract}
{\NNchapter{\centerline\ZJNU@value@Title}
  {\centering\Nsection{{\centerline\ZJNU@label@Abstract}}}
  % \NNchapter{\vspace*{-5em} \centerline\ZJNU@label@Abstract}
  \chaptermark{摘要}
  \addcontentsline{toc}{chapter}{摘 \quad 要}\vspace{1ex}}
{\zihao{-4}}
\newcommand\Keywords[1]{%
  \vspace{2ex}\indent{\heiti \zihao{4}\ZJNU@label@Keywords} \zihao{-4}#1}

%% 英文摘要
%% 
\newenvironment{EnglishAbstract}
{\NNchapter{\centerline\ZJNU@value@EnglishTitle}
  {\centering\Nsection{{\centerline\ZJNU@label@EnglishAbstract}}}
  % \NNchapter{\vspace*{-5em} \centerline\ZJNU@label@EnglishAbstract}
  \chaptermark{Abstract}
  \addcontentsline{toc}{chapter}{ABSTRACT}\vspace{1ex}
\TNR}
{\zihao{-4} }
\newcommand\EnglishKeywords[1]{%
  \vspace{2ex}\indent{\zihao{4}\ZJNU@label@EnglishKeywords} \zihao{-4}#1}

%% 诚信承诺书
%% 
\def\ZJNU@label@commitment{浙江师范大学学位论文诚信承诺书}
\newenvironment{Commitment}
{\Nchapter{\ZJNU@label@commitment}}
{}

%% 独创性声明
%% 
\def\ZJNU@label@OriginalityStatements{浙江师范大学学位论文独创性声明}
\newenvironment{OriginalityStatements}
{\Nchapter{\ZJNU@label@OriginalityStatements}}
{}

%% 
%% 学位论文使用授权声明
%% 
\def\ZJNU@label@LicenseStatements{学位论文使用授权声明}
\newenvironment{LicenseStatements}
{\Nchapter{\ZJNU@label@LicenseStatements}}
{}
% =================================================================================================================================



% =================================================================章节格式=========================================================
\setcounter{secnumdepth}{4}%
\setcounter{tocdepth}{2}  % 设置目录的深度到 subsection
% 
\titleformat{\chapter}[hang]%章定义
% {\sanhao\Heiti\centering}{第\chinese{chapter}章}{1em}{}{}%三号黑体
{\sanhao\Heiti\centering}{第\arabic{chapter}章}{1em}{}{}%三号黑体

% \titlespacing{\chapter}{0pt}{0.3\baselineskip}{0.3\baselineskip}
\titlespacing{\chapter}{0pt}{10pt}{10pt}

% 
\titleformat{\section}[hang]%节定义
{\xiaosan\Heiti}{\thesection}{1em}{}{}%小三黑体
\titlespacing{\section}{0pt}{10.5pt}{6pt}%{0.6\baselineskip}{0.4\baselineskip}
% \titlecontents{section}[2.2em]{}{\contentslabel{2.2em}}{\hspace{-3.2em}}{\titlerule*[10pt]{.}\contentspage}
% 
\titleformat{\subsection}[hang]%小节定义
{\sihao\Heiti}{\thesubsection}{1em}{}{}%四号黑体
\titlespacing{\subsection}{0pt}{0.1\baselineskip}{0.1\baselineskip}
% \titlecontents{subsection}[3.0em]{}{\contentslabel{3.0em}}{\hspace{-5.0em}}{\titlerule*[10pt]{.}\contentspage}
% 
\titleformat{\subsubsection}[hang]%二层小节定义
{\xiaosi\Heiti}{\thesubsubsection}{1em}{}{}%小四黑体
\titlespacing{\subsubsection}{0pt}{0.0\baselineskip}{0.0\baselineskip}
\pagestyle{fancy}\fancyhf{}


% =============================================================================================================================



% ======================================================页眉页脚================================================================
% 标题页眉页脚格式设置（可修改）
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[C,C]{\small~\thepage~}
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\pagestyle{fancy}
\fancyhf{}
% \renewcommand{\chaptername}{\thechapter}}
% \renewcommand{\chaptermark}[1]{%
% \markboth{第\chinese{chapter} 章 \quad #1}{}}

\fancyhead[CO]{\small\leftmark}
\fancyhead[CE]{\small\leftmark}
\fancyfoot[C,C]{\small~\thepage~}

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
      \thispagestyle{empty}%
      \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}%%删除空白偶数页的页眉页脚
% ========================================================================================================================================



% ========================================================================================================================================
\renewcommand{\contentsname}{{目 \quad 录}}
\renewcommand{\listfigurename}{\centerline{图目录}}
\renewcommand{\listtablename}{\centerline{表目录}}
\renewcommand{\bibname}{参考文献}
\renewcommand{\nomname}{\centerline{术语表}}
\renewcommand{\nomlabelwidth}{25mm}
\renewcommand{\nompreamble}{\vspace{1em}}
\makenomenclature
\renewcommand{\figurename}{图} % 插图题头
\renewcommand{\tablename}{表} % 插表题头
\captionsetup[table]{position=top,labelsep=space}
\captionsetup[figure]{position=bottom,labelsep=space}
% \renewcommand{\captionlabeldelim}{} %% 定义如 "图(表)1: 示例" 中的间隔符号,如 ":" ,这里定义为空
% \renewcommand{\captionlabelsep}{\hspace{1em}} %定义图表编号与标题间的间隔距离
% \setlength{\belowcaptionskip}{6mm}
% \setlength{\abovecaptionskip}{-6mm}
% \renewcommand{\footnotesize}{\xiaowu}
\renewcommand{\footnotesize}{\wuhao}
\captionsetup[subfigure]{font=footnotesize}

\let\oldfootnote\footnote
\renewcommand\footnote[1]{\oldfootnote{\renewcommand\baselinestretch{1.0}%
    \large\footnotesize\ignorespaces#1}} \addtolength{\footnotesep}{1pt}
\addtolength{\skip\footins}{2mm plus 2mm}
\renewcommand{\@makefnmark}{\mbox{\textsuperscript{\textcircled{\tiny\@thefnmark}}}}
\newcommand{\citezp}[2][]{\citep{#2}\textsuperscript{#1}}
\newcommand{\citezt}[2][]{\citet{#2}\textsuperscript{#1}}
\newcommand{\citez}[2][]{\cite{#2}\textsuperscript{#1}}
\newcommand\xunderline[2][4cm]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}%自定义下划线


%% autoref 名称修改
%% 
\def\equationautorefname{式}%
\def\footnoteautorefname{脚注}%
\def\itemautorefname{项}%
\def\figureautorefname{图}%
\def\tableautorefname{表}%
\def\partautorefname{篇}%
\def\appendixautorefname{附录}%
\def\chapterautorefname{章}%
\def\sectionautorefname{节}%
\def\subsectionautorefname{小小节}%
\def\subsubsectionautorefname{subsubsection}%
\def\paragraphautorefname{段落}%
\def\subparagraphautorefname{子段落}%
\def\FancyVerbLineautorefname{行}%
\def\theoremautorefname{定理}%
% ==============================================================================================================================



% ====================================================================目录================================================
\newcommand\ZJNUspace{\phantom{永永}}	%要两个空格
%% 目录
%% 
%% 去除目录的缩进
\setlength{\cftsecindent}{0pt}
\setlength{\cftsubsecindent}{0pt}
\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}} % for parts
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % for chapters
\CTEXsetup[number={\thechapter}]{chapter}
% ==============================================================================================================================



% ========================================================= 自定义环境、命令设置 ========================================================
%% 定理环境
%% 
\renewcommand{\proofname}{\Heiti 证明}
\theoremstyle{plain}
\newtheorem{theorem}{\Heiti 定理}[chapter]
\newtheorem{lemma}[theorem]{\Heiti 引理}
\newtheorem{proposition}[theorem]{\Heiti 命题}
\newtheorem{corollary}[theorem]{\Heiti 推论}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{\Heiti 定义}
\newtheorem{example}[theorem]{\Heiti 例}
\newtheorem{remark}[theorem]{\Heiti 注}

\newtheorem*{theorem*}{\Heiti 定理}
\newtheorem*{lemma*}{\Heiti 引理}
\newtheorem*{definition*}{\Heiti 定义}
\newtheorem*{corollary*}{\Heiti 推论}
\newtheorem*{remark*}{\Heiti 注}
\newtheorem*{proposition*}{\Heiti 命题}
\newcolumntype{.}{D{.}{.}{2.4}}


% ==========================================================多余设置============================================================


\DeclareRobustCommand{\zjnuthesis}{\textsc{zjnu}\-\textsc{Thesis}}
\DeclareRobustCommand{\thuthesis}{\textsc{Thu}\-\textsc{Thesis}}
\DeclareRobustCommand{\zjnubiaozhun}{《浙江师范大学研究生学位论文编写规则》}
\DeclareRobustCommand{\gbt7714}{《GB/T 7714-2005：文后参考文献著录规则》}
% =======================================================================================================================
\endinput
%% 
%% End of file `zjuthesis.cls'.
