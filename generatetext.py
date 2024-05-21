import random
import string

# Функция для генерации случайного слова заданной длины
def generate_random_word(length):
    return ''.join(random.choice(string.ascii_lowercase) for _ in range(length))

# Открываем файл для записи
with open('text2.txt', 'w') as file:
    # Генерируем около 800 строк
    for _ in range(100000):
        word_length = random.randint(1, 20)  # Случайная длина слова до 120 символов
        random_word = generate_random_word(word_length)
        file.write(random_word + '\n')  # Записываем слово в файл, завершая строку

print("Файл успешно сгенерирован.")
