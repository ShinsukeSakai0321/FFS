![K-4-c](./Figures/K-4-c.JPG)
```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-4-c')
data={
    'c':30.,
    't':6.,
    'R':150.,
    'Do':100.,
    'p':10.0,
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'K': 1711.6194387866494}
```
