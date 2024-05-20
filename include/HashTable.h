#include "List.h"
#include "assert.h"

const int INIT_LIST_CAPACITY = 100;

class HashTable {
public:
    List* table = {};
    size_t size = 0;

    HashTable(size_t size);
    ~HashTable();

    void Insert(char* str);
    bool Find(const char* str);
};