## Installation

### [Nix](https://nixos.org)

This repository is a Nix flake, so:

```nix
texliveFull.withPackages (_: [ inputs.samtex.packages.${pkgs.system}.default.tex ])
```

I seem to need the `.tex` on the end, though I'm not sure why. If you get errors, try it without the `.tex` at the end.

### macOS

If you have MacTeX

```bash
mkdir -p ~/Library/texmf/tex/latex
cd ~/Library/texmf/tex/latex
git clone https://github.com/Samasaur1/samtex
```

If you have non-Mac-specific TexLive:

```bash
mkdir -p ~/texmf/tex/latex
cd ~/texmf/tex/latex
git clone https://github.com/Samasaur1/samtex
```

### Linux

```bash
mkdir -p ~/texmf/tex/latex
cd ~/texmf/tex/latex
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

Or see [the example/manual PDF here](https://github.com/Samasaur1/samtex/blob/main/cheatsheet-class/main.pdf)
