#include "adc.h"

#include "stm32f30x_adc.h"
#include "../stm32f30x_rcc.h"

#define ADC0_CH 	((u32)0)		//ADC1_IN1
#define ADC1_CH 	((u32)1)		//ADC1_IN2
#define ADC2_CH 	((u32)2)		//ADC1_IN3
#define ADC3_CH 	((u32)3)		//ADC1_IN4
#define ADC4_CH 	((u32)4)		//ADC2_IN1
#define ADC5_CH 	((u32)5)		//ADC2_IN2
#define ADC6_CH 	((u32)6)		//ADC2_IN3
#define ADC7_CH 	((u32)7)		//ADC2_IN4

#define ADC8_CH 	((u32)8)		//ADC3_IN13

void adc_init()
{
	ADC_InitTypeDef       ADC_InitStructure;
    GPIO_InitTypeDef      GPIO_InitStructure;

     /* Configure ADC Channels as analog input, on GPIOA, ADC1 and ADC2 will be used */
    GPIO_InitStructure.GPIO_Pin = 	ADC0_CH |
    								ADC1_CH |
    								ADC2_CH	|
    								ADC3_CH	|
    								ADC4_CH	|
    								ADC5_CH	|
    								ADC6_CH	|
    								ADC7_CH;

    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
    GPIO_Init( GPIOA, &GPIO_InitStructure );
 
	/* Configure ADC Channels as analog input, on GPIOB, ADC3 will be used */
    GPIO_InitStructure.GPIO_Pin = 	ADC8_CH;
    GPIO_Init( GPIOB, &GPIO_InitStructure );






    RCC_ADCCLKConfig(RCC_ADC12PLLCLK_Div2);
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_ADC12, ENABLE);

    RCC_ADCCLKConfig(RCC_ADC34PLLCLK_Div2);
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_ADC34, ENABLE);

    ADC_InitStructure.ADC_AutoInjMode = ADC_AutoInjec_Disable;
    ADC_InitStructure.ADC_ContinuousConvMode = ADC_ContinuousConvMode_Disable;
    ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
    ADC_InitStructure.ADC_ExternalTrigConvEvent = ADC_ExternalTrigConvEvent_0;
    ADC_InitStructure.ADC_ExternalTrigEventEdge = ADC_ExternalTrigInjecEventEdge_None;
    ADC_InitStructure.ADC_NbrOfRegChannel = 1;
    ADC_InitStructure.ADC_OverrunMode = ADC_OverrunMode_Disable;
    ADC_InitStructure.ADC_Resolution = ADC_Resolution_12b;

    ADC_Init(ADC1, &ADC_InitStructure);
    ADC_Init(ADC2, &ADC_InitStructure);
    ADC_Init(ADC3, &ADC_InitStructure);


    ADC_RegularChannelConfig(ADC1, ADC_Channel_1, 1,  ADC_SampleTime_1Cycles5);
    ADC_RegularChannelConfig(ADC2, ADC_Channel_1, 1,  ADC_SampleTime_1Cycles5);
    ADC_RegularChannelConfig(ADC3, ADC_Channel_13, 1,  ADC_SampleTime_1Cycles5);


    ADC_Cmd(ADC1, ENABLE);
    ADC_Cmd(ADC2, ENABLE);
    ADC_Cmd(ADC3, ENABLE);
}



u16 adc_read(u32 ch)
{
	u16 res = 0;


    ADC_TypeDef* ADCx; 
    uint8_t ADC_Channel;

    switch (ch)
    {
        case ADC0_CH: 
                        ADCx = ADC1;
                        ADC_Channel = ADC_Channel_1; 
                        break;

        case ADC1_CH: 
                        ADCx = ADC1;
                        ADC_Channel = ADC_Channel_2; 
                        break;

        case ADC2_CH: 
                        ADCx = ADC1;
                        ADC_Channel = ADC_Channel_3; 
                        break;

        case ADC3_CH: 
                        ADCx = ADC1;
                        ADC_Channel = ADC_Channel_4; 
                        break;

        case ADC4_CH: 
                        ADCx = ADC2;
                        ADC_Channel = ADC_Channel_1; 
                        break;

        case ADC5_CH: 
                        ADCx = ADC2;
                        ADC_Channel = ADC_Channel_2; 
                        break;  
             
        case ADC6_CH:
                        ADCx = ADC2;
                        ADC_Channel = ADC_Channel_3; 
                        break;

        case ADC7_CH: 
                        ADCx = ADC2;
                        ADC_Channel = ADC_Channel_4; 
                        break;  

        case ADC8_CH: 
                        ADCx = ADC3;
                        ADC_Channel = ADC_Channel_12; 
                        break;                          


        default: 
                        ADCx = ADC1;
                        ADC_Channel = ADC_Channel_1; 
                        break;                        
    }



    ADC_RegularChannelConfig( ADCx, ADC_Channel, 1, ADC_SampleTime_1Cycles5);
    //ADC_SampleTime_7Cycles5 );
	// ADC_RegularChannelConfig( ADCx, ADC_Channel_13, 1, ADC_SampleTime_3Cycles);
	//Start ADCx Software Conversion

	ADC_StartConversion(ADCx);
	// Wait until conversion completion
 	while(ADC_GetFlagStatus(ADCx, ADC_FLAG_EOC) == RESET) 
  		__asm("nop");
  


    res = ADC_GetConversionValue(ADCx);
	return res;
}