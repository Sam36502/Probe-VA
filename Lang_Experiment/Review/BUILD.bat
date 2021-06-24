@ECHO off
C:
CD C:\Users\sam\Documents\GitHub\Probe-VA\Lang_Experiment\Review

ECHO --- Creating Backup ---

COPY Experiment_Review.tex Experiment_Review_BACKUP.tex

ECHO --- Creating temporary files ---

DEL Experiment_Review.pdf
MKDIR tmp
COPY .\* .\tmp
CD .\tmp

ECHO --- Building Experiment_Review.tex ---

pdflatex.exe Experiment_Review

ECHO --- Done! ---

COPY Experiment_Review.pdf ..
CD ..

ECHO --- Removing temporary files ---

RMDIR /Q /S tmp