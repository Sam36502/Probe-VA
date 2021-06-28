@ECHO off
C:
CD C:\Users\sam\Documents\GitHub\Probe-VA\Final_Document

ECHO --- Creating Backup ---

COPY Final_Document.tex Final_Document_BACKUP.tex

ECHO --- Creating temporary files ---

DEL Final_Document.pdf
MKDIR tmp
COPY .\* .\tmp
CD .\tmp

ECHO --- Building Final_Document.tex ---

pdflatex.exe Final_Document
pdflatex.exe Final_Document

ECHO --- Done! ---

COPY Final_Document.pdf ..
CD ..

ECHO --- Removing temporary files ---

RMDIR /Q /S tmp