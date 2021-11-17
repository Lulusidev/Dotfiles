#!/bin/bash

#need ghost script and enscript to work

psout=${1/.txt/.ps}
pdfout=${1/.txt/.pdf}

enscript -p $psout $1

ps2pdf $psout $pdfout
rm -f $psout
