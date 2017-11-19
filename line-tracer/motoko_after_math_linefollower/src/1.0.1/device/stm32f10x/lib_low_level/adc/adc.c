#include "adc.h"
#include "stm32f10x_adc.h"


#define ADC0_PIN 	(1<<0)
#define ADC1_PIN 	(1<<1)
#define ADC2_PIN 	(1<<2)
#define ADC3_PIN 	(1<<3)
#define ADC4_PIN 	(1<<4)
#define ADC5_PIN 	(1<<5)
#define ADC6_PIN 	(1<<6)
#define ADC7_PIN 	(1<<7)

void adc_init()
{
	GPIO_InitTypeDef  GPIO_InitStructure;
 	GPIO_InitStructure.GPIO_Pin = ADC0_PIN | ADC1_PIN | ADC2_PIN | ADC3_PIN | ADC4_PIN | ADC5_PIN | ADC6_PIN | ADC7_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);



	ADC_InitTypeDef  ADC_InitStructure;
	  /* PCLK2 is the APB2 clock */

	  /* ADCCLK = PCLK2/6 = 72/6 = 12MHz*/
	RCC_ADCCLKConfig(RCC_PCLK2_Div6);

	/* ADCCLK = PCLK2/2 = 24/2 = 12MHz*/
//	RCC_ADCCLKConfig(RCC_PCLK2_Div2);

	  /* Enable ADC1 clock so that we can talk to it */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);
	  /* Put everything back to power-on defaults */
	ADC_DeInit(ADC1);

	/* ADC1 Configuration ------------------------------------------------------*/
	/* ADC1 and ADC2 operate independently */
	ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
	
	/* Disable the scan conversion so we do one at a time */
	ADC_InitStructure.ADC_ScanConvMode = DISABLE;
	
	/* Don't do contimuous conversions - do them on demand */
	ADC_InitStructure.ADC_ContinuousConvMode = DISABLE;
	
	/* Start conversin by software, not an external trigger */
	ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
	
	/* Conversions are 12 bit - put them in the lower 12 bits of the result */
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
	
	/* Say how many channels would be used by the sequencer */
	ADC_InitStructure.ADC_NbrOfChannel = 1;

	/* Now do the setup */
	ADC_Init(ADC1, &ADC_InitStructure);
	
	/* Enable ADC1 */
	ADC_Cmd(ADC1, ENABLE);


	//return;

	/* Enable ADC1 reset calibaration register */
	ADC_ResetCalibration(ADC1);
	
	/* Check the end of ADC1 reset calibration register */
	while(ADC_GetResetCalibrationStatus(ADC1)) 
		__asm("nop");
	
	/* Start ADC1 calibaration */
	ADC_StartCalibration(ADC1);
	
	/* Check the end of ADC1 calibration */
	while(ADC_GetCalibrationStatus(ADC1)) 
		__asm("nop");
}

u16 adc_read(u32 ch)
{
  ADC_RegularChannelConfig(ADC1, ch, 1, ADC_SampleTime_1Cycles5);
  // Start the conversion
  ADC_SoftwareStartConvCmd(ADC1, ENABLE);
  // Wait until conversion completion
  while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET) 
  	__asm("nop");
  // Get the conversion value
  return ADC_GetConversionValue(ADC1);
}