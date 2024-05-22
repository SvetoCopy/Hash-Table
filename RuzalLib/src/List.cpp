#include "../include/List.h"
#include "assert.h"
#include <string.h>

#define PREV(indx) list->list_arr[indx].prev
#define NEXT(indx) list->list_arr[indx].next
#define NODE(indx)  list->list_arr[indx]

inline bool OptimizedStrCmp(const char* s1, const char* s2) {

	assert(s1 != nullptr);
	assert(s2 != nullptr);

	bool cmp = 0;

	asm (
		".intel_syntax noprefix\n\t"
		"vmovdqu ymm0, YMMWORD PTR [%1]\n"
		"vptest  ymm0, YMMWORD PTR [%2]\n"
		"setb %b0\n"
		".att_syntax prefix\n\t"
		: "+&r"(cmp)
		: "r"(s1), "r"(s2)
		: "ymm0", "cc"
	);

	return cmp;
}

bool ListFindElem(List* list, const char* str) {

	assert(list != nullptr);
	assert(str != nullptr);
	assert(list->list_arr != nullptr);
	
	Node* node_var = &NODE(list->head);

	int i = 0;

	while (i < list->size) 
	{
		if (strcmp(node_var->data, str) == 0)
			return true;
			
		node_var = &NODE(node_var->next);
		i++;
	}

	return false;
}

int NodeCtor(Node* node, ListElem_t value, int next, int prev, int ind) {
	node->data = value;
	node->next = next;
	node->prev = prev;
	node->ind  = ind;
	return 0;
}

int NodeDump(Node* node) {
	printf("------------------------\n");
	printf("|ind: %d|\n|data: %d|\n|next: %d|\n|prev: %d|\n", 
		node->ind, node->data, node->next, node->prev);
	printf("------------------------\n");
	return 0;
}

int ListCtor(List* list, int capacity, const char* name) {

	assert(list != nullptr);

	list->capacity = capacity + 1;
	list->list_arr = (Node*)calloc(list->capacity, sizeof(Node));

	assert(list->list_arr != nullptr);

	list->logger = fopen(name, "w");
	list->free = 1;

	for (int i = list->capacity - 1; i > 0; i--) {
		Node node = {};
		if (i == list->capacity - 1) NodeCtor(&node, nullptr, LIST_POISON, LIST_POISON, i);
		else                         NodeCtor(&node, nullptr, i + 1, LIST_POISON, i);
		
		NODE(i) = node;
	}

	list->head = 0;
	list->tail = 0;
	list->size = 0;
	return 0;
}

int ListDtor(List* list) {

	if(list == nullptr)
		return 0;
	if (list->list_arr == nullptr)
		return 0;

	free(list->list_arr);
	// fclose(list->logger);
	
	list->free     = LIST_POISON;
	list->head     = LIST_POISON;
	list->tail     = LIST_POISON;
	list->capacity = LIST_POISON;
	list->size     = LIST_POISON;

	return 0;
}

int ListVerify(List* list) {
	assert(list != nullptr);
	assert(list->list_arr != nullptr);

	if (list->head > list->tail)     fprintf(stderr, "head > tail\n");
	if (list->size > list->capacity) fprintf(stderr, "size > capacity\n");
	if (list->list_arr == nullptr)   fprintf(stderr, "list - nullptr\n");

	for (int i = 0; i < list->size; i++) {
		if (NEXT(i) > list->size) fprintf(stderr, "range error\n");
	}
	return 0;
}

int ListDump(List* list) {
	assert(list != nullptr);

	printf("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
	printf("\nDUMP:\ncapacity: %d\nsize: %d\nhead: %d\ntail: %d\nfree: %d\n\n", 
		list->capacity, list->size, list->head, list->tail, list->free);
	
	for (int i = 0; i < list->capacity; i++) {
		NodeDump(&NODE(i));
	}
	printf(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	return 0;
}

Node* FindNode(List* list, int ind) {
	assert(list != nullptr);
	assert(list->list_arr != nullptr);

	int i = 0;
	Node* Node_var = &NODE(list->head);
	while (i < ind) {
		Node_var = &NODE(Node_var->next);
		i++;
	}
	return Node_var;
}

int ListDeleteNode(List* list, Node delete_node) {
	assert(list != nullptr);
	assert(list->list_arr != nullptr);
	NEXT(delete_node.prev) = NEXT(delete_node.ind);
	PREV(delete_node.next) = PREV(delete_node.ind);
	list->size--;
	return 0;
}

int ListDelete(List* list, int arr_ind) {
	assert(list != nullptr);
	assert(list->list_arr != nullptr);

	Node delete_node = NODE(arr_ind);
	ListDeleteNode(list, delete_node);

	NEXT(arr_ind) = list->free;
	PREV(arr_ind) = LIST_POISON;
	list->free    = arr_ind;

	return 0;
}

int ListReallocUp(List* list, int capacity) {
	assert(list != nullptr);

	list->list_arr = (Node*)realloc(list->list_arr, (capacity + 1) * sizeof(Node));

	assert(list->list_arr != nullptr);

	for (int i = capacity; i > list->capacity - 1; i--) {
		Node node = {};
		if (i == capacity) NodeCtor(&node, nullptr, list->free, LIST_POISON, i);
		else               NodeCtor(&node, nullptr, i + 1, LIST_POISON, i);
			
		NODE(i) = node;
	}
	list->free = list->capacity;
	list->capacity = capacity + 1;
	
	return 0;
}   

int ListUpdateHeadTail(List* list) {
	list->tail = PREV(0);
	list->head = NEXT(0);
	return 0;
}

int ListInsertNode(List* list, Node node, int free_id) {
	NODE(free_id) = node;
	NEXT(node.prev) = free_id;
	PREV(node.next) = free_id;
	list->size++;

	ListUpdateHeadTail(list);
	return 0;
}

int GetFreePlace(List* list) {
	int free_id = list->free;

	if (free_id == LIST_POISON) return LIST_ERROR;

	list->free = NEXT(free_id);
	
	return free_id;
}

int ListInsertStart(List* list, ListElem_t value) {
	assert(list != nullptr);
	assert(list->list_arr != nullptr);

	if (list->size > list->capacity / 2) ListReallocUp(list, list->capacity * 2);

	int free_id = GetFreePlace(list);
	if (free_id == LIST_ERROR) return LIST_ERROR;
	
	Node new_node = {};
	NodeCtor(&new_node, value, list->head, 0, free_id);

	ListInsertNode(list, new_node, free_id);
	return free_id;
}

int ListInsertEnd(List* list, ListElem_t value) {
	assert(list != nullptr);
	assert(list->list_arr != nullptr);

	if (list->size > list->capacity / 2) ListReallocUp(list, list->capacity * 2);

	int free_id = GetFreePlace(list);
	if (free_id == LIST_ERROR) return LIST_ERROR;

	Node new_node = {};
	NodeCtor(&new_node, value, 0, list->tail, free_id);

	ListInsertNode(list, new_node, free_id);
	return free_id;
}

int ListInsertBefore(List* list, ListElem_t value, int arr_ind) {
	assert(list != nullptr);
	assert(list->list_arr != nullptr);

	if (list->size > list->capacity / 2) ListReallocUp(list, list->capacity * 2);

	int free_id = GetFreePlace(list);
	if (free_id == LIST_ERROR) return LIST_ERROR;

	Node new_node = {};
	
	Node old_node = NODE(arr_ind);
	NodeCtor(&new_node, value, old_node.ind, old_node.prev, free_id);

	ListInsertNode(list, new_node, free_id);
	return free_id;
}