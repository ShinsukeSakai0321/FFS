```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('L-2-a')
data={'l':40,
      'e':2.,
      'a':5.,
      't':20,
      'Ri':100,
      'Rm':110,
      'p':20,
      'Su':490,
      'Sy':380,
      'E':192e3,
      'Nu':0.3,
      'J1c':0.1}
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'Lr_p1': 0.29282170662967577,
#'Lr_p2': 0.2984632733751514,
#'Lr_sm': 0.2932117306279565}
```
