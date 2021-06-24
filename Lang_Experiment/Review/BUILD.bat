@ECHO off
C:
CD C:\Users\sam\Documents\GitHub\Probe-VA\Lang_Experiment\Review

ECHO --- Creating Backup ---

COPY UG_Paper.tex UG_Paper_BACKUP.tex

ECHO --- Creating temporary files ---

DEL UG_Paper.pdf
MKDIR tmp
COPY .\* .\tmp
CD .\tmp

ECHO --- Building UG_Paper.tex ---

pdflatex.exe UG_Paper
bibtex.exe UG_Paper
pdflatex.exe UG_Paper
pdflatex.exe UG_Paper

ECHO --- Done! ---

COPY UG_Paper.pdf ..
CD ..

ECHO --- Removing temporary files ---

RMDIR /Q /S tmp