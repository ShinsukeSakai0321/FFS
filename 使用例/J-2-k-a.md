## 配管の塑性崩壊モーメント

```python
import numpy as np
from FFSeval import FFS as ffs
cls=ffs.Treat()
J=cls.Set('J-2-k-a')
S0=313.6
E=192.08e3
R=53
a=28
th=a/R
C=1.176
m=0.44
da=0.25e-3
JR=C*da**m
data={'R':R,
    't':9,
    'th':th,
    'M':0,
    'P':0.0,
    'n':7.0,
    'E':E,
    'Nu':0.3,
    'Sy':S0,
    'Su':490.0,
    'S0':S0,
    'Case':'Collapse',#塑性崩壊値の計算のとき'Collapse',塑性崩壊軸強度のとき'PR',軸荷重J値のとき'PJ',塑性崩壊曲げ強度のとき'MR',曲げ荷重J値のとき'MJ'
    'e0':S0/E,
    'alpha':5.5,
    'plane':'strain',
    'JR':JR,
    'Su':490.0,
    'J1c':0.784e3
    }
J.SetData(data)
J.Calc()
rr=J.GetRes()
rr
#{'P0': 629381.6368989643, 'M0': 22619907.48881313}
```

## 配管の破壊荷重をJ積分(全面塑性解)から算出する
```python
data['Case']='MR'
a=32.0
a0=(28.0-0.25)
res=[]
da=(a-a0)
JR=C*da**m
th=a/R
data['th']=th
data['JR']=JR*1e3
J.SetData(data)
J.Calc()
rr=J.GetRes()
rr
#{'MR': 28274155.089392558, 'M0': 21275930.712715536, 'H1': 0.7468096872575328}
```
