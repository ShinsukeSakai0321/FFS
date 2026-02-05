![L-2-k](./Figures/L-2-k.JPG)
```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('L-2-k')
data={'Ri':53,
    't':9,
    'l':20.,
    'P':2e5,
    'M':8e4,
    'sigma_m':100.,
    'sigma_bg':20.,
    'n':7.0,
    'E':192.08e3,
    'Nu':0.3,
    'Sy':313.6,
    'Su':490.0,
    'sigma0':313.6,
    'epsilon0':313.6/192.08e3,
    'Case':'Collapse',#塑性崩壊値の計算のとき'Collapse',塑性崩壊軸強度のとき'PR',軸荷重J値のとき'PJ',塑性崩壊曲げ強度のとき'MR',曲げ荷重J値のとき'MJ'
    'e0':313.6/192.08e3,
    'alpha':5.5,
    'plane':'strain',
    'JR':1.176*0.25e-3**0.44,
    'J1c':0.784e3
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'Lr_P': 0.22284688898195254,
#'Lr_M': 0.002351204767831115,
#'Lr_PM': 0.002589225701608665,
#'Lr_sm_bg': 0.41037792473852963}
```
