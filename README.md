## Installation

### macOS

```bash
mkdir -p ~/Library/texmf/tex/latex
cd ~/Library/texmf/tex/latex
git clone https://github.com/Samasaur1/samtex
```

### Linux

```bash
mkdir -p ~/Library/texmf/tex/latex
cd ~/Library/texmf/tex/latex
git clone https://github.com/Samasaur1/samtex
```

### Windows

1. Ensure that the directory `C:\Users\<user name>\texmf\tex\latex` exists
2. Download or clone this repository to a new directory named `samtex` inside the above directory

## Usage

### samtex-cheatsheet

```latex
\documentclass{samtex-cheatsheet}
\usepackage{lipsum}

\begin{document}
    \section{Intro section}

    \lipsum

    \subsection{A subsection}

    \lipsum[2]

    \section{Main section}

    \lipsum
    \lipsum
\end{document}
```

Or see [the example/manual PDF here](https://github.com/Samasaur1/samtex/blob/main/cheatsheel-class/main.pdf)
