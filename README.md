<h1>Hash Table Research</h1>
<h2>Аннотация</h2>
<p></p>

<h2>Часть 1. Исследование хеш-функций</h2>
<p></p>

<h3>Constant 0</h3>
<p>Хеш-функция которая возвращает 0 для любых входных данных.</p>

```c++
uint32_t HashFuncConstant(const char* str) 
{
    return 0;
}
```

<p>Рассмотрим график распределения элементов в хеш-таблице:</p>

![constant 0](https://github.com/SvetoCopy/Hash-Table/assets/65361271/323537e6-123b-45a3-8e22-1fb14ccf2014)

<p>Вычислим дисперсию для нашего набора данных.</p>

```
D = 29456.30
```

<h3>Strlen</h3>
<p>Хеш-функция которая возвращает длину строки.</p>

```c++
uint32_t HashFuncStrLen(const char* str) 
{
    return strlen(str) % max_num;
}

```

![strlen](https://github.com/SvetoCopy/Hash-Table/assets/65361271/c74b67b5-da59-4a72-b6a1-01a7e862c7ba)

```
D = 1427.78
```

<h3>Сумма ASCII-кодов</h3>
<p>Хеш-функция которая возвращает сумму всех ASCII-кодов символов строки.</p>

```c++
uint32_t HashFuncAsciiSum(const char* str) 
{
    assert(str != nullptr);

    uint32_t res = 0;
    uint32_t str_len = strlen(str);

    for (uint32_t i = 0; i < str_len; i++) {
        res += str[i];
    }
    
    return res;
}
```

<p>Рассмотрим использование этой хеш-функции для различных размеров таблицы.</p>
<h4>Хеш-таблица размером 631 элемент</h4>

![ascii sum (631)](https://github.com/SvetoCopy/Hash-Table/assets/65361271/4aa494e8-78ee-442f-be6c-a8c287d94e78)


```
D = 12.13
```

<h4>Хеш-таблица размером 101 элемент</h4>

![ascii sum(101)](https://github.com/SvetoCopy/Hash-Table/assets/65361271/72416bdf-06e3-48bc-9098-78fa260f1212)

```
D = 83.7
```

<h3>MurMur</h3>

```c++
uint32_t HashFuncMurMur(const char* data)
{
    assert(data != nullptr);

    size_t size = strlen(data);
    uint32_t m = 0x5bd1e995;
    uint32_t seed = 0;
    uint32_t r = 24;
    uint32_t h = seed ^ size;

    unsigned char* arr = (unsigned char*)data;
    uint32_t k = 0;

    while (size >= 4)
    {
        k = arr[0] | (arr[1] << 8) | (arr[2] << 16) | (arr[3] << 24);

        k *= m;
        k ^= k >> r;
        k *= m;

        h *= m;
        h ^= k;

        arr += 4;
        size -= 4;
    }

    switch (size)
    {
    case 3:
        h ^= arr[2] << 16;
    case 2:
        h ^= arr[1] << 8;
    case 1:
        h ^= arr[0];
        h *= m;
    };

    h ^= h >> 13;
    h *= m;
    h ^= h >> 15;

    return h;
}
```

![MurMur](https://github.com/SvetoCopy/Hash-Table/assets/65361271/5b0b9916-e26c-46d8-ae28-5b0475c932a8)

```
D = 10.75
```

<h3>CRC32</h3>

```c++
uint32_t HashFuncCRC32(const char* str) 
{
    assert(str != nullptr);

    unsigned int crc = 0xFFFFFFFF;
    size_t length = strlen(str);

    for (size_t i = 0; i < length; i++) {
        crc = crc ^ static_cast<unsigned int>(str[i]);

        for (size_t j = 0; j < 8; j++) 
            crc = (crc >> 1) ^ (CRC32_POLYNOMIAL & ~((crc & 1) - 1));
    }

    return ~crc;
}

```

![crc32](https://github.com/SvetoCopy/Hash-Table/assets/65361271/75da5bd8-d286-43fd-9276-ae6b899f72ff)


```
D = 9.82
```

<h2>Часть 2. Оптимизация</h2>
<p>Запускаем поиск по таблице несуществующего элемента 10^8 раз и замерим с помощью rdtsc.</p>

|       | 1           | 2           | 3           | Average           |
|-------|-------------|-------------|-------------|-------------------|
| RDTSC | 45391261466 | 45914662437 | 45207485560 | (455 +- 2) * 10^8 |

<p>После intrisic видим:</p>

|       | 1          | 2          | 3          | Average           |
|-------|------------|------------|------------|-------------------|
| RDTSC | 5535374952 | 5353338549 | 5486310391 | (545 +- 7) * 10^7 |

<p>Это ускорение в ~8 раз</p>
