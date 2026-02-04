```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-6-b')
data={
    'a':12.,
    't':25.,
    'Ri':150.,
    'sigma0':20.0,
    'sigma1':0,
    'sigma2':0,
    'sigma3':0,
    'sigma4':0
    }
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'K': 47.95252466736805}
```
