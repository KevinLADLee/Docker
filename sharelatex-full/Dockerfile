FROM sharelatex/sharelatex

RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

RUN wget http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh

RUN bash update-tlmgr-latest.sh

RUN tlmgr install scheme-full
