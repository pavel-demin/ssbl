#include <stdint.h>

#define set(a, v) (*(volatile uint32_t *)(a) = (v))

#define linux ((void (*)(uint32_t, uint32_t, uint32_t))0x2008000)

__attribute__((naked)) void start()
{
  // unlock slcr
  set(0xF8000008, 0xDF0D);
  // ocm_cfg
  set(0xF8000910, 0x1F);
  // filtering_start_address
  set(0xF8F00040, 0);

  linux(0, 0xFFFFFFFF, 0x2000000);
}
