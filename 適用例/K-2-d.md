```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-2-d')
data={
    'Ri':275,
    't':16,
    'a':0.8,
    'sigma0':10,
    'sigma1':0,
    'sigma2':0,
    'sigma3':0,
    'sigma4':0
}
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'K': 2.960983117555932}
```
