#include "../include/HashTable.h"
#include <string.h>
#include "../include/HashFuncs.h"

uint32_t HashTable::HashFunc(const char* str, int max_num) 
{
    return HashFuncCRC32Intr(str) % max_num;
}

HashTable::HashTable(size_t table_size) :
                            size {table_size}
{
    this->table = (List*)calloc(table_size, sizeof(List));

    assert(this->table != nullptr);

    for (size_t i = 0; i < table_size; i++) 
    {
        ListCtor(&(this->table[i]), INIT_LIST_CAPACITY, "log.txt");
    }
}

HashTable::~HashTable() 
{
    for (size_t i = 0; i < this->size; i++) {
        ListDtor(&(this->table[i]));
    }
        
    this->size = 0;
}

void HashTable::Insert(char* str) 
{
    assert(str != nullptr);

    ListInsertEnd(&(this->table[HashFunc(str, this->size)]), str);
}

bool HashTable::Find(const char* str) 
{
    assert(str != nullptr);

    return ListFindElem(&(this->table[HashFunc(str, this->size)]), str);
}