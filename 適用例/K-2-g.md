```python
from FFSeval import FFS as ffs
cls=ffs.Treat()
K=cls.Set('K-2-k-2')
data={
    'R':293,
    't':16,
    'c':0.8,
      'P':3.8e2,
      'M':1e2}
K.SetData(data)
K.Calc()
res=K.GetRes()
res
#{'K': 0.020495409430623644}
```
