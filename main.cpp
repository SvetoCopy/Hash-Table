#include "HashTable.h"
#include "super_io.h"
#include <iostream>

void CreateGraphTable(FILE* file, HashTable* table) 
{
    assert(file != nullptr);

    for (int i = 0; i < table->size; i++) {
        fprintf(file, "%d %d\n", i, table->table[i].size);
    }
}

int main(int argc, const char* argv[])
{
	//if (argc < 2) {
	//	printf("Usage: %s filename.txt\n", argv[0]);
	//	return -1;
	//}
    // printf("\n%s\n", argv[1]);

    FileInfo file = FileInfoCtor("text2.txt");
    ReadBuff(&file);

    HashTable table(631);

    for (int i = 0; i < file.n_lines; i++) {
        table.Insert(file.text[i]);
    }

    FILE* res = fopen("../graph.txt", "w");
    CreateGraphTable(res, &table);
    
    for (int i = 0; i < 20000; i++)
        bool c = table.Find("dadadae");
    // std::cout << "\nc = " << c << std::endl;
}
