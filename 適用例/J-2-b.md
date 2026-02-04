```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('J-2-b')
data={'a':15,
      'Ri':200.,
      'Ro':220.,
      't':20,
      'p':20.,
      'n':5.0,
      'Sy':313.6,
       'alpha':5.5,
      'plane':'strain',
      'sigma0':313.6,
      'epsilon0':313.6/192.08e3,
    'E':192.08e3,
        'Nu':0.3,
        'alpha':5.5,
      }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'J': 627.1610425409191}
```
