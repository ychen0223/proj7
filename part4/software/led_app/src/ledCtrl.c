#include "led_Ctrl.h"

int init_ledCtrl(ledCtrl *ledCtrl_obj, u32 base_address){
	ledCtrl_obj -> base_address = base_address;
	return 0;
}

void write_ledCtrl(ledCtrl *ledCtrl_obj, u32 write_data){
	Xil_Out32(ledCtrl_obj->base_address, write_data);
}

u32 read_ledCtrl(ledCtrl *ledCtrl_obj){
	return Xil_In32(ledCtrl_obj->base_address +4);
}
