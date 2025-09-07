// ===============================================
// 日本語のレポートの例
// ===============================================

#import "@preview/physica:0.9.5": *

// 1. 日本語フォントを指定
#set text(font:(), size: 12pt)
#set math.equation(numbering: "(1)")


// 2. ドキュメントのタイトル、著者、日付を設定


#let title = "対称性指標の基礎から高次トポロジカル絶縁体への応用まで"
#show title: set align(left)
#show title: set text(weight: "black", size: 2em)
#show heading.where(level: 1): it => {
    counter(math.equation).update(0)
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(figure.where(kind: raw)).update(0)
    it
}
#set math.equation(
    numbering: num => numbering("(1.1)", counter(heading).get().first(), num),
    number-align: bottom
    )
#set figure(
    numbering: num =>
    numbering("1.1", counter(heading).get().first(), num)
)
#title
#set heading(numbering: "1.")
// 3. 本文の記述
\
= 空間群･点群の既約表現
== 空間群の基礎事項
*3次元ユークリッド群* : 連続並進,連続回転,空間反転の組み合わせ

*空間群 $G$* : 離散並進部分群を持つ3次元ユークリッド群の部分群
$g in G$ の作用は
$ g(arrow(x)) = p_g arrow(x) + arrow(t_g) $
と表され, 
$ p_(g_1g_2) =p_(g_1) p_(g_2),quad arrow(t)_(g_1g_2) = p_(g_1) arrow(t)_(g_2) + arrow(t)_(g_1) $

230種類の空間群 (3次元方向の離散対称性)\
80種類のレイヤー群 (2次元方向の離散対称性しか持たない)\
75種類のロッド群 (2次元方向の離散対称性しか持たない)

例えば$P 6 slash m m m$の格子の例として, $x y$平面上の正六角形の頂点を並進操作で複製して格子を作ることを考えると, 離散並進軸は $x y z$軸, $x y$軸, $z$軸が考えられ, どれも$P 6 slash m m m$の対称性は満たしている. つまり$P 6 slash m m m$は空間群にもレイヤー群にもロッド群にもなれる.

*点群 $P$* : 空間群のうち不動点を持つもの, つまり単位行列,空間反転,角度
$(2 pi m) slash n thick (n = 2,3,4,6)$ の回転及びそれらの積からなる. 全部で32種類ある. 原点を不動点とすると $g in P$ の作用は
$ g(arrow(x)) = p_g arrow(x) $
となる.

*離散並進群* $T$ : 基本並進ベクトル $arrow(a)_i$ で特徴づけられる. 並進ベクトル $arrow(R)$ だけ並進する操作を $T_(arrow(R))$ で表す. 基本並進ベクトルで張られる多面体を単位胞(UC)という.

空間群 $G$ について, 写像 $Phi(g)$ は $g in G$ のうち並進部分を取り除くものとする, このとき $Phi$ は準同型写像となる.  
$ ker (Phi) = T_G,quad im (Phi) = P_G$ である. ここで $T_G$は$G$の並進部分群で正規部分群, $P_G$ は $G$ から並進部分を取り除いた点群である. (例) $G = P 2_1 2_1 2_1$のとき$P_G = 222$\
準同型定理より
$ G slash T_G =  P_G$

空間群 $G$ の元 $g$ は積集合 $P times T$ の元 $(p,T_R)$ を用いて表せる. このとき $g_1$ と $g_2$ の積
$ (p_1,T_(R_1))* (p_2,T_(R_2)) = (p_1 p_2, T_(R_1 + p_1 R_2))$ なる半直積$(times.l)$となる.

*シンモーフィック空間群* : 空間群 $G$ がシンモーフィックであるとは,
$ G = P_G times.l T_G $
となることである. つまり $forall g =(p,T_R) in G$ において $T_R in T$ より, らせん操作や映進操作のような, 基本並進ベクトルより小さい並進を伴う操作を持たないものをいう.\
シンモーフィック空間群は230個中73個ある. これが点群の個数32より多い理由としては, 例えば $222$ は $P 222,quad I 222,quad F 222, quad C 222$を空間群として含む. これらはそれぞれ Orthorhombic の単純, 体心, 面心, 底心格子を表しており, ブラベ格子は同じだが基本並進ベクトルが異なる.

*実空間における軌道 $Lambda_(x)$* :  $Lambda_(x) = {g(x)|g in G}$ を点 $x$ の $G$ のもとでの軌道という. このうち単位胞UCに属するものを $Lambda_x^(U C)$ とする. 特に $Lambda_x^(U C) = x$なる不動点 $x$ が存在する時, $G$ はシンモーフィックである. $Lambda_x^(U C)$ は $x$ によって様々なパターンを生成し, 本質的な違いはワイコフ位置により分類される. この分類を記述するために小群 $H_x$ を導入する

*小群 $H_x$* : $H_x = {h in G | h(x) = x}$ を $x$ の小群という, つまり $x$ を不動点とする $G$ の部分群である. $H_x$の対称性をサイトシンメトリーという.
$ |Lambda_x^(U C)||H_x| = |G slash T_G| = |P_G| $
が常に成り立つ. $|P_G|$ は元となる点群の位数であり, 48の約数のいずれかである. 小群を用いて同値関係 $x~y$ を $H_x, H_y$ が共役すなわち\
$exists g, H_y = g H_x g^(-1)$ と定める. これは $H_y g x = g H_x x = g x$ を表し, $g x, y$ が同じ小群を持つことを表している. この同値関係による分類を*ワイコフ位置*という. 一番対称性の低いワイコフ位置 $x = (x,y,z)$においては $H_x = {e}$ であり, $Lambda_x^(U C)$ の数は $|P_G|$ すなわち元となる点群の位数に等しい.

== 波数空間
以下, 状態ベクトルに作用する演算子として操作の表現を表す.

*並進操作* : $T_R in T$ の表現
$ hat(T)_R = e^(-i hat(k) dot.c R) $
は
$ hat(T)_R ket(x) = ket(x+R) $
$ hat(T)_R ket(k) = e^(-i k dot.c R) ket(k) $
と作用する.

*回転･反転操作* : $p in P$ の表現
$ hat(p) = e^(-i theta_p n_p dot.c hat(L)) $
は
$ hat(p) ket(x) = ket(p x) $
$ hat(p) ket(k) = ket(p k) $
と作用する


*空間群の元* : $g = (p,T_R)$ の表現
$ hat(g) = hat(T)_R hat(p) $
は
$ hat(g) ket(x) = ket(p x + R) $
$ hat(g) ket(k) = e^(-i k dot.c R) ket(p k) $
と作用する. つまり波数空間においては並進部分が効かない.\
ただし上の説明はスピンレスな場合において成り立つものであり, 半整数スピンが存在すると $S U(2)$ 回転に起因した位相の項が現れる.

*波数空間における軌道(星) $S_k$* : $S_k = {g(k) in B Z | g in G}$ は波数空間の場合の $G$ のもとでの軌道であり, 星と呼ぶ. 波数空間では並進操作は無視されるので, 元となる点群の星となる.

*波数空間における小群 $H_k$* : $k in B Z$ を不変に保つ $G$ の部分群を $k$ の小群 $H_k$ という. 実空間の場合と違い, $H_k$ は並進群 $T_G$ を部分群に持つ.
$ |S_k||H_k slash T_G| = |G slash T_G| = |P_G| $
