# 履歴書: 飯塚健太郎 (IIZUKA Kentaro)

## 概要

1988年11月12日生まれ。東京都在住。

ソフトウェアエンジニアとして10年、エンジニアリングマネージャとして4年の実務経験があります。
仕事内容にはそれほどこだわらず、組織にとって良いアウトプットが出せる仕事を探して実行しています。

キーワード: *ソフトウェアエンジニア, エンジニアリングマネージャ, プロジェクトマネージャ, CI/CD, Python, 機械学習, アジャイル開発, Python, コードレビュー*

## 職歴

### [LeapMind 株式会社](https://leapmind.io/) (2018年11月〜)

職種: *ソフトウェアエンジニア、プロジェクトマネージャ、エンジニアリングマネージャ*

#### 専用アクセラレータ向け深層学習モデル構築用ライブラリの開発 (2021年1月〜)

自社製深層学習アクセラレータ、 [Efficiera](https://leapmind.io/business/ip/) 上で動作する、
専用の深層学習モデルを学習するためのライブラリ開発プロジェクトです。
ひとつ下の Blueoil の後継プロジェクトとして、商用ライブラリとしてスクラッチから開発を行いました。

私はこのプロジェクトにおいて、プロジェクトマネージャとして、
要件定義、ソフトウェアデザイン、開発のリードを行いました。
約1年の開発期間ののちリリースし、保守を行っています。

深層学習フレームワークとしては PyTorch, ビルドシステムには Bazel を用いました。
プロジェクトマネジメントは JIRA を用いてスクラムで行っています。

#### Blueoil オープンソースプロジェクトの開発 (2018年11月〜2021年9月)

[Blueoil](https://github.com/blue-oil/blueoil) は、
FPGA 上で動作する深層学習アクセラレータおよび
アクセラレータ上で動作する深層学習モデルの構築用ライブラリを含むオープンソースプロジェクトです。

このプロジェクトは、入社時にはすでにオープンソースとして公開されており、
私はプロジェクトのマネジメントを引き継ぎました。
2週間おきのリリースサイクルを設定し、開発をリードしました。

対応する深層学習フレームワークは TensorFlow で、言語は Python です。

Blueoil について、書籍 

『[Practical Developers -機械学習時代のソフトウェア開発 ゲームアプリ/インフラ/エッジ編-](https://gihyo.jp/book/2019/978-4-297-10744-4) 』

に CTO と共著で寄稿しました。

#### エンジニアリングマネジメント (2019年1月〜)

上記の深層学習ライブラリ開発プロジェクトチームのエンジニアリングマネジメントを行っています。
チームメンバーのキャリアやアウトプットに関する相談を 1 on 1 で受けたり、
半年ごとの人事考課にマネージャとして参加し、フィードバックを行っています。

### [KLab 株式会社](https://www.klab.com/jp/) (2012年04月 ~ 2018年10月)

職種: *リードエンジニア, ソフトウェアエンジニア*

#### スマートフォン向けゲームアプリのパイプライン開発

スマートフォン向けのゲームアプリケーションは、多様なアセットで構成されています。
必要なアセット、具体的には、ソースコード・画像・動画・音声などを組み合わせてビルドする仕組みを、
パイプラインと呼んでいました。

私はこのパイプラインを開発するチームの一員として設計や実装を行いました。
iOS, Android アプリストアにおけるリリースの自動化や、
アセットのオンラインダウンロード機能、
iOS, Android のアプリ内課金の実装など、様々な機能の設計および実装を行いました。
また、新しいクライアント OS のバージョンが出るごとに、
API の Deprecation や新機能の対応も行っていました。

開発の様子を、 DroidKaigi 2015 では発表したスライド

『[あるゲームアプリケーションの構成とアップデートサイクル](https://www.slideshare.net/kentaroiizuka/droidkaigi)』

でご覧になれます。


プログラミング言語としては Python, Java, Objective-C を用いました。

#### モバイル向けゲームアプリのサーバサイド、フロントエンド開発

スマートフォンおよびフィーチャーフォン向けのゲームアプリの開発を PHP を用いて行いました。
アプリは mixi や GREE といった大手ソーシャルゲームプラットフォーム上で動作するウェブアプリケーションです。

技術要素として、サーバサイドは PHP, データベースは MySQL, OS は Linux という、いわゆる
LAMP での開発で、私は開発メンバーとして実装およびデバッグを行っていました。

ここが私のキャリアのスタート地点です

## 学歴

- 埼玉大学工学部情報システム工学科卒業 (2011年03月)
    - 現 [工学部情報工学科](http://www.ics.saitama-u.ac.jp/)

## 資格

- 応用情報技術者 (2022年度秋試験)
- [Deep Learning Specialization](https://coursera.org/share/6e35705f3383f7161aea89bb2cc84dc4) on Coursera (2019年4月)
- 普通自動車免許

## 趣味の制作物

- [mdsite](https://github.com/iizukak/mdsite) (2022年〜)
- [Flip Dot Clock](https://www.hackster.io/iizukak/flip-dot-clock-3dd850) (2016年)