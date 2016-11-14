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
static const char *ng0 = "C:/Users/Lenovo_PC/Desktop/ProcesadorMonociclo/PSR.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3961274036_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    int t36;
    char *t37;
    int t39;
    char *t40;
    int t42;
    char *t43;
    int t45;
    char *t46;
    int t48;
    char *t49;
    int t51;
    char *t52;
    int t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned char t66;
    unsigned char t67;
    unsigned char t68;
    unsigned char t69;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1312U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3776);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5879);
    t9 = xsi_mem_cmp(t1, t2, 4U);
    if (t9 == 1)
        goto LAB9;

LAB26:    t6 = (t0 + 5883);
    t15 = xsi_mem_cmp(t6, t2, 4U);
    if (t15 == 1)
        goto LAB10;

LAB27:    t8 = (t0 + 5887);
    t16 = xsi_mem_cmp(t8, t2, 4U);
    if (t16 == 1)
        goto LAB11;

LAB28:    t14 = (t0 + 5891);
    t18 = xsi_mem_cmp(t14, t2, 4U);
    if (t18 == 1)
        goto LAB12;

LAB29:    t19 = (t0 + 5895);
    t21 = xsi_mem_cmp(t19, t2, 4U);
    if (t21 == 1)
        goto LAB13;

LAB30:    t22 = (t0 + 5899);
    t24 = xsi_mem_cmp(t22, t2, 4U);
    if (t24 == 1)
        goto LAB14;

LAB31:    t25 = (t0 + 5903);
    t27 = xsi_mem_cmp(t25, t2, 4U);
    if (t27 == 1)
        goto LAB15;

LAB32:    t28 = (t0 + 5907);
    t30 = xsi_mem_cmp(t28, t2, 4U);
    if (t30 == 1)
        goto LAB16;

LAB33:    t31 = (t0 + 5911);
    t33 = xsi_mem_cmp(t31, t2, 4U);
    if (t33 == 1)
        goto LAB17;

LAB34:    t34 = (t0 + 5915);
    t36 = xsi_mem_cmp(t34, t2, 4U);
    if (t36 == 1)
        goto LAB18;

LAB35:    t37 = (t0 + 5919);
    t39 = xsi_mem_cmp(t37, t2, 4U);
    if (t39 == 1)
        goto LAB19;

LAB36:    t40 = (t0 + 5923);
    t42 = xsi_mem_cmp(t40, t2, 4U);
    if (t42 == 1)
        goto LAB20;

LAB37:    t43 = (t0 + 5927);
    t45 = xsi_mem_cmp(t43, t2, 4U);
    if (t45 == 1)
        goto LAB21;

LAB38:    t46 = (t0 + 5931);
    t48 = xsi_mem_cmp(t46, t2, 4U);
    if (t48 == 1)
        goto LAB22;

LAB39:    t49 = (t0 + 5935);
    t51 = xsi_mem_cmp(t49, t2, 4U);
    if (t51 == 1)
        goto LAB23;

LAB40:    t52 = (t0 + 5939);
    t54 = xsi_mem_cmp(t52, t2, 4U);
    if (t54 == 1)
        goto LAB24;

LAB41:
LAB25:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3840);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:
LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 3712);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(23, ng0);
    t1 = (t0 + 3776);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 3840);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t5 + t12);
    t4 = *((unsigned char *)t2);
    t6 = (t0 + 3712);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t4;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB6;

LAB9:    xsi_set_current_line(32, ng0);
    t55 = (t0 + 3840);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    *((unsigned char *)t59) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t55);
    goto LAB8;

LAB10:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3840);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t4;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB12:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB13:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (3 - 3);
    t60 = (t15 * -1);
    t61 = (1U * t60);
    t62 = (0 + t61);
    t5 = (t6 + t62);
    t4 = *((unsigned char *)t5);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t16 = (1 - 3);
    t63 = (t16 * -1);
    t64 = (1U * t63);
    t65 = (0 + t64);
    t7 = (t8 + t65);
    t66 = *((unsigned char *)t7);
    t67 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t66);
    t68 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t67);
    t69 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t68);
    t13 = (t0 + 3840);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t69;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB8;

LAB14:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (3 - 3);
    t60 = (t15 * -1);
    t61 = (1U * t60);
    t62 = (0 + t61);
    t5 = (t6 + t62);
    t4 = *((unsigned char *)t5);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t16 = (1 - 3);
    t63 = (t16 * -1);
    t64 = (1U * t63);
    t65 = (0 + t64);
    t7 = (t8 + t65);
    t66 = *((unsigned char *)t7);
    t67 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t66);
    t68 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t67);
    t13 = (t0 + 3840);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t68;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB8;

LAB15:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (3 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (1 - 3);
    t60 = (t15 * -1);
    t61 = (1U * t60);
    t62 = (0 + t61);
    t5 = (t6 + t62);
    t4 = *((unsigned char *)t5);
    t66 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t4);
    t67 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t66);
    t7 = (t0 + 3840);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    *((unsigned char *)t17) = t67;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB8;

LAB16:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (3 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (1 - 3);
    t60 = (t15 * -1);
    t61 = (1U * t60);
    t62 = (0 + t61);
    t5 = (t6 + t62);
    t4 = *((unsigned char *)t5);
    t66 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t4);
    t7 = (t0 + 3840);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    *((unsigned char *)t17) = t66;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB8;

LAB17:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (2 - 3);
    t60 = (t15 * -1);
    t61 = (1U * t60);
    t62 = (0 + t61);
    t5 = (t6 + t62);
    t4 = *((unsigned char *)t5);
    t66 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t4);
    t67 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t66);
    t7 = (t0 + 3840);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    *((unsigned char *)t17) = t67;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB8;

LAB18:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (2 - 3);
    t60 = (t15 * -1);
    t61 = (1U * t60);
    t62 = (0 + t61);
    t5 = (t6 + t62);
    t4 = *((unsigned char *)t5);
    t66 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t4);
    t7 = (t0 + 3840);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    *((unsigned char *)t17) = t66;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB8;

LAB19:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t4;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB20:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB21:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (3 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t4;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB22:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB23:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (1 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t4;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB24:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (1 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB42:;
}


extern void work_a_3961274036_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3961274036_3212880686_p_0};
	xsi_register_didat("work_a_3961274036_3212880686", "isim/TB_Procesador_isim_beh.exe.sim/work/a_3961274036_3212880686.didat");
	xsi_register_executes(pe);
}
