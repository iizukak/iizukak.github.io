## 概要

[iizukak.github.io](https://iizukak.github.io/) 用の MarkDown およびビルド方法置き場

## ソフトウェア要件

- Python 3.9 以降
- [mdsite](https://github.com/iizukak/mdsite) の最新版
- pandoc

## ディレクトリ構成

- `markdown` ソースの Markdown ディレクトリ
- `docs` 変換後の .html, .pdf 格納用
- `mdsite.yaml` が変換用の設定ファイル。設定できる内容は mdsite の README.md に記載してある

## ビルド方法

```
$ ./build.sh
```

ローカルでのビルド結果確認

```
$ ./build.sh && python3 -m http.server && popd
```