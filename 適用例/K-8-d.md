```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-8-d')
data={
    'a':10.,
    'Rth':50.,
    'P':1e4,
    'M':200.
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'K': 5.779924513125682}
```
