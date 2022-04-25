#ifndef SRC_LEDCTRL_H
#define SRC_LEDCTRL_H

#include <xil_types.h>
#include <xil_io.h>

typedef struct ledCtrl {
	u32 base_address;
} ledCtrl;

int init_ledCtrl(ledCtrl *ledCtrl_obj, u32 base_address);

void write_ledCtrl(ledCtrl *ledCtrl_obj, u32 write_data);

u32 read_ledCtrl(ledCtrl *ledCtrl_obj);

#endif /*SRC_LEDCTRL_H */
