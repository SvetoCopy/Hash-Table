import numpy as np

# Входные данные
data = np.array([311400203, 313090695, 313610165])

# Находим среднее значение
mean_value = np.mean(data)

# Находим отклонения
deviations = data - mean_value

# Находим квадраты отклонений
squared_deviations = deviations ** 2

# Находим погрешность методом МНК
mean_squared_error = np.mean(squared_deviations)
standard_error = np.sqrt(mean_squared_error)

print("Среднее значение:", mean_value)
print("Погрешность методом МНК:", standard_error)
