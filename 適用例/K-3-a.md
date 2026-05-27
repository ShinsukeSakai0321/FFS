![K-3-a](./Figures/K-3-a.JPG)
```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-3-a')
data={
    'ri':10.0,
    'tm':26,
    'a':5.0,
    'c':10.0,
    'sigma_m':20.0
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'KA': 48.72513693404206, 'KBm': 35.21676785672972, 'KBs': 35.38215116366588}
```
