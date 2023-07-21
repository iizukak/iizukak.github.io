set -x

mdsite


pdfTargets=("cv" "resume")

for target in ${pdfTargets[@]}; do
    pandoc ./markdown/${target}.md -o docs/${target}.pdf \
        -V documentclass=ltjsarticle \
        --pdf-engine=lualatex \
        -V classoption=pandoc \
        -V block-headings \
        -V luatexjapresetoptions=hiragino-pron
done