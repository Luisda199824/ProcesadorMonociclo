/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Lenovo_PC/Universidad/Arquitectura de Computadores/Procesador/DataMemory.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3261551314_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned int t15;
    unsigned int t16;
    int t18;
    unsigned int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 8467);
    t5 = (t0 + 3552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB8:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 8403);
    t6 = (t0 + 3552);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(26, ng0);
    t1 = xsi_get_transient_memory(2048U);
    memset(t1, 0, 2048U);
    t2 = t1;
    t5 = (t0 + 8435);
    t3 = (32U != 0);
    if (t3 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 3616);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 2048U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB5:    t11 = (2048U / 32U);
    xsi_mem_set_data(t2, t5, 32U, t11);
    goto LAB6;

LAB7:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t11 = (31 - 5);
    t15 = (t11 * 1U);
    t16 = (0 + t15);
    t1 = (t5 + t16);
    t6 = (t17 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 5;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t18 = (0 - 5);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t19;
    t20 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t17);
    t21 = (t20 - 63);
    t19 = (t21 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t20);
    t22 = (32U * t19);
    t23 = (0 + t22);
    t7 = (t2 + t23);
    t8 = (t0 + 3552);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t24 = *((char **)t12);
    memcpy(t24, t7, 32U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB8;

LAB10:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t11 = (31 - 5);
    t15 = (t11 * 1U);
    t16 = (0 + t15);
    t1 = (t7 + t16);
    t8 = (t17 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 5;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t18 = (0 - 5);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t19;
    t20 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t17);
    t21 = (t20 - 63);
    t19 = (t21 * -1);
    t22 = (32U * t19);
    t23 = (0U + t22);
    t9 = (t0 + 3616);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t24 = (t12 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t6, 32U);
    xsi_driver_first_trans_delta(t9, t23, 32U, 0LL);
    goto LAB11;

}


extern void work_a_3261551314_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3261551314_3212880686_p_0};
	xsi_register_didat("work_a_3261551314_3212880686", "isim/TB_Procesador_isim_beh.exe.sim/work/a_3261551314_3212880686.didat");
	xsi_register_executes(pe);
}
