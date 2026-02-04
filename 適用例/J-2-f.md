```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('J-2-f')
data={'a':15,
      'c':30,
      'b':100,
      'Ri':200.,
      'R':210.,
      'Ro':220.,
      't':20,
      'P':200.,
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
#{'J': 1.7812153547995565e-08}
```
