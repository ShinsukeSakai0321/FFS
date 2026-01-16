# 使用にあたっての追加説明

## 簡単に解を得る手順
日本語で、解析したい内容を文字列で表現すると、探索して候補の表示をサポートする機能がある。例えば、要求事項として以下があるとする。   
「平板の半楕円表面亀裂の応力拡大係数を解析したい」   
このとは、この内容を文字列に与えて、探索させる。
```python
q = "平板の半楕円表面亀裂の応力拡大係数"
```
この機能を使うために、まずFFSevalモジュール内の、Parseモジュールをimportする。
```python
from FFSeval import Parse as par
```
Parse内のParseクラスのインスタンスを生成する。
```python
parse=par.Parse()
```
登録されている公式を探索する。
```python
q = "平板の半楕円表面亀裂の応力拡大係数"
value =parse.Search(q)
```
この結果、候補となる公式が以下のように表示されている。
```
Category:[K] 平板 / 半楕円表面亀裂
  [K-1-a-1]Raju-Newmanの解(registered)
    ['a', 'c', 'b', 't', 'P', 'M']
  [K-1-a-2]ASME Section XI,Appendix Aの解(registered)
    ['a', 'c', 't', 'Sy', 'sigma0', 'sigma1', 'sigma2', 'sigma3']
  [K-1-a-3]白鳥の解(registered)
    ['a', 'c', 't', 'Sy', 'sigma0', 'sigma1', 'sigma2', 'sigma3', 't']
```
ここで、registeredは登録済み、not registeredは未登録であることを示す。ここで、解析に使用する公式を選択する。ここでは、K-1-a-1を選択したものとする。このとは、K-1-a-1をキーとして設定する。
```python
k_id='K-1-a-1'
parse.SetKey(k_id)
```
以下により、この公式の参照文献を確認できる。
```python
print(parse.Reference())
```
この公式で用いるパラメータ、参考データ、解答はシステム内に登録されており、以下のコマンドで呼び出すことができる。
```python
var_names,var_values,answer=parse.VarOut(k_id)
```
ここで、var_namesは解析に用いるパラメータ、var_valuesはその参考データのリストである。answerは参考データを用いた時の、解答例である。var_namesとvar_valuesとから、入力用の辞書データを以下のコマンドで作成できる。
```python
df=parse.DictOut(k_id)
```
dfには、以下のような辞書データが作成される。
```python
{'M': 500000.0,
 'P': 38000000.0,
 'a': 10.0,
 'b': 100.0,
 'c': 30.0,
 't': 40.0}
```
このdfを用いて、以下のコマンドにより計算を実行できる。
```python
result=parse.Calc(df)
```
resultには計算結果が入る。
## 一連の動作
以上の一連の動作を以下により、まとめて実行できる。
```python
k_id='K-1-a-1'
parse.SetKey(k_id)
var_names,var_values,answer=parse.VarOut(k_id)
print(parse.Reference())
df=parse.DictOut(k_id)
result=parse.Calc(df)
print(f"result: {result}\nanswer: {answer}")
```
この結果、以下のような出力が得られる。
```python
Newman,J.C>Jr., and Raju,I.S.:Stress-Intensity Factor Equations for Cracks in Three-Dimentional Finite Bodies Subjected to Tension and Bending Loads, NASA Technical Memorandum, 85793, NASA,1984
result: {'KA': 28383.37159904204, 'KB': 18391.925464059223}
answer: #{'KA': 28383.37159904204, 'KB': 18391.925464059223}
```
このresultとanswerが一致していれば、計算は正しく実行されている。解析者用のデータで解析するためには、辞書データdfに当該問題の数値を設定した上で、Calcメソッドを実行すればよい。
