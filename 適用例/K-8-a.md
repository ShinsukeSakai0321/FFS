```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-8-a')
data={
    'a':4.,
    'Ro':50.,
    'P':1e4,
    'M':200.
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'K': 4.375761382039824}
```
