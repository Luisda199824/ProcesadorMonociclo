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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *STD_TEXTIO;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_1242562249_init();
    work_a_0767006552_3212880686_init();
    work_a_2061628760_3212880686_init();
    work_a_0123541133_0142796555_init();
    work_a_0295498852_3212880686_init();
    work_a_1917885752_3212880686_init();
    work_a_3961274036_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_0728318883_3212880686_init();
    work_a_0532180842_3212880686_init();
    work_a_0934014609_3212880686_init();
    work_a_0672037534_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_3261551314_3212880686_init();
    work_a_0441624806_3212880686_init();
    work_a_0517774018_3212880686_init();
    work_a_3756579194_3212880686_init();
    work_a_3998048205_3212880686_init();
    work_a_1360812158_3212880686_init();
    work_a_4289116073_2372691052_init();


    xsi_register_tops("work_a_4289116073_2372691052");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
