# PDF を生成する Markdown のファイル名（拡張子なし）
PDF_TARGETS := cv resume
PDFS := $(PDF_TARGETS:%=docs/%.pdf)

# ローカルサーバーのポート番号
PORT ?= 8000

.PHONY: build
build: html pdf

.PHONY: html
html:
	mdsite

.PHONY: pdf
pdf: $(PDFS)

# Markdown または PDF の生成オプション（この Makefile）が変わったときだけ再生成する
docs/%.pdf: markdown/%.md Makefile
	pandoc $< -o $@ \
		--pdf-engine=lualatex \
		-V documentclass=ltjsarticle \
		-V classoption=pandoc \
		-V block-headings \
		-V fontsize=10pt \
		-V luatexjapresetoptions=ipaex

# ビルドしてから docs/ をローカルで配信する
.PHONY: serve
serve: build
	python3 -m http.server -d docs $(PORT)
