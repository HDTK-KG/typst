// ===============================================
// 日本語のレポートの例
// ===============================================

// 1. 日本語フォントを指定
#set text(font:("Noto Sans CJK JP"), size: 12pt)
#set math.equation(numbering: "(1)")

// 2. ドキュメントのタイトル、著者、日付を設定
#set document(
  title: "微分幾何とトポロジー",
  author: "Kuga Hidetaka",
)

#let title = "微分幾何とトポロジー"
#show title: set align(center)
#show title: set text(weight: "black", size: 2em)

#title

// 3. 本文の記述

= 多様体
Typstは、科学技術文書の作成に適した、新しい組版システムです。
このレポートでは、Typstの基本的な使い方と特徴について解説します。

= Typstの特徴
Typstには以下のような特徴があります。
- 高速なコンパイル
- シンプルで直感的なマークアップ言語
- パワフルなスクリプト機能

= まとめ
Typstは、これからの文書作成において非常に有望なツールです。