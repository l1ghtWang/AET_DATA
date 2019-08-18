import csv
import pandas as pd
import matplotlib.pyplot as plt
filename = "AET_PIN_perlbench_SEP6.out"

dataframe = pd.read_csv(filename)
plt.plot(dataframe['cache_lines'], dataframe['MRC'])
plt.show()
