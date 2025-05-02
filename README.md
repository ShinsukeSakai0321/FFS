# FFSeval

## Evaluation of fitness for service
#### [Shinsuke Sakai](https://sites.google.com/view/shinsukesakai/%E3%83%9B%E3%83%BC%E3%83%A0)   
 Emeritus Professor, The University of Tokyo, Japan   
 Visiting Professor, Yokohama National University, Japan

## 概要
このリポジトリは，下記出版物の内容の理解促進を意図している。   
「構造健全性評価ハンドブック」構造健全性評価ハンドブック編集委員会 編・ 小林 英男 代表   
共立出版

## 使用プログラム言語
Python

## ライセンス
このプロジェクトは，MITライセンスのもとにライセンスが付与される。詳細は[LICENSE](LICENSE)を参照のこと。

## インストール方法
ターミナルモードにおいて
```python
pip install FFSeval
```

## 基本的使い方
### 最初に行うこと
下記のPythonコマンドで，FFSモジュールをインポートした後に，クラスTreatのインスタンスを生成する。
```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
```
ここでは，インスタンスclsを生成している。以後は，clsを用いて，種々の評価を行う。

### 具体的評価手順
以下の手順で実施する。
1. 評価したい公式を「構造健全性評価ハンドブック」の中で探す。ここでは，例として平板の半楕円表面亀裂のK値をRaju-Newmanの解で評価することを考える。
1. その解の節記号を調査する。Raju-Newmanの解がK-1-a-1であることが確認できる。
1. 確認した記号を，clsに通知する。つまり，
```python
K=cls.Set('K-1-a-1')
```
4. これにて，Kには，K-1-a-1の計算用のインスタンスが生成される。公式のタイトルと参照文献は以下にて確認できる。
```python
print(K.Title())
print(K.GetRefer())
```
出力例   
平板の半楕円表面亀裂，Raju-Newmanの解   
Newman,J.C>Jr., and Raju,I.S.:Stress-Intensity Factor Equations for Cracks in Three-Dimentional Finite Bodies Subjected to Tension and Bending Loads, NASA Technical Memorandum, 85793, NASA,1984   

5. 計算に用いる入力データを辞書形式で以下のように準備する。   
```python
data={'a':6e-3,
      'c':6e-3,
      't':10e-3,
      'b':25e-3,
      'P':100e-3,#100kN->100e-3MN
      'M':0}
```
6. 変数の記号は，本に採用されているものと同一であることを基本とする。単位系には注意する必要がある。上記の場合，SI単位系を基本としているが，荷重については，SI単位系からははずれるが，MNを採用している。単位系については，きちんと管理していれば，どのようなものを用いてもかまわない。モーメントMについては，作用していない場合であっても必ず0を指定しなければならない。
7. そのデータをKに対してセットする。
```python
K.SetData(data)
```
8. 計算の実行を指示する。
```python
K.Calc()
```
9. 計算結果を取得し，出力する。
```python
print(f'K値の解析結果:{K.GetRes()}')
```
出力例   
K値の解析結果:{'KA': 19.642352887296376, 'KB': 24.08152463982535}

### 注意点
- 計算手順は，K,J,Lのいずれについても同一である。
- 2.で節番号をセットした時に，以下のメッセージが出たときには，残念ながらその公式が未だ登録されていないことを意味する。
```
**** is not registered yet!
```
登録されている解析公式の一覧は下記コマンドで確認できる。
```python
cls.Registered()
```