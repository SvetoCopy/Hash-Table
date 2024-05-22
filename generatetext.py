import random
import string

# Функция для генерации случайного слова заданной длины
def generate_random_word(length):
    return ''.join(random.choice(string.ascii_lowercase) for _ in range(length))
    
import random
import string

def generate_padded_word():
    word_length = random.randint(1, 32)
    word = ''.join(random.choices(string.ascii_letters, k=word_length))
    padded_word = word.ljust(32)
    return padded_word

# Открываем файл для записи
with open('text2.txt', 'w') as file:
    # Генерируем около 800 строк
    for _ in range(200000):
        random_word = generate_padded_word()
        file.write(random_word + '\n')  # Записываем слово в файл, завершая строку

print("Файл успешно сгенерирован.")
