```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('J-1-e')
data={'a':10,
      'c':30,
      'b':100,
      'L':100.,
      't':40,
      'P':3.8e7,
      'M':5.0e5,
      'n':7.0,
      'Sy':313.6,
      'plane':'strain',
      'epsilon0':313.6/192.08e3,
    'E':192.08e3,
        'Nu':0.3,
        'alpha':5.5,
      }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'J': {'JA': 3028136844277.3164, 'JB': 1432282731764.5632}}
```
