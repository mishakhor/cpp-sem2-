#include <iostream>

// subvector def
struct subvector {
    int * mas;
    unsigned int top;
    unsigned int capacity;
};

// subvec initialisation
bool init(subvector* qv) {
    qv->mas = nullptr; //data array ptr
    qv->top = 0; //data memory size
    qv->capacity = 0; //available heap memory size
    return true;
}

//increase/decrease the capacity
bool resize(subvector* qv, unsigned int new_capacity) {
    int* temp = new int[new_capacity];
    if (qv->top >= new_capacity) {
        for (unsigned int i = 0; i < new_capacity; i++) {
            temp[i] = qv->mas[i];
        }
        qv->top = new_capacity;
    }
    else {
        for (unsigned int i = 0; i < qv->top; i++) temp[i]=qv->mas[i];
    }
    delete[] qv->mas;
    qv->mas = temp;
    qv->capacity = new_capacity;
    return true;
}

//add. element to the end of arr.
bool push_back(subvector* qv, int d) {
    if (qv->top < qv->capacity) {
        qv->mas[qv->top] = d;
        qv->top += 1;
    }
    else {
        resize(qv, (qv->capacity)+1);
        qv->mas[qv->top] = d;
        qv->top += 1;
    }
    return true;
}

//return last arr. element, delete one
int pop_back(subvector* qv) {
    if (qv->top == 0) return 0;
    qv->top -= 1;
    return qv->mas[qv->top];
}

//clear the unused memory
void shrink_to_fit(subvector* qv) {
    resize(qv, qv->top);
}

//clear the arr. without cleaning memory
void clear(subvector* qv) {
    qv->top = 0;
}

//clear all used memory and init empty subv
void destructor(subvector* qv) {
    delete[] qv->mas;
    init(qv);
}