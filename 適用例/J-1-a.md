```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('J-1-a')
data={'a':10,
      'c':30,
      'b':100,
      't':40,
      'P':3.8e7,
      'M':5.0e5,
      'n':7.0,
      'Sy':313.6,
    'E':192.08e3,
        'Nu':0.3,
        'alpha':5.5,
      }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'JA': 502540528749.6133, 'JB': 211007320530.1207}
```
