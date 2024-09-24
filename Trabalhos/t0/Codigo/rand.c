#include <stdlib.h>
#include "es.h"
#include "err.h"

#define RAND_DEVICE_ID 101

int rand_le(int dispositivo, int *valor) {
    if (dispositivo != 0) { 
        return ERR_ES_DISPOSITIVO_INVALIDO;
    }
    *valor = rand() % 1000;
    return ERR_OK;
}

void rand_registra_dispositivo() {
    es_registra_dispositivo(RAND_DEVICE_ID, rand_le, NULL);
}
