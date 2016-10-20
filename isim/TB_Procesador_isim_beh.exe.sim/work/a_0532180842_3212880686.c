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
static const char *ng0 = "C:/Users/Usuario UTP/Luisda/ProcesadorMonociclo/SignExtender.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0532180842_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(18, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (12 - 12);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3336);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 3240);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0532180842_3212880686_p_1(char *t0)
{
    char t8[16];
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 5369);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t10 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 18;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t13 = (18 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t14;
    t11 = (t0 + 5248U);
    t5 = xsi_base_array_concat(t5, t8, t7, (char)97, t1, t10, (char)97, t6, t11, (char)101);
    t14 = (19U + 13U);
    t3 = (32U != t14);
    if (t3 == 1)
        goto LAB7;

LAB8:    t12 = (t0 + 3400);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 32U);
    xsi_driver_first_trans_fast_port(t12);

LAB3:    t1 = (t0 + 3256);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 5350);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 18;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (18 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 5248U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t1, t10, (char)97, t7, t12, (char)101);
    t14 = (19U + 13U);
    t15 = (32U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 3400);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 32U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t14, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(32U, t14, 0);
    goto LAB8;

}


extern void work_a_0532180842_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0532180842_3212880686_p_0,(void *)work_a_0532180842_3212880686_p_1};
	xsi_register_didat("work_a_0532180842_3212880686", "isim/TB_Procesador_isim_beh.exe.sim/work/a_0532180842_3212880686.didat");
	xsi_register_executes(pe);
}
