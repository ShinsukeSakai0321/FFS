```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('J-1-b')
data={'a':10,
      'c':30,
      'b':100,
      'L':100.,
      't':40,
      'P':3.8e7,
      'M':5.0e5,
      'n':7.0,
      'S0':313.6,
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
#{'Jt': 3.2946013118146327e+30, 'Jb': 1.928253293525881e+35}
```
