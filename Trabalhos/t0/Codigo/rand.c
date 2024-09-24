#include "rand.h"
#include <stdlib.h> 

void rand_inicializa(unsigned int semente) {
    srand(semente);
}

int rand_obtem(int limite) {
    return rand() % limite;
}
