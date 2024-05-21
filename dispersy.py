import numpy as np

# Чтение данных из файла
file_name = "graph.txt"
with open(file_name, 'r') as file:
    data = file.read().split()  # Разделение строк на числа

n = len(data)  # Количество элементов в файле
a = [int(x) for x in data]  # Преобразование разделенных значений в целые числа

# Вычисляем дисперсию
variance = np.var(a)

print("Дисперсия из файла {}: {}".format(file_name, variance))
