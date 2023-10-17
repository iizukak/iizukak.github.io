set -x

mdsite


pdfTargets=("cv" "resume")

for target in ${pdfTargets[@]}; do
    pandoc ./markdown/${target}.md -o docs/${target}.pdf \
        --pdf-engine=lualatex \
        -V documentclass=ltjsarticle \
        -V classoption=pandoc \
        -V block-headings \
        -V fontsize=10pt \
        -V luatexjapresetoptions=ipaex
done
