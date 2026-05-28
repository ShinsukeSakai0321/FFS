![K-3-c](./Figures/K-3-c.JPG)
```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-3-c')
data={
    'a':12.,
    't':25.,
    'Ri':150.,
    'sigma0':20.0,
    'sigma1':0,
    'sigma2':0,
    'sigma3':0
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'KA': 192.54915336721126, 'KB': 166.2455636661547, 'KC': 190.24052831408397}
```
