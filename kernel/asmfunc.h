#pragma once

#include <stdint.h>

extern "C"
{
    void IoOut32(uint16_t addrk, uint32_t data);
    uint32_t IoIn32(uint16_t addr);
}