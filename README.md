<h1>Hash Table Research</h1>
<h2>Аннотация</h2>
<p>В данной работе проводится исследование работы хеш-таблицы при различных оптимизациях. Все замеры сделаны на процессоре 11th Gen Intel i5-11300H (8) @ 4.400GHz.</p>

<h2>Принцип работы Hash-Table</h2>
<p>
Хеш-таблица это структура данных для реализации словарей, преимуществом которой является быстрый поиск. В нашей задаче она представляет из себя массив двухсвязных списков.
Для работы с хеш-таблицами используются различные хеш-функции, которые однозначно ставят в соответствие каким-то данным (в нашем случае строкам) - число. С помощью этой функции
мы ставим каждой строке в соответствие какой-то список из массива. Таким образом, мы заполняем все списки нашими строками, например:
</p>

![image](https://github.com/SvetoCopy/Hash-Table/assets/65361271/06ea576a-3cd9-4004-9d54-ee84bf9da1f7)

<p>
Для поиска значений по этой таблице, мы используем хеш-функцию для нахождения нужного списка, а далее выполняем линейный поиск.
</p>
<p>
Одной из метрик хеш-таблицы это <b>Load Factor</b>, который показывает среднее число элементов в подмножестве. Чем ниже, Load Factor, тем меньше времени тратится на линейный поиск, а значит быстрее работает поиск.
</p>

<p>
Наша работа разделена на 2 части:
<li>Исследование работы хеш-таблицы при различных хеш-функциях</li>
<li>Оптимизация работы поиска по таблице</li>
</p>

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

![ascii sum (631)](https://github.com/SvetoCopy/Hash-Table/graphs/ascii_sum_631.png)


```
D = 12.13
```

<h4>Хеш-таблица размером 101 элемент</h4>

![ascii sum(101)](https://github.com/SvetoCopy/Hash-Table/graphs/ascii_sum_101.png)

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

<h3>Итоги</h3>

<p>
В ходе работы, мы рассмотрели множество различных хеш-функций, сопоставили к каждой дисперсию, по которой мы можем оценить эффективность.

| Хеш-функция    | Дисперсия |
|----------------|-----------|
| Constant 0     | 29456.30  |
| StrLen         | 1427.78   |
| ASCII sum(101) | 83.7      |
| ASCII sum(631) | 12.13     |
| MurMur         | 10.75     |
| CRC32          | 9.82      |

Можем заметить, что у CRC32 наименьшая дисперсия, а значит для наших данных это наиболее подходящая хеш-функция. Ну и очевидно, что такие функции, как Constant 0 
очень сильно снижают эффективность за счет возникающих коллизий.
</p>

<h2>Часть 2. Оптимизация</h2>
<p>В этой части мы будем пытаться повысить эффективность работы нашей программы различными оптимизациями. Всего нас их будет три:
    
<li>Intrisic команды</li>
<li>Внешняя Ассемблерная вставка</li>
<li>Ассемблерная вставка, встроенная в C </li>
</p>

<p>Для профилирования будем пользоваться инструментами valgrind и Kcachegrind для удобного просмотра</p>
                                                                                       
<p>Запускаем поиск по таблице несуществующего элемента $$ 10^6 $$ раз и замерим с помощью ассемблерной команды rdtsc количество тактов. Тогда до всех оптимизаций, получаем:</p>
                                              
|       | 1           | 2           | 3           | Average           |
|-------|-------------|-------------|-------------|-------------------|
| RDTSC | 1150606410  | 1128744823  | 1077206075  | (112 +- 3) * 10^7 |
                                    
                                    
<h3>Оптимизация intrisic командами</h3>
<p>Рассмотрим с помощью valgrind характеристику каждой функции:</p>

![image](https://github.com/SvetoCopy/Hash-Table/assets/65361271/a02d14a4-67a1-4f17-9eb2-063fd40f41f1)

<p>
Можем заметить, что самая затратная функция - это хэш-функция CRC32. Но мы знаем, что существуют intrisic-инструкции, которые реализуют CRC32.
Давайте будем делать все в предположении, что мы принимаем строки, с максимальной длиной 32 символа. Это предположение имеет смысл например, если у нас в роли данных выступают существующие английские слова.
Тогда мы можем оптимизировать так:
</p>

```c++
uint32_t HashFuncCRC32Intr(const char* str) 
{
    assert(str != nullptr);

    uint32_t crc = 0xFFFFFFFF;

    for (int i = 0; i < (MAX_STR_LENGTH / 8); i += 1)
        crc = _mm_crc32_u64(crc, *((uint64_t*)str + i));

    return crc;
}
```

<p>
Единственная проблема, что строки в таком случае должны быть определенного формата. Нужно, чтобы каждая строка была записана в 32-символьный буфер, заполненный нулями. В таком случае мы можем однозначно поставить в соответствие число. Мы оставляем эту задачу на пользователя. То есть данные для ввода должны иметь 32 символа.
</p>

<p>Тогда получаем:</p>

|       | 1          | 2          | 3          | Average           |
|-------|------------|------------|------------|-------------------|
| RDTSC | 562155843 | 660919749 | 559501411    | (59 +- 4) * 10^7  |

<p>Это ускорение в ~1.9 раз</p>

<h3>Ассемблерная вставка, встроенная в C</h3>
<p>Посмотрим опять, что выдает valgrind:</p>

![image](https://github.com/SvetoCopy/Hash-Table/assets/65361271/84ec17fb-3a74-4e4d-a7f1-dea1b8788977)

<p>Видим, что strcmp - самая затратная функция. Давайте попробуем написать свою функцию сравнения строк на встроенном ассемблере. Основываясь на листинге https://godbolt.org/z/n15Gxe63e при оптимизации -O3 получаем такой код:</p>

```c++
inline bool OptimizedStrCmp(const char* s1, const char* s2) {

	bool cmp = 0;

	asm (
		".intel_syntax noprefix\n\t"
		"vmovdqu ymm0, YMMWORD PTR [%1]\n"
		"vptest  ymm0, YMMWORD PTR [%2]\n"
		"setb %b0\n"
		"vzeroupper\n"
		".att_syntax prefix\n\t"
		: "+&r"(cmp)
		: "r"(s1), "r"(s2)
		: "ymm0", "cc"
	);

	return cmp;
}

```
<p>Тогда получаем:</p>

|       | 1          | 2          | 3          | Average           |
|-------|------------|------------|------------|-------------------|
| RDTSC | 324783406  | 370421110   | 360344864 | (35 +- 2) * 10^7  |

<p>Что ускорило программу в 1.69 раз относительно первой оптимизации.</p>

<h3>Внешний ассемблер</h3>

<p>Давайте опять посмотрим, какая сейчас самая затратная функция:</p>

![image](https://github.com/SvetoCopy/Hash-Table/assets/65361271/6388d983-4fcf-45d1-941a-93b7a0c15e5a)

<p>Это опять функция для поиска ключа. Давайте посмотрим самые тяжелые для процессора строчки кода:</p>

![image](https://github.com/SvetoCopy/Hash-Table/assets/65361271/d9bc96cb-2023-4f71-b386-016711606723)

<p>Видим, что наша ассемблерная вставка самая затратная. Как минимум это связано с тем, что она вызывается в цикле. Давайте посмотрим ассемблерный листинг:</p>

```asm
ListFindElem(List*, char const*):
        movsx   rax, DWORD PTR [rdi+20]
        mov     r8, QWORD PTR [rdi]
        mov     r9d, DWORD PTR [rdi+12]
        lea     rax, [rax+rax*2]
        lea     rdx, [r8+rax*8]
        test    r9d, r9d
        jle     .L4
        xor     ecx, ecx
        xor     r10d, r10d
        jmp     .L3
.L8:
        movsx   rdx, DWORD PTR [rdx+16]
        add     ecx, 1
        lea     rdx, [rdx+rdx*2]
        lea     rdx, [r8+rdx*8]
        cmp     ecx, r9d
        je      .L7
.L3:
        mov     rdi, QWORD PTR [rdx+8]
        mov     eax, r10d
        .intel_syntax noprefix
        vmovdqu ymm0, YMMWORD PTR [rdi]
        vptest  ymm0, YMMWORD PTR [rsi]
        setb al
        vzeroupper

        test    al, al
        je      .L8
        ret
.L7:
        ret
.L4:
        xor     eax, eax
        ret
```
<p>
Здесь заметим, что наша ассемблерная вставка, выполняемая в цикле выполняет одни и те же действия. Это обращение в память - YMMWORD PTR [rsi] (хотя rsi не меняется) и vzeroupper. 
Вынесем их за цикл и посмотрим, что выйдет:
</p>

```asm
.intel_syntax noprefix

.text

.global ListFindElem
ListFindElem:
        movsx   rax, DWORD PTR [rdi+20]
        mov     r8, QWORD PTR [rdi]
        mov     r9d, DWORD PTR [rdi+12]
        lea     rax, [rax+rax*2]
        lea     rdx, [r8+rax*8]
        test    r9d, r9d
        jle     .L4
        xor     ecx, ecx
        xor     r10d, r10d
        vmovdqu ymm1, YMMWORD PTR [rsi]
        jmp     .L3
.L8:
        movsx   rdx, DWORD PTR [rdx+16]
        add     ecx, 1
        lea     rdx, [rdx+rdx*2]
        lea     rdx, [r8+rdx*8]
        cmp     ecx, r9d
        je      .L7
.L3:
        mov     rdi, QWORD PTR [rdx+8]
        mov     eax, r10d
        .intel_syntax noprefix
        vmovdqu ymm0, YMMWORD PTR [rdi]
        vptest  ymm0, ymm1
        setb al

        test    al, al
        je      .L8
        ret
.L7:
        vzeroupper
        ret
.L4:
        xor     eax, eax
        ret
```

<p>Тогда получим:</p>

|       | 1          | 2          | 3          | Average           |
|-------|------------|------------|------------|-------------------|
| RDTSC | 311400203  | 313090695   | 313610165 | (312 +- 9) * 10^6 |

<p>Что ускорило программу  в 1.12 раз относительно второй оптимизации.</p>

<h3>Выводы</h3>

|   | Относительное ускорение | Абсолютное ускорение |
|---|-------------------------|----------------------|
| 1 | 1.90                    | 1.90                 |
| 2 | 1.69                    | 3.20                 |
| 3 | 1.12                    | 3.55                 |

<p>
Таким образом, мы смогли ускорить работу программы в 3.55 раз по сравнению с первоначальным вариантом.
Такие колоссальные различия в скорости различных версиях программы обусловлено отсутствием переносимости кода.
</p>
