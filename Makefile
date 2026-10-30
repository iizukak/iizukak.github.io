# PDF を生成する Markdown のファイル名（拡張子なし）
PDF_TARGETS := cv resume
PDFS := $(PDF_TARGETS:%=docs/%.pdf)

# mdsite が HTML に変換する Markdown と、その出力先
MARKDOWNS := $(wildcard markdown/*.md)
HTMLS := $(MARKDOWNS:markdown/%.md=docs/%.html)

# ローカルサーバーのポート番号
PORT ?= 8000
# serve 中にソースの更新を確認する間隔（秒）
WATCH_INTERVAL ?= 1

.PHONY: build
build: html pdf

.PHONY: html
html: $(HTMLS)

# mdsite は全ページをまとめて変換するため、グループターゲットとして 1 回だけ実行する
$(HTMLS) &: $(MARKDOWNS) mdsite.yaml
	mdsite

.PHONY: pdf
pdf: $(PDFS)

# Markdown が変わったときだけ再生成する
# 生成オプションを変えたときは make -B pdf で再生成する
docs/%.pdf: markdown/%.md
	pandoc $< -o $@ \
		--pdf-engine=lualatex \
		-V documentclass=ltjsarticle \
		-V classoption=pandoc \
		-V block-headings \
		-V fontsize=10pt \
		-V luatexjapresetoptions=ipaex

# ビルドしてから docs/ をローカルで配信する
# 配信中は一定間隔で build を実行し、ソースが更新されていればビルドし直す
.PHONY: serve
serve: build
	python3 -m http.server -d docs $(PORT) & \
	server_pid=$$!; \
	trap 'kill $$server_pid 2>/dev/null; exit 0' INT TERM; \
	while kill -0 $$server_pid 2>/dev/null; do \
		$(MAKE) --no-print-directory --silent build; \
		sleep $(WATCH_INTERVAL); \
	done

# serve の別名
.PHONY: server
server: serve
