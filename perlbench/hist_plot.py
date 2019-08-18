
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import matplotlib.backends.backend_pdf
pdf = matplotlib.backends.backend_pdf.PdfPages("hist_plot_test_1.pdf")

my_nrows = 2000
my_benchmark = 'perlbench'
date = 'FEB04'

data = pd.read_csv('AET_PIN_HIST_'+my_benchmark+'_'+date+'.out', sep=',',header='infer',nrows=my_nrows)
data1 = pd.read_csv('AET_PIN_HIST_DROP_25_'+my_benchmark+'_'+date+'.out', sep=',',header='infer',nrows=my_nrows)
data2 = pd.read_csv('AET_PIN_HIST_DROP_50_'+my_benchmark+'_'+date+'.out', sep=',',header='infer',nrows=my_nrows)

#x = [i for i in range(data['counts'].size)]
#data.plot(x='reuse_time', y='counts', kind='scatter')
#plt.ylabel('Frequency')
#plt.xlabel('Words')
#plt.title('Title')

fig1 = plt.figure()
#plt.semilogy(data['reuse_time'],data['counts'])
plt.bar(data['reuse_time'],data['counts'],width=100,color='b',align='edge')
plt.yscale("log")

fig2 = plt.figure()
plt.bar(data1['reuse_time'],data1['counts'],width=100,color='b',align='edge')
plt.yscale("log")
#plt.xlim(left=-10)
#plt.show()

f.savefig("hist_plot_test_1.pdf")
print("hello")