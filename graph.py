import matplotlib.pyplot as plt
import numpy as np

data = {}

name = input();

# Считываем данные из файла
with open('graph.txt', 'r') as file:
    for line in file:
        parts = line.strip().split()
        if len(parts) == 2:
            n, a = int(parts[0]), int(parts[1])
            if n in data:
                data[n] += a
            else:
                data[n] = a
                
variance = np.var(list(data.values()))

print("Дисперсия: {}".format(variance))


plt.bar(data.keys(), data.values())
plt.xlabel('Номер списка')
plt.ylabel('Число элементов')
plt.title(name)

# Сохраняем график в папку
plt.savefig('graphs/' + name + '.png')  # Пример: plt.savefig('images/histogram.png')

plt.show()
