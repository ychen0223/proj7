#include "led_Ctrl.h"
#include <stdio.h>
#include "xuartps.h"
#include "xparameters.h"

int main(){
	ledCtrl myCtrl;
	init_ledCtrl(&myCtrl, XPAR_LED_CTRL_0_S00_AXI_BASEADDR);

	XUartPs_Config *uConfig;
	uConfig = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);
	if(NULL == uConfig){
		return XST_FAILURE;
	}

	XUartPs PSuart;

	int status;
	status = XUartPs_CfgInitialize(&PSuart, uConfig, uConfig->BaseAddress);
	if(status != XST_SUCCESS){
		xil_printf("UART init Failed \r\n");
		return -1;
	}

	XUartPs_SetBaudRate(&PSuart,115200);

	u8 ledVal;

	while(1){
		XUartPs_Recv(&PSuart, &ledVal, 1);
		int user_input = 0;
		xil_printf("ENTER A NUMBER BETWEEN 0 - 15: \n\r");
		int scanf_status = scanf("%d", &user_input);
		if(scanf_status == EOF){
			break;
		}
		ledVal = (u32) user_input;
		write_ledCtrl(&myCtrl, ledVal);
	}

}
