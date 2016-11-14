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
static const char *ng0 = "C:/Users/Lenovo_PC/Desktop/ProcesadorMonociclo/registerFile.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2166523021_3212880686_p_0(char *t0)
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
    int t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned char t18;
    unsigned char t19;
    int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 7056U);
    t10 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 7056U);
    t10 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t12 = (t10 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 39, 1, t10);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t6 = (t2 + t15);
    t7 = (t0 + 4192);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t16 = *((char **)t11);
    memcpy(t16, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB6:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7072U);
    t10 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 7072U);
    t10 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t12 = (t10 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 39, 1, t10);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t6 = (t2 + t15);
    t7 = (t0 + 4256);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t16 = *((char **)t11);
    memcpy(t16, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB9:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 7088U);
    t5 = (t0 + 8588);
    t7 = (t17 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t10 = (4 - 0);
    t13 = (t10 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t17);
    t4 = (!(t3));
    if (t4 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 7088U);
    t10 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t12 = (t10 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 39, 1, t10);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t6 = (t2 + t15);
    t7 = (t0 + 4320);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t16 = *((char **)t11);
    memcpy(t16, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    t1 = (t0 + 4112);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t1 = (t0 + 4192);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4256);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4320);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(34, ng0);
    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t5 = (t0 + 4192);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB6;

LAB8:    xsi_set_current_line(39, ng0);
    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t5 = (t0 + 4256);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB9;

LAB11:    xsi_set_current_line(44, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t18 = *((unsigned char *)t9);
    t19 = (t18 == (unsigned char)3);
    if (t19 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(45, ng0);
    t8 = (t0 + 1832U);
    t11 = *((char **)t8);
    t8 = (t0 + 1512U);
    t16 = *((char **)t8);
    t8 = (t0 + 7088U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t16, t8);
    t20 = (t12 - 0);
    t13 = (t20 * 1);
    t14 = (32U * t13);
    t15 = (0U + t14);
    t21 = (t0 + 4384);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 32U);
    xsi_driver_first_trans_delta(t21, t15, 32U, 0LL);
    goto LAB15;

}


extern void work_a_2166523021_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2166523021_3212880686_p_0};
	xsi_register_didat("work_a_2166523021_3212880686", "isim/TB_Procesador_isim_beh.exe.sim/work/a_2166523021_3212880686.didat");
	xsi_register_executes(pe);
}
