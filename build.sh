set -x

mdsite

pandoc ./markdown/cv.md -o docs/cv.pdf \
-V documentclass=ltjsarticle \
--pdf-engine=lualatex \
-V classoption=pandoc \
-V block-headings \
-V luatexjapresetoptions=ipaex

pandoc ./markdown/resume.md -o docs/resume.pdf \
-V documentclass=ltjsarticle \
--pdf-engine=lualatex \
-V classoption=pandoc \
-V block-headings \
-V luatexjapresetoptions=ipaex
