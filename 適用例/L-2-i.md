```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
L=cls.Set('L-2-i')
data={'Ri':53,
    't':9,
    'a':2.,
    'l':3.,
    'P':8e5,
    'M':6e5,
    'Sy':480.0,
    }
L.SetData(data)
L.Calc()
res=L.GetRes()
res
#{'Lr_P': 0.5140467777047203, 'Lr_M': 0.026157220061309383}
```
