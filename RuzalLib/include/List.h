#ifndef DED_LIST
#define DED_LIST
#include "super_io.h"

typedef char* ListElem_t;
const int LIST_ERROR = -1;
const int LIST_POISON = -1;

struct Node {
	int        ind;
	ListElem_t data;
	int        next;
	int        prev;
};     
      
struct FreeNode {
	int       ind;
	FreeNode* next;
};

struct List {
	Node* list_arr;
	int   free;
	int   size;
	int   capacity;
	int   head;
	int   tail;
	FILE* logger;
};

int NodeCtor(Node* node, ListElem_t value, int next, int prev, int ind);

extern "C" bool ListFindElem(List* list, const char* str);

int ListCtor(List* list, int capacity, const char* name);
int ListDtor(List* list);
int ListVerify(List* list);
int ListDump(List* list);

bool OptimizedStrCmp(char* str1, char* str2);

int ListInsertStart(List* list, ListElem_t value);
int ListInsertEnd(List* list, ListElem_t value);
int ListInsertBefore(List* list, ListElem_t value, int arr_ind);
int ListDelete(List* list, int arr_ind);
int ListReallocUp(List* list, int capacity);
#endif