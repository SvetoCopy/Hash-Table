#include "../include/HashFuncs.h"
#include <nmmintrin.h>
#include <immintrin.h>

uint32_t HashFuncCRC32(const char* str) 
{
    assert(str != nullptr);

    uint32_t crc = -1;

    int i = 0;

    while (str[i] != 0)
    {
        crc = crc ^ (str[i] << 24);
        for (int bit = 0; bit < 8; bit++)
        {
            if (crc & (1L << 31))
                crc = (crc << 1) ^ 0x04C11DB7;
            else
                crc = (crc << 1);
        }

        i++;
    }
    return ~crc;
}

uint32_t HashFuncCRC32Intr(const char* str) 
{
    assert(str != nullptr);

    uint32_t crc = 0xFFFFFFFF;

    for (int i = 0; i < (MAX_STR_LENGTH / 8); i++)
        crc = _mm_crc32_u64(crc, *((uint64_t*)str + i));

    return crc;
}

uint32_t HashFuncStrLen(const char* str) 
{
    assert(str != nullptr);

    return strlen(str);
}

uint32_t HashFuncConstant(const char* str) 
{
    assert(str != nullptr);

    return 0;
}

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
