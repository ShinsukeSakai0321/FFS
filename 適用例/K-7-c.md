![K-7-c](./Figures/K-7-c.JPG)
```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-7-c')
data={
    'c':5.,
    'r':8.,
    'b':100.,
    't':6.,
    'P':100.,
    'M':20.
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'K': 0.3728041778330188}
```
