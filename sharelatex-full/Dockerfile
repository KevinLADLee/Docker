FROM sharelatex/sharelatex

RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

RUN sh -c "$(wget http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh -O -)"

RUN tlmgr install scheme-full
