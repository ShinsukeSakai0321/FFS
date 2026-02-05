![K-8-b](./Figures/K-8-b.JPG)
```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-8-b')
data={
    'a':10.,
    'Ro':50.,
    'P':1e4,
    'M':200.
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'K': 6.742018498342134}
```
