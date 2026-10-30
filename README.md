## 概要

[iizukak.github.io](https://iizukak.github.io/) 用の MarkDown およびビルド方法置き場

## ソフトウェア要件

- Python 3.10 以降
- [uv](https://docs.astral.sh/uv/)
- [mdsite](https://github.com/iizukak/mdsite) の最新版
    - mdsite リポジトリを clone し、`make install` でインストールする
- pandoc

## ディレクトリ構成

- `markdown` ソースの Markdown ディレクトリ
- `docs` 変換後の .html, .pdf 格納用
- `mdsite.yaml` が変換用の設定ファイル。設定できる内容は mdsite の README.md に記載してある

## ビルド方法

```
$ make
```

HTML だけ、PDF だけをビルドする場合は、それぞれ `make html`、`make pdf` を使う。
HTML と PDF は元のファイルが更新されたときだけ再生成される。PDF の生成オプションを変えたときは `make -B pdf` で再生成する。

ローカルでのビルド結果確認

```
$ make serve
```

ブラウザで http://localhost:8000/ を開く。ポート番号は `make serve PORT=8080` のように変更できる。
配信中に Markdown や `mdsite.yaml` を修正すると自動でビルドし直されるので、ブラウザを再読み込みして確認する。
停止は `Ctrl+C`。