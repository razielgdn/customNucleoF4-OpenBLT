/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "app.h"
#include "blt_conf.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);

#if (BOOT_COM_MBRTU_ENABLE > 0 || BOOT_COM_RS232_ENABLE > 0)
  #if(BOOT_COM_MBRTU_CHANNEL_INDEX==0 || BOOT_COM_RS232_CHANNEL_INDEX==0)
    static void USART1_GPIO_Init(void);
  #endif
  #if(BOOT_COM_MBRTU_CHANNEL_INDEX==1 || BOOT_COM_RS232_CHANNEL_INDEX==1)
    static void USART2_GPIO_Init(void);
  #endif  
#endif

int main(void)
{
  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  /* Initialize the bootloader application. */
  AppInit();
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* Run the bootloader application. */
    AppTask();
    /* USER CODE END WHILE */
    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  LL_FLASH_SetLatency(LL_FLASH_LATENCY_5);
  while(LL_FLASH_GetLatency()!= LL_FLASH_LATENCY_5)
  {
  }
  LL_PWR_SetRegulVoltageScaling(LL_PWR_REGU_VOLTAGE_SCALE1);
  LL_PWR_EnableOverDriveMode();
  LL_RCC_HSE_EnableBypass();
  LL_RCC_HSE_Enable();

   /* Wait till HSE is ready */
  while(LL_RCC_HSE_IsReady() != 1)
  {

  }
  LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE, LL_RCC_PLLM_DIV_4, 180, LL_RCC_PLLP_DIV_2);
  LL_RCC_PLL_Enable();

   /* Wait till PLL is ready */
  while(LL_RCC_PLL_IsReady() != 1)
  {

  }
  LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
  LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_4);
  LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_2);
  LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);

   /* Wait till System clock is ready */
  while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
  {

  }
  LL_SetSystemCoreClock(180000000);

   /* Update the time base */
  if (HAL_InitTick (TICK_INT_PRIORITY) != HAL_OK)
  {
    Error_Handler();
  }
  LL_RCC_SetTIMPrescaler(LL_RCC_TIM_PRESCALER_TWICE);
}


#if (BOOT_COM_MBRTU_ENABLE > 0 || BOOT_COM_RS232_ENABLE > 0)
  #if(BOOT_COM_MBRTU_CHANNEL_INDEX==0 || BOOT_COM_RS232_CHANNEL_INDEX==0)
    /**
    * @brief USART1 Initialization Function
    * @param None
    * @retval None
    */
    static void USART1_GPIO_Init(void)
    {

      /* USER CODE BEGIN USART1_Init 0 */
      /* Note that the USART initialization that follows here is don't care. It is
      * reconfigured upon bootloader initialization with function MbRtuInit().
      */
      /* USER CODE END USART1_Init 0 */

      LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

      /* Peripheral clock enable */
      LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_USART1);
      LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
      /**USART1 GPIO Configuration
      PA9   ------> USART1_TX
      PA10   ------> USART1_RX
      */
      GPIO_InitStruct.Pin = LL_GPIO_PIN_9|LL_GPIO_PIN_10;
      GPIO_InitStruct.Mode = LL_GPIO_MODE_ALTERNATE;
      GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_VERY_HIGH;
      GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
      GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
      GPIO_InitStruct.Alternate = LL_GPIO_AF_7;
      LL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    }
  #endif
  #if(BOOT_COM_MBRTU_CHANNEL_INDEX==1 || BOOT_COM_RS232_CHANNEL_INDEX==1)
    /**
      * @brief USART2 Initialization Function
      * @param None
      * @retval None
      */
    static void USART2_GPIO_Init(void)
    {
      /* USER CODE BEGIN USART2_Init 0 */

      /* USER CODE END USART2_Init 0 */
      LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

      /* Peripheral clock enable */
      LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_USART2);
      LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
      /**USART2 GPIO Configuration
      PA2   ------> USART2_TX
      PA3   ------> USART2_RX
      */
      GPIO_InitStruct.Pin = LL_GPIO_PIN_2|LL_GPIO_PIN_3;
      GPIO_InitStruct.Mode = LL_GPIO_MODE_ALTERNATE;
      GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_VERY_HIGH;
      GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
      GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
      GPIO_InitStruct.Alternate = LL_GPIO_AF_7;
      LL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    }
  #endif  
#endif

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5|GPIO_PIN_8, GPIO_PIN_RESET);

  /*Configure GPIO pin : PC13 */
  GPIO_InitStruct.Pin = GPIO_PIN_13;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PA5 PA8 */
  GPIO_InitStruct.Pin = GPIO_PIN_5|GPIO_PIN_8;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
  #if (BOOT_COM_MBRTU_ENABLE > 0 || BOOT_COM_RS232_ENABLE > 0)
	   USART2_GPIO_Init();
	   USART1_GPIO_Init();
  #endif

  #if( BOOT_COM_CAN_ENABLE > 0 )
	   __HAL_RCC_CAN1_CLK_ENABLE();
	  /**CAN1 GPIO Configuration
	  PA11     ------> CAN1_RX
	  PA12     ------> CAN1_TX
	  */
	  GPIO_InitStruct.Pin = GPIO_PIN_11|GPIO_PIN_12;
	  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
	  GPIO_InitStruct.Pull = GPIO_NOPULL;
	  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
	  GPIO_InitStruct.Alternate = GPIO_AF9_CAN1;
	  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
  #endif
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
