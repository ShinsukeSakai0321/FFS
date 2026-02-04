```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-7-d')
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
#{'K': 0.5432846933444201}
```
