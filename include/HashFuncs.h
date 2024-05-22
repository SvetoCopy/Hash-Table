#include "string.h"
#include "assert.h"
#include "stdint.h"

const uint32_t CRC32_POLYNOMIAL = 0xEDB88320;
const int MAX_STR_LENGTH = 32;

uint32_t HashFuncStrLen(const char* str);
uint32_t HashFuncConstant(const char* str);
uint32_t HashFuncAsciiSum(const char* str);

uint32_t HashFuncCRC32Intr(const char* str);
uint32_t HashFuncCRC32(const char* str);
uint32_t HashFuncMurMur(const char* data);