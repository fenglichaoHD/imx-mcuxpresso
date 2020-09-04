/*
 * Copyright 2018-2020 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef _BOARD_H_
#define _BOARD_H_
#include "clock_config.h"
#include "fsl_clock.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/
/*! @brief The board name */
#define BOARD_NAME        "DART-MX8MM"
#define MANUFACTURER_NAME "Variscite"
#define BOARD_DOMAIN_ID   (1)
/* The UART to use for debug messages. */
#define BOARD_DEBUG_UART_TYPE     kSerialPort_Uart
#define BOARD_DEBUG_UART_BAUDRATE 115200u
#define BOARD_DEBUG_UART_BASEADDR UART3_BASE
#define BOARD_DEBUG_UART_INSTANCE 3U
#define BOARD_DEBUG_UART_CLK_FREQ                                                           \
    CLOCK_GetPllFreq(kCLOCK_SystemPll1Ctrl) / (CLOCK_GetRootPreDivider(kCLOCK_RootUart3)) / \
        (CLOCK_GetRootPostDivider(kCLOCK_RootUart3)) / 10
#define BOARD_UART_IRQ         UART3_IRQn
#define BOARD_UART_IRQ_HANDLER UART3_IRQHandler

#define GPV5_BASE_ADDR      (0x32500000)
#define FORCE_INCR_OFFSET   (0x4044)
#define FORCE_INCR_BIT_MASK (0x2)

#define BOARD_GPC_BASEADDR GPC
#define BOARD_MU_IRQ_NUM   MU_M4_IRQn

/* Shared memory base for RPMsg communication. */
#define VDEV0_VRING_BASE (0x40000000U)

#if defined(__cplusplus)
extern "C" {
#endif /* __cplusplus */

/*******************************************************************************
 * API
 ******************************************************************************/

void BOARD_InitDebugConsole(void);
void BOARD_InitMemory(void);
void BOARD_RdcInit(void);

#if defined(__cplusplus)
}
#endif /* __cplusplus */

#endif /* _BOARD_H_ */