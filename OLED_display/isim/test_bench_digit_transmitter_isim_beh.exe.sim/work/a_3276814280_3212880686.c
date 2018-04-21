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
static const char *ng0 = "C:/Users/Thamian/current_xilinx_1904/OLED_display/digit_transmitter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3276814280_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5192);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5352);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 5352);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_3276814280_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7};

LAB0:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5416);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5208);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(84, ng0);
    t4 = (t0 + 5416);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB4:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t9 = (83 - 3);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t4 = (t0 + 8898);
    t3 = 1;
    if (4U == 4U)
        goto LAB11;

LAB12:    t3 = 0;

LAB13:    if ((!(t3)) != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5416);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);

LAB9:    goto LAB2;

LAB5:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5416);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5416);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5416);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(87, ng0);
    t8 = (t0 + 1192U);
    t13 = *((char **)t8);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)2);
    if (t15 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB9;

LAB11:    t12 = 0;

LAB14:    if (t12 < 4U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t6 = (t1 + t12);
    t7 = (t4 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB12;

LAB16:    t12 = (t12 + 1);
    goto LAB14;

LAB17:    xsi_set_current_line(88, ng0);
    t8 = (t0 + 5416);
    t16 = (t8 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t8);
    goto LAB18;

}

static void work_a_3276814280_3212880686_p_2(char *t0)
{
    char t14[16];
    char t15[16];
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t16;
    unsigned int t17;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    static char *nl0[] = {&&LAB3, &&LAB5, &&LAB5, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5224);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(106, ng0);
    t4 = (t0 + 8902);
    t6 = (t0 + 5480);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 84U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB4:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 8986);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t11 = (83 - 83);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t4 = (t5 + t13);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t15 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t17;
    t9 = (t18 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 83;
    t10 = (t9 + 4U);
    *((int *)t10) = 4;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t19 = (4 - 83);
    t17 = (t19 * -1);
    t17 = (t17 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t17;
    t6 = xsi_base_array_concat(t6, t14, t7, (char)97, t1, t15, (char)97, t4, t18, (char)101);
    t17 = (4U + 80U);
    t3 = (84U != t17);
    if (t3 == 1)
        goto LAB6;

LAB7:    t10 = (t0 + 5480);
    t20 = (t10 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t6, 84U);
    xsi_driver_first_trans_fast(t10);
    goto LAB2;

LAB5:    goto LAB2;

LAB6:    xsi_size_not_matching(84U, t17, 0);
    goto LAB7;

}

static void work_a_3276814280_3212880686_p_3(char *t0)
{
    char t14[16];
    char t15[16];
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t16;
    unsigned int t17;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    static char *nl0[] = {&&LAB3, &&LAB5, &&LAB5, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5240);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(117, ng0);
    t4 = (t0 + 8990);
    t6 = (t0 + 5544);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 84U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB4:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 9074);
    t4 = (t0 + 2472U);
    t5 = *((char **)t4);
    t11 = (83 - 83);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t4 = (t5 + t13);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t15 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t17;
    t9 = (t18 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 83;
    t10 = (t9 + 4U);
    *((int *)t10) = 4;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t19 = (4 - 83);
    t17 = (t19 * -1);
    t17 = (t17 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t17;
    t6 = xsi_base_array_concat(t6, t14, t7, (char)97, t1, t15, (char)97, t4, t18, (char)101);
    t17 = (4U + 80U);
    t3 = (84U != t17);
    if (t3 == 1)
        goto LAB6;

LAB7:    t10 = (t0 + 5544);
    t20 = (t10 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t6, 84U);
    xsi_driver_first_trans_fast(t10);
    goto LAB2;

LAB5:    goto LAB2;

LAB6:    xsi_size_not_matching(84U, t17, 0);
    goto LAB7;

}

static void work_a_3276814280_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    static char *nl0[] = {&&LAB4, &&LAB3, &&LAB4, &&LAB4, &&LAB4};

LAB0:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5256);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(128, ng0);
    t4 = (t0 + 2472U);
    t5 = *((char **)t4);
    t6 = (83 - 3);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t4 = (t5 + t8);
    t9 = (t0 + 9078);
    t11 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t11 = 0;

LAB10:    if ((!(t11)) != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB2;

LAB4:    goto LAB2;

LAB5:    xsi_set_current_line(129, ng0);
    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)2);
    if (t18 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB6;

LAB8:    t12 = 0;

LAB11:    if (t12 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t13 = (t4 + t12);
    t14 = (t9 + t12);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB9;

LAB13:    t12 = (t12 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(130, ng0);
    t15 = (t0 + 2312U);
    t19 = *((char **)t15);
    t20 = (83 - 3);
    t21 = (t20 * 1U);
    t22 = (0 + t21);
    t15 = (t19 + t22);
    t23 = (t0 + 5608);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t15, 4U);
    xsi_driver_first_trans_fast_port(t23);
    goto LAB15;

}

static void work_a_3276814280_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB5, &&LAB5, &&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5272);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(141, ng0);
    t4 = (t0 + 5672);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB4:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 5672);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    goto LAB2;

}


extern void work_a_3276814280_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3276814280_3212880686_p_0,(void *)work_a_3276814280_3212880686_p_1,(void *)work_a_3276814280_3212880686_p_2,(void *)work_a_3276814280_3212880686_p_3,(void *)work_a_3276814280_3212880686_p_4,(void *)work_a_3276814280_3212880686_p_5};
	xsi_register_didat("work_a_3276814280_3212880686", "isim/test_bench_digit_transmitter_isim_beh.exe.sim/work/a_3276814280_3212880686.didat");
	xsi_register_executes(pe);
}
