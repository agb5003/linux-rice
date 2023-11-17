import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

x_data = np.linspace(0, 100, 8)
y_data = np.power(x_data, 3);

plt.bar(x_data, y_data)
plt.show()

