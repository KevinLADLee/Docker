FROM sharelatex/sharelatex

RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

RUN wget http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh

RUN bash update-tlmgr-latest.sh

RUN tlmgr update --self

RUN tlmgr install scheme-full

RUN set -x \
    && apt-get update \
    && apt-get install -y texlive-full

RUN apt-get clean
