#include "HashTable.h"
#include <string.h>

int HashFunc(const char* str) 
{
    assert(str != nullptr);

    return strlen(str);
}

HashTable::HashTable(size_t table_size) :
                            size {table_size}
{
    this->table = (List*)calloc(table_size, sizeof(List));

    assert(this->table != nullptr);

    for (int i = 0; i < table_size; i++) 
    {
        ListCtor(&(this->table[i]), INIT_LIST_CAPACITY, "log.txt");
    }
}

HashTable::~HashTable() 
{
    for (int i = 0; i < this->size; i++) {
        ListDtor(&(this->table[i]));
        this->table[i].capacity = -11;
    }
        
    this->size = 0;
}

void HashTable::Insert(char* str) 
{
    assert(str != nullptr);

    ListInsertEnd(&(this->table[HashFunc(str)]), str);
}

bool HashTable::Find(const char* str) 
{
    assert(str != nullptr);

    return ListFindElem(&(this->table[HashFunc(str)]), str);
}