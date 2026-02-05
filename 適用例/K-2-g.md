![K-2-g](./Figures/K-2-g.JPG)
```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-2-g')
data={
    'R':291,
    'Ri':275,
    't':16,
    'c':0.8,
    'a':0.2,
    'P':100000,
    'M':2000.0
}
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'KA': 2.9861039920439816}
```
