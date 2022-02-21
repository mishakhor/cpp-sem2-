#include <iostream>

struct subforwardlist {
    int data;
    subforwardlist* next;
};

bool init(subforwardlist** sfl) {
    (*sfl) = nullptr;
    return true;
}

bool push_back(subforwardlist** sfl, int d) {
    if ((*sfl) == nullptr) {
        *sfl = new subforwardlist;
        (*sfl)->data = d;
        (*sfl)->next = nullptr;
        return true;
    }
    subforwardlist *ptr = *sfl;
    while (ptr->next) {
        ptr = ptr->next;
    }
    (ptr->next) = new subforwardlist;
    (ptr->next)->data = d;
    (ptr->next)->next = nullptr;
    return true;
}

int pop_back(subforwardlist** sfl) {
    if ((*sfl) == nullptr) return 0;
    if ((*sfl)->next == nullptr) {
        int d = (*sfl)->data;
        delete (*sfl);
        (*sfl) = nullptr;
        return d;
    }
    subforwardlist* ptr = (*sfl);
    while(ptr->next->next) ptr=ptr->next;
    int d = ptr->next->data;
    delete ptr->next;
    ptr->next = nullptr;
    return d;
}

bool push_forward(subforwardlist** sfl, int d) {
    if ((*sfl) == nullptr) {
        *sfl = new subforwardlist;
        (*sfl)->data = d;
        (*sfl)->next = nullptr;
        return true;
    }
    subforwardlist* ptr = *sfl;
    (*sfl) = new subforwardlist;
    (*sfl)->next = ptr;
    (*sfl)->data = d;
    return true;
}

int pop_forward(subforwardlist** sfl) {
    if (*sfl == nullptr) return 0;
    subforwardlist* ptr = (*sfl)->next;
    int d = (*sfl)->data;
    delete (*sfl);
    (*sfl) = ptr;
    return d;
}

unsigned int size(subforwardlist** sfl) {
    subforwardlist* ptr = (*sfl);
    if ((*sfl) == nullptr) return 0;
    unsigned int sum = 1;
    while (ptr->next) ptr = ptr->next, sum++;
    return sum;
}

bool push_where(subforwardlist** sfl, unsigned int where, int d) {
    //if (size(sfl) < where or where < 0) return false;
    if (where == 0) return push_forward(sfl, d); //Попробовать return push_forward; // push_forward(sfl,d); return true;
    subforwardlist* ptr = (*sfl);
    for (unsigned int i = 0; i < where - 1; i++) {
        ptr = ptr->next;
    }
    subforwardlist* tmp = ptr->next;
    ptr->next = new subforwardlist;
    ptr->next->next = tmp;
    ptr->next->data = d;
    return true;
}
//Можно запрогать проверку на наличие элемента такого номера..
bool erase_where(subforwardlist** sfl, unsigned int where) {
    //if (size(sfl) < where or where < 0) return false;
    subforwardlist* ptr = (*sfl);
    if (where == 0) {
        ptr = (*sfl)->next;
        delete (*sfl);
        (*sfl) = ptr;
        return true;
    }
    for (unsigned int i = 0; i < where-1; i++) {
        ptr = ptr->next;
    }
    if (ptr->next == nullptr) return false;
    subforwardlist* temp = ptr->next->next;
    delete ptr->next;
    ptr->next = temp;
    return true;
}

void clear(subforwardlist** sfl) {
    if(!(*sfl)) return;
    clear(&((*sfl)->next));
    delete (*sfl);
    (*sfl) = nullptr;
}