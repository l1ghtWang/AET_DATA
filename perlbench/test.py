import numpy as np
import pandas as pd

f1 = pd.read_csv(AET_PIN_perlbench_SEP6.out,sep=',')
f = np.array(f1)
firtColumn = f[:,0]
secondColumn = f[:,1]