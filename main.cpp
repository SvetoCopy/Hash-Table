#include "HashTable.h"
#include "super_io.h"
#include <iostream>

int main(int argc, const char* argv[])
{
	//if (argc < 2) {
	//	printf("Usage: %s filename.txt\n", argv[0]);
	//	return -1;
	//}
    // printf("\n%s\n", argv[1]);

    FileInfo file = FileInfoCtor("text.txt");
    ReadBuff(&file);
    printf("111");

    HashTable table(50);

    for (int i = 0; i < file.n_lines; i++) {
        printf("111");
        table.Insert(file.text[i]);
    }
    
    bool c = table.Find("dadadae");
    std::cout << "\nc = " << c << std::endl;
}
