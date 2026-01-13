// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Jan 12 23:17:18 2026
//
// Verilog Description of module Tragamonedas_Top
//

module Tragamonedas_Top (RESET_N, SW_MODE, BTN_SPIN, ROWS_IN, COLS_OUT, 
            LCD_RS, LCD_RW, LCD_E, LCD_DATA, LEDS);   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(5[8:24])
    input RESET_N;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    input SW_MODE;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(8[9:16])
    input BTN_SPIN;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(9[9:17])
    input [3:0]ROWS_IN;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(11[9:16])
    output [3:0]COLS_OUT;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(12[9:17])
    output LCD_RS;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(14[9:15])
    output LCD_RW;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(15[9:15])
    output LCD_E;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(16[9:14])
    output [7:0]LCD_DATA;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    output [4:0]LEDS;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(19[9:13])
    
    wire sys_clk /* synthesis SET_AS_NETWORK=sys_clk, is_clock=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(65[12:19])
    
    wire GND_net, VCC_net, n4791, RESET_N_c, SW_MODE_c, ROWS_IN_c_3, 
        ROWS_IN_c_2, ROWS_IN_c_1, ROWS_IN_c_0, COLS_OUT_c_3, COLS_OUT_c_2, 
        COLS_OUT_c_1, COLS_OUT_c_0, LCD_RS_c, LCD_E_c, LCD_DATA_c_7, 
        LCD_DATA_c_6, LCD_DATA_c_5, LCD_DATA_c_4, LCD_DATA_c_3, LCD_DATA_c_2, 
        LCD_DATA_c_1, LCD_DATA_c_0, LEDS_c_4, n608, n609;
    wire [25:0]osc_div;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(66[12:19])
    
    wire tick_anim, tick_1s, blink_toggle;
    wire [3:0]idx_r1;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(72[12:18])
    wire [3:0]idx_r2;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(72[20:26])
    wire [7:0]rom_out_r1;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(74[12:22])
    wire [7:0]rom_out_r2;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(74[24:34])
    wire [7:0]rom_out_r3;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(74[36:46])
    wire [3:0]state;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    wire [15:0]jackpot;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(94[12:19])
    wire [13:0]apuesta;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(95[12:19])
    wire [13:0]input_temp;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(96[12:22])
    wire [3:0]j_mil;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(99[12:17])
    wire [3:0]j_cen;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(99[19:24])
    wire [3:0]j_dec;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(99[26:31])
    wire [3:0]j_uni;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(99[33:38])
    wire [3:0]i_mil;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[12:17])
    wire [3:0]i_cen;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[19:24])
    wire [3:0]i_dec;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[26:31])
    wire [3:0]i_uni;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[33:38])
    wire [15:0]bcd_val;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(103[12:19])
    wire [4:0]delay_r2_target;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(106[12:27])
    wire [4:0]delay_timer;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(107[12:23])
    
    wire r2_active;
    wire [3:0]stop_timer;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(109[12:22])
    wire [15:0]alu_opA;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(112[12:19])
    wire [15:0]alu_sum_res;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(113[12:23])
    
    wire n562, n563, n564, n565, n566, n567;
    wire [3:0]key_code;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(117[12:20])
    
    wire key_valid;
    wire [20:0]key_cooldown;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(119[12:24])
    wire [127:0]L1_Buffer;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(122[12:21])
    
    wire n16387;
    wire [127:0]L2_Buffer;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(123[12:21])
    wire [4:0]rom_out_r2_3__N_42;
    
    wire n6;
    wire [5:0]rom_out_r3_3__N_48;
    
    wire n16991, tick_anim_N_1149, osc_div_25__N_499, blink_toggle_N_1150;
    wire [31:0]calc_temp;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(175[18:27])
    
    wire n16, n641, n16488, n642, n643, n9052, n644, n645, n639, 
        n149, n638, n636, n635, n634, n6_adj_1670, n633, n9066, 
        n4, n617, n613, sys_clk_enable_98, n612, n8543, n8545, 
        n11959, n8551, n31679, n31146, n31145, n34858, n7631, 
        n8574, n8575, n33136, n8581, n34452, n13, n12, n11, 
        n10, n9, n8, n7, n16799, n31535, n4832, n35036, n35207, 
        n17, n366, n365, n364, n363, n8586, n11976, n19147, 
        n19126, n19121, n1352, n605, n1381;
    wire [3:0]idx_r3_3__N_700;
    
    wire r2_active_N_1169, n34783, n35253, n1725, n1862, n6538, 
        n9076, n14255, n1921, n33661, n7939, n7938, n1939, n8_adj_1671, 
        n32346, n32348, n35034, n6_adj_1672, n35265, n1966, n1967, 
        n9079, n33387, n46, n2031, n2032, n2033, n2034, n2035, 
        n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043, 
        n2044, n31258, n30550, n2065, n2066, n2067, n2068, n2069, 
        n2070, n2071, n2072, n2073, n2074, n2075, n2076, n2077, 
        n2098, n2099, n2100, n2101, n2102, n2103, n2104, n2105, 
        n2106, n2107, n2108, n2109, n2110, n2111, n19104, n31257, 
        n31256, n6537, n6536, n6535, n6534, n31255, n4_adj_1673, 
        n31254, n31253, n26877, n3, n24, n4872, n4873, n4874, 
        n4875, n4876, n4877, n4878, n4879, n4880, n4881, n4882, 
        n4883, n4884, n4885, n4886, n12_adj_1674, n31252, n24021, 
        n25;
    wire [3:0]j_cen_3__N_740;
    
    wire n31251, n27, n9082, n35030, n31278, n33924, n2483, n289, 
        n31, n2518, n2555, n323, n333, n335, n2589, n5029, n10_adj_1675, 
        n35028, n35026, n637, n36, n453, n415, n414, n658, n37, 
        n24_adj_1676, n35024, n35023, n6_adj_1677, n34893, n599, 
        n21, n34583, sys_clk_enable_356, n6678, n6676, n6674, n6673, 
        n6668, n6667, n6663, n33394, n8494, n31250, n6494, n6493, 
        n6492, n6491, n6490, n6489, n6488, n6487, n6486, n6485, 
        n6484, n6483, n6482, n6481, n6479, n6533, n6532, n6528, 
        n6527, n6526, n6525, n6524, n6523, n6522, n6521, n6520, 
        n6519, n6518, n6517, n35022, n29869;
    wire [127:0]L1_Buffer_127__N_785;
    
    wire n31249, n29873, n6_adj_1678, n10648, n16959, n9086, n35019, 
        n48, n9091, n29882, n33371, n9093, n14, n26833, n8_adj_1679, 
        n9094, n9097, n31248, n9098, n9100, n9104, n9105, n9106, 
        n9107, n9108, n9111, n9112, n9113, n9114, n9115, n9116, 
        n9117, n9118, n9119;
    wire [3:0]state_3__N_54;
    wire [13:0]input_temp_13__N_88;
    wire [3:0]i_mil_3__N_118;
    wire [3:0]i_cen_3__N_122;
    wire [3:0]i_dec_3__N_126;
    wire [3:0]i_uni_3__N_130;
    
    wire n9120, n9121, n9123, n9127, n9128, n9131, n9133, n9134, 
        n9136, n9137;
    wire [31:0]calc_temp_31__N_1055;
    wire [4:0]delay_timer_4__N_1092;
    
    wire r2_active_N_1152, n9138, n9140, n31680, n31247, n31246;
    wire [15:0]jackpot_15__N_58;
    
    wire n35016, n9147, n9154, n25931, n34864, n34785, n34784, 
        n33675, n34892, n34775, n34891, n31279, sys_clk_enable_347, 
        n35015, n30539, n35837, n34689, n35014, n35013, n35012, 
        n35010, n31018, n11505, n11504, n11503, n11502, n11501, 
        n33496, n10194, n10192, n4789, n4790, n4792, n4793, n4794, 
        n4795, n4796, n4797, n4798, n4799, n4800, n4801, n4802, 
        n4803, n4804, n4805, n4806, n4807, n4808, n4809, n35008, 
        n611, n610, n336, n35626, n35625, n15, n35624, n14_adj_1680, 
        n31316, n35006, n34890, n6_adj_1681, n26768, n31017, n35005, 
        n31909, n606, n33423, n9159, n9160, n9161, n9166, n9168, 
        n27035, n31235, n31956, n35004, n26759, n35616, n16994, 
        n35615, n35242, n6595, n6593, n5007, n35614, n31234, n8621, 
        n8623, n8624, n8625, n8626, sys_clk_enable_403, n8629, n14039, 
        n8632, n35000, n8634, n8636, n8637, n8638, n8639, n8643, 
        n8645, n633_adj_1682, n634_adj_1683, n62, n34754, n10190, 
        n34999, n31233, n31016, n34998, n657, n14_adj_1684;
    wire [15:0]B_input;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/addersub16.vhd(22[12:19])
    
    wire n34887, n34753, n34752, n454, n455, n475, n383, n382, 
        n34997, n33845, sys_clk_enable_395, n9_adj_1685, n369, n5, 
        n33591, n4_adj_1686, n368, n367, sys_clk_enable_352, n26924, 
        n34886, n35818, sys_clk_enable_404, n31824, n17077, n33487, 
        n379, n380, n381, n33402, n36109, n378, n377, n31232, 
        n34857, n34731, n8_adj_1687, n408, n409, n410, n411, n412, 
        n413, n32828, n35816, n12_adj_1688, n426, n427, n428, 
        n429, n424, n423, n422, n4_adj_1689, n36108, n34741, n13_adj_1690, 
        n467, n468, n469, n470, n471, n472, n473, n474, n461, 
        n460, n459, n458, n457, n456, n498, n499, sys_clk_enable_348, 
        n9861, n515, n516, n517, n518, n519, n520, n521, n502, 
        n501, n500, n8_adj_1691, n514, n513, n512, n507, n506, 
        n505, n504, n503, n34740, n543, n544, n545, n546, n547, 
        n548, n31231, n14051, sys_clk_enable_181, n561, n560, n559, 
        n558, n553, n552, n551, n550, n549, n34739, n10_adj_1692, 
        n7_adj_1693, sys_clk_enable_178, n10760;
    wire [31:0]Res_15__N_1527;
    
    wire n35814, n35813, n34993, n34856, n593, n592, n591, n590, 
        n589, n588, n594, n603, n34730, n604, n607, n597, n595, 
        n596, n598, n35280, n602, n34729, n34728, n46_adj_1694, 
        sys_clk_enable_95, n4_adj_1695, n31230, sys_clk_enable_117, 
        n640, n34992, n31009, n662, n34991, n17_adj_1696, n23886, 
        n31229, n23874, n34990, n23867, n31227, n4_adj_1697, n4_adj_1698, 
        n33726, n32344, n10_adj_1699, n34989, n19086, n31226, n33395, 
        n14_adj_1700, n33369, n31225, n31_adj_1701, n31224, n34988, 
        n33303, sys_clk_enable_350, n31223, sys_clk_enable_233, n34987, 
        n635_adj_1702, n5380, n5390, n8659, n636_adj_1703, n5418, 
        n4_adj_1704, n637_adj_1705, n638_adj_1706, n639_adj_1707, n3_adj_1708, 
        n31222, n640_adj_1709, n242, n7944, n243, n33413, n34984, 
        sys_clk_enable_39, n641_adj_1710, n642_adj_1711, n31221, n643_adj_1712, 
        n644_adj_1713, n31220, n31219, n34701, n8472, n34700, n8474, 
        n34699, n8480, n8481, n6516, n6515, n6539, n6540, n6541, 
        n6542, n6543, n6544, n6545, sys_clk_enable_252, n150, n8485, 
        n8487, n8491, n8492, n657_adj_1714, n8493, n34696, n659, 
        n8536, n8539, n662_adj_1715, n36130, n34982, n36111, n16919, 
        n11500, n33939, n4_adj_1716, n31217, n21_adj_1717, n27_adj_1718, 
        n4_adj_1719, n34688, n617_adj_1720, n613_adj_1721, n612_adj_1722, 
        n611_adj_1723, n610_adj_1724, n609_adj_1725, n608_adj_1726, 
        n607_adj_1727, n606_adj_1728, n605_adj_1729, n604_adj_1730, 
        n603_adj_1731, n602_adj_1732, n598_adj_1733, n597_adj_1734, 
        n596_adj_1735, n595_adj_1736, n594_adj_1737, n593_adj_1738, 
        n592_adj_1739, n591_adj_1740, n590_adj_1741, n589_adj_1742, 
        n588_adj_1743, n567_adj_1744, n565_adj_1745, n564_adj_1746, 
        n563_adj_1747, n562_adj_1748, n561_adj_1749, n560_adj_1750, 
        n559_adj_1751, n557, n552_adj_1752, n551_adj_1753, n550_adj_1754, 
        n549_adj_1755, n548_adj_1756, n547_adj_1757, n546_adj_1758, 
        n545_adj_1759, n544_adj_1760, n543_adj_1761, n33594, n521_adj_1762, 
        n519_adj_1763, n518_adj_1764, n517_adj_1765, n516_adj_1766, 
        n515_adj_1767, n514_adj_1768, n513_adj_1769, n512_adj_1770, 
        n506_adj_1771, n505_adj_1772, n504_adj_1773, n503_adj_1774, 
        n502_adj_1775, n501_adj_1776, n500_adj_1777, n499_adj_1778, 
        n498_adj_1779, n475_adj_1780, n473_adj_1781, n472_adj_1782, 
        n471_adj_1783, n470_adj_1784, n469_adj_1785, n468_adj_1786, 
        n467_adj_1787, n460_adj_1788, n459_adj_1789, n458_adj_1790, 
        n457_adj_1791, n456_adj_1792, n455_adj_1793, n454_adj_1794, 
        n453_adj_1795, n31216, n429_adj_1796, n427_adj_1797, n426_adj_1798, 
        n424_adj_1799, n423_adj_1800, n422_adj_1801, n414_adj_1802, 
        n413_adj_1803, n412_adj_1804, n411_adj_1805, n410_adj_1806, 
        n409_adj_1807, n408_adj_1808, n36105, n33524, n31215, n332, 
        n333_adj_1809, n335_adj_1810, n337, n16687, n368_adj_1811, 
        n383_adj_1812, n4_adj_1813, n377_adj_1814, n300, n301, n380_adj_1815, 
        n378_adj_1816, n379_adj_1817, n22, n23, n24_adj_1818, n25_adj_1819, 
        n31214, n242_adj_1820, n245, sys_clk_enable_227, n287, n288, 
        n289_adj_1821, n291, n4_adj_1822, n14170, n110, n111, n112, 
        n113, n114, n115, n116, n117, n118, n119, n120, n121, 
        n122, n123, n124, n125, n126, n127, n128, n129, n130, 
        n131, n132, n133, n134, n135, n34981, n33486, n4_adj_1823, 
        n11506, n11507, n11508, n11509, n11510, n11511, n34885, 
        n31213, n14_adj_1824, n7_adj_1825, n7_adj_1826, n34883, n34863, 
        n33586, n7_adj_1827, n34862, n34882, n6_adj_1828, n34978, 
        n17_adj_1829, n34977, n31212, n31211, n33424, n34976, n36128, 
        n33460, n31210, n120_adj_1830, n16_adj_1831, n34975, n34880, 
        n31015, n14_adj_1832, n14_adj_1833, n14_adj_1834, n31209, 
        n14_adj_1835, n69, n35190, n31208, n14_adj_1836, n75, n14_adj_1837, 
        n35189, n35188, n34973, n31207, n34879, n14_adj_1838, n14_adj_1839, 
        n66, n34878, n14_adj_1840, n78, n12_adj_1841, n34972, n35187, 
        n35186, n34877, n33368, n34876, n35185, n34971, n35184, 
        n34970, n35204, n35183, n6_adj_1842, n19070, n35182, n35181, 
        n25437, sys_clk_enable_137, n34647, n34875, n33690, n31205, 
        n34646, n34645, n34644, n34968, n33603, n34874, n34861, 
        n34967, n34873, n31204, n31203, n6_adj_1843, n34872, sys_clk_enable_339, 
        n35180, n32, n36126, n14_adj_1844, n34871, n35178, n35177, 
        n34965, n34964, n10_adj_1845, n33398, n35175, n36127, n35173, 
        n35172, n16696, n33832, n6_adj_1846, n6_adj_1847, n34406, 
        n23397, n23398, n31202, n23400, sys_clk_enable_197, n6_adj_1848, 
        sys_clk_enable_138, n25149, n25150, n34962, n1, n33437, 
        n24_adj_1849, n5_adj_1850, n31201, n31200, n34961, n31199, 
        n35171, n35170, n36129, n5_adj_1851, n23_adj_1852, n33386, 
        n8_adj_1853, n33376, n35168, n24_adj_1854, n26, n33372, 
        n35166, n34960, n35165, n31197, n31196, n20, n31277, n34855, 
        n33689, sys_clk_enable_136, n31195, n33532, n4_adj_1855, n34955, 
        n34954, n35163, n33526, n34870, n22_adj_1856, n21_adj_1857, 
        n33484, n33404, n33392, n33389, n18, n45, n33411, n34953, 
        n35162, n16_adj_1858, n33410, n33388, n31194, n33378, n35161, 
        n14_adj_1859, n35160, n14_adj_1860, n35159, n34952, n14_adj_1861, 
        n33382, n33313, n34869, n36137, n35154, n33409, n33374, 
        n31791, n31014, n33408, n33384, n33407, n35153, n33375, 
        n31193, n33383, n33385, n37_adj_1862, n31331, n33379, n33583, 
        n31192, n33406, n33370, n33373, n33453, sys_clk_enable_324, 
        n34949, n33405, n31401, n33390, n33403, n4_adj_1863, n34948, 
        n33396, n3_adj_1864, n35151, n34868, n33459, n35150, n35148, 
        n35147, n35146, n31045, n31044, n35142, n31191, n35141, 
        n35140, n7_adj_1865, n35139, n31190, n35138, n31043, n35137, 
        n34582, n31042, n34581, n34580, n34578, n16697, n31189, 
        n31041, n34577, n16698, n4_adj_1866, n16699, n16700, n35223, 
        n16701, n10_adj_1867, n7_adj_1868, n7_adj_1869, n16704, n34946, 
        n34860, n34945, n16239, n16706, n16707, n31187, n31013, 
        n31040, n16708, n34943, sys_clk_enable_401, n16709, n31186, 
        n35135, n31185, n35202, n16710, n33521, n35133, n35132, 
        n33538, n31184, n16460, n10_adj_1870, n16107, n31183, n35201, 
        n18891, n29228, n33439, n33441, n35122, n31181, n31180, 
        n34942, sys_clk_enable_104, n26439, n21_adj_1871, n31179, 
        n5_adj_1872, n34941, n33531, n31039, n33440, n34940, n35120, 
        n29246, n31327, n15_adj_1873, n34939, n34938, n14_adj_1874, 
        n31178, sys_clk_enable_135, n35117, n34937, n9_adj_1875, n5_adj_1876, 
        n31038, n5_adj_1877, n31177, n9_adj_1878, n31176, n31012, 
        n34936, sys_clk_enable_346, n34935, n31911, n34934, n31175, 
        n32016, n34933, n31037, n36069, n33400, n34867, n31_adj_1879, 
        n34642, n36062, n34932, n33438, n31174, n20_adj_1880, n31036, 
        n9_adj_1881, n27109, n208, n19215, n33604, n31173, n34929, 
        n32594, n34928, n36046, n34927, n40, n29321, sys_clk_enable_150, 
        n16_adj_1882, n10_adj_1883, n35100, n34926, n31034, n35099, 
        n34925, n31033, n31907, n31172, n35098, n34924, sys_clk_enable_402, 
        n35097, n34854, n35096, n34853, n34923, n14_adj_1884, n34852, 
        n35095, n13_adj_1885, n34851, n12_adj_1886, n27045, sys_clk_enable_134, 
        n31171, n34922, n26_adj_1887, n31170, n27041, n31032, n31031, 
        n31030, n34921, n31029, n12_adj_1888, n35093, n31011, n48_adj_1889, 
        n28411, n34920, n34919, n35090, n31168, n34918, n34866, 
        n33838, n34917, n35088, n33527, n34916, n31167, n31028, 
        n35087, n34915, n34914, n26985, n34913, n34912, n32534, 
        n31166, n33377, n35085, n31026, n19156, n31025, n31165, 
        n31008, n30492, n9_adj_1890, n11_adj_1891, n15_adj_1892, n17_adj_1893, 
        n23_adj_1894, n31164, n27_adj_1895, n31704, n34911, n31163, 
        n33587, n31162, n34865, n34850, n36106, n36107, n35954, 
        n35953, n35084, n31024, n31010, n20_adj_1896, n16_adj_1897, 
        n35282, n34910, n31023, n35281, n14_adj_1898, sys_clk_enable_101, 
        n13_adj_1899, n12_adj_1900, n34909, n35279, n35239, n35278, 
        n36114, n35277, n34908, n33401, n34907, n33420, n35274, 
        n35272, n36113, n38, n32850, n35271, n35269, n35268, n35266, 
        n33418, n35082, n33421, n27033, n35081, n33447, n33446, 
        n33444, n33445, n33443, n33442, n31022, n35080, n34906, 
        n30559, n35079, n35078, n19044, n33826, n35260, n33802, 
        n11_adj_1901, n15_adj_1902, n17_adj_1903, n19, n23_adj_1904, 
        n27_adj_1905, n19149, n35074, n35073, n31731, n34905, n34904, 
        n26942, n16575, n36112, n34902, n35070, n35069, n26941, 
        n35065, sys_clk_enable_213, n31021, n34901, n34900, n34376, 
        n35243, n16871, n35241, n26934, n35240, n34375, n35238, 
        n42, n35237, n35236, n34897, n35234, n34896, n31020, n35233, 
        n34895, n26926, sys_clk_enable_389, n35058, n35230, sys_clk_enable_203, 
        n35229, sys_clk_enable_189, n35224, n35054, n35053, n34894, 
        n33597, n35052, n35051, n35050, n22_adj_1906, sys_clk_enable_302, 
        n35046, n35045, n31149, n31521, n33281, n31019, n16831, 
        n35043, n31148, n33414, n10_adj_1907, n17_adj_1908, n35042, 
        n35041, n34859, n31147, n35211, n34453, sys_clk_enable_45, 
        n35210, n14081;
    
    VHI i25957 (.Z(VCC_net));
    FD1P3AX calc_temp_i0_i13 (.D(calc_temp_31__N_1055[13]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[13]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i13.GSR = "DISABLED";
    FD1S3AX tick_1s_392 (.D(osc_div_25__N_499), .CK(sys_clk), .Q(tick_1s));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam tick_1s_392.GSR = "ENABLED";
    FD1S3AX tick_anim_393 (.D(tick_anim_N_1149), .CK(sys_clk), .Q(tick_anim));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam tick_anim_393.GSR = "ENABLED";
    FD1S3AX blink_toggle_394 (.D(blink_toggle_N_1150), .CK(sys_clk), .Q(blink_toggle)) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam blink_toggle_394.GSR = "ENABLED";
    FD1P3AX calc_temp_i0_i12 (.D(calc_temp_31__N_1055[12]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[12]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i12.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i11 (.D(calc_temp_31__N_1055[11]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[11]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i11.GSR = "DISABLED";
    LUT4 i18278_4_lut (.A(n612), .B(n611), .C(apuesta[1]), .D(n613), 
         .Z(n26877)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i18278_4_lut.init = 16'hccc8;
    FD1P3AX calc_temp_i0_i10 (.D(calc_temp_31__N_1055[10]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[10]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i10.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i9 (.D(calc_temp_31__N_1055[9]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[9]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i9.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i8 (.D(calc_temp_31__N_1055[8]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[8]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i8.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i7 (.D(calc_temp_31__N_1055[7]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i7.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i6 (.D(calc_temp_31__N_1055[6]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[6]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i6.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i5 (.D(calc_temp_31__N_1055[5]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i5.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i4 (.D(calc_temp_31__N_1055[4]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[4]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i4.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i3 (.D(calc_temp_31__N_1055[3]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i3.GSR = "DISABLED";
    FD1P3AX calc_temp_i0_i2 (.D(calc_temp_31__N_1055[2]), .SP(sys_clk_enable_402), 
            .CK(sys_clk), .Q(calc_temp[2]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i2.GSR = "DISABLED";
    CCU2D rem_103_add_379_11 (.A0(n16699), .B0(n34870), .C0(n498_adj_1779), 
          .D0(n467_adj_1787), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31223), .S0(n543_adj_1761));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_379_11.INIT0 = 16'h0e1f;
    defparam rem_103_add_379_11.INIT1 = 16'h0000;
    defparam rem_103_add_379_11.INJECT1_0 = "NO";
    defparam rem_103_add_379_11.INJECT1_1 = "NO";
    CCU2D rem_103_add_379_9 (.A0(n16699), .B0(n34870), .C0(n500_adj_1777), 
          .D0(n469_adj_1785), .A1(n16699), .B1(n34870), .C1(n499_adj_1778), 
          .D1(n468_adj_1786), .CIN(n31222), .COUT(n31223), .S0(n545_adj_1759), 
          .S1(n544_adj_1760));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_379_9.INIT0 = 16'h0e1f;
    defparam rem_103_add_379_9.INIT1 = 16'h0e1f;
    defparam rem_103_add_379_9.INJECT1_0 = "NO";
    defparam rem_103_add_379_9.INJECT1_1 = "NO";
    OSCH OSCInst0 (.STDBY(GND_net), .OSC(sys_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCInst0.NOM_FREQ = "2.08";
    FD1P3AX L2_Buffer__i102 (.D(n35046), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[125]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i102.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i101 (.D(n9076), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[124]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i101.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i100 (.D(n9079), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[123]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i100.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i99 (.D(n26934), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[122]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i99.GSR = "DISABLED";
    PFUMX i16433 (.BLUT(n37_adj_1862), .ALUT(n8543), .C0(n35080), .Z(n8636));
    CCU2D rem_103_add_379_7 (.A0(n16699), .B0(n34870), .C0(n502_adj_1775), 
          .D0(n471_adj_1783), .A1(n16699), .B1(n34870), .C1(n501_adj_1776), 
          .D1(n470_adj_1784), .CIN(n31221), .COUT(n31222), .S0(n547_adj_1757), 
          .S1(n546_adj_1758));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_379_7.INIT0 = 16'h0e1f;
    defparam rem_103_add_379_7.INIT1 = 16'h0e1f;
    defparam rem_103_add_379_7.INJECT1_0 = "NO";
    defparam rem_103_add_379_7.INJECT1_1 = "NO";
    CCU2D rem_103_add_379_5 (.A0(n34871), .B0(n16699), .C0(n504_adj_1773), 
          .D0(n473_adj_1781), .A1(n16699), .B1(n34870), .C1(n503_adj_1774), 
          .D1(n472_adj_1782), .CIN(n31220), .COUT(n31221), .S0(n549_adj_1755), 
          .S1(n548_adj_1756));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_379_5.INIT0 = 16'h0e3f;
    defparam rem_103_add_379_5.INIT1 = 16'h0e1f;
    defparam rem_103_add_379_5.INJECT1_0 = "NO";
    defparam rem_103_add_379_5.INJECT1_1 = "NO";
    FD1P3AX L2_Buffer__i97 (.D(n9082), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[118]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i97.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i96 (.D(n42), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[117]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i96.GSR = "DISABLED";
    CCU2D rem_103_add_379_3 (.A0(n16699), .B0(n34870), .C0(n506_adj_1771), 
          .D0(n475_adj_1780), .A1(n16699), .B1(n34870), .C1(n505_adj_1772), 
          .D1(n34872), .CIN(n31219), .COUT(n31220), .S0(n551_adj_1753), 
          .S1(n550_adj_1754));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_379_3.INIT0 = 16'h0e1f;
    defparam rem_103_add_379_3.INIT1 = 16'hf1e0;
    defparam rem_103_add_379_3.INJECT1_0 = "NO";
    defparam rem_103_add_379_3.INJECT1_1 = "NO";
    FD1P3AX L2_Buffer__i92 (.D(n9136), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[113]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i92.GSR = "DISABLED";
    FD1P3AY j_mil_i0 (.D(n14081), .SP(sys_clk_enable_150), .CK(sys_clk), 
            .Q(j_mil[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_mil_i0.GSR = "ENABLED";
    FD1P3AX L2_Buffer__i91 (.D(n9086), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[112]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i91.GSR = "DISABLED";
    FD1P3AX j_dec_i0 (.D(n33413), .SP(sys_clk_enable_181), .CK(sys_clk), 
            .Q(j_dec[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_dec_i0.GSR = "ENABLED";
    FD1P3AX input_temp_i0 (.D(input_temp_13__N_88[0]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i0.GSR = "ENABLED";
    FD1P3AX i_mil_i0 (.D(i_mil_3__N_118[0]), .SP(sys_clk_enable_104), .CK(sys_clk), 
            .Q(i_mil[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_mil_i0.GSR = "ENABLED";
    FD1P3AX i_cen_i0 (.D(i_cen_3__N_122[0]), .SP(sys_clk_enable_101), .CK(sys_clk), 
            .Q(i_cen[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_cen_i0.GSR = "ENABLED";
    FD1P3AX i_dec_i0 (.D(i_dec_3__N_126[0]), .SP(sys_clk_enable_98), .CK(sys_clk), 
            .Q(i_dec[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_dec_i0.GSR = "ENABLED";
    CCU2D rem_103_add_379_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n521_adj_1762), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31219), .S1(n552_adj_1752));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_379_1.INIT0 = 16'hF000;
    defparam rem_103_add_379_1.INIT1 = 16'h5555;
    defparam rem_103_add_379_1.INJECT1_0 = "NO";
    defparam rem_103_add_379_1.INJECT1_1 = "NO";
    LUT4 i17721_4_lut (.A(i_cen[3]), .B(n35187), .C(i_cen[2]), .D(n34968), 
         .Z(n14_adj_1859)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i17721_4_lut.init = 16'h4888;
    FD1P3AX L2_Buffer__i90 (.D(n34376), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[110]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i90.GSR = "DISABLED";
    FD1P3IX idx_r3__i1 (.D(n35626), .SP(sys_clk_enable_233), .CD(n10192), 
            .CK(sys_clk), .Q(rom_out_r3_3__N_48[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r3__i1.GSR = "ENABLED";
    FD1P3IX jackpot_i0 (.D(alu_sum_res[0]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i0.GSR = "ENABLED";
    FD1P3IX jackpot_i1 (.D(alu_sum_res[1]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i1.GSR = "ENABLED";
    FD1P3IX jackpot_i2 (.D(alu_sum_res[2]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i2.GSR = "ENABLED";
    FD1P3AY jackpot_i3 (.D(jackpot_15__N_58[3]), .SP(sys_clk_enable_39), 
            .CK(sys_clk), .Q(jackpot[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i3.GSR = "ENABLED";
    FD1P3IX jackpot_i4 (.D(alu_sum_res[4]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i4.GSR = "ENABLED";
    FD1P3AY jackpot_i5 (.D(jackpot_15__N_58[5]), .SP(sys_clk_enable_39), 
            .CK(sys_clk), .Q(jackpot[5])) /* synthesis lse_init_val=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i5.GSR = "ENABLED";
    FD1P3AY jackpot_i6 (.D(jackpot_15__N_58[6]), .SP(sys_clk_enable_39), 
            .CK(sys_clk), .Q(jackpot[6])) /* synthesis lse_init_val=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i6.GSR = "ENABLED";
    FD1P3AY jackpot_i7 (.D(jackpot_15__N_58[7]), .SP(sys_clk_enable_39), 
            .CK(sys_clk), .Q(jackpot[7])) /* synthesis lse_init_val=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i7.GSR = "ENABLED";
    FD1P3AY jackpot_i8 (.D(jackpot_15__N_58[8]), .SP(sys_clk_enable_39), 
            .CK(sys_clk), .Q(jackpot[8])) /* synthesis lse_init_val=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i8.GSR = "ENABLED";
    FD1P3AY jackpot_i9 (.D(jackpot_15__N_58[9]), .SP(sys_clk_enable_39), 
            .CK(sys_clk), .Q(jackpot[9])) /* synthesis lse_init_val=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i9.GSR = "ENABLED";
    FD1P3IX jackpot_i10 (.D(alu_sum_res[10]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i10.GSR = "ENABLED";
    FD1P3IX jackpot_i11 (.D(alu_sum_res[11]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i11.GSR = "ENABLED";
    FD1P3IX jackpot_i12 (.D(alu_sum_res[12]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i12.GSR = "ENABLED";
    FD1P3IX jackpot_i13 (.D(alu_sum_res[13]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i13.GSR = "ENABLED";
    FD1P3IX jackpot_i14 (.D(alu_sum_res[14]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i14.GSR = "ENABLED";
    FD1P3IX jackpot_i15 (.D(alu_sum_res[15]), .SP(sys_clk_enable_45), .CD(n35036), 
            .CK(sys_clk), .Q(jackpot[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam jackpot_i15.GSR = "ENABLED";
    CCU2D rem_103_add_410_11 (.A0(n16700), .B0(n34861), .C0(n544_adj_1760), 
          .D0(n513_adj_1769), .A1(n16700), .B1(n34861), .C1(n543_adj_1761), 
          .D1(n512_adj_1770), .CIN(n31217), .S0(n589_adj_1742), .S1(n588_adj_1743));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_410_11.INIT0 = 16'h0e1f;
    defparam rem_103_add_410_11.INIT1 = 16'h0e1f;
    defparam rem_103_add_410_11.INJECT1_0 = "NO";
    defparam rem_103_add_410_11.INJECT1_1 = "NO";
    FD1P3AX L2_Buffer__i86 (.D(n9091), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[106]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i86.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i84 (.D(n9093), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[104]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i84.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i83 (.D(n9094), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[102]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i83.GSR = "DISABLED";
    CCU2D rem_103_add_410_9 (.A0(n16700), .B0(n34861), .C0(n546_adj_1758), 
          .D0(n515_adj_1767), .A1(n16700), .B1(n34861), .C1(n545_adj_1759), 
          .D1(n514_adj_1768), .CIN(n31216), .COUT(n31217), .S0(n591_adj_1740), 
          .S1(n590_adj_1741));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_410_9.INIT0 = 16'h0e1f;
    defparam rem_103_add_410_9.INIT1 = 16'h0e1f;
    defparam rem_103_add_410_9.INJECT1_0 = "NO";
    defparam rem_103_add_410_9.INJECT1_1 = "NO";
    FD1P3AX L2_Buffer__i80 (.D(n9097), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[99]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i80.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i79 (.D(n9098), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[98]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i79.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i78 (.D(n35818), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[97]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i78.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i77 (.D(n9100), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[96]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i77.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i76 (.D(n34453), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[94]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i76.GSR = "DISABLED";
    CCU2D rem_103_add_410_7 (.A0(n16700), .B0(n34861), .C0(n548_adj_1756), 
          .D0(n517_adj_1765), .A1(n16700), .B1(n34861), .C1(n547_adj_1757), 
          .D1(n516_adj_1766), .CIN(n31215), .COUT(n31216), .S0(n593_adj_1738), 
          .S1(n592_adj_1739));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_410_7.INIT0 = 16'h0e1f;
    defparam rem_103_add_410_7.INIT1 = 16'h0e1f;
    defparam rem_103_add_410_7.INJECT1_0 = "NO";
    defparam rem_103_add_410_7.INJECT1_1 = "NO";
    FD1P3AX L2_Buffer__i73 (.D(n9104), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[91]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i73.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i72 (.D(n9105), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[90]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i72.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i71 (.D(n9106), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[89]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i71.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i70 (.D(n9107), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[88]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i70.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i69 (.D(n9108), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[86]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i69.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i68 (.D(n27035), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[85]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i68.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i66 (.D(n9111), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[83]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i66.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i65 (.D(n9112), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[82]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i65.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i64 (.D(n9113), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[81]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i64.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i63 (.D(n9114), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[80]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i63.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i62 (.D(n9115), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[78]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i62.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i61 (.D(n9116), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[77]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i61.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(state[1]), .B(state[3]), .C(n33661), .D(state[0]), 
         .Z(sys_clk_enable_150)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2_4_lut.init = 16'h8808;
    FD1P3AX L2_Buffer__i60 (.D(n9117), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[76]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i60.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i58 (.D(n9119), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[73]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i58.GSR = "DISABLED";
    CCU2D rem_103_add_410_5 (.A0(n34863), .B0(n16700), .C0(n550_adj_1754), 
          .D0(n519_adj_1763), .A1(n16700), .B1(n34861), .C1(n549_adj_1755), 
          .D1(n518_adj_1764), .CIN(n31214), .COUT(n31215), .S0(n595_adj_1736), 
          .S1(n594_adj_1737));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_410_5.INIT0 = 16'h0e3f;
    defparam rem_103_add_410_5.INIT1 = 16'h0e1f;
    defparam rem_103_add_410_5.INJECT1_0 = "NO";
    defparam rem_103_add_410_5.INJECT1_1 = "NO";
    FD1P3AX L2_Buffer__i57 (.D(n9120), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[70]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i57.GSR = "DISABLED";
    FD1P3IX idx_r2__i1 (.D(n1967), .SP(sys_clk_enable_252), .CD(n10190), 
            .CK(sys_clk), .Q(rom_out_r2_3__N_42[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r2__i1.GSR = "ENABLED";
    FD1P3AX L2_Buffer__i56 (.D(n9121), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[69]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i56.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i54 (.D(n9123), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[67]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i54.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i53 (.D(n34785), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[66]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i53.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i52 (.D(n32828), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[65]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i52.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i51 (.D(n36105), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[64]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i51.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i50 (.D(n9127), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[62]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i50.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i49 (.D(n9128), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[61]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i49.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i46 (.D(n9131), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[58]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i46.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i44 (.D(n9133), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[56]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i44.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i43 (.D(n9134), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[54]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i43.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i42 (.D(n32850), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[53]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i42.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i40 (.D(n9137), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[51]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i40.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i39 (.D(n9138), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[50]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i39.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i37 (.D(n9140), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[48]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i37.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i30 (.D(n9147), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[40]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i30.GSR = "DISABLED";
    CCU2D rem_103_add_410_3 (.A0(n16700), .B0(n34861), .C0(n552_adj_1752), 
          .D0(n521_adj_1762), .A1(n16700), .B1(n34861), .C1(n551_adj_1753), 
          .D1(n34865), .CIN(n31213), .COUT(n31214), .S0(n597_adj_1734), 
          .S1(n596_adj_1735));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_410_3.INIT0 = 16'h0e1f;
    defparam rem_103_add_410_3.INIT1 = 16'hf1e0;
    defparam rem_103_add_410_3.INJECT1_0 = "NO";
    defparam rem_103_add_410_3.INJECT1_1 = "NO";
    FD1P3AX L2_Buffer__i27 (.D(n35004), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[36]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i27.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i23 (.D(n9154), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[32]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i23.GSR = "DISABLED";
    CCU2D rem_103_add_410_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n567_adj_1744), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31213), .S1(n598_adj_1733));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_410_1.INIT0 = 16'hF000;
    defparam rem_103_add_410_1.INIT1 = 16'h5555;
    defparam rem_103_add_410_1.INJECT1_0 = "NO";
    defparam rem_103_add_410_1.INJECT1_1 = "NO";
    FD1P3AX L2_Buffer__i16 (.D(n9161), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[24]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i16.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i6 (.D(n26439), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[12]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i6.GSR = "DISABLED";
    FD1P3AX i_uni_i3 (.D(i_uni_3__N_130[3]), .SP(sys_clk_enable_95), .CK(sys_clk), 
            .Q(i_uni[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_uni_i3.GSR = "ENABLED";
    FD1P3AX i_uni_i2 (.D(i_uni_3__N_130[2]), .SP(sys_clk_enable_95), .CK(sys_clk), 
            .Q(i_uni[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_uni_i2.GSR = "ENABLED";
    FD1P3AX i_uni_i1 (.D(i_uni_3__N_130[1]), .SP(sys_clk_enable_95), .CK(sys_clk), 
            .Q(i_uni[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_uni_i1.GSR = "ENABLED";
    FD1P3AX i_dec_i3 (.D(i_dec_3__N_126[3]), .SP(sys_clk_enable_98), .CK(sys_clk), 
            .Q(i_dec[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_dec_i3.GSR = "ENABLED";
    FD1P3AX i_dec_i2 (.D(i_dec_3__N_126[2]), .SP(sys_clk_enable_98), .CK(sys_clk), 
            .Q(i_dec[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_dec_i2.GSR = "ENABLED";
    FD1P3AX i_dec_i1 (.D(i_dec_3__N_126[1]), .SP(sys_clk_enable_98), .CK(sys_clk), 
            .Q(i_dec[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_dec_i1.GSR = "ENABLED";
    FD1P3AX i_cen_i3 (.D(i_cen_3__N_122[3]), .SP(sys_clk_enable_101), .CK(sys_clk), 
            .Q(i_cen[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_cen_i3.GSR = "ENABLED";
    FD1P3AX i_cen_i2 (.D(i_cen_3__N_122[2]), .SP(sys_clk_enable_101), .CK(sys_clk), 
            .Q(i_cen[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_cen_i2.GSR = "ENABLED";
    FD1P3AX i_cen_i1 (.D(i_cen_3__N_122[1]), .SP(sys_clk_enable_101), .CK(sys_clk), 
            .Q(i_cen[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_cen_i1.GSR = "ENABLED";
    FD1P3AX i_mil_i3 (.D(i_mil_3__N_118[3]), .SP(sys_clk_enable_104), .CK(sys_clk), 
            .Q(i_mil[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_mil_i3.GSR = "ENABLED";
    FD1P3AX i_mil_i2 (.D(i_mil_3__N_118[2]), .SP(sys_clk_enable_104), .CK(sys_clk), 
            .Q(i_mil[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_mil_i2.GSR = "ENABLED";
    FD1P3AX i_mil_i1 (.D(i_mil_3__N_118[1]), .SP(sys_clk_enable_104), .CK(sys_clk), 
            .Q(i_mil[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_mil_i1.GSR = "ENABLED";
    FD1P3AX input_temp_i13 (.D(input_temp_13__N_88[13]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i13.GSR = "ENABLED";
    CCU2D rem_103_add_441_13 (.A0(n16701), .B0(n34855), .C0(n588_adj_1743), 
          .D0(n557), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31212), .S0(n633_adj_1682));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_441_13.INIT0 = 16'h0e1f;
    defparam rem_103_add_441_13.INIT1 = 16'h0000;
    defparam rem_103_add_441_13.INJECT1_0 = "NO";
    defparam rem_103_add_441_13.INJECT1_1 = "NO";
    FD1P3AX input_temp_i12 (.D(input_temp_13__N_88[12]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i12.GSR = "ENABLED";
    FD1P3AX input_temp_i11 (.D(input_temp_13__N_88[11]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i11.GSR = "ENABLED";
    FD1P3AX input_temp_i10 (.D(input_temp_13__N_88[10]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i10.GSR = "ENABLED";
    FD1P3AX input_temp_i9 (.D(input_temp_13__N_88[9]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i9.GSR = "ENABLED";
    FD1P3AX input_temp_i8 (.D(input_temp_13__N_88[8]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i8.GSR = "ENABLED";
    FD1P3AX input_temp_i7 (.D(input_temp_13__N_88[7]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i7.GSR = "ENABLED";
    FD1P3AX input_temp_i6 (.D(input_temp_13__N_88[6]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i6.GSR = "ENABLED";
    FD1P3AX input_temp_i5 (.D(input_temp_13__N_88[5]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i5.GSR = "ENABLED";
    OB COLS_OUT_pad_1 (.I(COLS_OUT_c_1), .O(COLS_OUT[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(12[9:17])
    FD1P3AX input_temp_i4 (.D(input_temp_13__N_88[4]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i4.GSR = "ENABLED";
    FD1P3AX input_temp_i3 (.D(input_temp_13__N_88[3]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i3.GSR = "ENABLED";
    FD1P3AX input_temp_i2 (.D(input_temp_13__N_88[2]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i2.GSR = "ENABLED";
    FD1P3AX input_temp_i1 (.D(input_temp_13__N_88[1]), .SP(sys_clk_enable_117), 
            .CK(sys_clk), .Q(input_temp[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam input_temp_i1.GSR = "ENABLED";
    FD1P3AX L1_Buffer_i0_i126 (.D(L1_Buffer_127__N_785[126]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[126]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i126.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i125 (.D(L1_Buffer_127__N_785[125]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[125]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i125.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i124 (.D(L1_Buffer_127__N_785[124]), .SP(sys_clk_enable_189), 
            .CK(sys_clk), .Q(L1_Buffer[124]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i124.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i120 (.D(L1_Buffer_127__N_785[120]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[120]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i120.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i118 (.D(L1_Buffer_127__N_785[118]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[118]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i118.GSR = "DISABLED";
    PFUMX state_3__I_0_428_Mux_0_i15 (.BLUT(n33385), .ALUT(n14_adj_1700), 
          .C0(state[3]), .Z(i_cen_3__N_122[0]));
    FD1P3AX L1_Buffer_i0_i117 (.D(L1_Buffer_127__N_785[117]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[117]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i117.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i116 (.D(n35026), .SP(sys_clk_enable_189), .CK(sys_clk), 
            .Q(L1_Buffer[116]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i116.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i114 (.D(L1_Buffer_127__N_785[114]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[114]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i114.GSR = "DISABLED";
    CCU2D rem_103_add_441_11 (.A0(n16701), .B0(n34855), .C0(n590_adj_1741), 
          .D0(n559_adj_1751), .A1(n16701), .B1(n34855), .C1(n589_adj_1742), 
          .D1(n34857), .CIN(n31211), .COUT(n31212), .S0(n635_adj_1702), 
          .S1(n634_adj_1683));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_441_11.INIT0 = 16'h0e1f;
    defparam rem_103_add_441_11.INIT1 = 16'h0e1f;
    defparam rem_103_add_441_11.INJECT1_0 = "NO";
    defparam rem_103_add_441_11.INJECT1_1 = "NO";
    FD1P3AX L1_Buffer_i0_i112 (.D(L1_Buffer_127__N_785[112]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[112]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i112.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i110 (.D(L1_Buffer_127__N_785[110]), .SP(sys_clk_enable_134), 
            .CK(sys_clk), .Q(L1_Buffer[110]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i110.GSR = "DISABLED";
    CCU2D rem_103_add_441_9 (.A0(n16701), .B0(n34855), .C0(n592_adj_1739), 
          .D0(n561_adj_1749), .A1(n16701), .B1(n34855), .C1(n591_adj_1740), 
          .D1(n560_adj_1750), .CIN(n31210), .COUT(n31211), .S0(n637_adj_1705), 
          .S1(n636_adj_1703));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_441_9.INIT0 = 16'h0e1f;
    defparam rem_103_add_441_9.INIT1 = 16'h0e1f;
    defparam rem_103_add_441_9.INJECT1_0 = "NO";
    defparam rem_103_add_441_9.INJECT1_1 = "NO";
    FD1P3AX L1_Buffer_i0_i109 (.D(L1_Buffer_127__N_785[109]), .SP(sys_clk_enable_134), 
            .CK(sys_clk), .Q(L1_Buffer[109]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i109.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i108 (.D(L1_Buffer_127__N_785[108]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[108]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i108.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i106 (.D(n35095), .SP(sys_clk_enable_134), .CK(sys_clk), 
            .Q(L1_Buffer[106]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i106.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i105 (.D(L1_Buffer_127__N_785[105]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[105]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i105.GSR = "DISABLED";
    PFUMX i25533 (.BLUT(n35223), .ALUT(n35224), .C0(state[3]), .Z(input_temp_13__N_88[0]));
    FD1P3AX L1_Buffer_i0_i97 (.D(L1_Buffer_127__N_785[97]), .SP(sys_clk_enable_189), 
            .CK(sys_clk), .Q(L1_Buffer[97]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i97.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i96 (.D(L1_Buffer_127__N_785[96]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[96]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i96.GSR = "DISABLED";
    CCU2D rem_103_add_441_7 (.A0(n16701), .B0(n34855), .C0(n594_adj_1737), 
          .D0(n563_adj_1747), .A1(n16701), .B1(n34855), .C1(n593_adj_1738), 
          .D1(n562_adj_1748), .CIN(n31209), .COUT(n31210), .S0(n639_adj_1707), 
          .S1(n638_adj_1706));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_441_7.INIT0 = 16'h0e1f;
    defparam rem_103_add_441_7.INIT1 = 16'h0e1f;
    defparam rem_103_add_441_7.INJECT1_0 = "NO";
    defparam rem_103_add_441_7.INJECT1_1 = "NO";
    CCU2D rem_103_add_441_5 (.A0(n34856), .B0(n16701), .C0(n596_adj_1735), 
          .D0(n565_adj_1745), .A1(n16701), .B1(n34855), .C1(n595_adj_1736), 
          .D1(n564_adj_1746), .CIN(n31208), .COUT(n31209), .S0(n641_adj_1710), 
          .S1(n640_adj_1709));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_441_5.INIT0 = 16'h0e3f;
    defparam rem_103_add_441_5.INIT1 = 16'h0e1f;
    defparam rem_103_add_441_5.INJECT1_0 = "NO";
    defparam rem_103_add_441_5.INJECT1_1 = "NO";
    CCU2D rem_103_add_441_3 (.A0(n16701), .B0(n34855), .C0(n598_adj_1733), 
          .D0(n567_adj_1744), .A1(n16701), .B1(n34855), .C1(n597_adj_1734), 
          .D1(n34858), .CIN(n31207), .COUT(n31208), .S0(n643_adj_1712), 
          .S1(n642_adj_1711));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_441_3.INIT0 = 16'h0e1f;
    defparam rem_103_add_441_3.INIT1 = 16'hf1e0;
    defparam rem_103_add_441_3.INJECT1_0 = "NO";
    defparam rem_103_add_441_3.INJECT1_1 = "NO";
    CCU2D rem_103_add_441_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n613_adj_1721), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31207), .S1(n644_adj_1713));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_441_1.INIT0 = 16'hF000;
    defparam rem_103_add_441_1.INIT1 = 16'h5555;
    defparam rem_103_add_441_1.INJECT1_0 = "NO";
    defparam rem_103_add_441_1.INJECT1_1 = "NO";
    CCU2D mod_105_add_255_7 (.A0(n34961), .B0(n34933), .C0(n34933), .D0(n34948), 
          .A1(n34933), .B1(n34933), .C1(n34948), .D1(n34961), .CIN(n31205), 
          .S0(n364), .S1(n363));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_255_7.INIT0 = 16'h0ff1;
    defparam mod_105_add_255_7.INIT1 = 16'h05fb;
    defparam mod_105_add_255_7.INJECT1_0 = "NO";
    defparam mod_105_add_255_7.INJECT1_1 = "NO";
    CCU2D mod_105_add_255_5 (.A0(n16871), .B0(n34926), .C0(apuesta[8]), 
          .D0(n34946), .A1(n34936), .B1(n16239), .C1(n34932), .D1(n289), 
          .CIN(n31204), .COUT(n31205), .S0(n366), .S1(n365));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_255_5.INIT0 = 16'hf708;
    defparam mod_105_add_255_5.INIT1 = 16'h0e3f;
    defparam mod_105_add_255_5.INJECT1_0 = "NO";
    defparam mod_105_add_255_5.INJECT1_1 = "NO";
    CCU2D mod_105_add_255_3 (.A0(n16239), .B0(n34933), .C0(n323), .D0(apuesta[8]), 
          .A1(n16239), .B1(n34933), .C1(n34945), .D1(apuesta[8]), .CIN(n31203), 
          .COUT(n31204), .S0(n368), .S1(n367));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_255_3.INIT0 = 16'h0e1f;
    defparam mod_105_add_255_3.INIT1 = 16'h0fe1;
    defparam mod_105_add_255_3.INJECT1_0 = "NO";
    defparam mod_105_add_255_3.INJECT1_1 = "NO";
    CCU2D mod_105_add_255_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(apuesta[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31203), .S1(n369));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_255_1.INIT0 = 16'hF000;
    defparam mod_105_add_255_1.INIT1 = 16'h5555;
    defparam mod_105_add_255_1.INJECT1_0 = "NO";
    defparam mod_105_add_255_1.INJECT1_1 = "NO";
    CCU2D mod_105_add_286_9 (.A0(n16704), .B0(n34917), .C0(n363), .D0(n34927), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31202), 
          .S0(n408));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_286_9.INIT0 = 16'h0e1f;
    defparam mod_105_add_286_9.INIT1 = 16'h0000;
    defparam mod_105_add_286_9.INJECT1_0 = "NO";
    defparam mod_105_add_286_9.INJECT1_1 = "NO";
    CCU2D mod_105_add_286_7 (.A0(n16704), .B0(n34917), .C0(n365), .D0(n34923), 
          .A1(n4_adj_1704), .B1(n34917), .C1(n364), .D1(n333), .CIN(n31201), 
          .COUT(n31202), .S0(n410), .S1(n409));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_286_7.INIT0 = 16'h0e1f;
    defparam mod_105_add_286_7.INIT1 = 16'h0f1f;
    defparam mod_105_add_286_7.INJECT1_0 = "NO";
    defparam mod_105_add_286_7.INJECT1_1 = "NO";
    PFUMX state_3__I_0_429_Mux_0_i15 (.BLUT(n33387), .ALUT(n33420), .C0(state[3]), 
          .Z(i_dec_3__N_126[0]));
    LUT4 i24963_3_lut_2_lut_3_lut_4_lut (.A(n245), .B(n34940), .C(n242_adj_1820), 
         .D(n34941), .Z(n287)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i24963_3_lut_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 mod_105_i381_3_lut_rep_324_4_lut (.A(n34868), .B(n16709), .C(n543), 
         .D(n512), .Z(n34864)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i381_3_lut_rep_324_4_lut.init = 16'hf1e0;
    CCU2D mod_105_add_286_5 (.A0(n16704), .B0(n34917), .C0(n367), .D0(n336), 
          .A1(n34920), .B1(n16704), .C1(n366), .D1(n335), .CIN(n31200), 
          .COUT(n31201), .S0(n412), .S1(n411));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_286_5.INIT0 = 16'hf1e0;
    defparam mod_105_add_286_5.INIT1 = 16'h0e3f;
    defparam mod_105_add_286_5.INJECT1_0 = "NO";
    defparam mod_105_add_286_5.INJECT1_1 = "NO";
    CCU2D mod_105_add_286_3 (.A0(n16704), .B0(n34917), .C0(n369), .D0(apuesta[7]), 
          .A1(n34926), .B1(apuesta[8]), .C1(n368), .D1(n34913), .CIN(n31199), 
          .COUT(n31200), .S0(n414), .S1(n413));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_286_3.INIT0 = 16'h0e1f;
    defparam mod_105_add_286_3.INIT1 = 16'h0f99;
    defparam mod_105_add_286_3.INJECT1_0 = "NO";
    defparam mod_105_add_286_3.INJECT1_1 = "NO";
    CCU2D mod_105_add_286_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(apuesta[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31199), .S1(n415));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_286_1.INIT0 = 16'hF000;
    defparam mod_105_add_286_1.INIT1 = 16'h5555;
    defparam mod_105_add_286_1.INJECT1_0 = "NO";
    defparam mod_105_add_286_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_4_lut (.A(state[3]), .B(n35184), .C(n35096), .D(state[2]), 
         .Z(L1_Buffer_127__N_785[118])) /* synthesis lut_function=(!(A (B)+!A !((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h7727;
    FD1P3AX L1_Buffer_i0_i91 (.D(L1_Buffer_127__N_785[91]), .SP(sys_clk_enable_134), 
            .CK(sys_clk), .Q(L1_Buffer[91]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i91.GSR = "DISABLED";
    LUT4 mod_105_i454_3_lut (.A(n613), .B(n644), .C(n617), .Z(n658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i454_3_lut.init = 16'hcaca;
    LUT4 i24836_2_lut (.A(r2_active), .B(state[2]), .Z(n33661)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i24836_2_lut.init = 16'heeee;
    PFUMX i21300 (.BLUT(n38), .ALUT(n23867), .C0(n35080), .Z(n29882));
    CCU2D mod_105_add_317_9 (.A0(n16706), .B0(n34901), .C0(n409), .D0(n378), 
          .A1(n16706), .B1(n34901), .C1(n408), .D1(n377), .CIN(n31197), 
          .S0(n454), .S1(n453));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_317_9.INIT0 = 16'h0e1f;
    defparam mod_105_add_317_9.INIT1 = 16'h0e1f;
    defparam mod_105_add_317_9.INJECT1_0 = "NO";
    defparam mod_105_add_317_9.INJECT1_1 = "NO";
    FD1P3AX r2_active_417 (.D(r2_active_N_1152), .SP(sys_clk_enable_135), 
            .CK(sys_clk), .Q(r2_active)) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam r2_active_417.GSR = "DISABLED";
    PFUMX state_3__I_0_426_Mux_7_i15 (.BLUT(n33383), .ALUT(n33409), .C0(state[3]), 
          .Z(input_temp_13__N_88[7]));
    FD1P3AX state_i1 (.D(state_3__N_54[1]), .SP(sys_clk_enable_136), .CK(sys_clk), 
            .Q(state[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam state_i1.GSR = "ENABLED";
    OB COLS_OUT_pad_2 (.I(COLS_OUT_c_2), .O(COLS_OUT[2]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(12[9:17])
    FD1P3AX state_i2 (.D(state_3__N_54[2]), .SP(sys_clk_enable_137), .CK(sys_clk), 
            .Q(state[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam state_i2.GSR = "ENABLED";
    FD1P3AX state_i3 (.D(state_3__N_54[3]), .SP(sys_clk_enable_138), .CK(sys_clk), 
            .Q(state[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam state_i3.GSR = "ENABLED";
    OB COLS_OUT_pad_3 (.I(COLS_OUT_c_3), .O(COLS_OUT[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(12[9:17])
    CCU2D mod_105_add_317_7 (.A0(n16706), .B0(n34901), .C0(n411), .D0(n380), 
          .A1(n16706), .B1(n34901), .C1(n410), .D1(n379), .CIN(n31196), 
          .COUT(n31197), .S0(n456), .S1(n455));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_317_7.INIT0 = 16'h0e1f;
    defparam mod_105_add_317_7.INIT1 = 16'h0e1f;
    defparam mod_105_add_317_7.INJECT1_0 = "NO";
    defparam mod_105_add_317_7.INJECT1_1 = "NO";
    FD1P3AX j_mil_i1 (.D(n14_adj_1840), .SP(sys_clk_enable_150), .CK(sys_clk), 
            .Q(j_mil[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_mil_i1.GSR = "ENABLED";
    FD1P3IX idx_r1__i0 (.D(n1725), .SP(sys_clk_enable_350), .CD(n10194), 
            .CK(sys_clk), .Q(idx_r1[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r1__i0.GSR = "ENABLED";
    CCU2D mod_105_add_317_5 (.A0(n16706), .B0(n34901), .C0(n413), .D0(n382), 
          .A1(n34906), .B1(n16706), .C1(n412), .D1(n381), .CIN(n31195), 
          .COUT(n31196), .S0(n458), .S1(n457));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_317_5.INIT0 = 16'hf1e0;
    defparam mod_105_add_317_5.INIT1 = 16'h0e3f;
    defparam mod_105_add_317_5.INJECT1_0 = "NO";
    defparam mod_105_add_317_5.INJECT1_1 = "NO";
    CCU2D mod_105_add_317_3 (.A0(n16706), .B0(n34901), .C0(n415), .D0(apuesta[6]), 
          .A1(n16706), .B1(n34901), .C1(n414), .D1(n383), .CIN(n31194), 
          .COUT(n31195), .S0(n460), .S1(n459));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_317_3.INIT0 = 16'h0e1f;
    defparam mod_105_add_317_3.INIT1 = 16'h0e1f;
    defparam mod_105_add_317_3.INJECT1_0 = "NO";
    defparam mod_105_add_317_3.INJECT1_1 = "NO";
    CCU2D mod_105_add_317_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(apuesta[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31194), .S1(n461));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_317_1.INIT0 = 16'hF000;
    defparam mod_105_add_317_1.INIT1 = 16'h5555;
    defparam mod_105_add_317_1.INJECT1_0 = "NO";
    defparam mod_105_add_317_1.INJECT1_1 = "NO";
    FD1P3AX j_mil_i2 (.D(n14_adj_1839), .SP(sys_clk_enable_150), .CK(sys_clk), 
            .Q(j_mil[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_mil_i2.GSR = "ENABLED";
    CCU2D mod_105_add_348_11 (.A0(n16707), .B0(n34882), .C0(n453), .D0(n422), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31193), 
          .S0(n498));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_348_11.INIT0 = 16'h0e1f;
    defparam mod_105_add_348_11.INIT1 = 16'h0000;
    defparam mod_105_add_348_11.INJECT1_0 = "NO";
    defparam mod_105_add_348_11.INJECT1_1 = "NO";
    LUT4 i17636_2_lut_rep_360_3_lut_4_lut_4_lut (.A(n34916), .B(n335_adj_1810), 
         .C(n16696), .D(n337), .Z(n34900)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i17636_2_lut_rep_360_3_lut_4_lut_4_lut.init = 16'h0307;
    PFUMX mux_1875_i79 (.BLUT(n9_adj_1881), .ALUT(n32594), .C0(n35016), 
          .Z(n9098));
    FD1P3AX L1_Buffer_i0_i86 (.D(L1_Buffer_127__N_785[86]), .SP(sys_clk_enable_197), 
            .CK(sys_clk), .Q(L1_Buffer[86]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i86.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i84 (.D(L1_Buffer_127__N_785[84]), .SP(sys_clk_enable_189), 
            .CK(sys_clk), .Q(L1_Buffer[84]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i84.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i83 (.D(L1_Buffer_127__N_785[83]), .SP(sys_clk_enable_197), 
            .CK(sys_clk), .Q(L1_Buffer[83]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i83.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i82 (.D(L1_Buffer_127__N_785[82]), .SP(sys_clk_enable_189), 
            .CK(sys_clk), .Q(L1_Buffer[82]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i82.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i80 (.D(L1_Buffer_127__N_785[80]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[80]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i80.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i78 (.D(L1_Buffer_127__N_785[78]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[78]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i78.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i72 (.D(L1_Buffer_127__N_785[72]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[72]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i72.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(n34943), .B(n33583), .C(n383_adj_1812), .Z(n16959)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h6969;
    FD1P3AX L1_Buffer_i0_i70 (.D(L1_Buffer_127__N_785[13]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[70]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i70.GSR = "DISABLED";
    CCU2D mod_105_add_348_9 (.A0(n16707), .B0(n34882), .C0(n455), .D0(n424), 
          .A1(n16707), .B1(n34882), .C1(n454), .D1(n423), .CIN(n31192), 
          .COUT(n31193), .S0(n500), .S1(n499));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_348_9.INIT0 = 16'h0e1f;
    defparam mod_105_add_348_9.INIT1 = 16'h0e1f;
    defparam mod_105_add_348_9.INJECT1_0 = "NO";
    defparam mod_105_add_348_9.INJECT1_1 = "NO";
    FD1P3AX j_mil_i3 (.D(n14_adj_1838), .SP(sys_clk_enable_150), .CK(sys_clk), 
            .Q(j_mil[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_mil_i3.GSR = "ENABLED";
    PFUMX mux_1875_i77 (.BLUT(n8539), .ALUT(n8632), .C0(n35016), .Z(n9100));
    CCU2D mod_105_add_348_7 (.A0(n16707), .B0(n34882), .C0(n457), .D0(n426), 
          .A1(n16707), .B1(n34882), .C1(n456), .D1(n34892), .CIN(n31191), 
          .COUT(n31192), .S0(n502), .S1(n501));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_348_7.INIT0 = 16'h0e1f;
    defparam mod_105_add_348_7.INIT1 = 16'h0e1f;
    defparam mod_105_add_348_7.INJECT1_0 = "NO";
    defparam mod_105_add_348_7.INJECT1_1 = "NO";
    FD1P3AX L1_Buffer_i0_i67 (.D(n35024), .SP(sys_clk_enable_203), .CK(sys_clk), 
            .Q(L1_Buffer[67]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i67.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i66 (.D(L1_Buffer_127__N_785[66]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[66]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i66.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i65 (.D(L1_Buffer_127__N_785[65]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[65]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i65.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i64 (.D(L1_Buffer_127__N_785[64]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[64]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i64.GSR = "DISABLED";
    CCU2D mod_105_add_348_5 (.A0(n16707), .B0(n34882), .C0(n459), .D0(n428), 
          .A1(n34886), .B1(n16707), .C1(n458), .D1(n427), .CIN(n31190), 
          .COUT(n31191), .S0(n504), .S1(n503));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_348_5.INIT0 = 16'hf1e0;
    defparam mod_105_add_348_5.INIT1 = 16'h0e3f;
    defparam mod_105_add_348_5.INJECT1_0 = "NO";
    defparam mod_105_add_348_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(state[3]), .B(n35132), .C(n35096), 
         .D(state[2]), .Z(L1_Buffer_127__N_785[117])) /* synthesis lut_function=(A (B)+!A !((D)+!C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h88d8;
    FD1P3AX L1_Buffer_i0_i62 (.D(L1_Buffer_127__N_785[62]), .SP(sys_clk_enable_197), 
            .CK(sys_clk), .Q(L1_Buffer[62]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i62.GSR = "DISABLED";
    CCU2D mod_105_add_348_3 (.A0(n16707), .B0(n34882), .C0(n461), .D0(apuesta[5]), 
          .A1(n16707), .B1(n34882), .C1(n460), .D1(n429), .CIN(n31189), 
          .COUT(n31190), .S0(n506), .S1(n505));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_348_3.INIT0 = 16'h0e1f;
    defparam mod_105_add_348_3.INIT1 = 16'h0e1f;
    defparam mod_105_add_348_3.INJECT1_0 = "NO";
    defparam mod_105_add_348_3.INJECT1_1 = "NO";
    CCU2D mod_105_add_348_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(apuesta[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31189), .S1(n507));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_348_1.INIT0 = 16'hF000;
    defparam mod_105_add_348_1.INIT1 = 16'h5555;
    defparam mod_105_add_348_1.INJECT1_0 = "NO";
    defparam mod_105_add_348_1.INJECT1_1 = "NO";
    LUT4 i25219_2_lut (.A(state[0]), .B(state[2]), .Z(n21_adj_1857)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i25219_2_lut.init = 16'h2222;
    FD1P3AX L1_Buffer_i0_i60 (.D(L1_Buffer_127__N_785[60]), .SP(sys_clk_enable_197), 
            .CK(sys_clk), .Q(L1_Buffer[60]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i60.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i59 (.D(L1_Buffer_127__N_785[59]), .SP(sys_clk_enable_189), 
            .CK(sys_clk), .Q(L1_Buffer[59]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i59.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i58 (.D(L1_Buffer_127__N_785[58]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[58]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i58.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i53 (.D(n35098), .SP(sys_clk_enable_197), .CK(sys_clk), 
            .Q(L1_Buffer[53]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i53.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i51 (.D(L1_Buffer_127__N_785[51]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[51]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i51.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i46 (.D(L1_Buffer_127__N_785[46]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[46]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i46.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i45 (.D(L1_Buffer_127__N_785[45]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[45]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i45.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i42 (.D(L1_Buffer_127__N_785[42]), .SP(sys_clk_enable_189), 
            .CK(sys_clk), .Q(L1_Buffer[42]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i42.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i37 (.D(L1_Buffer_127__N_785[37]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[37]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i37.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i35 (.D(L1_Buffer_127__N_785[43]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[35]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i35.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i32 (.D(L1_Buffer_127__N_785[32]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[32]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i32.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i30 (.D(L1_Buffer_127__N_785[30]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[30]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i30.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i28 (.D(L1_Buffer_127__N_785[28]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[28]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i28.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i24 (.D(L1_Buffer_127__N_785[24]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[24]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i24.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i21 (.D(L1_Buffer_127__N_785[98]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[21]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i21.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i20 (.D(L1_Buffer_127__N_785[20]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[20]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i20.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i14 (.D(L1_Buffer_127__N_785[14]), .SP(sys_clk_enable_203), 
            .CK(sys_clk), .Q(L1_Buffer[14]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i14.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i12 (.D(n35045), .SP(sys_clk_enable_197), .CK(sys_clk), 
            .Q(L1_Buffer[12]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i12.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i5 (.D(L1_Buffer_127__N_785[102]), .SP(sys_clk_enable_197), 
            .CK(sys_clk), .Q(L1_Buffer[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i5.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i1 (.D(n35054), .SP(sys_clk_enable_203), .CK(sys_clk), 
            .Q(L1_Buffer[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i1.GSR = "DISABLED";
    FD1P3AX j_uni_i3 (.D(n14_adj_1832), .SP(sys_clk_enable_178), .CK(sys_clk), 
            .Q(j_uni[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_uni_i3.GSR = "ENABLED";
    FD1P3AX j_uni_i2 (.D(n14_adj_1833), .SP(sys_clk_enable_178), .CK(sys_clk), 
            .Q(j_uni[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_uni_i2.GSR = "ENABLED";
    FD1P3AX j_uni_i1 (.D(n14_adj_1834), .SP(sys_clk_enable_178), .CK(sys_clk), 
            .Q(j_uni[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_uni_i1.GSR = "ENABLED";
    FD1P3AX j_dec_i3 (.D(n14_adj_1835), .SP(sys_clk_enable_181), .CK(sys_clk), 
            .Q(j_dec[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_dec_i3.GSR = "ENABLED";
    FD1P3AX j_dec_i2 (.D(n14_adj_1836), .SP(sys_clk_enable_181), .CK(sys_clk), 
            .Q(j_dec[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_dec_i2.GSR = "ENABLED";
    FD1P3AX j_dec_i1 (.D(n14_adj_1837), .SP(sys_clk_enable_181), .CK(sys_clk), 
            .Q(j_dec[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_dec_i1.GSR = "ENABLED";
    CCU2D mod_105_add_379_11 (.A0(n16708), .B0(n34873), .C0(n499), .D0(n468), 
          .A1(n16708), .B1(n34873), .C1(n498), .D1(n467), .CIN(n31187), 
          .S0(n544), .S1(n543));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_379_11.INIT0 = 16'h0e1f;
    defparam mod_105_add_379_11.INIT1 = 16'h0e1f;
    defparam mod_105_add_379_11.INJECT1_0 = "NO";
    defparam mod_105_add_379_11.INJECT1_1 = "NO";
    CCU2D mod_105_add_379_9 (.A0(n16708), .B0(n34873), .C0(n501), .D0(n470), 
          .A1(n16708), .B1(n34873), .C1(n500), .D1(n469), .CIN(n31186), 
          .COUT(n31187), .S0(n546), .S1(n545));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_379_9.INIT0 = 16'h0e1f;
    defparam mod_105_add_379_9.INIT1 = 16'h0e1f;
    defparam mod_105_add_379_9.INJECT1_0 = "NO";
    defparam mod_105_add_379_9.INJECT1_1 = "NO";
    CCU2D mod_105_add_379_7 (.A0(n16708), .B0(n34873), .C0(n503), .D0(n472), 
          .A1(n16708), .B1(n34873), .C1(n502), .D1(n471), .CIN(n31185), 
          .COUT(n31186), .S0(n548), .S1(n547));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_379_7.INIT0 = 16'h0e1f;
    defparam mod_105_add_379_7.INIT1 = 16'h0e1f;
    defparam mod_105_add_379_7.INJECT1_0 = "NO";
    defparam mod_105_add_379_7.INJECT1_1 = "NO";
    FD1P3IX j_cen_i1 (.D(j_cen_3__N_740[1]), .SP(sys_clk_enable_348), .CD(n25437), 
            .CK(sys_clk), .Q(j_cen[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_cen_i1.GSR = "ENABLED";
    FD1P3IX j_cen_i2 (.D(j_cen_3__N_740[2]), .SP(sys_clk_enable_348), .CD(n25437), 
            .CK(sys_clk), .Q(j_cen[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_cen_i2.GSR = "ENABLED";
    CCU2D mod_105_add_379_5 (.A0(n16708), .B0(n34873), .C0(n505), .D0(n474), 
          .A1(n34876), .B1(n16708), .C1(n504), .D1(n473), .CIN(n31184), 
          .COUT(n31185), .S0(n550), .S1(n549));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_379_5.INIT0 = 16'hf1e0;
    defparam mod_105_add_379_5.INIT1 = 16'h0e3f;
    defparam mod_105_add_379_5.INJECT1_0 = "NO";
    defparam mod_105_add_379_5.INJECT1_1 = "NO";
    CCU2D mod_105_add_379_3 (.A0(n16708), .B0(n34873), .C0(n507), .D0(apuesta[4]), 
          .A1(n16708), .B1(n34873), .C1(n506), .D1(n475), .CIN(n31183), 
          .COUT(n31184), .S0(n552), .S1(n551));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_379_3.INIT0 = 16'h0e1f;
    defparam mod_105_add_379_3.INIT1 = 16'h0e1f;
    defparam mod_105_add_379_3.INJECT1_0 = "NO";
    defparam mod_105_add_379_3.INJECT1_1 = "NO";
    PFUMX mux_1875_i64 (.BLUT(n8551), .ALUT(n8645), .C0(n35016), .Z(n9113));
    FD1P3IX j_cen_i3 (.D(j_cen_3__N_740[3]), .SP(sys_clk_enable_348), .CD(n25437), 
            .CK(sys_clk), .Q(j_cen[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_cen_i3.GSR = "ENABLED";
    CCU2D mod_105_add_379_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(apuesta[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31183), .S1(n553));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_379_1.INIT0 = 16'hF000;
    defparam mod_105_add_379_1.INIT1 = 16'h5555;
    defparam mod_105_add_379_1.INJECT1_0 = "NO";
    defparam mod_105_add_379_1.INJECT1_1 = "NO";
    CCU2D mod_105_add_441_14 (.A0(n16710), .B0(n34859), .C0(n589), .D0(n558), 
          .A1(n16710), .B1(n34859), .C1(n588), .D1(n34864), .CIN(n31181), 
          .S0(n634), .S1(n633));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_441_14.INIT0 = 16'h0e1f;
    defparam mod_105_add_441_14.INIT1 = 16'h0e1f;
    defparam mod_105_add_441_14.INJECT1_0 = "NO";
    defparam mod_105_add_441_14.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n10_adj_1692), .B(n33303), .C(n8_adj_1853), .D(bcd_val[9]), 
         .Z(n5_adj_1876)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    CCU2D mod_105_add_441_12 (.A0(n16710), .B0(n34859), .C0(n591), .D0(n560), 
          .A1(n16710), .B1(n34859), .C1(n590), .D1(n559), .CIN(n31180), 
          .COUT(n31181), .S0(n636), .S1(n635));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_441_12.INIT0 = 16'h0e1f;
    defparam mod_105_add_441_12.INIT1 = 16'h0e1f;
    defparam mod_105_add_441_12.INJECT1_0 = "NO";
    defparam mod_105_add_441_12.INJECT1_1 = "NO";
    CCU2D mod_105_add_441_10 (.A0(n16710), .B0(n34859), .C0(n593), .D0(n562), 
          .A1(n16710), .B1(n34859), .C1(n592), .D1(n561), .CIN(n31179), 
          .COUT(n31180), .S0(n638), .S1(n637));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_441_10.INIT0 = 16'h0e1f;
    defparam mod_105_add_441_10.INIT1 = 16'h0e1f;
    defparam mod_105_add_441_10.INJECT1_0 = "NO";
    defparam mod_105_add_441_10.INJECT1_1 = "NO";
    LUT4 i2216_2_lut (.A(bcd_val[3]), .B(bcd_val[4]), .Z(n10_adj_1692)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2216_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_126 (.A(state[2]), .B(state[3]), .C(n36114), .D(tick_anim), 
         .Z(n6593)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2_4_lut_adj_126.init = 16'h1200;
    LUT4 mux_1440_i7_3_lut (.A(alu_sum_res[6]), .B(n4881), .C(state[2]), 
         .Z(n6524)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i7_3_lut.init = 16'hcaca;
    CCU2D mod_105_add_441_8 (.A0(n16710), .B0(n34859), .C0(n595), .D0(n564), 
          .A1(n16710), .B1(n34859), .C1(n594), .D1(n563), .CIN(n31178), 
          .COUT(n31179), .S0(n640), .S1(n639));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_441_8.INIT0 = 16'h0e1f;
    defparam mod_105_add_441_8.INIT1 = 16'h0e1f;
    defparam mod_105_add_441_8.INJECT1_0 = "NO";
    defparam mod_105_add_441_8.INJECT1_1 = "NO";
    FD1P3IX L1_Buffer_i0_i16 (.D(n7_adj_1827), .SP(sys_clk_enable_189), 
            .CD(n19121), .CK(sys_clk), .Q(L1_Buffer[16]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i16.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i17 (.D(n208), .SP(sys_clk_enable_189), .CD(n19121), 
            .CK(sys_clk), .Q(L1_Buffer[17]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i17.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i18 (.D(n7_adj_1825), .SP(sys_clk_enable_203), 
            .CD(n19121), .CK(sys_clk), .Q(L1_Buffer[18]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i18.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i19 (.D(L1_Buffer_127__N_785[19]), .SP(sys_clk_enable_197), 
            .CK(sys_clk), .Q(L1_Buffer[19]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i19.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i25 (.D(n7_adj_1826), .SP(sys_clk_enable_189), 
            .CD(n19121), .CK(sys_clk), .Q(L1_Buffer[25]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i25.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i26 (.D(n35135), .SP(sys_clk_enable_203), .CD(n19121), 
            .CK(sys_clk), .Q(L1_Buffer[26]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i26.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i27 (.D(n7_adj_1869), .SP(sys_clk_enable_203), 
            .CD(n19121), .CK(sys_clk), .Q(L1_Buffer[27]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i27.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i33 (.D(n35043), .SP(sys_clk_enable_203), .CD(n19121), 
            .CK(sys_clk), .Q(L1_Buffer[33]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i33.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i38 (.D(n35168), .SP(sys_clk_enable_203), .CD(n19121), 
            .CK(sys_clk), .Q(L1_Buffer[38]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i38.GSR = "DISABLED";
    FD1P3JX L1_Buffer_i0_i50 (.D(n18891), .SP(sys_clk_enable_203), .PD(n19126), 
            .CK(sys_clk), .Q(L1_Buffer[50]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i50.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i56 (.D(n35084), .SP(sys_clk_enable_203), .CK(sys_clk), 
            .Q(L1_Buffer[56]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i56.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i68 (.D(n35097), .SP(sys_clk_enable_197), .CK(sys_clk), 
            .Q(L1_Buffer[68]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i68.GSR = "DISABLED";
    FD1P3AX L1_Buffer_i0_i75 (.D(n35085), .SP(sys_clk_enable_197), .CK(sys_clk), 
            .Q(L1_Buffer[75]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i75.GSR = "DISABLED";
    PFUMX state_3__I_0_426_Mux_1_i15 (.BLUT(n33396), .ALUT(n33401), .C0(state[3]), 
          .Z(input_temp_13__N_88[1]));
    FD1P3AX L1_Buffer_i0_i77 (.D(n35052), .SP(sys_clk_enable_203), .CK(sys_clk), 
            .Q(L1_Buffer[77]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i77.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i90 (.D(n7_adj_1865), .SP(sys_clk_enable_203), 
            .CD(n19121), .CK(sys_clk), .Q(L1_Buffer[90]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i90.GSR = "DISABLED";
    CCU2D mod_105_add_441_6 (.A0(n16710), .B0(n34859), .C0(n597), .D0(n566), 
          .A1(n34862), .B1(n16710), .C1(n596), .D1(n565), .CIN(n31177), 
          .COUT(n31178), .S0(n642), .S1(n641));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_441_6.INIT0 = 16'hf1e0;
    defparam mod_105_add_441_6.INIT1 = 16'h0e3f;
    defparam mod_105_add_441_6.INJECT1_0 = "NO";
    defparam mod_105_add_441_6.INJECT1_1 = "NO";
    PFUMX i24864 (.BLUT(n33689), .ALUT(n33690), .C0(state[3]), .Z(state_3__N_54[1]));
    FD1P3IX key_cooldown_i0_i0 (.D(n4809), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i0.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i100 (.D(n7_adj_1868), .SP(sys_clk_enable_203), 
            .CD(n19121), .CK(sys_clk), .Q(L1_Buffer[100]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i100.GSR = "DISABLED";
    FD1P3IX L1_Buffer_i0_i104 (.D(n35053), .SP(sys_clk_enable_203), .CD(n19121), 
            .CK(sys_clk), .Q(L1_Buffer[104]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L1_Buffer_i0_i104.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i2 (.D(j_uni[0]), .SP(sys_clk_enable_302), .CD(n29873), 
            .CK(sys_clk), .Q(L2_Buffer[8]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i2.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i3 (.D(j_uni[1]), .SP(sys_clk_enable_302), .CD(n29873), 
            .CK(sys_clk), .Q(L2_Buffer[9]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i3.GSR = "DISABLED";
    LUT4 mux_1440_i8_3_lut (.A(alu_sum_res[7]), .B(n4880), .C(state[2]), 
         .Z(n6523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i8_3_lut.init = 16'hcaca;
    FD1P3IX L2_Buffer__i4 (.D(j_uni[2]), .SP(sys_clk_enable_302), .CD(n29873), 
            .CK(sys_clk), .Q(L2_Buffer[10]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i4.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i5 (.D(j_uni[3]), .SP(sys_clk_enable_302), .CD(n19104), 
            .CK(sys_clk), .Q(L2_Buffer[11]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i5.GSR = "DISABLED";
    FD1P3JX L2_Buffer__i7 (.D(n9066), .SP(sys_clk_enable_302), .PD(n28411), 
            .CK(sys_clk), .Q(L2_Buffer[13]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i7.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i8 (.D(n35133), .SP(sys_clk_enable_302), .CD(n19104), 
            .CK(sys_clk), .Q(L2_Buffer[14]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i8.GSR = "DISABLED";
    CCU2D mod_105_add_441_4 (.A0(n16710), .B0(n34859), .C0(n599), .D0(apuesta[2]), 
          .A1(n16710), .B1(n34859), .C1(n598), .D1(n567), .CIN(n31176), 
          .COUT(n31177), .S0(n644), .S1(n643));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_441_4.INIT0 = 16'h0e1f;
    defparam mod_105_add_441_4.INIT1 = 16'h0e1f;
    defparam mod_105_add_441_4.INJECT1_0 = "NO";
    defparam mod_105_add_441_4.INJECT1_1 = "NO";
    LUT4 mux_1440_i5_3_lut (.A(alu_sum_res[4]), .B(n4883), .C(state[2]), 
         .Z(n6526)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i5_3_lut.init = 16'hcaca;
    CCU2D mod_105_add_441_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(apuesta[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31176), .S1(n645));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_441_2.INIT0 = 16'h0000;
    defparam mod_105_add_441_2.INIT1 = 16'h5aaa;
    defparam mod_105_add_441_2.INJECT1_0 = "NO";
    defparam mod_105_add_441_2.INJECT1_1 = "NO";
    PFUMX state_3__I_0_426_Mux_2_i15 (.BLUT(n33395), .ALUT(n33404), .C0(state[3]), 
          .Z(input_temp_13__N_88[2]));
    CCU2D mod_105_add_410_13 (.A0(n16709), .B0(n34868), .C0(n543), .D0(n512), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31175), 
          .S0(n588));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_410_13.INIT0 = 16'h0e1f;
    defparam mod_105_add_410_13.INIT1 = 16'h0000;
    defparam mod_105_add_410_13.INJECT1_0 = "NO";
    defparam mod_105_add_410_13.INJECT1_1 = "NO";
    CCU2D mod_105_add_410_11 (.A0(n16709), .B0(n34868), .C0(n545), .D0(n514), 
          .A1(n16709), .B1(n34868), .C1(n544), .D1(n513), .CIN(n31174), 
          .COUT(n31175), .S0(n590), .S1(n589));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_410_11.INIT0 = 16'h0e1f;
    defparam mod_105_add_410_11.INIT1 = 16'h0e1f;
    defparam mod_105_add_410_11.INJECT1_0 = "NO";
    defparam mod_105_add_410_11.INJECT1_1 = "NO";
    CCU2D add_450_5 (.A0(apuesta[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(apuesta[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31015), .COUT(n31016), .S0(n567_adj_1744), .S1(n521_adj_1762));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(236[35:42])
    defparam add_450_5.INIT0 = 16'h5aaa;
    defparam add_450_5.INIT1 = 16'h5aaa;
    defparam add_450_5.INJECT1_0 = "NO";
    defparam add_450_5.INJECT1_1 = "NO";
    CCU2D mod_105_add_410_9 (.A0(n16709), .B0(n34868), .C0(n547), .D0(n516), 
          .A1(n16709), .B1(n34868), .C1(n546), .D1(n515), .CIN(n31173), 
          .COUT(n31174), .S0(n592), .S1(n591));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_410_9.INIT0 = 16'h0e1f;
    defparam mod_105_add_410_9.INIT1 = 16'h0e1f;
    defparam mod_105_add_410_9.INJECT1_0 = "NO";
    defparam mod_105_add_410_9.INJECT1_1 = "NO";
    LUT4 i1558_2_lut_rep_475_3_lut_4_lut (.A(state[2]), .B(n36114), .C(RESET_N_c), 
         .D(state[3]), .Z(n35015)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1558_2_lut_rep_475_3_lut_4_lut.init = 16'h8000;
    CCU2D mod_105_add_410_7 (.A0(n16709), .B0(n34868), .C0(n549), .D0(n518), 
          .A1(n16709), .B1(n34868), .C1(n548), .D1(n517), .CIN(n31172), 
          .COUT(n31173), .S0(n594), .S1(n593));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_410_7.INIT0 = 16'h0e1f;
    defparam mod_105_add_410_7.INIT1 = 16'h0e1f;
    defparam mod_105_add_410_7.INJECT1_0 = "NO";
    defparam mod_105_add_410_7.INJECT1_1 = "NO";
    CCU2D mod_105_add_410_5 (.A0(n16709), .B0(n34868), .C0(n551), .D0(n520), 
          .A1(n34869), .B1(n16709), .C1(n550), .D1(n519), .CIN(n31171), 
          .COUT(n31172), .S0(n596), .S1(n595));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_410_5.INIT0 = 16'hf1e0;
    defparam mod_105_add_410_5.INIT1 = 16'h0e3f;
    defparam mod_105_add_410_5.INJECT1_0 = "NO";
    defparam mod_105_add_410_5.INJECT1_1 = "NO";
    CCU2D mod_105_add_410_3 (.A0(n16709), .B0(n34868), .C0(n553), .D0(apuesta[3]), 
          .A1(n16709), .B1(n34868), .C1(n552), .D1(n521), .CIN(n31170), 
          .COUT(n31171), .S0(n598), .S1(n597));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_410_3.INIT0 = 16'h0e1f;
    defparam mod_105_add_410_3.INIT1 = 16'h0e1f;
    defparam mod_105_add_410_3.INJECT1_0 = "NO";
    defparam mod_105_add_410_3.INJECT1_1 = "NO";
    LUT4 mux_1440_i6_3_lut (.A(alu_sum_res[5]), .B(n4882), .C(state[2]), 
         .Z(n6525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_354_3_lut_4_lut_4_lut_4_lut (.A(n34916), .B(n335_adj_1810), 
         .C(n16696), .D(n337), .Z(n34894)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_rep_354_3_lut_4_lut_4_lut_4_lut.init = 16'hfc07;
    FD1P3AX L2_Buffer__i9 (.D(n9168), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[16]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i9.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i10 (.D(n33526), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[17]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i10.GSR = "DISABLED";
    FD1P3AX L2_Buffer__i11 (.D(n9166), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[18]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i11.GSR = "DISABLED";
    PFUMX state_3__I_0_426_Mux_3_i15 (.BLUT(n33374), .ALUT(n33405), .C0(state[3]), 
          .Z(input_temp_13__N_88[3]));
    CCU2D mod_105_add_410_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(apuesta[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31170), .S1(n599));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_add_410_1.INIT0 = 16'hF000;
    defparam mod_105_add_410_1.INIT1 = 16'h5555;
    defparam mod_105_add_410_1.INJECT1_0 = "NO";
    defparam mod_105_add_410_1.INJECT1_1 = "NO";
    PFUMX i16506 (.BLUT(n33371), .ALUT(n23_adj_1852), .C0(state[3]), .Z(i_mil_3__N_118[1]));
    PFUMX i16497 (.BLUT(n33370), .ALUT(n24_adj_1854), .C0(state[3]), .Z(i_mil_3__N_118[3]));
    LUT4 mux_1440_i3_3_lut (.A(alu_sum_res[2]), .B(n4885), .C(state[2]), 
         .Z(n6528)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i3_3_lut.init = 16'hcaca;
    LUT4 mux_1440_i4_3_lut (.A(alu_sum_res[3]), .B(n4884), .C(state[2]), 
         .Z(n6527)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i4_3_lut.init = 16'hcaca;
    FD1S3IX osc_div_2088__i0 (.D(n135), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i0.GSR = "ENABLED";
    OB COLS_OUT_pad_0 (.I(COLS_OUT_c_0), .O(COLS_OUT[0]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(12[9:17])
    LUT4 i25150_4_lut (.A(n4_adj_1716), .B(n35238), .C(n36111), .D(state[2]), 
         .Z(n33924)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i25150_4_lut.init = 16'h0311;
    CCU2D add_1629_15 (.A0(n34970), .B0(n34970), .C0(n6516), .D0(bcd_val[14]), 
          .A1(n34970), .B1(n34970), .C1(n6515), .D1(bcd_val[15]), .CIN(n31168), 
          .S0(n6533), .S1(n6532));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam add_1629_15.INIT0 = 16'h569a;
    defparam add_1629_15.INIT1 = 16'h569a;
    defparam add_1629_15.INJECT1_0 = "NO";
    defparam add_1629_15.INJECT1_1 = "NO";
    CCU2D add_1629_13 (.A0(n34970), .B0(n34970), .C0(n6518), .D0(bcd_val[12]), 
          .A1(n34970), .B1(n34970), .C1(n6517), .D1(bcd_val[13]), .CIN(n31167), 
          .COUT(n31168), .S0(n6535), .S1(n6534));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam add_1629_13.INIT0 = 16'h569a;
    defparam add_1629_13.INIT1 = 16'h569a;
    defparam add_1629_13.INJECT1_0 = "NO";
    defparam add_1629_13.INJECT1_1 = "NO";
    CCU2D add_1629_11 (.A0(n34970), .B0(n34970), .C0(n6520), .D0(bcd_val[10]), 
          .A1(n34970), .B1(n34970), .C1(n6519), .D1(bcd_val[11]), .CIN(n31166), 
          .COUT(n31167), .S0(n6537), .S1(n6536));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam add_1629_11.INIT0 = 16'h569a;
    defparam add_1629_11.INIT1 = 16'h569a;
    defparam add_1629_11.INJECT1_0 = "NO";
    defparam add_1629_11.INJECT1_1 = "NO";
    CCU2D add_1629_9 (.A0(state[2]), .B0(n34970), .C0(n6522), .D0(bcd_val[8]), 
          .A1(state[2]), .B1(n34970), .C1(n6521), .D1(bcd_val[9]), .CIN(n31165), 
          .COUT(n31166), .S0(n6539), .S1(n6538));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam add_1629_9.INIT0 = 16'h74b8;
    defparam add_1629_9.INIT1 = 16'h74b8;
    defparam add_1629_9.INJECT1_0 = "NO";
    defparam add_1629_9.INJECT1_1 = "NO";
    PFUMX mux_1464_i4 (.BLUT(idx_r3_3__N_700[3]), .ALUT(n1862), .C0(n6593), 
          .Z(n6595));
    CCU2D add_1629_7 (.A0(GND_net), .B0(n34970), .C0(n6524), .D0(bcd_val[6]), 
          .A1(state[2]), .B1(n34970), .C1(n6523), .D1(bcd_val[7]), .CIN(n31164), 
          .COUT(n31165), .S0(n6541), .S1(n6540));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam add_1629_7.INIT0 = 16'h569a;
    defparam add_1629_7.INIT1 = 16'h74b8;
    defparam add_1629_7.INJECT1_0 = "NO";
    defparam add_1629_7.INJECT1_1 = "NO";
    CCU2D add_1629_5 (.A0(n34970), .B0(n34970), .C0(n6526), .D0(bcd_val[4]), 
          .A1(GND_net), .B1(n34970), .C1(n6525), .D1(bcd_val[5]), .CIN(n31163), 
          .COUT(n31164), .S0(n6543), .S1(n6542));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam add_1629_5.INIT0 = 16'h569a;
    defparam add_1629_5.INIT1 = 16'h569a;
    defparam add_1629_5.INJECT1_0 = "NO";
    defparam add_1629_5.INJECT1_1 = "NO";
    CCU2D add_1629_3 (.A0(state[2]), .B0(n34970), .C0(n6528), .D0(bcd_val[2]), 
          .A1(state[2]), .B1(n34970), .C1(n6527), .D1(bcd_val[3]), .CIN(n31162), 
          .COUT(n31163), .S0(n6545), .S1(n6544));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam add_1629_3.INIT0 = 16'hb874;
    defparam add_1629_3.INIT1 = 16'h74b8;
    defparam add_1629_3.INJECT1_0 = "NO";
    defparam add_1629_3.INJECT1_1 = "NO";
    OB LCD_RS_pad (.I(LCD_RS_c), .O(LCD_RS));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(14[9:15])
    OB LCD_RW_pad (.I(GND_net), .O(LCD_RW));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(15[9:15])
    OB LCD_E_pad (.I(LCD_E_c), .O(LCD_E));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(16[9:14])
    OB LCD_DATA_pad_7 (.I(LCD_DATA_c_7), .O(LCD_DATA[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    OB LCD_DATA_pad_6 (.I(LCD_DATA_c_6), .O(LCD_DATA[6]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    OB LCD_DATA_pad_5 (.I(LCD_DATA_c_5), .O(LCD_DATA[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    OB LCD_DATA_pad_4 (.I(LCD_DATA_c_4), .O(LCD_DATA[4]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    OB LCD_DATA_pad_3 (.I(LCD_DATA_c_3), .O(LCD_DATA[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    OB LCD_DATA_pad_2 (.I(LCD_DATA_c_2), .O(LCD_DATA[2]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    OB LCD_DATA_pad_1 (.I(LCD_DATA_c_1), .O(LCD_DATA[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    OB LCD_DATA_pad_0 (.I(LCD_DATA_c_0), .O(LCD_DATA[0]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(17[9:17])
    OB LEDS_pad_4 (.I(LEDS_c_4), .O(LEDS[4]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(19[9:13])
    OB LEDS_pad_3 (.I(GND_net), .O(LEDS[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(19[9:13])
    OB LEDS_pad_2 (.I(GND_net), .O(LEDS[2]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(19[9:13])
    OB LEDS_pad_1 (.I(GND_net), .O(LEDS[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(19[9:13])
    OB LEDS_pad_0 (.I(GND_net), .O(LEDS[0]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(19[9:13])
    IB RESET_N_pad (.I(RESET_N), .O(RESET_N_c));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    IB SW_MODE_pad (.I(SW_MODE), .O(SW_MODE_c));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(8[9:16])
    IB ROWS_IN_pad_3 (.I(ROWS_IN[3]), .O(ROWS_IN_c_3));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(11[9:16])
    IB ROWS_IN_pad_2 (.I(ROWS_IN[2]), .O(ROWS_IN_c_2));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(11[9:16])
    IB ROWS_IN_pad_1 (.I(ROWS_IN[1]), .O(ROWS_IN_c_1));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(11[9:16])
    IB ROWS_IN_pad_0 (.I(ROWS_IN[0]), .O(ROWS_IN_c_0));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(11[9:16])
    PFUMX state_3__I_0_428_Mux_3_i15 (.BLUT(n33392), .ALUT(n14_adj_1859), 
          .C0(state[3]), .Z(i_cen_3__N_122[3]));
    FD1P3AX bcd_val_i0_i1 (.D(n33136), .SP(sys_clk_enable_213), .CK(sys_clk), 
            .Q(bcd_val[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i1.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i2 (.D(n6494), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i2.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i3 (.D(n6493), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i3.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i4 (.D(n6492), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i4.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i5 (.D(n6491), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i5.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i6 (.D(n6490), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i6.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i7 (.D(n6489), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i7.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i8 (.D(n6488), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i8.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i9 (.D(n6487), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i9.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i10 (.D(n6486), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i10.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i11 (.D(n6485), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i11.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i12 (.D(n6484), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i12.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i13 (.D(n6483), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i13.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i14 (.D(n6482), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i14.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i15 (.D(n6481), .SP(sys_clk_enable_227), .CK(sys_clk), 
            .Q(bcd_val[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i15.GSR = "DISABLED";
    FD1P3IX idx_r3__i2 (.D(n35241), .SP(sys_clk_enable_233), .CD(n10192), 
            .CK(sys_clk), .Q(rom_out_r3_3__N_48[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r3__i2.GSR = "ENABLED";
    FD1P3IX idx_r3__i3 (.D(n35616), .SP(sys_clk_enable_233), .CD(n10192), 
            .CK(sys_clk), .Q(rom_out_r3_3__N_48[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r3__i3.GSR = "ENABLED";
    FD1P3IX idx_r3__i4 (.D(n6595), .SP(sys_clk_enable_233), .CD(n10192), 
            .CK(sys_clk), .Q(rom_out_r3_3__N_48[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r3__i4.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n5_adj_1876), .B(state[1]), .Z(n4_adj_1716)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut.init = 16'h4444;
    CCU2D add_1629_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16387), .B1(n35171), .C1(GND_net), .D1(GND_net), .COUT(n31162));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam add_1629_1.INIT0 = 16'hF000;
    defparam add_1629_1.INIT1 = 16'h7777;
    defparam add_1629_1.INJECT1_0 = "NO";
    defparam add_1629_1.INJECT1_1 = "NO";
    LUT4 i1594_2_lut_rep_496 (.A(state[3]), .B(n7631), .Z(n35036)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1594_2_lut_rep_496.init = 16'h8888;
    LUT4 mux_1587_i10_3_lut_4_lut (.A(state[3]), .B(n7631), .C(state[2]), 
         .D(alu_sum_res[9]), .Z(jackpot_15__N_58[9])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1587_i10_3_lut_4_lut.init = 16'h7f08;
    FD1P3IX idx_r2__i2 (.D(n1966), .SP(sys_clk_enable_252), .CD(n10190), 
            .CK(sys_clk), .Q(rom_out_r2_3__N_42[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r2__i2.GSR = "ENABLED";
    PFUMX i22464 (.BLUT(n31277), .ALUT(n31278), .C0(state[0]), .Z(n31279));
    CCU2D add_450_3 (.A0(apuesta[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(apuesta[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31014), .COUT(n31015), .S0(n659), .S1(n613_adj_1721));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(236[35:42])
    defparam add_450_3.INIT0 = 16'h5aaa;
    defparam add_450_3.INIT1 = 16'h5555;
    defparam add_450_3.INJECT1_0 = "NO";
    defparam add_450_3.INJECT1_1 = "NO";
    CCU2D add_450_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(apuesta[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31014), .S1(n300));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(236[35:42])
    defparam add_450_1.INIT0 = 16'hF000;
    defparam add_450_1.INIT1 = 16'h5555;
    defparam add_450_1.INJECT1_0 = "NO";
    defparam add_450_1.INJECT1_1 = "NO";
    CCU2D add_3222_14 (.A0(n3_adj_1708), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31013), 
          .S0(n11500));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3222_14.INIT0 = 16'h5aaa;
    defparam add_3222_14.INIT1 = 16'h0000;
    defparam add_3222_14.INJECT1_0 = "NO";
    defparam add_3222_14.INJECT1_1 = "NO";
    CCU2D add_3222_2 (.A0(input_temp[0]), .B0(key_code[1]), .C0(GND_net), 
          .D0(GND_net), .A1(input_temp[1]), .B1(key_code[2]), .C1(GND_net), 
          .D1(GND_net), .COUT(n31008), .S1(n11511));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3222_2.INIT0 = 16'h7000;
    defparam add_3222_2.INIT1 = 16'h5666;
    defparam add_3222_2.INJECT1_0 = "NO";
    defparam add_3222_2.INJECT1_1 = "NO";
    CCU2D add_3222_12 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4_adj_1686), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31012), .COUT(n31013), .S0(n11502), .S1(n11501));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3222_12.INIT0 = 16'h5aaa;
    defparam add_3222_12.INIT1 = 16'h5aaa;
    defparam add_3222_12.INJECT1_0 = "NO";
    defparam add_3222_12.INJECT1_1 = "NO";
    CCU2D add_448_21 (.A0(key_cooldown[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31045), .S0(n4790), .S1(n4789));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_21.INIT0 = 16'h5555;
    defparam add_448_21.INIT1 = 16'h5555;
    defparam add_448_21.INJECT1_0 = "NO";
    defparam add_448_21.INJECT1_1 = "NO";
    CCU2D add_448_19 (.A0(key_cooldown[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31044), .COUT(n31045), .S0(n4792), .S1(n4791));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_19.INIT0 = 16'h5555;
    defparam add_448_19.INIT1 = 16'h5555;
    defparam add_448_19.INJECT1_0 = "NO";
    defparam add_448_19.INJECT1_1 = "NO";
    CCU2D add_448_17 (.A0(key_cooldown[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31043), .COUT(n31044), .S0(n4794), .S1(n4793));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_17.INIT0 = 16'h5555;
    defparam add_448_17.INIT1 = 16'h5555;
    defparam add_448_17.INJECT1_0 = "NO";
    defparam add_448_17.INJECT1_1 = "NO";
    CCU2D add_448_15 (.A0(key_cooldown[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31042), .COUT(n31043), .S0(n4796), .S1(n4795));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_15.INIT0 = 16'h5555;
    defparam add_448_15.INIT1 = 16'h5555;
    defparam add_448_15.INJECT1_0 = "NO";
    defparam add_448_15.INJECT1_1 = "NO";
    CCU2D add_448_13 (.A0(key_cooldown[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31041), .COUT(n31042), .S0(n4798), .S1(n4797));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_13.INIT0 = 16'h5555;
    defparam add_448_13.INIT1 = 16'h5555;
    defparam add_448_13.INJECT1_0 = "NO";
    defparam add_448_13.INJECT1_1 = "NO";
    CCU2D add_3222_10 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6_adj_1672), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31011), .COUT(n31012), .S0(n11504), .S1(n11503));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3222_10.INIT0 = 16'h5aaa;
    defparam add_3222_10.INIT1 = 16'h5aaa;
    defparam add_3222_10.INJECT1_0 = "NO";
    defparam add_3222_10.INJECT1_1 = "NO";
    CCU2D add_448_11 (.A0(key_cooldown[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31040), .COUT(n31041), .S0(n4800), .S1(n4799));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_11.INIT0 = 16'h5555;
    defparam add_448_11.INIT1 = 16'h5555;
    defparam add_448_11.INJECT1_0 = "NO";
    defparam add_448_11.INJECT1_1 = "NO";
    CCU2D add_3222_8 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31010), 
          .COUT(n31011), .S0(n11506), .S1(n11505));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3222_8.INIT0 = 16'h5aaa;
    defparam add_3222_8.INIT1 = 16'h5aaa;
    defparam add_3222_8.INJECT1_0 = "NO";
    defparam add_3222_8.INJECT1_1 = "NO";
    CCU2D add_448_9 (.A0(key_cooldown[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31039), .COUT(n31040), .S0(n4802), .S1(n4801));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_9.INIT0 = 16'h5555;
    defparam add_448_9.INIT1 = 16'h5555;
    defparam add_448_9.INJECT1_0 = "NO";
    defparam add_448_9.INJECT1_1 = "NO";
    CCU2D add_448_7 (.A0(key_cooldown[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31038), .COUT(n31039), .S0(n4804), .S1(n4803));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_7.INIT0 = 16'h5555;
    defparam add_448_7.INIT1 = 16'h5555;
    defparam add_448_7.INJECT1_0 = "NO";
    defparam add_448_7.INJECT1_1 = "NO";
    CCU2D add_448_5 (.A0(key_cooldown[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31037), .COUT(n31038), .S0(n4806), .S1(n4805));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_5.INIT0 = 16'h5555;
    defparam add_448_5.INIT1 = 16'h5555;
    defparam add_448_5.INJECT1_0 = "NO";
    defparam add_448_5.INJECT1_1 = "NO";
    CCU2D add_448_3 (.A0(key_cooldown[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_cooldown[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31036), .COUT(n31037), .S0(n4808), .S1(n4807));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_3.INIT0 = 16'h5555;
    defparam add_448_3.INIT1 = 16'h5555;
    defparam add_448_3.INJECT1_0 = "NO";
    defparam add_448_3.INJECT1_1 = "NO";
    CCU2D add_448_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_cooldown[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31036), .S1(n4809));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(189[54:66])
    defparam add_448_1.INIT0 = 16'hF000;
    defparam add_448_1.INIT1 = 16'h5555;
    defparam add_448_1.INJECT1_0 = "NO";
    defparam add_448_1.INJECT1_1 = "NO";
    CCU2D add_454_16 (.A0(bcd_val[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_val[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31034), .S0(n4873), .S1(n4872));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(337[36:43])
    defparam add_454_16.INIT0 = 16'h5555;
    defparam add_454_16.INIT1 = 16'h5555;
    defparam add_454_16.INJECT1_0 = "NO";
    defparam add_454_16.INJECT1_1 = "NO";
    FD1P3IX idx_r2__i3 (.D(n36046), .SP(sys_clk_enable_252), .CD(n10190), 
            .CK(sys_clk), .Q(idx_r2[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r2__i3.GSR = "ENABLED";
    FD1P3IX idx_r2__i4 (.D(n35837), .SP(sys_clk_enable_252), .CD(n10190), 
            .CK(sys_clk), .Q(idx_r2[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r2__i4.GSR = "ENABLED";
    CCU2D add_454_14 (.A0(bcd_val[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_val[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31033), .COUT(n31034), .S0(n4875), .S1(n4874));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(337[36:43])
    defparam add_454_14.INIT0 = 16'h5555;
    defparam add_454_14.INIT1 = 16'h5555;
    defparam add_454_14.INJECT1_0 = "NO";
    defparam add_454_14.INJECT1_1 = "NO";
    CCU2D add_454_12 (.A0(bcd_val[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_val[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31032), .COUT(n31033), .S0(n4877), .S1(n4876));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(337[36:43])
    defparam add_454_12.INIT0 = 16'h5555;
    defparam add_454_12.INIT1 = 16'h5555;
    defparam add_454_12.INJECT1_0 = "NO";
    defparam add_454_12.INJECT1_1 = "NO";
    LUT4 mux_1587_i9_3_lut_4_lut (.A(state[3]), .B(n7631), .C(state[2]), 
         .D(alu_sum_res[8]), .Z(jackpot_15__N_58[8])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1587_i9_3_lut_4_lut.init = 16'h7f08;
    LUT4 i4717_2_lut_rep_381_3_lut_4_lut (.A(n242_adj_1820), .B(n34935), 
         .C(n291), .D(n245), .Z(n34921)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i4717_2_lut_rep_381_3_lut_4_lut.init = 16'hf1fe;
    PFUMX state_3__I_0_426_Mux_12_i15 (.BLUT(n33373), .ALUT(n33400), .C0(state[3]), 
          .Z(input_temp_13__N_88[12]));
    FD1P3IX L2_Buffer__i12 (.D(j_dec[3]), .SP(sys_clk_enable_302), .CD(n19104), 
            .CK(sys_clk), .Q(L2_Buffer[19]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i12.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_519_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(n35171), .Z(sys_clk_enable_389)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_519_4_lut_4_lut.init = 16'h8100;
    LUT4 i1_2_lut_rep_394_4_lut (.A(n34946), .B(n34942), .C(n34948), .D(n289), 
         .Z(n34934)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i1_2_lut_rep_394_4_lut.init = 16'hfef0;
    LUT4 i2_4_lut_adj_127 (.A(state[2]), .B(state[3]), .C(n4_adj_1823), 
         .D(n36114), .Z(n10190)) /* synthesis lut_function=(A (B (D))+!A !((C+!(D))+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2_4_lut_adj_127.init = 16'h8c00;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(state[2]), .B(state[0]), .C(state[1]), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[14])) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0006;
    LUT4 i15449_3_lut_4_lut (.A(n35140), .B(i_uni[0]), .C(r2_active), 
         .D(n35100), .Z(n8494)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[33:38])
    defparam i15449_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1593_4_lut_4_lut (.A(r2_active), .B(state[0]), .C(state[1]), 
         .D(state[2]), .Z(n7631)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1593_4_lut_4_lut.init = 16'hc008;
    LUT4 i1_3_lut_4_lut_4_lut_adj_128 (.A(n337), .B(n34943), .C(n383_adj_1812), 
         .D(n33583), .Z(n33594)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A !(B (C (D))+!B ((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_128.init = 16'h59a9;
    LUT4 delay_timer_4__I_0_i4_4_lut (.A(delay_r2_target[0]), .B(delay_r2_target[1]), 
         .C(delay_timer[1]), .D(delay_timer[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(252[28:57])
    defparam delay_timer_4__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 i24958_4_lut (.A(osc_div[8]), .B(osc_div[16]), .C(osc_div[10]), 
         .D(osc_div[13]), .Z(n33802)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i24958_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_4_lut (.A(n35142), .B(n33538), .C(n4_adj_1719), .D(n35005), 
         .Z(n9147)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[26:31])
    defparam i1_4_lut_4_lut.init = 16'hff20;
    PFUMX state_3__I_0_426_Mux_13_i15 (.BLUT(n33386), .ALUT(n33411), .C0(state[3]), 
          .Z(input_temp_13__N_88[13]));
    LUT4 i20640_4_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(blink_toggle), 
         .D(state[2]), .Z(n29228)) /* synthesis lut_function=(!(A (D)+!A (B+!(C+(D))))) */ ;
    defparam i20640_4_lut_4_lut_4_lut.init = 16'h11ba;
    LUT4 i1_4_lut_4_lut_adj_129 (.A(n35120), .B(n33538), .C(n4_adj_1855), 
         .D(n35005), .Z(n9133)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[12:17])
    defparam i1_4_lut_4_lut_adj_129.init = 16'hff20;
    LUT4 i25167_2_lut (.A(n33939), .B(n16991), .Z(tick_anim_N_1149)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(166[16:40])
    defparam i25167_2_lut.init = 16'h2222;
    LUT4 i20805_3_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(blink_toggle), .Z(n7_adj_1869)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C+(D)))) */ ;
    defparam i20805_3_lut_4_lut_4_lut_4_lut.init = 16'heced;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[3]), .B(state[0]), .C(state[1]), 
         .D(state[2]), .Z(L1_Buffer_127__N_785[13])) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B (C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h7673;
    LUT4 mod_105_i389_3_lut_4_lut (.A(n34868), .B(n16709), .C(n551), .D(n520), 
         .Z(n565)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i389_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(state[3]), .B(state[0]), .C(blink_toggle), 
         .D(state[2]), .Z(L1_Buffer_127__N_785[112])) /* synthesis lut_function=(!(A (B)+!A (B+(C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2223;
    LUT4 i5462_3_lut_rep_384_4_lut_4_lut (.A(n337), .B(n34943), .C(n383_adj_1812), 
         .D(n33583), .Z(n34924)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B (C+!(D))))) */ ;
    defparam i5462_3_lut_rep_384_4_lut_4_lut.init = 16'h6264;
    LUT4 mod_105_i390_3_lut_4_lut (.A(n34868), .B(n16709), .C(n552), .D(n521), 
         .Z(n566)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i390_3_lut_4_lut.init = 16'hf1e0;
    PFUMX state_3__I_0_429_Mux_3_i15 (.BLUT(n33377), .ALUT(n33418), .C0(state[3]), 
          .Z(i_dec_3__N_126[3]));
    LUT4 i72_3_lut_rep_542_4_lut_4_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .D(r2_active), .Z(n35082)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C+(D))+!B)) */ ;
    defparam i72_3_lut_rep_542_4_lut_4_lut.init = 16'h8286;
    LUT4 i2398_2_lut_rep_422_3_lut_4_lut (.A(delay_timer[0]), .B(tick_1s), 
         .C(r2_active_N_1169), .D(delay_timer[1]), .Z(n34962)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(251[21] 254[28])
    defparam i2398_2_lut_rep_422_3_lut_4_lut.init = 16'h8000;
    LUT4 mod_105_i391_3_lut_4_lut (.A(n34868), .B(n16709), .C(n553), .D(apuesta[3]), 
         .Z(n567)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i391_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2390_2_lut_rep_438_3_lut (.A(delay_timer[0]), .B(tick_1s), .C(r2_active_N_1169), 
         .Z(n34978)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(251[21] 254[28])
    defparam i2390_2_lut_rep_438_3_lut.init = 16'h8080;
    LUT4 mod_105_i383_3_lut_4_lut (.A(n34868), .B(n16709), .C(n545), .D(n514), 
         .Z(n559)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i383_3_lut_4_lut.init = 16'hf1e0;
    PFUMX state_3__I_0_426_Mux_10_i15 (.BLUT(n33375), .ALUT(n33402), .C0(state[3]), 
          .Z(input_temp_13__N_88[10]));
    LUT4 i43_3_lut_4_lut (.A(tick_1s), .B(r2_active_N_1169), .C(n5_adj_1876), 
         .D(state[3]), .Z(n21)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C+!(D))) */ ;
    defparam i43_3_lut_4_lut.init = 16'hf0dd;
    LUT4 i25165_4_lut (.A(n15), .B(osc_div[13]), .C(n14_adj_1680), .D(osc_div[10]), 
         .Z(n33939)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(166[16:40])
    defparam i25165_4_lut.init = 16'h0001;
    PFUMX state_3__I_0_426_Mux_11_i15 (.BLUT(n33379), .ALUT(n33408), .C0(state[3]), 
          .Z(input_temp_13__N_88[11]));
    LUT4 mod_105_i385_3_lut_4_lut (.A(n34868), .B(n16709), .C(n547), .D(n516), 
         .Z(n561)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i385_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_105_i421_3_lut_4_lut (.A(n34859), .B(n16710), .C(n597), .D(n566), 
         .Z(n611)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i421_3_lut_4_lut.init = 16'hf1e0;
    FD1P3JX L2_Buffer__i14 (.D(n24), .SP(sys_clk_enable_302), .PD(n28411), 
            .CK(sys_clk), .Q(L2_Buffer[21]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i14.GSR = "DISABLED";
    LUT4 i6_4_lut (.A(osc_div[17]), .B(osc_div[11]), .C(osc_div[12]), 
         .D(osc_div[18]), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(166[16:40])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 mod_105_i417_3_lut_4_lut (.A(n34859), .B(n16710), .C(n593), .D(n562), 
         .Z(n607)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i417_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_105_i413_3_lut_4_lut (.A(n34859), .B(n16710), .C(n589), .D(n558), 
         .Z(n603)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i413_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_385_3_lut_4_lut_4_lut (.A(n245), .B(n34940), .C(n242_adj_1820), 
         .D(n34941), .Z(n34925)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i1_2_lut_rep_385_3_lut_4_lut_4_lut.init = 16'haba5;
    LUT4 mod_105_i387_3_lut_4_lut (.A(n34868), .B(n16709), .C(n549), .D(n518), 
         .Z(n563)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i387_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n5390_bdd_2_lut_25478_3_lut (.A(tick_1s), .B(r2_active_N_1169), 
         .C(state[0]), .Z(n34644)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;
    defparam n5390_bdd_2_lut_25478_3_lut.init = 16'h2f2f;
    FD1P3IX L2_Buffer__i15 (.D(n35141), .SP(sys_clk_enable_302), .CD(n19104), 
            .CK(sys_clk), .Q(L2_Buffer[22]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i15.GSR = "DISABLED";
    LUT4 i10442_2_lut_3_lut (.A(RESET_N_c), .B(n5_adj_1872), .C(state[3]), 
         .Z(n19044)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i10442_2_lut_3_lut.init = 16'h8080;
    FD1P3AX L2_Buffer__i17 (.D(n9160), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[25]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i17.GSR = "DISABLED";
    LUT4 mod_105_i384_3_lut_4_lut (.A(n34868), .B(n16709), .C(n546), .D(n515), 
         .Z(n560)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i384_3_lut_4_lut.init = 16'hf1e0;
    LUT4 rem_103_i388_3_lut_4_lut_4_lut (.A(n34863), .B(n519_adj_1763), 
         .C(n550_adj_1754), .D(n16700), .Z(n564_adj_1746)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam rem_103_i388_3_lut_4_lut_4_lut.init = 16'hf0c4;
    PFUMX state_3__I_0_426_Mux_8_i15 (.BLUT(n33384), .ALUT(n33410), .C0(state[3]), 
          .Z(input_temp_13__N_88[8]));
    FD1P3AX L2_Buffer__i18 (.D(n9159), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[26]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i18.GSR = "DISABLED";
    LUT4 i25162_4_lut_then_4_lut (.A(state[3]), .B(state[0]), .C(state[1]), 
         .D(state[2]), .Z(n35230)) /* synthesis lut_function=(A (B (C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i25162_4_lut_then_4_lut.init = 16'h9550;
    LUT4 i25162_4_lut_else_4_lut (.A(state[3]), .B(state[0]), .C(state[1]), 
         .D(state[2]), .Z(n35229)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i25162_4_lut_else_4_lut.init = 16'h8010;
    FD1P3IX L2_Buffer__i19 (.D(j_cen[3]), .SP(sys_clk_enable_302), .CD(n19104), 
            .CK(sys_clk), .Q(L2_Buffer[27]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i19.GSR = "DISABLED";
    LUT4 mod_193_i97_4_lut_4_lut (.A(rom_out_r3_3__N_48[2]), .B(rom_out_r3_3__N_48[4]), 
         .C(rom_out_r3_3__N_48[0]), .D(rom_out_r3_3__N_48[1]), .Z(n1862)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(275[84:92])
    defparam mod_193_i97_4_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_then_4_lut (.A(n35171), .B(state[1]), .C(state[2]), 
         .D(state[0]), .Z(n35234)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h8200;
    LUT4 i1_4_lut_else_4_lut (.A(n35171), .B(state[1]), .C(state[2]), 
         .D(state[0]), .Z(n35233)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i5_3_lut (.A(osc_div[16]), .B(osc_div[15]), .C(osc_div[8]), .Z(n14_adj_1680)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(166[16:40])
    defparam i5_3_lut.init = 16'hfefe;
    FD1P3JX L2_Buffer__i21 (.D(n9052), .SP(sys_clk_enable_302), .PD(n28411), 
            .CK(sys_clk), .Q(L2_Buffer[29]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i21.GSR = "DISABLED";
    LUT4 rem_103_i358_3_lut_rep_325_4_lut (.A(n34870), .B(n16699), .C(n506_adj_1771), 
         .D(n475_adj_1780), .Z(n34865)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i358_3_lut_rep_325_4_lut.init = 16'hf1e0;
    FD1P3IX L2_Buffer__i22 (.D(n35188), .SP(sys_clk_enable_302), .CD(n19104), 
            .CK(sys_clk), .Q(L2_Buffer[30]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i22.GSR = "DISABLED";
    LUT4 i14797_4_lut_else_3_lut_4_lut (.A(n14_adj_1684), .B(n16994), .C(state[1]), 
         .D(state[2]), .Z(n35242)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i14797_4_lut_else_3_lut_4_lut.init = 16'h0e00;
    FD1P3IX L2_Buffer__i24 (.D(n8493), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[33]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i24.GSR = "DISABLED";
    LUT4 i1_4_lut_then_4_lut_adj_130 (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(r2_active), .Z(n35237)) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D))))) */ ;
    defparam i1_4_lut_then_4_lut_adj_130.init = 16'h7d7f;
    LUT4 i1_4_lut_else_4_lut_adj_131 (.A(state[0]), .B(n36109), .C(state[1]), 
         .D(state[2]), .Z(n35236)) /* synthesis lut_function=(!(A+!((C+!(D))+!B))) */ ;
    defparam i1_4_lut_else_4_lut_adj_131.init = 16'h5155;
    LUT4 mux_1464_i2_then_3_lut (.A(rom_out_r3_3__N_48[1]), .B(rom_out_r3_3__N_48[0]), 
         .C(rom_out_r3_3__N_48[4]), .Z(n35240)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;
    defparam mux_1464_i2_then_3_lut.init = 16'ha6a6;
    LUT4 mux_1464_i2_else_3_lut (.A(n34854), .B(apuesta[0]), .C(n662), 
         .Z(n35239)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;
    defparam mux_1464_i2_else_3_lut.init = 16'h9a9a;
    LUT4 i14797_4_lut_then_3_lut (.A(state[2]), .B(state[1]), .C(n5_adj_1876), 
         .Z(n35243)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i14797_4_lut_then_3_lut.init = 16'h4040;
    LUT4 state_2__bdd_4_lut_25790 (.A(state[2]), .B(state[0]), .C(state[1]), 
         .D(state[3]), .Z(n10192)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam state_2__bdd_4_lut_25790.init = 16'h8000;
    LUT4 i1_2_lut_rep_672 (.A(RESET_N_c), .B(n36113), .C(state[3]), .D(n35088), 
         .Z(n36137)) /* synthesis lut_function=(!((B (D)+!B (C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_672.init = 16'h008a;
    LUT4 mux_1484_i8_4_lut (.A(n4802), .B(state[3]), .C(n6663), .D(n25931), 
         .Z(n6678)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1484_i8_4_lut.init = 16'h3a30;
    LUT4 i1_2_lut_rep_673 (.A(RESET_N_c), .B(n36113), .C(state[3]), .D(n35088), 
         .Z(sys_clk_enable_352)) /* synthesis lut_function=(!((B (D)+!B (C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_673.init = 16'h008a;
    LUT4 idx_r1_3__bdd_3_lut_25710 (.A(idx_r1[3]), .B(idx_r1[0]), .C(idx_r1[1]), 
         .Z(n35253)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;
    defparam idx_r1_3__bdd_3_lut_25710.init = 16'hb4b4;
    LUT4 i9_4_lut (.A(n17_adj_1829), .B(osc_div[6]), .C(n16_adj_1831), 
         .D(osc_div[1]), .Z(n16991)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(167[16:33])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 rom_out_r3_3__N_48_2__bdd_4_lut_25672 (.A(rom_out_r3_3__N_48[2]), 
         .B(rom_out_r3_3__N_48[1]), .C(rom_out_r3_3__N_48[0]), .D(rom_out_r3_3__N_48[4]), 
         .Z(n9_adj_1685)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam rom_out_r3_3__N_48_2__bdd_4_lut_25672.init = 16'h0140;
    LUT4 i7_4_lut (.A(osc_div[0]), .B(osc_div[4]), .C(osc_div[5]), .D(osc_div[3]), 
         .Z(n17_adj_1829)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(167[16:33])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 rem_103_i351_3_lut_4_lut (.A(n34870), .B(n16699), .C(n499_adj_1778), 
         .D(n468_adj_1786), .Z(n513_adj_1769)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i351_3_lut_4_lut.init = 16'hf1e0;
    LUT4 rem_103_i350_3_lut_4_lut (.A(n34870), .B(n16699), .C(n498_adj_1779), 
         .D(n467_adj_1787), .Z(n512_adj_1770)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i350_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n26177_bdd_3_lut_then_4_lut (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(r2_active), .Z(n35260)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A !((C)+!B)) */ ;
    defparam n26177_bdd_3_lut_then_4_lut.init = 16'h8684;
    LUT4 mux_1484_i10_4_lut (.A(n4800), .B(state[3]), .C(n6663), .D(n25931), 
         .Z(n6676)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1484_i10_4_lut.init = 16'h3a30;
    LUT4 i22291_2_lut_rep_392_3_lut_4_lut (.A(n34945), .B(apuesta[8]), .C(n289), 
         .D(n34946), .Z(n34932)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i22291_2_lut_rep_392_3_lut_4_lut.init = 16'h0f1e;
    LUT4 mux_1484_i12_4_lut (.A(n4798), .B(state[3]), .C(n6663), .D(n25931), 
         .Z(n6674)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1484_i12_4_lut.init = 16'h3a30;
    CCU2D add_454_10 (.A0(bcd_val[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_val[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31031), .COUT(n31032), .S0(n4879), .S1(n4878));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(337[36:43])
    defparam add_454_10.INIT0 = 16'h5555;
    defparam add_454_10.INIT1 = 16'h5555;
    defparam add_454_10.INJECT1_0 = "NO";
    defparam add_454_10.INJECT1_1 = "NO";
    LUT4 i18266_2_lut_rep_393_3_lut_4_lut (.A(n34945), .B(apuesta[8]), .C(n289), 
         .D(n34946), .Z(n34933)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i18266_2_lut_rep_393_3_lut_4_lut.init = 16'hf0e0;
    LUT4 mod_105_i422_3_lut_4_lut (.A(n34859), .B(n16710), .C(n598), .D(n567), 
         .Z(n612)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i422_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2373_4_lut_3_lut_4_lut (.A(n31911), .B(n34850), .C(n33604), 
         .D(n34851), .Z(n6)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(239[40:45])
    defparam i2373_4_lut_3_lut_4_lut.init = 16'h8f08;
    LUT4 mux_1484_i13_4_lut (.A(n4797), .B(state[3]), .C(n6663), .D(n25931), 
         .Z(n6673)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1484_i13_4_lut.init = 16'h3a30;
    LUT4 rem_103_i357_3_lut_4_lut (.A(n34870), .B(n16699), .C(n505_adj_1772), 
         .D(n34872), .Z(n519_adj_1763)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i357_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_388_4_lut (.A(n1352), .B(n34953), .C(n150), .D(n33583), 
         .Z(n34928)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i1_2_lut_rep_388_4_lut.init = 16'hc13e;
    LUT4 i1_3_lut_4_lut_4_lut_else_2_lut (.A(state[1]), .B(blink_toggle), 
         .C(state[0]), .D(state[2]), .Z(n35204)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_4_lut_else_2_lut.init = 16'h0054;
    LUT4 i25157_3_lut_4_lut_then_4_lut (.A(state[1]), .B(state[3]), .C(tick_anim), 
         .D(state[0]), .Z(n35266)) /* synthesis lut_function=(A (B (D))+!A !(B+!(C))) */ ;
    defparam i25157_3_lut_4_lut_then_4_lut.init = 16'h9810;
    PFUMX state_3__I_0_426_Mux_9_i15 (.BLUT(n33390), .ALUT(n33398), .C0(state[3]), 
          .Z(input_temp_13__N_88[9]));
    LUT4 i25157_3_lut_4_lut_else_4_lut (.A(state[1]), .B(state[3]), .C(tick_anim), 
         .D(state[0]), .Z(n35265)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i25157_3_lut_4_lut_else_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_398_4_lut (.A(n1352), .B(n34953), .C(n150), .D(n337), 
         .Z(n34938)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i1_2_lut_rep_398_4_lut.init = 16'hc13e;
    LUT4 mux_1484_i18_4_lut (.A(n4792), .B(state[3]), .C(n6663), .D(n25931), 
         .Z(n6668)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1484_i18_4_lut.init = 16'h3a30;
    LUT4 mux_1484_i19_4_lut (.A(n4791), .B(state[3]), .C(n6663), .D(n25931), 
         .Z(n6667)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1484_i19_4_lut.init = 16'h3a30;
    CCU2D add_454_8 (.A0(bcd_val[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_val[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31030), .COUT(n31031), .S0(n4881), .S1(n4880));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(337[36:43])
    defparam add_454_8.INIT0 = 16'h5555;
    defparam add_454_8.INIT1 = 16'h5555;
    defparam add_454_8.INJECT1_0 = "NO";
    defparam add_454_8.INJECT1_1 = "NO";
    LUT4 i37_3_lut_4_lut_then_4_lut (.A(state[2]), .B(state[3]), .C(state[0]), 
         .D(RESET_N_c), .Z(n35269)) /* synthesis lut_function=(A (D)+!A !(B+!(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i37_3_lut_4_lut_then_4_lut.init = 16'hba00;
    LUT4 i37_3_lut_4_lut_else_4_lut (.A(state[3]), .B(RESET_N_c), .Z(n35268)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i37_3_lut_4_lut_else_4_lut.init = 16'h4444;
    PFUMX state_3__I_0_426_Mux_6_i15 (.BLUT(n33378), .ALUT(n33406), .C0(state[3]), 
          .Z(input_temp_13__N_88[6]));
    LUT4 i2_4_lut_then_3_lut (.A(n150), .B(n291), .C(n245), .Z(n35272)) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;
    defparam i2_4_lut_then_3_lut.init = 16'h5e5e;
    LUT4 i2_4_lut_else_3_lut (.A(n150), .B(n337), .C(n291), .D(n245), 
         .Z(n35271)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i2_4_lut_else_3_lut.init = 16'h800a;
    LUT4 i1_3_lut_4_lut_4_lut_else_2_lut_adj_132 (.A(state[1]), .B(state[2]), 
         .C(state[0]), .Z(n35274)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_else_2_lut_adj_132.init = 16'h1414;
    LUT4 i2690_4_lut_then_4_lut (.A(n36107), .B(n16919), .C(n521_adj_1762), 
         .D(n567_adj_1744), .Z(n35278)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i2690_4_lut_then_4_lut.init = 16'h1400;
    LUT4 i58_3_lut_4_lut_else_3_lut (.A(n5_adj_1876), .B(r2_active), .C(n34970), 
         .D(state[1]), .Z(n35280)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (D)+!B (C+(D))))) */ ;
    defparam i58_3_lut_4_lut_else_3_lut.init = 16'h0acf;
    LUT4 i6_4_lut_adj_133 (.A(osc_div[14]), .B(osc_div[7]), .C(osc_div[2]), 
         .D(osc_div[9]), .Z(n16_adj_1831)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(167[16:33])
    defparam i6_4_lut_adj_133.init = 16'hfffe;
    LUT4 rem_103_i352_3_lut_4_lut (.A(n34870), .B(n16699), .C(n500_adj_1777), 
         .D(n469_adj_1785), .Z(n514_adj_1768)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i352_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i16425 (.BLUT(n45), .ALUT(n33460), .C0(n35080), .Z(n8637));
    LUT4 rem_103_i353_3_lut_4_lut (.A(n34870), .B(n16699), .C(n501_adj_1776), 
         .D(n470_adj_1784), .Z(n515_adj_1767)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i353_3_lut_4_lut.init = 16'hf1e0;
    LUT4 rem_103_i354_3_lut_4_lut (.A(n34870), .B(n16699), .C(n502_adj_1775), 
         .D(n471_adj_1783), .Z(n516_adj_1766)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i354_3_lut_4_lut.init = 16'hf1e0;
    LUT4 state_3__I_0_426_Mux_0_i15_4_lut_else_4_lut_4_lut (.A(state[0]), 
         .B(n26833), .C(n27041), .D(key_code[0]), .Z(n35223)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam state_3__I_0_426_Mux_0_i15_4_lut_else_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_665 (.A(state[0]), .B(state[1]), .C(n16994), .D(n14), 
         .Z(n36111)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_665.init = 16'h0002;
    LUT4 i58_3_lut_4_lut_then_3_lut_2_lut (.A(state[0]), .B(state[1]), .Z(n35281)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i58_3_lut_4_lut_then_3_lut_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_rep_666 (.A(state[2]), .B(state[1]), .C(state[3]), .D(RESET_N_c), 
         .Z(n36112)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i1_3_lut_rep_666.init = 16'h8f00;
    PFUMX state_3__I_0_426_Mux_4_i15 (.BLUT(n33376), .ALUT(n33403), .C0(state[3]), 
          .Z(input_temp_13__N_88[4]));
    LUT4 i16391_4_lut (.A(n8581), .B(n35013), .C(n35080), .D(n35142), 
         .Z(n8634)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i16391_4_lut.init = 16'hf5c5;
    LUT4 i18334_1_lut (.A(n26941), .Z(n26942)) /* synthesis lut_function=(!(A)) */ ;
    defparam i18334_1_lut.init = 16'h5555;
    PFUMX state_3__I_0_426_Mux_5_i15 (.BLUT(n33369), .ALUT(n33407), .C0(state[3]), 
          .Z(input_temp_13__N_88[5]));
    LUT4 i1_2_lut_adj_134 (.A(blink_toggle), .B(osc_div_25__N_499), .Z(blink_toggle_N_1150)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_134.init = 16'h6666;
    LUT4 n33636_bdd_3_lut (.A(state[0]), .B(SW_MODE_c), .C(n5390), .Z(n34581)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;
    defparam n33636_bdd_3_lut.init = 16'h1919;
    LUT4 i22288_2_lut_rep_396_3_lut_4_lut_4_lut (.A(n35022), .B(apuesta[9]), 
         .C(n34960), .D(apuesta[8]), .Z(n34936)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i22288_2_lut_rep_396_3_lut_4_lut_4_lut.init = 16'hffbe;
    LUT4 rem_103_i484_3_lut_4_lut (.A(n659), .B(n34852), .C(n662_adj_1715), 
         .D(n657_adj_1714), .Z(n1381)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam rem_103_i484_3_lut_4_lut.init = 16'h1fe0;
    LUT4 rem_103_i355_3_lut_4_lut (.A(n34870), .B(n16699), .C(n503_adj_1774), 
         .D(n472_adj_1782), .Z(n517_adj_1765)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i355_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5333_3_lut_rep_397_4_lut (.A(n291), .B(n34952), .C(n337), .D(n34943), 
         .Z(n34937)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i5333_3_lut_rep_397_4_lut.init = 16'h6066;
    LUT4 i1_2_lut_3_lut_4_lut_adj_135 (.A(n291), .B(n34952), .C(n34943), 
         .D(n337), .Z(n5007)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i1_2_lut_3_lut_4_lut_adj_135.init = 16'h9969;
    LUT4 i1_3_lut_rep_399_4_lut (.A(n291), .B(n34952), .C(n34943), .D(n337), 
         .Z(n34939)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i1_3_lut_rep_399_4_lut.init = 16'h9666;
    LUT4 i15838_4_lut (.A(n24021), .B(n35013), .C(n35080), .D(n35120), 
         .Z(n8621)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i15838_4_lut.init = 16'hf5c5;
    LUT4 state_3__bdd_4_lut_25412 (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(blink_toggle), .Z(n34583)) /* synthesis lut_function=(A+(B (C)+!B !(C+!(D)))) */ ;
    defparam state_3__bdd_4_lut_25412.init = 16'hebea;
    LUT4 n662_bdd_4_lut_25741 (.A(rom_out_r3_3__N_48[1]), .B(rom_out_r3_3__N_48[4]), 
         .C(rom_out_r3_3__N_48[0]), .D(rom_out_r3_3__N_48[2]), .Z(n35614)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (D)) */ ;
    defparam n662_bdd_4_lut_25741.init = 16'hdf20;
    PFUMX state_3__I_0_428_Mux_2_i15 (.BLUT(n33389), .ALUT(n14_adj_1860), 
          .C0(state[3]), .Z(i_cen_3__N_122[2]));
    LUT4 n34583_bdd_2_lut (.A(n34583), .B(state[3]), .Z(L1_Buffer_127__N_785[42])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n34583_bdd_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_326_3_lut (.A(n34869), .B(n519), .C(n16709), .Z(n34866)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_326_3_lut.init = 16'hf8f8;
    LUT4 mod_105_i423_3_lut_4_lut (.A(n34859), .B(n16710), .C(n599), .D(apuesta[2]), 
         .Z(n613)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i423_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n662_bdd_4_lut (.A(n662), .B(n34854), .C(n658), .D(apuesta[0]), 
         .Z(n35615)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A (C)) */ ;
    defparam n662_bdd_4_lut.init = 16'hf0d2;
    FD1P3IX L2_Buffer__i25 (.D(n8492), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[34]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i25.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_136 (.A(n35171), .B(state[0]), .C(n33524), .D(n35282), 
         .Z(sys_clk_enable_339)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_136.init = 16'ha8a0;
    LUT4 i18424_2_lut_3_lut (.A(n659), .B(n34852), .C(n657_adj_1714), 
         .Z(n27033)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i18424_2_lut_3_lut.init = 16'he0e0;
    LUT4 i2_3_lut_4_lut (.A(n31911), .B(n34850), .C(n33604), .D(n34851), 
         .Z(n16799)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(239[40:45])
    defparam i2_3_lut_4_lut.init = 16'h7887;
    PFUMX i16554 (.BLUT(n33382), .ALUT(n33421), .C0(state[3]), .Z(i_dec_3__N_126[2]));
    LUT4 i17583_2_lut_rep_409 (.A(state[3]), .B(n36108), .Z(n34949)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i17583_2_lut_rep_409.init = 16'heeee;
    FD1P3IX L2_Buffer__i26 (.D(n8491), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[35]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i26.GSR = "DISABLED";
    LUT4 n662_bdd_2_lut (.A(n662), .B(apuesta[0]), .Z(n35625)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam n662_bdd_2_lut.init = 16'h6666;
    FD1P3JX L2_Buffer__i28 (.D(n26924), .SP(sys_clk_enable_302), .PD(n28411), 
            .CK(sys_clk), .Q(L2_Buffer[37]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i28.GSR = "DISABLED";
    LUT4 mod_105_i388_3_lut_4_lut_4_lut (.A(n34869), .B(n519), .C(n550), 
         .D(n16709), .Z(n564)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_105_i388_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i1_4_lut_4_lut_adj_137 (.A(state[3]), .B(n36108), .C(n31316), 
         .D(n32), .Z(sys_clk_enable_117)) /* synthesis lut_function=(A (C+(D))+!A (B)) */ ;
    defparam i1_4_lut_4_lut_adj_137.init = 16'heee4;
    LUT4 n662_bdd_2_lut_25747 (.A(rom_out_r3_3__N_48[4]), .B(rom_out_r3_3__N_48[0]), 
         .Z(n35624)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam n662_bdd_2_lut_25747.init = 16'h9999;
    LUT4 rem_103_i454_3_lut_rep_312 (.A(n613_adj_1721), .B(n644_adj_1713), 
         .C(n617_adj_1720), .Z(n34852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i454_3_lut_rep_312.init = 16'hcaca;
    LUT4 rem_103_i165_3_lut_rep_401_4_lut_3_lut (.A(n1352), .B(n150), .C(n149), 
         .Z(n34941)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam rem_103_i165_3_lut_rep_401_4_lut_3_lut.init = 16'h8c8c;
    FD1P3IX L2_Buffer__i29 (.D(n12_adj_1674), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[38]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i29.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_400_3_lut_3_lut (.A(n1352), .B(n150), .C(n149), 
         .Z(n34940)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i1_2_lut_rep_400_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i2_3_lut_rep_329 (.A(n520), .B(apuesta[3]), .C(n521), .Z(n34869)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_329.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_138 (.A(n1352), .B(n150), .C(n149), .Z(n242_adj_1820)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_138.init = 16'h1010;
    LUT4 n35954_bdd_4_lut (.A(n35954), .B(n35081), .C(n34989), .D(n35172), 
         .Z(n36105)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n35954_bdd_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_adj_139 (.A(state[2]), .B(n48_adj_1889), .Z(n32534)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_adj_139.init = 16'h4444;
    LUT4 i18274_2_lut_rep_328_4_lut (.A(n520), .B(apuesta[3]), .C(n521), 
         .D(n519), .Z(n34868)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i18274_2_lut_rep_328_4_lut.init = 16'hfe00;
    LUT4 mux_333_Mux_12_i15_4_lut (.A(n150), .B(n2068), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[12])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_12_i15_4_lut.init = 16'h0aca;
    LUT4 i64_4_lut (.A(B_input[0]), .B(n33313), .C(alu_opA[0]), .D(n33487), 
         .Z(n48_adj_1889)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i64_4_lut.init = 16'hda80;
    CCU2D add_3212_add_1_12 (.A0(input_temp[10]), .B0(input_temp[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31149), .S0(n3_adj_1708));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3212_add_1_12.INIT0 = 16'h5666;
    defparam add_3212_add_1_12.INIT1 = 16'h0000;
    defparam add_3212_add_1_12.INJECT1_0 = "NO";
    defparam add_3212_add_1_12.INJECT1_1 = "NO";
    LUT4 i22460_2_lut_rep_310 (.A(n659), .B(n662_adj_1715), .Z(n34850)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i22460_2_lut_rep_310.init = 16'h6666;
    LUT4 i1_2_lut_rep_667 (.A(state[2]), .B(state[1]), .Z(n36113)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_667.init = 16'h8888;
    LUT4 i1_3_lut_rep_577 (.A(j_mil[1]), .B(j_mil[3]), .C(j_mil[2]), .Z(n35117)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(99[12:17])
    defparam i1_3_lut_rep_577.init = 16'hc8c8;
    LUT4 i1_2_lut_rep_395_4_lut_4_lut_4_lut (.A(n1352), .B(n150), .C(n149), 
         .D(n245), .Z(n34935)) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_rep_395_4_lut_4_lut_4_lut.init = 16'h8c08;
    LUT4 i1_2_lut_rep_560_4_lut (.A(j_mil[1]), .B(j_mil[3]), .C(j_mil[2]), 
         .D(j_mil[0]), .Z(n35100)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(99[12:17])
    defparam i1_2_lut_rep_560_4_lut.init = 16'h3700;
    LUT4 rom_out_r1_1__bdd_4_lut (.A(rom_out_r1[1]), .B(rom_out_r1[3]), 
         .C(n35816), .D(n35013), .Z(n36106)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam rom_out_r1_1__bdd_4_lut.init = 16'h22f0;
    LUT4 i25221_4_lut_rep_410 (.A(RESET_N_c), .B(n25931), .C(n6663), .D(n9_adj_1878), 
         .Z(sys_clk_enable_324)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;
    defparam i25221_4_lut_rep_410.init = 16'h88a8;
    LUT4 n34989_bdd_3_lut_25880 (.A(j_cen[3]), .B(j_cen[1]), .C(blink_toggle), 
         .Z(n35813)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam n34989_bdd_3_lut_25880.init = 16'hf4f4;
    LUT4 n35013_bdd_2_lut_25883 (.A(i_cen[1]), .B(i_cen[3]), .Z(n35816)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n35013_bdd_2_lut_25883.init = 16'h2222;
    LUT4 i10607_3_lut_4_lut (.A(RESET_N_c), .B(n25931), .C(n6663), .D(n9_adj_1878), 
         .Z(n19215)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam i10607_3_lut_4_lut.init = 16'h80a0;
    PFUMX i25340 (.BLUT(n34452), .ALUT(n35041), .C0(n35172), .Z(n34453));
    LUT4 i14782_3_lut_4_lut (.A(n5390), .B(SW_MODE_c), .C(state[3]), .D(n9_adj_1875), 
         .Z(n23400)) /* synthesis lut_function=(!(A (C (D))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(232[21:67])
    defparam i14782_3_lut_4_lut.init = 16'h0bfb;
    CCU2D add_3212_add_1_10 (.A0(input_temp[8]), .B0(input_temp[10]), .C0(GND_net), 
          .D0(GND_net), .A1(input_temp[9]), .B1(input_temp[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31148), .COUT(n31149), .S0(n5), .S1(n4_adj_1686));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3212_add_1_10.INIT0 = 16'h5666;
    defparam add_3212_add_1_10.INIT1 = 16'h5666;
    defparam add_3212_add_1_10.INJECT1_0 = "NO";
    defparam add_3212_add_1_10.INJECT1_1 = "NO";
    LUT4 n5390_bdd_1_lut_25421_3_lut (.A(n46), .B(n31_adj_1879), .C(state[3]), 
         .Z(n34642)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam n5390_bdd_1_lut_25421_3_lut.init = 16'h3535;
    LUT4 mux_1660_i1_3_lut (.A(apuesta[0]), .B(osc_div[0]), .C(n27109), 
         .Z(n7939)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_1660_i1_3_lut.init = 16'hacac;
    LUT4 mux_239_i1_3_lut (.A(jackpot[0]), .B(apuesta[0]), .C(n27109), 
         .Z(n2044)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i1_3_lut.init = 16'hacac;
    LUT4 i2_3_lut_rep_661 (.A(n33597), .B(n16919), .C(n34902), .Z(n36107)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut_rep_661.init = 16'h9696;
    LUT4 i1_2_lut_adj_140 (.A(tick_1s), .B(r2_active_N_1169), .Z(n7944)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_adj_140.init = 16'h8888;
    LUT4 mod_105_i415_3_lut_4_lut (.A(n34859), .B(n16710), .C(n591), .D(n560), 
         .Z(n605)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i415_3_lut_4_lut.init = 16'hf1e0;
    LUT4 rom_out_r2_3__N_42_1__bdd_3_lut (.A(rom_out_r2_3__N_42[1]), .B(idx_r2[3]), 
         .C(rom_out_r2_3__N_42[0]), .Z(n10_adj_1883)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam rom_out_r2_3__N_42_1__bdd_3_lut.init = 16'h1010;
    LUT4 mod_105_i484_3_lut_4_lut (.A(n658), .B(n34853), .C(n662), .D(n657), 
         .Z(idx_r3_3__N_700[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i484_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_2_lut_adj_141 (.A(RESET_N_c), .B(n5_adj_1872), .Z(sys_clk_enable_401)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_141.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_else_2_lut (.A(state[0]), .B(state[2]), .C(state[3]), 
         .D(blink_toggle), .Z(n35207)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_3_lut_4_lut_else_2_lut.init = 16'h5d5c;
    LUT4 mod_105_i198_3_lut_rep_406_4_lut (.A(n34977), .B(n242), .C(apuesta[9]), 
         .D(n35022), .Z(n34946)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i198_3_lut_rep_406_4_lut.init = 16'hf10e;
    LUT4 i25133_4_lut (.A(n35153), .B(sys_clk_enable_98), .C(n5418), .D(state[3]), 
         .Z(sys_clk_enable_346)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B)) */ ;
    defparam i25133_4_lut.init = 16'hc4cc;
    LUT4 state_3__I_0_430_Mux_0_i15_4_lut (.A(n35223), .B(n5418), .C(state[3]), 
         .D(n33531), .Z(i_uni_3__N_130[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam state_3__I_0_430_Mux_0_i15_4_lut.init = 16'hca0a;
    LUT4 i22280_2_lut_rep_402_3_lut_4_lut (.A(n34977), .B(n242), .C(apuesta[8]), 
         .D(apuesta[9]), .Z(n34942)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i22280_2_lut_rep_402_3_lut_4_lut.init = 16'hf1fe;
    LUT4 i2519_2_lut_rep_412 (.A(n150), .B(n1352), .Z(n34952)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i2519_2_lut_rep_412.init = 16'h8888;
    LUT4 i10515_2_lut_2_lut_3_lut_4_lut (.A(state[2]), .B(state[1]), .C(state[3]), 
         .D(RESET_N_c), .Z(n19121)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10515_2_lut_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_1587_i8_3_lut_4_lut (.A(state[3]), .B(n7631), .C(state[2]), 
         .D(alu_sum_res[7]), .Z(jackpot_15__N_58[7])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1587_i8_3_lut_4_lut.init = 16'h7f08;
    LUT4 i2_3_lut_4_lut_adj_142 (.A(n150), .B(n1352), .C(n291), .D(n245), 
         .Z(n16831)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i2_3_lut_4_lut_adj_142.init = 16'hf708;
    CCU2D add_3212_add_1_8 (.A0(input_temp[6]), .B0(input_temp[8]), .C0(GND_net), 
          .D0(GND_net), .A1(input_temp[7]), .B1(input_temp[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31147), .COUT(n31148), .S0(n7), .S1(n6_adj_1672));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3212_add_1_8.INIT0 = 16'h5666;
    defparam add_3212_add_1_8.INIT1 = 16'h5666;
    defparam add_3212_add_1_8.INJECT1_0 = "NO";
    defparam add_3212_add_1_8.INJECT1_1 = "NO";
    CCU2D add_3212_add_1_6 (.A0(input_temp[4]), .B0(input_temp[6]), .C0(GND_net), 
          .D0(GND_net), .A1(input_temp[5]), .B1(input_temp[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31146), .COUT(n31147), .S0(n9), .S1(n8));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3212_add_1_6.INIT0 = 16'h5666;
    defparam add_3212_add_1_6.INIT1 = 16'h5666;
    defparam add_3212_add_1_6.INJECT1_0 = "NO";
    defparam add_3212_add_1_6.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_668 (.A(state[0]), .B(state[1]), .Z(n36114)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_668.init = 16'h8888;
    LUT4 i25149_3_lut_rep_580 (.A(i_mil[2]), .B(i_mil[3]), .C(i_mil[1]), 
         .Z(n35120)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[12:17])
    defparam i25149_3_lut_rep_580.init = 16'h3737;
    LUT4 n5390_bdd_3_lut_25479 (.A(n5390), .B(state[0]), .C(SW_MODE_c), 
         .Z(n34645)) /* synthesis lut_function=(A (B+(C))+!A !(B (C)+!B !(C))) */ ;
    defparam n5390_bdd_3_lut_25479.init = 16'hbcbc;
    LUT4 i5275_3_lut_4_lut_rep_413 (.A(n150), .B(n1352), .C(n291), .D(n245), 
         .Z(n34953)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i5275_3_lut_4_lut_rep_413.init = 16'hf700;
    LUT4 mod_105_i414_3_lut_4_lut (.A(n34859), .B(n16710), .C(n590), .D(n559), 
         .Z(n604)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i414_3_lut_4_lut.init = 16'hf1e0;
    LUT4 rem_103_i356_3_lut_4_lut_4_lut (.A(n34871), .B(n473_adj_1781), 
         .C(n504_adj_1773), .D(n16699), .Z(n518_adj_1764)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam rem_103_i356_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i18435_2_lut_3_lut_4_lut (.A(apuesta[0]), .B(n34854), .C(n657), 
         .D(n658), .Z(n27045)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i18435_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i18410_2_lut_rep_330_3_lut (.A(n475_adj_1780), .B(n34872), .C(n473_adj_1781), 
         .Z(n34870)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i18410_2_lut_rep_330_3_lut.init = 16'he0e0;
    LUT4 i25170_4_lut_then_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(tick_anim), 
         .D(state[3]), .Z(n35202)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam i25170_4_lut_then_3_lut_4_lut.init = 16'h88f0;
    LUT4 i3_4_lut (.A(state[3]), .B(n62), .C(n46_adj_1694), .D(n33484), 
         .Z(n33486)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_582 (.A(i_mil[1]), .B(i_mil[3]), .Z(n35122)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_582.init = 16'h2222;
    LUT4 mod_105_i418_3_lut_4_lut (.A(n34859), .B(n16710), .C(n594), .D(n563), 
         .Z(n608)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i418_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17889_2_lut_3_lut (.A(i_mil[1]), .B(i_mil[3]), .C(r2_active), 
         .Z(n8474)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i17889_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i10556_2_lut_3_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(n35171), .Z(n19156)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i10556_2_lut_3_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i14_3_lut_rep_403_4_lut (.A(n150), .B(n1352), .C(n291), .D(n245), 
         .Z(n34943)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !(B+(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i14_3_lut_rep_403_4_lut.init = 16'ha211;
    LUT4 i1_2_lut_rep_327_3_lut_4_lut (.A(n475_adj_1780), .B(n34872), .C(n16699), 
         .D(n473_adj_1781), .Z(n34867)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_327_3_lut_4_lut.init = 16'hfef0;
    LUT4 n26177_bdd_3_lut_else_4_lut_4_lut (.A(SW_MODE_c), .B(state[0]), 
         .C(n5380), .D(n35135), .Z(n36108)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (((D)+!C)+!B))) */ ;
    defparam n26177_bdd_3_lut_else_4_lut_4_lut.init = 16'h00e2;
    LUT4 i1_3_lut_4_lut (.A(delay_timer[2]), .B(n34962), .C(n35165), .D(delay_timer[3]), 
         .Z(delay_timer_4__N_1092[3])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(251[21] 254[28])
    defparam i1_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_4_lut_adj_143 (.A(r2_active), .B(n35005), .C(n35000), .D(n35120), 
         .Z(n9127)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C))) */ ;
    defparam i1_4_lut_adj_143.init = 16'hdcfc;
    LUT4 i1_2_lut_3_lut_adj_144 (.A(state[2]), .B(n27109), .C(apuesta[13]), 
         .Z(n33438)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_144.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_145 (.A(state[2]), .B(n27109), .C(apuesta[12]), 
         .Z(n33440)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_145.init = 16'h4040;
    LUT4 i15573_4_lut (.A(n8659), .B(n35120), .C(n35172), .D(n34991), 
         .Z(n9128)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i15573_4_lut.init = 16'hca0a;
    LUT4 i2690_4_lut_else_4_lut_4_lut (.A(n33597), .B(n16919), .C(n34902), 
         .D(n521_adj_1762), .Z(n35277)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam i2690_4_lut_else_4_lut_4_lut.init = 16'h7bed;
    LUT4 mux_1875_i46_4_lut (.A(n35030), .B(n33423), .C(n35172), .D(n33538), 
         .Z(n9131)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i46_4_lut.init = 16'h0aca;
    PFUMX i10010 (.BLUT(n33372), .ALUT(n14170), .C0(state[3]), .Z(i_mil_3__N_118[0]));
    LUT4 LEDS_0_bdd_2_lut_25869 (.A(n35953), .B(rom_out_r3_3__N_48[2]), 
         .Z(n35954)) /* synthesis lut_function=(A (B)) */ ;
    defparam LEDS_0_bdd_2_lut_25869.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_146 (.A(state[2]), .B(n27109), .C(apuesta[11]), 
         .Z(n33439)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_146.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_147 (.A(state[2]), .B(n27109), .C(apuesta[10]), 
         .Z(n33437)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_147.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_148 (.A(state[2]), .B(n27109), .C(apuesta[9]), 
         .Z(n33447)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_148.init = 16'h4040;
    LUT4 rom_out_r3_3__N_48_2__bdd_4_lut (.A(rom_out_r3_3__N_48[4]), .B(state[3]), 
         .C(RESET_N_c), .D(n35162), .Z(n35953)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam rom_out_r3_3__N_48_2__bdd_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_adj_149 (.A(state[2]), .B(n27109), .C(apuesta[8]), 
         .Z(n33446)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_149.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_150 (.A(state[2]), .B(n27109), .C(apuesta[7]), 
         .Z(n33445)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_150.init = 16'h4040;
    PFUMX i16415 (.BLUT(n33527), .ALUT(n8545), .C0(n35080), .Z(n8638));
    LUT4 i1_2_lut_3_lut_adj_151 (.A(state[2]), .B(n27109), .C(apuesta[6]), 
         .Z(n33443)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_151.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_152 (.A(state[2]), .B(n27109), .C(apuesta[5]), 
         .Z(n33444)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_152.init = 16'h4040;
    LUT4 i1_2_lut_adj_153 (.A(i_mil[2]), .B(i_mil[3]), .Z(n33423)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam i1_2_lut_adj_153.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_154 (.A(state[2]), .B(n27109), .C(jackpot[15]), 
         .Z(n33442)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_154.init = 16'h4040;
    CCU2D add_3212_add_1_4 (.A0(input_temp[2]), .B0(input_temp[4]), .C0(GND_net), 
          .D0(GND_net), .A1(input_temp[3]), .B1(input_temp[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31145), .COUT(n31146), .S0(n11), .S1(n10));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3212_add_1_4.INIT0 = 16'h5666;
    defparam add_3212_add_1_4.INIT1 = 16'h5666;
    defparam add_3212_add_1_4.INJECT1_0 = "NO";
    defparam add_3212_add_1_4.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_155 (.A(state[2]), .B(n27109), .C(jackpot[14]), 
         .Z(n33441)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_155.init = 16'h4040;
    LUT4 i15269_3_lut_4_lut (.A(n34964), .B(n35030), .C(n35172), .D(n34989), 
         .Z(n27035)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i15269_3_lut_4_lut.init = 16'hf101;
    CCU2D add_3212_add_1_2 (.A0(input_temp[0]), .B0(input_temp[2]), .C0(GND_net), 
          .D0(GND_net), .A1(input_temp[1]), .B1(input_temp[3]), .C1(GND_net), 
          .D1(GND_net), .COUT(n31145), .S1(n12));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3212_add_1_2.INIT0 = 16'h7000;
    defparam add_3212_add_1_2.INIT1 = 16'h5666;
    defparam add_3212_add_1_2.INJECT1_0 = "NO";
    defparam add_3212_add_1_2.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_156 (.A(n35190), .B(n34967), .C(n35000), .D(r2_active), 
         .Z(n9134)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_4_lut_adj_156.init = 16'hecfc;
    LUT4 i41_4_lut (.A(n24_adj_1676), .B(n21), .C(state[1]), .D(n48), 
         .Z(sys_clk_enable_356)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C (D))))) */ ;
    defparam i41_4_lut.init = 16'h35f5;
    LUT4 i1_3_lut_4_lut_adj_157 (.A(i_dec[1]), .B(n34965), .C(i_dec[2]), 
         .D(n35153), .Z(n33421)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(336[21] 342[28])
    defparam i1_3_lut_4_lut_adj_157.init = 16'h7800;
    LUT4 i20_4_lut (.A(n35012), .B(n34991), .C(n35172), .D(n35190), 
         .Z(n32850)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i20_4_lut.init = 16'h05c5;
    LUT4 mod_105_i419_3_lut_4_lut (.A(n34859), .B(n16710), .C(n595), .D(n564), 
         .Z(n609)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i419_3_lut_4_lut.init = 16'hf1e0;
    CCU2D add_454_6 (.A0(bcd_val[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_val[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31029), .COUT(n31030), .S0(n4883), .S1(n4882));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(337[36:43])
    defparam add_454_6.INIT0 = 16'h5555;
    defparam add_454_6.INIT1 = 16'h5555;
    defparam add_454_6.INJECT1_0 = "NO";
    defparam add_454_6.INJECT1_1 = "NO";
    LUT4 mux_1875_i40_4_lut (.A(n34987), .B(n16460), .C(n35172), .D(n35015), 
         .Z(n9137)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i40_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_adj_158 (.A(r2_active), .B(i_cen[3]), .Z(n16460)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_158.init = 16'hdddd;
    LUT4 i42_4_lut (.A(n34582), .B(state[2]), .C(state[3]), .D(n120_adj_1830), 
         .Z(n24_adj_1676)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i42_4_lut.init = 16'hca0a;
    LUT4 i18237_2_lut_rep_331_4_lut (.A(n429_adj_1796), .B(n460_adj_1788), 
         .C(n34874), .D(n475_adj_1780), .Z(n34871)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i18237_2_lut_rep_331_4_lut.init = 16'hffca;
    LUT4 i1_2_lut_4_lut_then_4_lut (.A(state[0]), .B(state[3]), .C(state[2]), 
         .D(r2_active), .Z(n35211)) /* synthesis lut_function=(A (B (C))+!A !((C+(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_then_4_lut.init = 16'h8084;
    LUT4 state_3__I_0_425_Mux_0_i15_4_lut (.A(state[0]), .B(state[3]), .C(n35090), 
         .D(n36113), .Z(state_3__N_54[0])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam state_3__I_0_425_Mux_0_i15_4_lut.init = 16'h1255;
    LUT4 mux_1875_i39_4_lut (.A(n34987), .B(n8480), .C(n35172), .D(n35015), 
         .Z(n9138)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i39_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_376_2_lut (.A(n291), .B(n301), .Z(n34916)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_rep_376_2_lut.init = 16'h9999;
    LUT4 rem_103_i261_4_lut_3_lut_rep_372_4_lut_4_lut (.A(n291), .B(n337), 
         .C(n34900), .D(n301), .Z(n34912)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (D)+!B (C (D)+!C !(D)))) */ ;
    defparam rem_103_i261_4_lut_3_lut_rep_372_4_lut_4_lut.init = 16'ha956;
    LUT4 i2_4_lut_then_4_lut (.A(n35028), .B(rom_out_r3[3]), .C(idx_r2[2]), 
         .D(idx_r2[3]), .Z(n36127)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C+(D)))) */ ;
    defparam i2_4_lut_then_4_lut.init = 16'heeed;
    LUT4 mod_105_i455_3_lut_rep_314 (.A(apuesta[1]), .B(n645), .C(n617), 
         .Z(n34854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i455_3_lut_rep_314.init = 16'hcaca;
    LUT4 i18141_2_lut_3_lut_4_lut (.A(n242_adj_1820), .B(n34935), .C(n291), 
         .D(n245), .Z(n22_adj_1906)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i18141_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 i1_2_lut_rep_464_3_lut_4_lut (.A(state[2]), .B(n36114), .C(n35172), 
         .D(state[3]), .Z(n35004)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_464_3_lut_4_lut.init = 16'h70f0;
    LUT4 i22362_2_lut_rep_367_3_lut_4_lut_4_lut (.A(n291), .B(n337), .C(n335_adj_1810), 
         .D(n301), .Z(n34907)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (B (C)+!B !(C (D)+!C !(D))))) */ ;
    defparam i22362_2_lut_rep_367_3_lut_4_lut_4_lut.init = 16'h1e2d;
    LUT4 i18207_2_lut_3_lut_4_lut (.A(idx_r2[3]), .B(idx_r2[2]), .C(rom_out_r2_3__N_42[1]), 
         .D(rom_out_r2_3__N_42[0]), .Z(rom_out_r2[0])) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(150[49:51])
    defparam i18207_2_lut_3_lut_4_lut.init = 16'h1043;
    LUT4 mod_105_i355_3_lut_4_lut (.A(n34873), .B(n16708), .C(n503), .D(n472), 
         .Z(n517)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i355_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17906_2_lut_3_lut (.A(j_dec[0]), .B(n35141), .C(blink_toggle), 
         .Z(n8586)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(99[26:31])
    defparam i17906_2_lut_3_lut.init = 16'hf2f2;
    LUT4 mux_458_Mux_0_i31_4_lut_4_lut_4_lut (.A(idx_r2[3]), .B(idx_r2[2]), 
         .C(rom_out_r2_3__N_42[1]), .D(rom_out_r2_3__N_42[0]), .Z(n31_adj_1701)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(150[49:51])
    defparam mux_458_Mux_0_i31_4_lut_4_lut_4_lut.init = 16'h10cb;
    LUT4 mux_1587_i7_3_lut_4_lut (.A(state[3]), .B(n7631), .C(state[2]), 
         .D(alu_sum_res[6]), .Z(jackpot_15__N_58[6])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1587_i7_3_lut_4_lut.init = 16'h7f08;
    LUT4 i18134_2_lut_rep_369_2_lut_3_lut_3_lut (.A(n291), .B(n337), .C(n301), 
         .Z(n34909)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;
    defparam i18134_2_lut_rep_369_2_lut_3_lut_3_lut.init = 16'h1212;
    LUT4 i18136_2_lut_rep_365_3_lut_3_lut_4_lut_4_lut (.A(n291), .B(n335_adj_1810), 
         .C(n337), .D(n301), .Z(n34905)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))))) */ ;
    defparam i18136_2_lut_rep_365_3_lut_3_lut_4_lut_4_lut.init = 16'h373b;
    LUT4 i1_2_lut_4_lut_else_4_lut (.A(state[0]), .B(state[3]), .C(state[2]), 
         .Z(n35210)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_4_lut_else_4_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_313_4_lut (.A(apuesta[1]), .B(n645), .C(n617), .D(apuesta[0]), 
         .Z(n34853)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i1_2_lut_rep_313_4_lut.init = 16'hffca;
    LUT4 idx_r2_2__bdd_4_lut (.A(idx_r2[2]), .B(idx_r2[3]), .C(rom_out_r2_3__N_42[0]), 
         .D(rom_out_r2_3__N_42[1]), .Z(n36046)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam idx_r2_2__bdd_4_lut.init = 16'h9aaa;
    FD1P3IX L2_Buffer__i31 (.D(n8487), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[41]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i31.GSR = "DISABLED";
    LUT4 mod_105_i350_3_lut_4_lut (.A(n34873), .B(n16708), .C(n498), .D(n467), 
         .Z(n512)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i350_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_105_i353_3_lut_4_lut (.A(n34873), .B(n16708), .C(n501), .D(n470), 
         .Z(n515)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i353_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX L2_Buffer__i32 (.D(n33496), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[42]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i32.GSR = "DISABLED";
    LUT4 rem_103_i412_3_lut_4_lut (.A(n34855), .B(n16701), .C(n588_adj_1743), 
         .D(n557), .Z(n602_adj_1732)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i412_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i22364_2_lut_rep_368_3_lut_4_lut_4_lut (.A(n291), .B(n337), .C(n335_adj_1810), 
         .D(n301), .Z(n34908)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i22364_2_lut_rep_368_3_lut_4_lut_4_lut.init = 16'he0d0;
    LUT4 mod_105_i351_3_lut_4_lut (.A(n34873), .B(n16708), .C(n499), .D(n468), 
         .Z(n513)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i351_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i22359_2_lut_rep_371_3_lut_3_lut (.A(n291), .B(n337), .C(n301), 
         .Z(n34911)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;
    defparam i22359_2_lut_rep_371_3_lut_3_lut.init = 16'heded;
    FD1P3IX L2_Buffer__i33 (.D(n8485), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[43]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i33.GSR = "DISABLED";
    LUT4 mod_105_i354_3_lut_4_lut (.A(n34873), .B(n16708), .C(n502), .D(n471), 
         .Z(n516)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i354_3_lut_4_lut.init = 16'hf1e0;
    LUT4 idx_r1_2__bdd_4_lut (.A(idx_r1[2]), .B(idx_r1[3]), .C(idx_r1[0]), 
         .D(idx_r1[1]), .Z(n36069)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam idx_r1_2__bdd_4_lut.init = 16'h9aaa;
    LUT4 i4_4_lut (.A(n424_adj_1799), .B(n422_adj_1801), .C(n426_adj_1798), 
         .D(n6_adj_1828), .Z(n16698)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_159 (.A(n2483), .B(n34967), .C(n35000), .D(r2_active), 
         .Z(n9140)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_4_lut_adj_159.init = 16'hecfc;
    FD1P3JX L2_Buffer__i35 (.D(n26926), .SP(sys_clk_enable_302), .PD(n28411), 
            .CK(sys_clk), .Q(L2_Buffer[45]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i35.GSR = "DISABLED";
    PFUMX i25519 (.BLUT(n35201), .ALUT(n35202), .C0(state[2]), .Z(sys_clk_enable_252));
    FD1P3AX L2_Buffer__i36 (.D(n31679), .SP(sys_clk_enable_302), .CK(sys_clk), 
            .Q(L2_Buffer[46]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i36.GSR = "DISABLED";
    LUT4 mod_105_i416_3_lut_4_lut (.A(n34859), .B(n16710), .C(n592), .D(n561), 
         .Z(n606)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i416_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_105_i357_3_lut_4_lut (.A(n34873), .B(n16708), .C(n505), .D(n474), 
         .Z(n519)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i357_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_105_i412_3_lut_4_lut (.A(n34859), .B(n16710), .C(n588), .D(n34864), 
         .Z(n602)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i412_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3022_3_lut_4_lut (.A(j_cen[1]), .B(n34972), .C(j_cen[2]), .D(j_cen[3]), 
         .Z(j_cen_3__N_740[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(332[25:95])
    defparam i3022_3_lut_4_lut.init = 16'h7f80;
    LUT4 idx_r1_0__bdd_4_lut (.A(idx_r1[0]), .B(idx_r1[2]), .C(idx_r1[1]), 
         .D(idx_r1[3]), .Z(n36062)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam idx_r1_0__bdd_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_adj_160 (.A(apuesta[4]), .B(n27109), .Z(n32344)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam i1_2_lut_adj_160.init = 16'h8888;
    LUT4 i24846_2_lut_rep_386_3_lut_4_lut (.A(n34936), .B(n289), .C(n34961), 
         .D(n34948), .Z(n34926)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i24846_2_lut_rep_386_3_lut_4_lut.init = 16'hfff8;
    LUT4 LEDS_0_bdd_2_lut_25827_4_lut (.A(idx_r2[3]), .B(rom_out_r2_3__N_42[1]), 
         .C(idx_r2[2]), .D(rom_out_r2_3__N_42[0]), .Z(n35837)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam LEDS_0_bdd_2_lut_25827_4_lut.init = 16'h4000;
    LUT4 rem_103_i413_3_lut_4_lut (.A(n34855), .B(n16701), .C(n589_adj_1742), 
         .D(n34857), .Z(n603_adj_1731)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i413_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_1875_i23_4_lut (.A(n35030), .B(n8494), .C(n35172), .D(n35015), 
         .Z(n9154)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i23_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_592 (.A(state[0]), .B(r2_active), .Z(n35132)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_592.init = 16'h4444;
    LUT4 i1_3_lut_3_lut_4_lut (.A(state[0]), .B(r2_active), .C(n29246), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[125])) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h44f0;
    LUT4 i22789_1_lut_2_lut_3_lut_4_lut (.A(n34976), .B(n243), .C(apuesta[9]), 
         .D(n242), .Z(n16871)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;
    defparam i22789_1_lut_2_lut_3_lut_4_lut.init = 16'hf087;
    LUT4 i1_2_lut_rep_557_3_lut (.A(state[0]), .B(r2_active), .C(state[3]), 
         .Z(n35097)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_557_3_lut.init = 16'h4040;
    LUT4 mux_1875_i16_4_lut (.A(n35030), .B(n2555), .C(n35172), .D(n34989), 
         .Z(n9161)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i16_4_lut.init = 16'hca0a;
    LUT4 i25_4_lut (.A(apuesta[3]), .B(n4_adj_1698), .C(n27109), .D(osc_div[3]), 
         .Z(n32346)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam i25_4_lut.init = 16'ha3ac;
    LUT4 i1_2_lut_3_lut_adj_161 (.A(state[0]), .B(r2_active), .C(state[3]), 
         .Z(L1_Buffer_127__N_785[62])) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_adj_161.init = 16'h4f4f;
    LUT4 i1_2_lut_rep_405_3_lut_4_lut (.A(n34976), .B(n243), .C(apuesta[9]), 
         .D(n242), .Z(n34945)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_rep_405_3_lut_4_lut.init = 16'h0f78;
    LUT4 i1_2_lut_adj_162 (.A(osc_div[2]), .B(osc_div[1]), .Z(n4_adj_1698)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam i1_2_lut_adj_162.init = 16'h8888;
    LUT4 i1_3_lut_3_lut_4_lut_adj_163 (.A(state[0]), .B(r2_active), .C(n29228), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[97])) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_3_lut_4_lut_adj_163.init = 16'h44f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_164 (.A(state[0]), .B(r2_active), .C(n35183), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[96])) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_adj_164.init = 16'hf4f0;
    LUT4 mod_105_i352_3_lut_4_lut (.A(n34873), .B(n16708), .C(n500), .D(n469), 
         .Z(n514)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i352_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_333_Mux_11_i15_4_lut (.A(n1352), .B(n2069), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[11])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_11_i15_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_3_lut_adj_165 (.A(RESET_N_c), .B(n35162), .C(rom_out_r3_3__N_48[4]), 
         .Z(n33484)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_3_lut_adj_165.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(state[0]), .B(r2_active), .C(n35173), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[109])) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h44f0;
    LUT4 i1_3_lut_3_lut_4_lut_adj_166 (.A(state[0]), .B(r2_active), .C(n13_adj_1690), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[82])) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_3_lut_4_lut_adj_166.init = 16'h44f0;
    LUT4 i21_4_lut (.A(apuesta[2]), .B(osc_div[1]), .C(n27109), .D(osc_div[2]), 
         .Z(n32348)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam i21_4_lut.init = 16'ha3ac;
    LUT4 i1_3_lut_rep_593 (.A(j_uni[3]), .B(j_uni[1]), .C(j_uni[2]), .Z(n35133)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_rep_593.init = 16'ha8a8;
    LUT4 i2_2_lut_4_lut (.A(n513_adj_1769), .B(n544_adj_1760), .C(n34860), 
         .D(n557), .Z(n10_adj_1907)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i2_2_lut_4_lut.init = 16'hffca;
    LUT4 i1_3_lut_4_lut_adj_167 (.A(delay_timer[1]), .B(n34978), .C(n35165), 
         .D(delay_timer[2]), .Z(delay_timer_4__N_1092[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(251[21] 254[28])
    defparam i1_3_lut_4_lut_adj_167.init = 16'h7080;
    LUT4 i58_2_lut_2_lut_4_lut (.A(j_uni[3]), .B(j_uni[1]), .C(j_uni[2]), 
         .D(j_uni[0]), .Z(n38)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i58_2_lut_2_lut_4_lut.init = 16'h5700;
    LUT4 i2_4_lut_else_4_lut (.A(n35028), .B(rom_out_r3[3]), .C(idx_r2[3]), 
         .D(rom_out_r2_3__N_42[0]), .Z(n36126)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+!(D))+!B !(C))) */ ;
    defparam i2_4_lut_else_4_lut.init = 16'hebed;
    LUT4 mux_1660_i2_4_lut (.A(apuesta[1]), .B(n16107), .C(n27109), .D(osc_div[1]), 
         .Z(n7938)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C)+!B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_1660_i2_4_lut.init = 16'hacaf;
    LUT4 i7531_2_lut (.A(osc_div[2]), .B(osc_div[3]), .Z(n16107)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(289[38:69])
    defparam i7531_2_lut.init = 16'h8888;
    LUT4 rom_out_r2_3__N_42_0__bdd_4_lut_4_lut (.A(idx_r2[3]), .B(idx_r2[2]), 
         .C(rom_out_r2_3__N_42[1]), .D(rom_out_r2_3__N_42[0]), .Z(n34775)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(150[49:51])
    defparam rom_out_r2_3__N_42_0__bdd_4_lut_4_lut.init = 16'h1015;
    LUT4 rem_103_i416_3_lut_4_lut (.A(n34855), .B(n16701), .C(n592_adj_1739), 
         .D(n561_adj_1749), .Z(n606_adj_1728)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i416_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_239_i14_3_lut (.A(jackpot[13]), .B(apuesta[13]), .C(n27109), 
         .Z(n2031)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i14_3_lut.init = 16'hacac;
    LUT4 mux_239_i13_3_lut (.A(jackpot[12]), .B(apuesta[12]), .C(n27109), 
         .Z(n2032)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i13_3_lut.init = 16'hacac;
    LUT4 i24816_2_lut_rep_595 (.A(state[2]), .B(state[1]), .Z(n35135)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i24816_2_lut_rep_595.init = 16'heeee;
    LUT4 mux_239_i12_3_lut (.A(jackpot[11]), .B(apuesta[11]), .C(n27109), 
         .Z(n2033)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i12_3_lut.init = 16'hacac;
    LUT4 i1_3_lut_4_lut_adj_168 (.A(i_dec[0]), .B(n34998), .C(n35153), 
         .D(i_dec[1]), .Z(n33414)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(336[21] 342[28])
    defparam i1_3_lut_4_lut_adj_168.init = 16'h7080;
    LUT4 i10277_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[3]), 
         .Z(n18891)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i10277_2_lut_3_lut.init = 16'h0e0e;
    LUT4 mod_105_i358_3_lut_4_lut (.A(n34873), .B(n16708), .C(n506), .D(n475), 
         .Z(n520)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i358_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_239_i11_3_lut (.A(jackpot[10]), .B(apuesta[10]), .C(n27109), 
         .Z(n2034)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i11_3_lut.init = 16'hacac;
    PFUMX mux_1786_i45 (.BLUT(n8574), .ALUT(n31791), .C0(n35080), .Z(n8626));
    LUT4 i1_4_lut_adj_169 (.A(r2_active), .B(n34949), .C(n35058), .D(n8_adj_1671), 
         .Z(sys_clk_enable_95)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_169.init = 16'hc8c0;
    LUT4 mux_239_i10_3_lut (.A(jackpot[9]), .B(apuesta[9]), .C(n27109), 
         .Z(n2035)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i10_3_lut.init = 16'hacac;
    LUT4 i17886_2_lut_3_lut (.A(i_cen[1]), .B(i_cen[3]), .C(r2_active), 
         .Z(n8481)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i17886_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i2_4_lut_then_4_lut_adj_170 (.A(state[1]), .B(RESET_N_c), .C(state[3]), 
         .D(state[0]), .Z(n36130)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_then_4_lut_adj_170.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_171 (.A(SW_MODE_c), .B(state[0]), .C(n66), 
         .D(n35135), .Z(n75)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(D))) */ ;
    defparam i1_4_lut_4_lut_adj_171.init = 16'hc0d1;
    LUT4 i1_2_lut_rep_597 (.A(key_code[0]), .B(key_code[3]), .Z(n35137)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(353[44:59])
    defparam i1_2_lut_rep_597.init = 16'hbbbb;
    LUT4 i2_3_lut_rep_529_4_lut (.A(key_code[0]), .B(key_code[3]), .C(key_code[1]), 
         .D(key_code[2]), .Z(n35069)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(353[44:59])
    defparam i2_3_lut_rep_529_4_lut.init = 16'hffbf;
    LUT4 i2_3_lut_4_lut_adj_172 (.A(key_code[0]), .B(key_code[3]), .C(key_code[1]), 
         .D(key_code[2]), .Z(n7_adj_1693)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(353[44:59])
    defparam i2_3_lut_4_lut_adj_172.init = 16'hfbff;
    LUT4 mux_239_i9_3_lut (.A(jackpot[8]), .B(apuesta[8]), .C(n27109), 
         .Z(n2036)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i9_3_lut.init = 16'hacac;
    LUT4 mux_239_i8_3_lut (.A(jackpot[7]), .B(apuesta[7]), .C(n27109), 
         .Z(n2037)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i8_3_lut.init = 16'hacac;
    LUT4 i2298_2_lut_rep_598 (.A(idx_r2[3]), .B(idx_r2[2]), .Z(n35138)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(150[49:51])
    defparam i2298_2_lut_rep_598.init = 16'h8888;
    LUT4 i1_2_lut_rep_663 (.A(n14_adj_1684), .B(n16994), .Z(n36109)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_663.init = 16'heeee;
    LUT4 state_3__I_0_430_Mux_3_i15_4_lut (.A(key_code[3]), .B(n14_adj_1832), 
         .C(state[3]), .D(n35006), .Z(i_uni_3__N_130[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam state_3__I_0_430_Mux_3_i15_4_lut.init = 16'hcac0;
    LUT4 i2_4_lut_else_4_lut_adj_173 (.A(state[1]), .B(RESET_N_c), .C(state[3]), 
         .D(state[0]), .Z(n36129)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut_else_4_lut_adj_173.init = 16'h0008;
    LUT4 mux_239_i7_3_lut (.A(jackpot[6]), .B(apuesta[6]), .C(n27109), 
         .Z(n2038)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i7_3_lut.init = 16'hacac;
    LUT4 mux_333_Mux_10_i15_4_lut (.A(n245), .B(n2070), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[10])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_10_i15_4_lut.init = 16'h0aca;
    LUT4 i25174_2_lut_2_lut_3_lut (.A(idx_r2[3]), .B(idx_r2[2]), .C(n1921), 
         .Z(n16488)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(150[49:51])
    defparam i25174_2_lut_2_lut_3_lut.init = 16'h0707;
    LUT4 mod_105_i359_3_lut_4_lut (.A(n34873), .B(n16708), .C(n507), .D(apuesta[4]), 
         .Z(n521)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i359_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_333_Mux_9_i15_4_lut (.A(n291), .B(n2071), .C(state[3]), .D(state[2]), 
         .Z(calc_temp_31__N_1055[9])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_9_i15_4_lut.init = 16'h0aca;
    PFUMX mux_1786_i43 (.BLUT(n8575), .ALUT(n11959), .C0(n35080), .Z(n26941));
    PFUMX i39 (.BLUT(n26), .ALUT(n24_adj_1849), .C0(state[2]), .Z(n33136));
    LUT4 rem_103_i417_3_lut_4_lut (.A(n34855), .B(n16701), .C(n593_adj_1738), 
         .D(n562_adj_1748), .Z(n607_adj_1727)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i417_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_239_i6_3_lut (.A(jackpot[5]), .B(apuesta[5]), .C(n27109), 
         .Z(n2039)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i6_3_lut.init = 16'hacac;
    LUT4 state_3__I_0_430_Mux_2_i15_4_lut (.A(key_code[2]), .B(n14_adj_1833), 
         .C(state[3]), .D(n35006), .Z(i_uni_3__N_130[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam state_3__I_0_430_Mux_2_i15_4_lut.init = 16'hcac0;
    LUT4 mux_239_i5_3_lut (.A(jackpot[4]), .B(apuesta[4]), .C(n27109), 
         .Z(n2040)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i5_3_lut.init = 16'hacac;
    MemoriaROM_U1 ROM_Instance_1 (.idx_r1({idx_r1}), .\rom_out_r1[1] (rom_out_r1[1]), 
            .\rom_out_r1[3] (rom_out_r1[3]), .n26768(n26768), .n35177(n35177), 
            .n34775(n34775), .n35138(n35138), .n3(n3), .n14255(n14255), 
            .n35019(n35019));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(149[21:31])
    LUT4 i17715_3_lut_4_lut (.A(i_cen[1]), .B(n34984), .C(n35187), .D(i_cen[2]), 
         .Z(n14_adj_1860)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(330[21] 333[52])
    defparam i17715_3_lut_4_lut.init = 16'h7080;
    LUT4 i22415_3_lut_4_lut (.A(stop_timer[1]), .B(n4_adj_1813), .C(stop_timer[2]), 
         .D(stop_timer[3]), .Z(n22)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(282[80:90])
    defparam i22415_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX stop_timer_2090__i3 (.D(n22), .SP(sys_clk_enable_404), .CD(n19147), 
            .CK(sys_clk), .Q(stop_timer[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(282[80:90])
    defparam stop_timer_2090__i3.GSR = "DISABLED";
    FD1P3IX stop_timer_2090__i2 (.D(n23), .SP(sys_clk_enable_404), .CD(n19147), 
            .CK(sys_clk), .Q(stop_timer[2]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(282[80:90])
    defparam stop_timer_2090__i2.GSR = "DISABLED";
    FD1P3IX stop_timer_2090__i1 (.D(n24_adj_1818), .SP(sys_clk_enable_404), 
            .CD(n19147), .CK(sys_clk), .Q(stop_timer[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(282[80:90])
    defparam stop_timer_2090__i1.GSR = "DISABLED";
    LUT4 i22408_2_lut_3_lut (.A(stop_timer[1]), .B(n4_adj_1813), .C(stop_timer[2]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(282[80:90])
    defparam i22408_2_lut_3_lut.init = 16'h7878;
    FD1P3IX key_cooldown_i0_i20 (.D(n4789), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i20.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_600 (.A(i_uni[3]), .B(i_uni[1]), .C(i_uni[2]), .Z(n35140)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_rep_600.init = 16'ha8a8;
    LUT4 i31_2_lut_rep_559_4_lut (.A(i_uni[3]), .B(i_uni[1]), .C(i_uni[2]), 
         .D(i_uni[0]), .Z(n35099)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i31_2_lut_rep_559_4_lut.init = 16'h5700;
    FD1P3IX key_cooldown_i0_i19 (.D(n4790), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i19.GSR = "DISABLED";
    FD1P3IX key_cooldown_i0_i16 (.D(n4793), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i16.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_601 (.A(j_dec[3]), .B(j_dec[1]), .C(j_dec[2]), .Z(n35141)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_rep_601.init = 16'ha8a8;
    LUT4 i1_2_lut_4_lut (.A(j_dec[3]), .B(j_dec[1]), .C(j_dec[2]), .D(blink_toggle), 
         .Z(n8581)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hffa8;
    LUT4 mux_239_i4_3_lut (.A(jackpot[3]), .B(apuesta[3]), .C(n27109), 
         .Z(n2041)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i4_3_lut.init = 16'hacac;
    PFUMX i15457 (.BLUT(n36), .ALUT(n37), .C0(n35080), .Z(n8623));
    LUT4 rem_103_i415_3_lut_4_lut (.A(n34855), .B(n16701), .C(n591_adj_1740), 
         .D(n560_adj_1750), .Z(n605_adj_1729)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i415_3_lut_4_lut.init = 16'hf1e0;
    LUT4 state_3__I_0_430_Mux_1_i15_4_lut (.A(key_code[1]), .B(n14_adj_1834), 
         .C(state[3]), .D(n35006), .Z(i_uni_3__N_130[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam state_3__I_0_430_Mux_1_i15_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_539_4_lut (.A(j_dec[3]), .B(j_dec[1]), .C(j_dec[2]), 
         .D(j_dec[0]), .Z(n35079)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;
    defparam i1_2_lut_rep_539_4_lut.init = 16'h5700;
    LUT4 mux_239_i3_3_lut (.A(jackpot[2]), .B(apuesta[2]), .C(n27109), 
         .Z(n2042)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i3_3_lut.init = 16'hacac;
    LUT4 i25202_3_lut_rep_602 (.A(i_dec[2]), .B(i_dec[3]), .C(i_dec[1]), 
         .Z(n35142)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[26:31])
    defparam i25202_3_lut_rep_602.init = 16'h3737;
    LUT4 mux_239_i2_3_lut (.A(jackpot[1]), .B(apuesta[1]), .C(n27109), 
         .Z(n2043)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[21] 298[28])
    defparam mux_239_i2_3_lut.init = 16'hacac;
    LUT4 i7_4_lut_adj_174 (.A(n564_adj_1746), .B(n14_adj_1824), .C(n10_adj_1907), 
         .D(n560_adj_1750), .Z(n16701)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i7_4_lut_adj_174.init = 16'hfffe;
    LUT4 i6_4_lut_adj_175 (.A(n562_adj_1748), .B(n559_adj_1751), .C(n561_adj_1749), 
         .D(n563_adj_1747), .Z(n14_adj_1824)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i6_4_lut_adj_175.init = 16'hfffe;
    FD1P3IX key_cooldown_i0_i15 (.D(n4794), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i15.GSR = "DISABLED";
    LUT4 i22352_1_lut (.A(n337), .Z(n368_adj_1811)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i22352_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_176 (.A(delay_timer[4]), .B(n35165), .C(delay_timer[3]), 
         .D(n34954), .Z(delay_timer_4__N_1092[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i1_4_lut_adj_176.init = 16'h4888;
    LUT4 rem_103_i419_3_lut_4_lut (.A(n34855), .B(n16701), .C(n595_adj_1736), 
         .D(n564_adj_1746), .Z(n609_adj_1725)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i419_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_105_i356_3_lut_4_lut_4_lut (.A(n34876), .B(n473), .C(n504), 
         .D(n16708), .Z(n518)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_105_i356_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i18244_2_lut_rep_316_4_lut (.A(n521_adj_1762), .B(n552_adj_1752), 
         .C(n34860), .D(n567_adj_1744), .Z(n34856)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i18244_2_lut_rep_316_4_lut.init = 16'hffca;
    LUT4 rem_103_i326_3_lut_rep_332_4_lut (.A(n34875), .B(n16698), .C(n460_adj_1788), 
         .D(n429_adj_1796), .Z(n34872)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i326_3_lut_rep_332_4_lut.init = 16'hf1e0;
    LUT4 i22439_2_lut (.A(input_temp[0]), .B(input_temp[2]), .Z(n13)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i22439_2_lut.init = 16'h6666;
    LUT4 mux_333_Mux_8_i15_4_lut (.A(n337), .B(n2072), .C(state[3]), .D(state[2]), 
         .Z(calc_temp_31__N_1055[8])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_8_i15_4_lut.init = 16'h0aca;
    LUT4 n31590_bdd_4_lut (.A(n34902), .B(n16919), .C(n34910), .D(n475_adj_1780), 
         .Z(n34689)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C)+!B (C (D)))) */ ;
    defparam n31590_bdd_4_lut.init = 16'hd04a;
    LUT4 i3015_2_lut_3_lut_4_lut (.A(j_cen[0]), .B(n34993), .C(j_cen[2]), 
         .D(j_cen[1]), .Z(j_cen_3__N_740[2])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(332[25:95])
    defparam i3015_2_lut_3_lut_4_lut.init = 16'hd2f0;
    LUT4 rem_103_i320_3_lut_4_lut (.A(n34875), .B(n16698), .C(n454_adj_1794), 
         .D(n423_adj_1800), .Z(n468_adj_1786)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i320_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_4_lut_adj_177 (.A(j_dec[0]), .B(n34982), .C(j_dec[1]), 
         .D(n35187), .Z(n14_adj_1837)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_adj_177.init = 16'hd200;
    LUT4 blink_toggle_bdd_3_lut_4_lut (.A(RESET_N_c), .B(n35162), .C(n34783), 
         .D(blink_toggle), .Z(n34784)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam blink_toggle_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_rep_606 (.A(i_dec[1]), .B(i_dec[3]), .Z(n35146)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_606.init = 16'h2222;
    LUT4 n31670_bdd_4_lut_25452 (.A(n36107), .B(n31909), .C(n34887), .D(n567_adj_1744), 
         .Z(n34688)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;
    defparam n31670_bdd_4_lut_25452.init = 16'h0e58;
    LUT4 rem_103_i325_3_lut_4_lut (.A(n34875), .B(n16698), .C(n459_adj_1789), 
         .D(n34879), .Z(n473_adj_1781)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i325_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_adj_178 (.A(i_dec[1]), .B(i_dec[3]), .C(r2_active), 
         .Z(n8487)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_adj_178.init = 16'h2f2f;
    LUT4 mod_105_i293_3_lut_4_lut (.A(n34901), .B(n16706), .C(n413), .D(n382), 
         .Z(n427)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i293_3_lut_4_lut.init = 16'hf1e0;
    LUT4 delay_timer_4__I_0_i7_2_lut_rep_607 (.A(delay_timer[3]), .B(delay_r2_target[3]), 
         .Z(n35147)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(252[28:57])
    defparam delay_timer_4__I_0_i7_2_lut_rep_607.init = 16'h6666;
    FD1P3IX key_cooldown_i0_i14 (.D(n4795), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i14.GSR = "DISABLED";
    LUT4 mod_105_i420_3_lut_4_lut_4_lut (.A(n34862), .B(n565), .C(n596), 
         .D(n16710), .Z(n610)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_105_i420_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 delay_timer_4__I_0_i6_3_lut_3_lut (.A(delay_timer[3]), .B(delay_r2_target[3]), 
         .C(delay_r2_target[2]), .Z(n6_adj_1670)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(252[28:57])
    defparam delay_timer_4__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 delay_timer_4__I_0_i9_2_lut_rep_608 (.A(delay_timer[4]), .B(delay_r2_target[4]), 
         .Z(n35148)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(252[28:57])
    defparam delay_timer_4__I_0_i9_2_lut_rep_608.init = 16'h6666;
    LUT4 delay_timer_4__I_0_i8_3_lut_3_lut (.A(delay_timer[4]), .B(delay_r2_target[4]), 
         .C(n6_adj_1670), .Z(n8_adj_1687)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(252[28:57])
    defparam delay_timer_4__I_0_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_333_Mux_7_i15_4_lut (.A(n383_adj_1812), .B(n2073), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_7_i15_4_lut.init = 16'h0aca;
    FD1P3IX key_cooldown_i0_i13 (.D(n4796), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i13.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_179 (.A(state[2]), .B(r2_active), .C(state[0]), 
         .Z(n6_adj_1678)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_179.init = 16'hf4f4;
    LUT4 n475_bdd_4_lut (.A(n475_adj_1780), .B(n16959), .C(n34914), .D(n429_adj_1796), 
         .Z(n34699)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C+(D))))) */ ;
    defparam n475_bdd_4_lut.init = 16'h7ffe;
    LUT4 i1_2_lut_3_lut_adj_180 (.A(state[2]), .B(r2_active), .C(n2077), 
         .Z(n33405)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_180.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_181 (.A(state[2]), .B(r2_active), .C(Res_15__N_1527[2]), 
         .Z(n33404)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_181.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_182 (.A(state[2]), .B(r2_active), .C(Res_15__N_1527[1]), 
         .Z(n33401)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_182.init = 16'h4040;
    LUT4 rem_103_i321_3_lut_4_lut (.A(n34875), .B(n16698), .C(n455_adj_1793), 
         .D(n424_adj_1799), .Z(n469_adj_1785)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i321_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n33636_bdd_3_lut_25396_4_lut (.A(n34981), .B(n35069), .C(n35090), 
         .D(state[0]), .Z(n34580)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A (C (D)))) */ ;
    defparam n33636_bdd_3_lut_25396_4_lut.init = 16'h0fdd;
    LUT4 i1_2_lut_3_lut_adj_183 (.A(state[2]), .B(r2_active), .C(n2075), 
         .Z(n33407)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_183.init = 16'h4040;
    LUT4 rem_103_i322_3_lut_4_lut (.A(n34875), .B(n16698), .C(n456_adj_1792), 
         .D(n34880), .Z(n470_adj_1784)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i322_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n16844_bdd_4_lut (.A(n34928), .B(n34914), .C(n34938), .D(n383_adj_1812), 
         .Z(n34696)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam n16844_bdd_4_lut.init = 16'h701a;
    LUT4 i22462_3_lut_4_lut (.A(n34981), .B(n35069), .C(state[1]), .D(tick_1s), 
         .Z(n31277)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i22462_3_lut_4_lut.init = 16'hf202;
    LUT4 i3_4_lut_adj_184 (.A(n34878), .B(n6_adj_1847), .C(n34730), .D(n14039), 
         .Z(n31911)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam i3_4_lut_adj_184.init = 16'h693c;
    LUT4 i1_2_lut_3_lut_adj_185 (.A(state[2]), .B(r2_active), .C(n2076), 
         .Z(n33403)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_185.init = 16'h4040;
    FD1P3IX key_cooldown_i0_i10 (.D(n4799), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i10.GSR = "DISABLED";
    LUT4 rem_103_i319_3_lut_4_lut (.A(n34875), .B(n16698), .C(n453_adj_1795), 
         .D(n422_adj_1801), .Z(n467_adj_1787)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i319_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2710_2_lut (.A(n31909), .B(n613_adj_1721), .Z(n14039)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i2710_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_adj_186 (.A(state[2]), .B(r2_active), .C(n2073), 
         .Z(n33409)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_186.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_187 (.A(n34981), .B(n35069), .C(n35182), .D(n35090), 
         .Z(n46)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_187.init = 16'h0dfd;
    LUT4 mod_105_i227_3_lut_4_lut_3_lut_4_lut (.A(n34936), .B(n289), .C(n34961), 
         .D(n34948), .Z(n333)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam mod_105_i227_3_lut_4_lut_3_lut_4_lut.init = 16'h8870;
    LUT4 i1_2_lut_3_lut_adj_188 (.A(state[2]), .B(r2_active), .C(n2074), 
         .Z(n33406)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_188.init = 16'h4040;
    LUT4 i7661_2_lut_4_lut_4_lut_3_lut_4_lut (.A(n35023), .B(n34999), .C(n242), 
         .D(n243), .Z(n16239)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i7661_2_lut_4_lut_4_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_1786_i49_3_lut_rep_448_4_lut_4_lut (.A(RESET_N_c), .B(n35162), 
         .C(blink_toggle), .D(n35042), .Z(n34988)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam mux_1786_i49_3_lut_rep_448_4_lut_4_lut.init = 16'hf870;
    LUT4 i1_2_lut_3_lut_adj_189 (.A(state[2]), .B(r2_active), .C(n2071), 
         .Z(n33398)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_189.init = 16'h4040;
    LUT4 rem_103_i323_3_lut_4_lut (.A(n34875), .B(n16698), .C(n457_adj_1791), 
         .D(n426_adj_1798), .Z(n471_adj_1783)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i323_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_adj_190 (.A(state[2]), .B(r2_active), .C(n2072), 
         .Z(n33410)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_190.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_191 (.A(state[2]), .B(r2_active), .C(n2069), 
         .Z(n33408)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_191.init = 16'h4040;
    LUT4 i25223_4_lut (.A(n35171), .B(state[0]), .C(n27_adj_1718), .D(n21_adj_1717), 
         .Z(sys_clk_enable_227)) /* synthesis lut_function=(!((B (C)+!B (C+(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i25223_4_lut.init = 16'h080a;
    LUT4 rem_103_i382_3_lut_rep_317_4_lut (.A(n34861), .B(n16700), .C(n544_adj_1760), 
         .D(n513_adj_1769), .Z(n34857)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i382_3_lut_rep_317_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_adj_192 (.A(state[2]), .B(r2_active), .C(n2070), 
         .Z(n33402)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_192.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_193 (.A(state[2]), .B(r2_active), .C(n2067), 
         .Z(n33411)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_193.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_194 (.A(state[2]), .B(r2_active), .C(n2068), 
         .Z(n33400)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_194.init = 16'h4040;
    LUT4 i1_2_lut_rep_610 (.A(i_uni[3]), .B(i_uni[2]), .Z(n35150)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_610.init = 16'h4444;
    LUT4 i16563_3_lut_4_lut (.A(i_uni[3]), .B(i_uni[2]), .C(r2_active), 
         .D(n35151), .Z(n8492)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i16563_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_rep_611 (.A(j_mil[2]), .B(j_mil[3]), .Z(n35151)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_611.init = 16'h2222;
    LUT4 i33_4_lut (.A(n4_adj_1716), .B(n36111), .C(state[2]), .D(state[0]), 
         .Z(n27_adj_1718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i33_4_lut.init = 16'hcacf;
    LUT4 i15469_3_lut_4_lut (.A(j_mil[1]), .B(j_mil[3]), .C(r2_active), 
         .D(n2518), .Z(n8493)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i15469_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_547_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n35087)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_rep_547_3_lut.init = 16'hfbfb;
    LUT4 i1_3_lut_rep_516_4_lut (.A(state[0]), .B(state[1]), .C(n35185), 
         .D(n36112), .Z(sys_clk_enable_203)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_rep_516_4_lut.init = 16'hfb00;
    LUT4 i1_2_lut_3_lut_adj_195 (.A(state[0]), .B(state[1]), .C(r2_active), 
         .Z(n16687)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_195.init = 16'hfbfb;
    FD1P3IX L2_Buffer__i38 (.D(n8481), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[49]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i38.GSR = "DISABLED";
    LUT4 mod_105_i196_3_lut_rep_408_4_lut_3_lut_4_lut (.A(n35023), .B(n34999), 
         .C(n242), .D(n243), .Z(n34948)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam mod_105_i196_3_lut_rep_408_4_lut_3_lut_4_lut.init = 16'h11e0;
    LUT4 i10506_2_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n35185), 
         .D(n36112), .Z(n19126)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (D)))) */ ;
    defparam i10506_2_lut_4_lut_4_lut.init = 16'h5100;
    FD1P3IX key_cooldown_i0_i8 (.D(n4801), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i8.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_613 (.A(state[2]), .B(state[1]), .Z(n35153)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_613.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_196 (.A(state[2]), .B(state[1]), .C(bcd_val[0]), 
         .Z(n33531)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_196.init = 16'h2020;
    LUT4 i10_4_lut (.A(n11_adj_1901), .B(n20_adj_1880), .C(n16_adj_1882), 
         .D(n15_adj_1902), .Z(n662_adj_1715)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    FD1P3IX key_cooldown_i0_i6 (.D(n4803), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i6.GSR = "DISABLED";
    FD1P3IX key_cooldown_i0_i5 (.D(n4804), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i5.GSR = "DISABLED";
    FD1P3IX key_cooldown_i0_i4 (.D(n4805), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i4.GSR = "DISABLED";
    LUT4 rem_103_i451_3_lut (.A(n610_adj_1724), .B(n641_adj_1710), .C(n617_adj_1720), 
         .Z(n11_adj_1901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i451_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_614 (.A(state[0]), .B(state[1]), .Z(n35154)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_614.init = 16'h2222;
    PFUMX i15437 (.BLUT(n31), .ALUT(n33424), .C0(n35080), .Z(n8624));
    LUT4 i9_4_lut_adj_197 (.A(n23_adj_1904), .B(n13_adj_1885), .C(n12_adj_1886), 
         .D(n14_adj_1884), .Z(n20_adj_1880)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut_adj_197.init = 16'hfffe;
    LUT4 i1_2_lut_rep_533_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n35073)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_533_3_lut.init = 16'h0202;
    FD1P3IX key_cooldown_i0_i3 (.D(n4806), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i3.GSR = "DISABLED";
    LUT4 i17580_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n7_adj_1825)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i17580_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i5_4_lut (.A(n603_adj_1731), .B(n27_adj_1905), .C(n634_adj_1683), 
         .D(n617_adj_1720), .Z(n16_adj_1882)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i5_4_lut.init = 16'hfcee;
    LUT4 rem_103_i449_3_lut (.A(n608_adj_1726), .B(n639_adj_1707), .C(n617_adj_1720), 
         .Z(n15_adj_1902)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i449_3_lut.init = 16'hcaca;
    LUT4 mux_1587_i6_3_lut_4_lut (.A(state[3]), .B(n7631), .C(state[2]), 
         .D(alu_sum_res[5]), .Z(jackpot_15__N_58[5])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1587_i6_3_lut_4_lut.init = 16'h7f08;
    LUT4 rem_103_i445_3_lut (.A(n604_adj_1730), .B(n635_adj_1702), .C(n617_adj_1720), 
         .Z(n23_adj_1904)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i445_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_198 (.A(n609_adj_1725), .B(n17_adj_1903), .C(n640_adj_1709), 
         .D(n617_adj_1720), .Z(n13_adj_1885)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_198.init = 16'hfcee;
    LUT4 i1_4_lut_adj_199 (.A(n27033), .B(n605_adj_1729), .C(n636_adj_1703), 
         .D(n617_adj_1720), .Z(n12_adj_1886)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_199.init = 16'hfaee;
    LUT4 i3_4_lut_adj_200 (.A(n19), .B(n611_adj_1723), .C(n642_adj_1711), 
         .D(n617_adj_1720), .Z(n14_adj_1884)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i3_4_lut_adj_200.init = 16'hfaee;
    LUT4 rem_103_i448_3_lut (.A(n607_adj_1727), .B(n638_adj_1706), .C(n617_adj_1720), 
         .Z(n17_adj_1903)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i448_3_lut.init = 16'hcaca;
    LUT4 rem_103_i443_3_lut (.A(n602_adj_1732), .B(n633_adj_1682), .C(n617_adj_1720), 
         .Z(n27_adj_1905)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i443_3_lut.init = 16'hcaca;
    LUT4 rem_103_i447_3_lut (.A(n606_adj_1728), .B(n637_adj_1705), .C(n617_adj_1720), 
         .Z(n19)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i447_3_lut.init = 16'hcaca;
    FD1P3IX key_cooldown_i0_i2 (.D(n4807), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i2.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_201 (.A(n613_adj_1721), .B(n31731), .C(n611_adj_1723), 
         .D(n612_adj_1722), .Z(n617_adj_1720)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_201.init = 16'hfcec;
    LUT4 i18508_2_lut_rep_420_4_lut (.A(n35023), .B(n34999), .C(n242), 
         .D(n243), .Z(n34960)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i18508_2_lut_rep_420_4_lut.init = 16'hfef0;
    LUT4 i2_3_lut_4_lut_adj_202 (.A(state[0]), .B(state[1]), .C(key_valid), 
         .D(n35185), .Z(n9_adj_1878)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2_3_lut_4_lut_adj_202.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_203 (.A(state[0]), .B(state[1]), .C(n5390), 
         .D(state[2]), .Z(n16575)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_adj_203.init = 16'h0020;
    LUT4 i1_2_lut_rep_514_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(n35054)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_514_3_lut_4_lut.init = 16'h0002;
    FD1P3IX key_cooldown_i0_i1 (.D(n4808), .SP(sys_clk_enable_324), .CD(n19215), 
            .CK(sys_clk), .Q(key_cooldown[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i1.GSR = "DISABLED";
    LUT4 i8_4_lut (.A(n15_adj_1873), .B(n606_adj_1728), .C(n14_adj_1874), 
         .D(n610_adj_1724), .Z(n31731)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut_adj_204 (.A(n605_adj_1729), .B(n609_adj_1725), .C(n604_adj_1730), 
         .D(n608_adj_1726), .Z(n15_adj_1873)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_204.init = 16'hfffe;
    LUT4 i18509_3_lut_2_lut_3_lut_rep_421_4_lut (.A(n35023), .B(n34999), 
         .C(n242), .D(n243), .Z(n34961)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i18509_3_lut_2_lut_3_lut_rep_421_4_lut.init = 16'he000;
    LUT4 mod_105_i197_3_lut_4_lut_4_lut (.A(n35023), .B(n34999), .C(n243), 
         .D(n242), .Z(n289)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;
    defparam mod_105_i197_3_lut_4_lut_4_lut.init = 16'h998a;
    LUT4 i1_3_lut_4_lut_adj_205 (.A(delay_timer[0]), .B(n7944), .C(n35165), 
         .D(delay_timer[1]), .Z(delay_timer_4__N_1092[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(251[21] 254[28])
    defparam i1_3_lut_4_lut_adj_205.init = 16'h7080;
    LUT4 i2405_2_lut_rep_414_3_lut_4_lut (.A(delay_timer[0]), .B(n7944), 
         .C(delay_timer[2]), .D(delay_timer[1]), .Z(n34954)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(251[21] 254[28])
    defparam i2405_2_lut_rep_414_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_206 (.A(n36114), .B(n36111), .C(n35153), .D(n36109), 
         .Z(n33524)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_206.init = 16'h2000;
    LUT4 i1_2_lut_4_lut_adj_207 (.A(state[1]), .B(r2_active), .C(state[0]), 
         .D(n35171), .Z(n33313)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_207.init = 16'h4000;
    LUT4 i1_2_lut_rep_619 (.A(bcd_val[5]), .B(bcd_val[6]), .Z(n35159)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_619.init = 16'h8888;
    LUT4 i3_3_lut_4_lut (.A(bcd_val[5]), .B(bcd_val[6]), .C(bcd_val[7]), 
         .D(bcd_val[8]), .Z(n8_adj_1853)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h8000;
    PFUMX mux_1786_i32 (.BLUT(n8586), .ALUT(n31824), .C0(n35080), .Z(n8639));
    CCU2D add_454_4 (.A0(bcd_val[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_val[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31028), .COUT(n31029), .S0(n4885), .S1(n4884));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(337[36:43])
    defparam add_454_4.INIT0 = 16'h5555;
    defparam add_454_4.INIT1 = 16'h5aaa;
    defparam add_454_4.INJECT1_0 = "NO";
    defparam add_454_4.INJECT1_1 = "NO";
    CCU2D add_454_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_val[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31028), .S1(n4886));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(337[36:43])
    defparam add_454_2.INIT0 = 16'h0000;
    defparam add_454_2.INIT1 = 16'h5aaa;
    defparam add_454_2.INJECT1_0 = "NO";
    defparam add_454_2.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_620 (.A(state[1]), .B(r2_active), .Z(n35160)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_620.init = 16'hbbbb;
    LUT4 i2_3_lut_rep_530_4_lut (.A(state[1]), .B(r2_active), .C(state[0]), 
         .D(n35171), .Z(n35070)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2_3_lut_rep_530_4_lut.init = 16'hbfff;
    LUT4 i5_3_lut_adj_208 (.A(n602_adj_1732), .B(n603_adj_1731), .C(n607_adj_1727), 
         .Z(n14_adj_1874)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_adj_208.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_3_lut (.A(blink_toggle), .B(n35162), .C(RESET_N_c), 
         .Z(n8659)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i1_2_lut_3_lut_3_lut_adj_209 (.A(blink_toggle), .B(j_mil[3]), .C(j_mil[2]), 
         .Z(n31)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_3_lut_3_lut_adj_209.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_3_lut_adj_210 (.A(blink_toggle), .B(j_mil[3]), .C(j_mil[1]), 
         .Z(n25)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_3_lut_3_lut_adj_210.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_3_lut_adj_211 (.A(blink_toggle), .B(n35117), .C(j_mil[0]), 
         .Z(n8574)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_3_lut_3_lut_adj_211.init = 16'h1010;
    LUT4 i1_2_lut_2_lut (.A(blink_toggle), .B(j_cen[2]), .Z(n4_adj_1822)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_212 (.A(blink_toggle), .B(j_mil[3]), .Z(n36)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_2_lut_adj_212.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_213 (.A(blink_toggle), .B(j_uni[1]), .Z(n4_adj_1866)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_2_lut_adj_213.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_214 (.A(blink_toggle), .B(j_dec[3]), .Z(n37_adj_1862)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_2_lut_adj_214.init = 16'h4444;
    LUT4 i15273_4_lut_4_lut (.A(blink_toggle), .B(j_uni[3]), .C(n35172), 
         .D(n34991), .Z(n8643)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i15273_4_lut_4_lut.init = 16'hf404;
    LUT4 mux_1786_i42_4_lut_4_lut (.A(blink_toggle), .B(n35172), .C(n34991), 
         .D(j_cen[3]), .Z(n8629)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam mux_1786_i42_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_4_lut_4_lut (.A(blink_toggle), .B(j_mil[2]), .C(j_mil[3]), 
         .D(j_mil[1]), .Z(n24021)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(161[9] 170[16])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5040;
    LUT4 i1_2_lut_rep_621 (.A(j_dec[2]), .B(j_dec[3]), .Z(n35161)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_621.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_215 (.A(j_dec[2]), .B(j_dec[3]), .C(blink_toggle), 
         .Z(n45)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_adj_215.init = 16'hf2f2;
    LUT4 i1_4_lut_adj_216 (.A(bcd_val[4]), .B(n35159), .C(bcd_val[3]), 
         .D(bcd_val[2]), .Z(n14_adj_1684)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_216.init = 16'hccc8;
    LUT4 i1_3_lut_rep_622 (.A(state[3]), .B(state[2]), .C(state[0]), .Z(n35162)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_3_lut_rep_622.init = 16'h5454;
    CCU2D add_242_13 (.A0(n34890), .B0(n30559), .C0(B_input[13]), .D0(n31535), 
          .A1(n6_adj_1681), .B1(n33586), .C1(B_input[13]), .D1(n33587), 
          .CIN(n31026), .S0(n2066), .S1(n2065));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(304[38:42])
    defparam add_242_13.INIT0 = 16'hf606;
    defparam add_242_13.INIT1 = 16'hf606;
    defparam add_242_13.INJECT1_0 = "NO";
    defparam add_242_13.INJECT1_1 = "NO";
    LUT4 rem_103_i453_3_lut (.A(n612_adj_1722), .B(n643_adj_1712), .C(n617_adj_1720), 
         .Z(n657_adj_1714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i453_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_540_4_lut (.A(state[3]), .B(state[2]), .C(state[0]), 
         .D(RESET_N_c), .Z(n35080)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_540_4_lut.init = 16'h5400;
    LUT4 i1_2_lut_rep_623 (.A(j_dec[1]), .B(j_dec[3]), .Z(n35163)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_623.init = 16'h2222;
    LUT4 i1_2_lut_rep_484_3_lut_4_lut (.A(n35186), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(n35024)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_484_3_lut_4_lut.init = 16'h000e;
    LUT4 i18406_2_lut_rep_345_3_lut_4_lut_4_lut (.A(n34916), .B(n337), .C(n34900), 
         .D(n383_adj_1812), .Z(n34885)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !(B+(C))) */ ;
    defparam i18406_2_lut_rep_345_3_lut_4_lut_4_lut.init = 16'ha981;
    LUT4 i1_2_lut_2_lut_3_lut (.A(j_dec[1]), .B(j_dec[3]), .C(blink_toggle), 
         .Z(n33527)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 mux_1587_i4_3_lut_4_lut (.A(state[3]), .B(n7631), .C(state[2]), 
         .D(alu_sum_res[3]), .Z(jackpot_15__N_58[3])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1587_i4_3_lut_4_lut.init = 16'h7f08;
    LUT4 n31670_bdd_4_lut (.A(n36107), .B(n1381), .C(n6), .D(n31909), 
         .Z(n34731)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !(B (C+(D))+!B (C (D)))) */ ;
    defparam n31670_bdd_4_lut.init = 16'ha995;
    LUT4 i3_4_lut_adj_217 (.A(n34896), .B(n6_adj_1848), .C(n35279), .D(n14051), 
         .Z(n31909)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C)+!B !(C))) */ ;
    defparam i3_4_lut_adj_217.init = 16'h963c;
    LUT4 i1_2_lut_rep_541_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n35081)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_541_3_lut.init = 16'hf8f8;
    LUT4 i2654_2_lut (.A(n16919), .B(n521_adj_1762), .Z(n14051)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i2654_2_lut.init = 16'hdddd;
    FD1P3IX L2_Buffer__i45 (.D(n8474), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[57]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i45.GSR = "DISABLED";
    LUT4 rem_103_i324_3_lut_4_lut_4_lut (.A(n34877), .B(n427_adj_1797), 
         .C(n458_adj_1790), .D(n16698), .Z(n472_adj_1782)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam rem_103_i324_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i4_4_lut_adj_218 (.A(n5007), .B(n33594), .C(n33591), .D(n34701), 
         .Z(n16919)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam i4_4_lut_adj_218.init = 16'h6996;
    LUT4 i2_3_lut_rep_336 (.A(n474), .B(apuesta[4]), .C(n475), .Z(n34876)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_336.init = 16'hfefe;
    LUT4 rem_103_i390_3_lut_rep_318_4_lut (.A(n34861), .B(n16700), .C(n552_adj_1752), 
         .D(n521_adj_1762), .Z(n34858)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i390_3_lut_rep_318_4_lut.init = 16'hf1e0;
    LUT4 n33604_bdd_4_lut (.A(n659), .B(n31909), .C(n34878), .D(n613_adj_1721), 
         .Z(n34729)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C (D)+!C !(D))+!B (C))) */ ;
    defparam n33604_bdd_4_lut.init = 16'hf2bc;
    LUT4 i1_3_lut_4_lut_adj_219 (.A(state[0]), .B(state[1]), .C(n35171), 
         .D(n4886), .Z(n24_adj_1849)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i1_3_lut_4_lut_adj_219.init = 16'h7f00;
    LUT4 i18272_2_lut_rep_333_4_lut (.A(n474), .B(apuesta[4]), .C(n475), 
         .D(n473), .Z(n34873)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i18272_2_lut_rep_333_4_lut.init = 16'hfe00;
    LUT4 i1_2_lut_rep_502_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(n35042)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_2_lut_rep_502_3_lut_4_lut.init = 16'h0f08;
    LUT4 i1_2_lut_rep_518_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(n35058)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam i1_2_lut_rep_518_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i2_2_lut_rep_538_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n35078)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_rep_538_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_220 (.A(r2_active), .B(n35008), .C(j_dec[1]), 
         .D(j_dec[0]), .Z(n4_adj_1697)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(336[21] 342[28])
    defparam i1_2_lut_3_lut_4_lut_adj_220.init = 16'h4000;
    LUT4 i25292_2_lut_rep_501_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(n35041)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i25292_2_lut_rep_501_3_lut_4_lut.init = 16'h7fff;
    PFUMX i16 (.BLUT(n16575), .ALUT(n33453), .C0(state[3]), .Z(n5_adj_1872));
    LUT4 i1_2_lut_rep_472_3_lut_4_lut (.A(RESET_N_c), .B(n35162), .C(state[3]), 
         .D(n35081), .Z(n35012)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_472_3_lut_4_lut.init = 16'h0800;
    LUT4 state_3__bdd_4_lut_25362 (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(r2_active), .Z(n34406)) /* synthesis lut_function=(A (C)+!A !((C+!(D))+!B)) */ ;
    defparam state_3__bdd_4_lut_25362.init = 16'ha4a0;
    LUT4 i24862_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(n3_adj_1864), .Z(n33689)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i24862_3_lut_4_lut.init = 16'h6f60;
    LUT4 i25170_4_lut_else_3_lut (.A(state[3]), .B(tick_anim), .C(n36114), 
         .D(r2_active), .Z(n35201)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i25170_4_lut_else_3_lut.init = 16'h4000;
    LUT4 i24863_3_lut_4_lut_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n33690)) /* synthesis lut_function=(!(A (B)+!A ((C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i24863_3_lut_4_lut_3_lut.init = 16'h2626;
    LUT4 i15278_4_lut_4_lut (.A(j_uni[3]), .B(n4_adj_1866), .C(n35172), 
         .D(n34991), .Z(n8645)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i15278_4_lut_4_lut.init = 16'hf404;
    FD1P3IX L2_Buffer__i47 (.D(n8472), .SP(sys_clk_enable_302), .CD(n19086), 
            .CK(sys_clk), .Q(L2_Buffer[59]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i47.GSR = "DISABLED";
    LUT4 i16551_4_lut (.A(blink_toggle), .B(n34991), .C(n35172), .D(n2589), 
         .Z(n25150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i16551_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut_rep_625 (.A(state[0]), .B(state[3]), .Z(n35165)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_625.init = 16'h2222;
    LUT4 state_2__bdd_4_lut_25393_3_lut (.A(state[0]), .B(state[3]), .C(state[1]), 
         .Z(n34577)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;
    defparam state_2__bdd_4_lut_25393_3_lut.init = 16'h7676;
    LUT4 i1_3_lut_4_lut_adj_221 (.A(state[0]), .B(state[3]), .C(n7944), 
         .D(delay_timer[0]), .Z(delay_timer_4__N_1092[0])) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_221.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_222 (.A(r2_active), .B(n35008), .C(j_dec[0]), 
         .D(n35153), .Z(n33413)) /* synthesis lut_function=(A (C (D))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(336[21] 342[28])
    defparam i1_3_lut_4_lut_adj_222.init = 16'hb400;
    CCU2D osc_div_2088_add_4_27 (.A0(osc_div[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31258), .S0(n110));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_27.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_27.INIT1 = 16'h0000;
    defparam osc_div_2088_add_4_27.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_27.INJECT1_1 = "NO";
    LUT4 i24906_2_lut_rep_626 (.A(state[3]), .B(state[1]), .Z(n35166)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i24906_2_lut_rep_626.init = 16'heeee;
    LUT4 i25139_3_lut_rep_628 (.A(state[1]), .B(state[0]), .C(state[2]), 
         .Z(n35168)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i25139_3_lut_rep_628.init = 16'h1515;
    LUT4 mux_323_Mux_37_i15_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(state[2]), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[37])) /* synthesis lut_function=(!(A (B (D))+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam mux_323_Mux_37_i15_3_lut_4_lut.init = 16'h33ea;
    PFUMX state_3__I_0_428_Mux_1_i15 (.BLUT(n33394), .ALUT(n14_adj_1861), 
          .C0(state[3]), .Z(i_cen_3__N_122[1]));
    LUT4 mux_1438_i3_4_lut (.A(n6545), .B(n2111), .C(n6479), .D(state[2]), 
         .Z(n6494)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i3_4_lut.init = 16'h0aca;
    LUT4 i17831_2_lut_4_lut (.A(state[1]), .B(state[0]), .C(state[2]), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[43])) /* synthesis lut_function=(!(A (D)+!A (((D)+!C)+!B))) */ ;
    defparam i17831_2_lut_4_lut.init = 16'h00ea;
    LUT4 i1_2_lut_rep_630 (.A(state[1]), .B(blink_toggle), .Z(n35170)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_630.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_4_lut_adj_223 (.A(state[1]), .B(blink_toggle), .C(state[0]), 
         .D(state[2]), .Z(n7_adj_1826)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_223.init = 16'hfaf1;
    LUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(state[1]), .B(blink_toggle), .C(state[2]), 
         .D(state[0]), .Z(n7_adj_1865)) /* synthesis lut_function=(A (C)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'hf5a1;
    LUT4 i17376_2_lut_rep_631 (.A(state[3]), .B(RESET_N_c), .Z(n35171)) /* synthesis lut_function=(A (B)) */ ;
    defparam i17376_2_lut_rep_631.init = 16'h8888;
    LUT4 i15548_4_lut (.A(blink_toggle), .B(n35013), .C(n35080), .D(n1939), 
         .Z(n17)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i15548_4_lut.init = 16'hca0a;
    LUT4 i18408_2_lut_rep_335_3_lut (.A(n429_adj_1796), .B(n34879), .C(n427_adj_1797), 
         .Z(n34875)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i18408_2_lut_rep_335_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_224 (.A(state[3]), .B(RESET_N_c), .C(i_mil[0]), 
         .D(n36113), .Z(n4_adj_1855)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_224.init = 16'h8000;
    LUT4 i25151_2_lut_3_lut (.A(state[3]), .B(RESET_N_c), .C(n33924), 
         .Z(sys_clk_enable_213)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i25151_2_lut_3_lut.init = 16'h8080;
    LUT4 n79_bdd_3_lut (.A(idx_r1[3]), .B(idx_r1[1]), .C(idx_r1[0]), .Z(n34740)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n79_bdd_3_lut.init = 16'hfdfd;
    LUT4 i1_4_lut_adj_225 (.A(n34924), .B(n34696), .C(n34914), .D(n10648), 
         .Z(n33591)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_225.init = 16'h6566;
    LUT4 i1_2_lut_rep_334_3_lut_4_lut (.A(n429_adj_1796), .B(n34879), .C(n16698), 
         .D(n427_adj_1797), .Z(n34874)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_334_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_226 (.A(state[3]), .B(RESET_N_c), .C(i_dec[0]), 
         .D(n36113), .Z(n4_adj_1719)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_226.init = 16'h8000;
    PFUMX mux_1875_i80 (.BLUT(n8536), .ALUT(n8629), .C0(n35016), .Z(n9097));
    LUT4 i2954_2_lut_rep_428_4_lut (.A(i_cen[0]), .B(n36109), .C(r2_active), 
         .D(i_cen[1]), .Z(n34968)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2954_2_lut_rep_428_4_lut.init = 16'h8000;
    LUT4 i16550_4_lut (.A(n35150), .B(n34775), .C(n35013), .D(n16488), 
         .Z(n25149)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i16550_4_lut.init = 16'hca0a;
    FD1P3IX L2_Buffer__i55 (.D(n34988), .SP(sys_clk_enable_352), .CD(n19070), 
            .CK(sys_clk), .Q(L2_Buffer[68]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i55.GSR = "DISABLED";
    CCU2D osc_div_2088_add_4_25 (.A0(osc_div[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31257), .COUT(n31258), .S0(n112), .S1(n111));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_25.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_25.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_25.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_25.INJECT1_1 = "NO";
    LUT4 i5_3_lut_adj_227 (.A(bcd_val[15]), .B(n10_adj_1870), .C(bcd_val[12]), 
         .Z(n33303)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_adj_227.init = 16'hfefe;
    LUT4 i25269_2_lut_rep_476_2_lut_3_lut_4_lut_4_lut (.A(state[3]), .B(RESET_N_c), 
         .C(n35162), .D(n36113), .Z(n35016)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C))) */ ;
    defparam i25269_2_lut_rep_476_2_lut_3_lut_4_lut_4_lut.init = 16'hbf3f;
    LUT4 i1_2_lut_rep_430_3_lut (.A(state[3]), .B(RESET_N_c), .C(n16387), 
         .Z(n34970)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_430_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_460_3_lut_4_lut_4_lut (.A(state[3]), .B(RESET_N_c), 
         .C(n36113), .D(n35078), .Z(n35000)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_460_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i6054_2_lut_rep_633 (.A(state[1]), .B(state[2]), .Z(n35173)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i6054_2_lut_rep_633.init = 16'h2222;
    CCU2D osc_div_2088_add_4_23 (.A0(osc_div[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31256), .COUT(n31257), .S0(n114), .S1(n113));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_23.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_23.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_23.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_23.INJECT1_1 = "NO";
    LUT4 i2_2_lut_4_lut_adj_228 (.A(n34887), .B(n567_adj_1744), .C(n36107), 
         .D(n33603), .Z(n6_adj_1847)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i2_2_lut_4_lut_adj_228.init = 16'h59a6;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_229 (.A(state[1]), .B(state[2]), 
         .C(n35184), .D(state[3]), .Z(L1_Buffer_127__N_785[91])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A (C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_229.init = 16'h0f22;
    LUT4 i2_2_lut_rep_548_3_lut (.A(state[1]), .B(state[2]), .C(state[0]), 
         .Z(n35088)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i2_2_lut_rep_548_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_230 (.A(state[1]), .B(state[2]), 
         .C(n35184), .D(state[3]), .Z(L1_Buffer_127__N_785[110])) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_230.init = 16'h0fdd;
    LUT4 i25229_2_lut_rep_555_3_lut (.A(state[1]), .B(state[2]), .C(state[3]), 
         .Z(n35095)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i25229_2_lut_rep_555_3_lut.init = 16'h0d0d;
    LUT4 i24_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(state[0]), .D(n35008), 
         .Z(n8_adj_1671)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i24_4_lut_4_lut.init = 16'h02c2;
    LUT4 i1_2_lut_3_lut_4_lut_adj_231 (.A(state[2]), .B(state[1]), .C(n35069), 
         .D(key_valid), .Z(n31316)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_231.init = 16'h0800;
    LUT4 state_3__I_0_425_Mux_3_i15_3_lut_3_lut_4_lut (.A(state[2]), .B(state[1]), 
         .C(state[3]), .D(state[0]), .Z(state_3__N_54[3])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam state_3__I_0_425_Mux_3_i15_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i2_4_lut_adj_232 (.A(n5029), .B(n4_adj_1689), .C(n34689), .D(n32016), 
         .Z(n33597)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D)))) */ ;
    defparam i2_4_lut_adj_232.init = 16'h9996;
    CCU2D osc_div_2088_add_4_21 (.A0(osc_div[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31255), .COUT(n31256), .S0(n116), .S1(n115));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_21.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_21.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_21.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_21.INJECT1_1 = "NO";
    PFUMX i25490 (.BLUT(n34784), .ALUT(n34989), .C0(n35172), .Z(n34785));
    LUT4 mux_1875_i41_3_lut_4_lut (.A(n35013), .B(n35162), .C(n35172), 
         .D(n34991), .Z(n9136)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam mux_1875_i41_3_lut_4_lut.init = 16'hf808;
    CCU2D osc_div_2088_add_4_19 (.A0(osc_div[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31254), .COUT(n31255), .S0(n118), .S1(n117));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_19.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_19.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_19.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_632_4_lut (.A(state[2]), .B(state[1]), .C(RESET_N_c), 
         .D(state[3]), .Z(n35172)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_632_4_lut.init = 16'h8000;
    PFUMX state_3__I_0_429_Mux_1_i15 (.BLUT(n33388), .ALUT(n33414), .C0(state[3]), 
          .Z(i_dec_3__N_126[1]));
    LUT4 i19806_1_lut_rep_506_2_lut_3_lut_4_lut (.A(state[2]), .B(state[1]), 
         .C(RESET_N_c), .D(state[3]), .Z(n35046)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i19806_1_lut_rep_506_2_lut_3_lut_4_lut.init = 16'h7fff;
    CCU2D osc_div_2088_add_4_17 (.A0(osc_div[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31253), .COUT(n31254), .S0(n120), .S1(n119));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_17.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_17.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_17.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_17.INJECT1_1 = "NO";
    LUT4 n33604_bdd_3_lut_4_lut (.A(n567_adj_1744), .B(n36107), .C(n613_adj_1721), 
         .D(n31909), .Z(n34728)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam n33604_bdd_3_lut_4_lut.init = 16'h0960;
    LUT4 i2_3_lut (.A(n33603), .B(n31909), .C(n36107), .Z(n33604)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut.init = 16'h9696;
    LUT4 mux_1875_i95_3_lut_4_lut (.A(n35013), .B(n35162), .C(n35172), 
         .D(n35041), .Z(n9082)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam mux_1875_i95_3_lut_4_lut.init = 16'hf808;
    LUT4 n24029_bdd_4_lut_4_lut (.A(n35013), .B(n35142), .C(n35080), .D(n8581), 
         .Z(n34452)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam n24029_bdd_4_lut_4_lut.init = 16'h1f10;
    LUT4 i2_4_lut_adj_233 (.A(n10760), .B(n31907), .C(n34688), .D(n31956), 
         .Z(n33603)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D)))) */ ;
    defparam i2_4_lut_adj_233.init = 16'h9996;
    LUT4 i2_3_lut_4_lut_adj_234 (.A(n567_adj_1744), .B(n36107), .C(n31909), 
         .D(n613_adj_1721), .Z(n31956)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_234.init = 16'h9000;
    CCU2D osc_div_2088_add_4_15 (.A0(osc_div[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31252), .COUT(n31253), .S0(n122), .S1(n121));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_15.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_15.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_15.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_15.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_235 (.A(n6), .B(n1381), .C(n31909), .Z(n31521)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut_adj_235.init = 16'h9696;
    LUT4 i22273_1_lut (.A(apuesta[8]), .Z(n323)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i22273_1_lut.init = 16'h5555;
    LUT4 rem_103_i414_3_lut_4_lut (.A(n34855), .B(n16701), .C(n590_adj_1741), 
         .D(n559_adj_1751), .Z(n604_adj_1730)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i414_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i25294_4_lut (.A(n35148), .B(n35147), .C(delay_timer[2]), .D(delay_r2_target[2]), 
         .Z(n33845)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(252[28:57])
    defparam i25294_4_lut.init = 16'heffe;
    LUT4 i22399_1_lut (.A(n4_adj_1813), .Z(n25_adj_1819)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(282[80:90])
    defparam i22399_1_lut.init = 16'h5555;
    LUT4 i22_4_lut_4_lut (.A(j_cen[3]), .B(n4_adj_1822), .C(n35172), .D(n35041), 
         .Z(n32594)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i22_4_lut_4_lut.init = 16'hf404;
    LUT4 n24029_bdd_4_lut_25339_4_lut (.A(n35013), .B(n35120), .C(n35080), 
         .D(n24021), .Z(n34375)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam n24029_bdd_4_lut_25339_4_lut.init = 16'h1f10;
    LUT4 mux_243_i3_3_lut (.A(calc_temp[2]), .B(Res_15__N_1527[2]), .C(r2_active), 
         .Z(n2111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i3_3_lut.init = 16'hcaca;
    LUT4 mux_333_Mux_6_i15_4_lut (.A(n429_adj_1796), .B(n2074), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_6_i15_4_lut.init = 16'h0aca;
    CCU2D osc_div_2088_add_4_13 (.A0(osc_div[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31251), .COUT(n31252), .S0(n124), .S1(n123));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_13.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_13.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_13.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_13.INJECT1_1 = "NO";
    LUT4 i18233_2_lut_rep_337_4_lut (.A(n383_adj_1812), .B(n414_adj_1802), 
         .C(n34883), .D(n429_adj_1796), .Z(n34877)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i18233_2_lut_rep_337_4_lut.init = 16'hffca;
    LUT4 n5_bdd_4_lut_25764 (.A(n5_adj_1876), .B(state[2]), .C(state[0]), 
         .D(n35034), .Z(n34752)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C+(D))+!B))) */ ;
    defparam n5_bdd_4_lut_25764.init = 16'h202c;
    LUT4 i1_2_lut_3_lut_4_lut_adj_236 (.A(r2_active), .B(n35073), .C(state[3]), 
         .D(n7631), .Z(sys_clk_enable_39)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_adj_236.init = 16'hf040;
    LUT4 i1_3_lut_4_lut_4_lut_adj_237 (.A(state[3]), .B(state[2]), .C(state[0]), 
         .D(state[1]), .Z(n10194)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i1_3_lut_4_lut_4_lut_adj_237.init = 16'h8000;
    LUT4 i14779_3_lut_4_lut (.A(state[1]), .B(SW_MODE_c), .C(state[0]), 
         .D(n1), .Z(n23397)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i14779_3_lut_4_lut.init = 16'h0efe;
    LUT4 i1_2_lut_2_lut_adj_238 (.A(idx_r2[3]), .B(rom_out_r2_3__N_42[0]), 
         .Z(n1967)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_2_lut_adj_238.init = 16'h9999;
    LUT4 i2_3_lut_rep_635 (.A(stop_timer[3]), .B(stop_timer[1]), .C(stop_timer[2]), 
         .Z(n35175)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_635.init = 16'hfefe;
    LUT4 i1_2_lut_rep_534_4_lut (.A(stop_timer[3]), .B(stop_timer[1]), .C(stop_timer[2]), 
         .D(tick_1s), .Z(n35074)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_534_4_lut.init = 16'h0100;
    LUT4 i4_4_lut_adj_239 (.A(bcd_val[11]), .B(bcd_val[10]), .C(bcd_val[13]), 
         .D(bcd_val[14]), .Z(n10_adj_1870)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_239.init = 16'hfffe;
    LUT4 i18390_2_lut_rep_550_4_lut (.A(stop_timer[3]), .B(stop_timer[1]), 
         .C(stop_timer[2]), .D(tick_1s), .Z(n35090)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i18390_2_lut_rep_550_4_lut.init = 16'hfe00;
    LUT4 i3440_1_lut_3_lut_4_lut_4_lut (.A(RESET_N_c), .B(n35162), .C(blink_toggle), 
         .D(n35042), .Z(n11976)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i3440_1_lut_3_lut_4_lut_4_lut.init = 16'h078f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_240 (.A(r2_active), .B(n35015), .C(n35005), 
         .D(n35172), .Z(n9115)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_240.init = 16'hf1f0;
    LUT4 mux_1875_i72_3_lut_4_lut (.A(r2_active), .B(n35015), .C(n35172), 
         .D(n8637), .Z(n9105)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam mux_1875_i72_3_lut_4_lut.init = 16'h1f10;
    LUT4 mux_1875_i71_3_lut_4_lut (.A(r2_active), .B(n35015), .C(n35172), 
         .D(n8638), .Z(n9106)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam mux_1875_i71_3_lut_4_lut.init = 16'h1f10;
    CCU2D add_3222_6 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31009), 
          .COUT(n31010), .S0(n11508), .S1(n11507));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3222_6.INIT0 = 16'h5aaa;
    defparam add_3222_6.INIT1 = 16'h5aaa;
    defparam add_3222_6.INJECT1_0 = "NO";
    defparam add_3222_6.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_241 (.A(n380_adj_1815), .B(n411_adj_1805), .C(n34883), 
         .D(n423_adj_1800), .Z(n6_adj_1828)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i1_2_lut_4_lut_adj_241.init = 16'hffca;
    LUT4 i3_4_lut_adj_242 (.A(n380), .B(n377), .C(n378), .D(n379), .Z(n16706)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i3_4_lut_adj_242.init = 16'hfffe;
    LUT4 i17497_2_lut_rep_510_3_lut_4_lut (.A(idx_r1[1]), .B(idx_r1[0]), 
         .C(idx_r1[3]), .D(idx_r1[2]), .Z(n35050)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(269[56:62])
    defparam i17497_2_lut_rep_510_3_lut_4_lut.init = 16'h0708;
    LUT4 mux_1875_i99_3_lut_3_lut_4_lut (.A(r2_active), .B(n35015), .C(n35172), 
         .D(n34988), .Z(n26934)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_1875_i99_3_lut_3_lut_4_lut.init = 16'h101f;
    LUT4 mod_105_i320_3_lut_4_lut (.A(n34882), .B(n16707), .C(n454), .D(n423), 
         .Z(n468)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i320_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX key_cooldown_i0_i7 (.D(n6678), .SP(sys_clk_enable_324), .CK(sys_clk), 
            .Q(key_cooldown[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i7.GSR = "DISABLED";
    FD1P3AX key_cooldown_i0_i9 (.D(n6676), .SP(sys_clk_enable_324), .CK(sys_clk), 
            .Q(key_cooldown[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i9.GSR = "DISABLED";
    FD1P3AX key_cooldown_i0_i11 (.D(n6674), .SP(sys_clk_enable_324), .CK(sys_clk), 
            .Q(key_cooldown[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i11.GSR = "DISABLED";
    FD1P3AX key_cooldown_i0_i12 (.D(n6673), .SP(sys_clk_enable_324), .CK(sys_clk), 
            .Q(key_cooldown[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i12.GSR = "DISABLED";
    LUT4 mux_1875_i57_3_lut_4_lut (.A(r2_active), .B(n35015), .C(n35172), 
         .D(n17), .Z(n9120)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam mux_1875_i57_3_lut_4_lut.init = 16'h1f10;
    LUT4 i62_3_lut_4_lut (.A(r2_active), .B(n35015), .C(n35172), .D(n33486), 
         .Z(n32828)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i62_3_lut_4_lut.init = 16'h1f10;
    FD1P3AX key_cooldown_i0_i17 (.D(n6668), .SP(sys_clk_enable_324), .CK(sys_clk), 
            .Q(key_cooldown[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i17.GSR = "DISABLED";
    FD1P3AX key_cooldown_i0_i18 (.D(n6667), .SP(sys_clk_enable_324), .CK(sys_clk), 
            .Q(key_cooldown[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam key_cooldown_i0_i18.GSR = "DISABLED";
    LUT4 mod_105_i325_3_lut_4_lut (.A(n34882), .B(n16707), .C(n459), .D(n428), 
         .Z(n473)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i325_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_343_3_lut_4_lut (.A(n383_adj_1812), .B(n34894), .C(n16697), 
         .D(n34912), .Z(n34883)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_rep_343_3_lut_4_lut.init = 16'hfbf0;
    FD1P3IX idx_r1__i1 (.D(n35253), .SP(sys_clk_enable_350), .CD(n10194), 
            .CK(sys_clk), .Q(idx_r1[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r1__i1.GSR = "ENABLED";
    LUT4 i21304_3_lut_rep_424_4_lut (.A(RESET_N_c), .B(n35162), .C(n23874), 
         .D(n35133), .Z(n34964)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i21304_3_lut_rep_424_4_lut.init = 16'hf780;
    LUT4 mux_333_Mux_5_i15_4_lut (.A(n475_adj_1780), .B(n2075), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_5_i15_4_lut.init = 16'h0aca;
    LUT4 mod_105_i319_3_lut_4_lut (.A(n34882), .B(n16707), .C(n453), .D(n422), 
         .Z(n467)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i319_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3101_2_lut_rep_637 (.A(idx_r1[1]), .B(idx_r1[0]), .C(idx_r1[2]), 
         .Z(n35177)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(269[56:62])
    defparam i3101_2_lut_rep_637.init = 16'h7878;
    LUT4 i1_3_lut_4_lut_adj_243 (.A(i_mil[0]), .B(n35014), .C(i_mil[1]), 
         .D(n21_adj_1857), .Z(n23_adj_1852)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_adj_243.init = 16'h7800;
    LUT4 n79_bdd_4_lut_4_lut (.A(idx_r1[1]), .B(idx_r1[0]), .C(idx_r1[2]), 
         .D(idx_r1[3]), .Z(n34739)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(269[56:62])
    defparam n79_bdd_4_lut_4_lut.init = 16'hff7f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_244 (.A(apuesta[10]), .B(apuesta[11]), 
         .C(apuesta[13]), .D(apuesta[12]), .Z(n242)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_244.init = 16'h0010;
    LUT4 n1939_bdd_4_lut (.A(n1939), .B(n35013), .C(n35065), .D(rom_out_r3_3__N_48[4]), 
         .Z(n34783)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam n1939_bdd_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_245 (.A(n35015), .B(r2_active), .C(n35005), 
         .D(n35172), .Z(n9119)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_adj_245.init = 16'hf4f0;
    LUT4 mux_333_Mux_4_i15_4_lut (.A(n521_adj_1762), .B(n2076), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_4_i15_4_lut.init = 16'h0aca;
    CCU2D osc_div_2088_add_4_11 (.A0(osc_div[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31250), .COUT(n31251), .S0(n126), .S1(n125));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_11.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_11.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_11.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_11.INJECT1_1 = "NO";
    LUT4 mux_1438_i4_4_lut (.A(n6544), .B(n2110), .C(n6479), .D(state[2]), 
         .Z(n6493)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i4_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_465_3_lut_3_lut_4_lut (.A(RESET_N_c), .B(n35162), 
         .C(blink_toggle), .D(n35172), .Z(n35005)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_465_3_lut_3_lut_4_lut.init = 16'h0070;
    LUT4 i1_4_lut_adj_246 (.A(RESET_N_c), .B(n21_adj_1871), .C(n35093), 
         .D(state[3]), .Z(sys_clk_enable_135)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_246.init = 16'ha088;
    LUT4 mod_105_i321_3_lut_4_lut (.A(n34882), .B(n16707), .C(n455), .D(n424), 
         .Z(n469)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i321_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_adj_247 (.A(tick_1s), .B(n35173), .C(state[0]), .D(r2_active_N_1169), 
         .Z(n21_adj_1871)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C)+!B))) */ ;
    defparam i2_4_lut_adj_247.init = 16'h0c8c;
    CCU2D osc_div_2088_add_4_9 (.A0(osc_div[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31249), .COUT(n31250), .S0(n128), .S1(n127));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_9.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_9.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_9.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_9.INJECT1_1 = "NO";
    CCU2D osc_div_2088_add_4_7 (.A0(osc_div[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31248), .COUT(n31249), .S0(n130), .S1(n129));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_7.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_7.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_7.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_7.INJECT1_1 = "NO";
    LUT4 state_3__I_0_445_i15_4_lut (.A(state[0]), .B(n27109), .C(state[3]), 
         .D(state[2]), .Z(r2_active_N_1152)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam state_3__I_0_445_i15_4_lut.init = 16'h0a3a;
    LUT4 i1_3_lut_3_lut_4_lut_adj_248 (.A(n35015), .B(r2_active), .C(n17), 
         .D(n35172), .Z(n9121)) /* synthesis lut_function=(!(A (C+(D))+!A !(B ((D)+!C)+!B !(C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_3_lut_4_lut_adj_248.init = 16'h440f;
    LUT4 i21287_3_lut_4_lut (.A(n35015), .B(r2_active), .C(n35172), .D(n35030), 
         .Z(n29869)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i21287_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_rep_482_3_lut_4_lut_4_lut (.A(apuesta[10]), .B(apuesta[11]), 
         .C(apuesta[13]), .D(apuesta[12]), .Z(n35022)) /* synthesis lut_function=(!(A (C)+!A !(B (C)+!B (C (D))))) */ ;
    defparam i1_2_lut_rep_482_3_lut_4_lut_4_lut.init = 16'h5a4a;
    CCU2D osc_div_2088_add_4_5 (.A0(osc_div[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31247), .COUT(n31248), .S0(n132), .S1(n131));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_5.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_5.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_5.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_5.INJECT1_1 = "NO";
    LUT4 i18260_2_lut_rep_511_3_lut_4_lut (.A(apuesta[10]), .B(apuesta[11]), 
         .C(apuesta[13]), .D(apuesta[12]), .Z(n35051)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i18260_2_lut_rep_511_3_lut_4_lut.init = 16'hf0e0;
    LUT4 mod_105_i165_3_lut_4_lut_3_lut_4_lut (.A(apuesta[10]), .B(apuesta[11]), 
         .C(apuesta[13]), .D(apuesta[12]), .Z(n243)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam mod_105_i165_3_lut_4_lut_3_lut_4_lut.init = 16'hef00;
    LUT4 i2_2_lut_rep_638 (.A(apuesta[10]), .B(apuesta[11]), .C(apuesta[12]), 
         .Z(n35178)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_rep_638.init = 16'hfefe;
    LUT4 mux_243_i4_3_lut (.A(calc_temp[3]), .B(n2077), .C(r2_active), 
         .Z(n2110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i4_3_lut.init = 16'hcaca;
    LUT4 mod_105_i326_3_lut_4_lut (.A(n34882), .B(n16707), .C(n460), .D(n429), 
         .Z(n474)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i326_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_105_i327_3_lut_4_lut (.A(n34882), .B(n16707), .C(n461), .D(apuesta[5]), 
         .Z(n475)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i327_3_lut_4_lut.init = 16'hf1e0;
    CCU2D osc_div_2088_add_4_3 (.A0(osc_div[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31246), .COUT(n31247), .S0(n134), .S1(n133));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_3.INIT0 = 16'hfaaa;
    defparam osc_div_2088_add_4_3.INIT1 = 16'hfaaa;
    defparam osc_div_2088_add_4_3.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_3.INJECT1_1 = "NO";
    LUT4 mod_105_i166_3_lut_rep_483_4_lut_4_lut (.A(apuesta[10]), .B(apuesta[11]), 
         .C(apuesta[12]), .D(apuesta[13]), .Z(n35023)) /* synthesis lut_function=(A (B)+!A !(B (D)+!B !(C (D)))) */ ;
    defparam mod_105_i166_3_lut_rep_483_4_lut_4_lut.init = 16'h98cc;
    LUT4 mux_333_Mux_3_i15_4_lut (.A(n567_adj_1744), .B(n2077), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_3_i15_4_lut.init = 16'h0aca;
    LUT4 mod_105_i322_3_lut_4_lut (.A(n34882), .B(n16707), .C(n456), .D(n34892), 
         .Z(n470)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i322_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i21_4_lut_4_lut_4_lut (.A(state[0]), .B(state[3]), .C(state[2]), 
         .D(state[1]), .Z(state_3__N_54[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i21_4_lut_4_lut_4_lut.init = 16'h1af0;
    LUT4 i1_2_lut_rep_640 (.A(state[0]), .B(blink_toggle), .Z(n35180)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_640.init = 16'heeee;
    LUT4 i25259_2_lut_rep_503_3_lut_4_lut (.A(state[0]), .B(blink_toggle), 
         .C(state[2]), .D(state[1]), .Z(n35043)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;
    defparam i25259_2_lut_rep_503_3_lut_4_lut.init = 16'hfff1;
    LUT4 i1_3_lut_4_lut_4_lut_adj_249 (.A(n35133), .B(r2_active), .C(n35041), 
         .D(RESET_N_c), .Z(n9066)) /* synthesis lut_function=(A (B (C+!(D)))+!A (C+!(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_4_lut_adj_249.init = 16'hd0dd;
    LUT4 mod_105_i323_3_lut_4_lut (.A(n34882), .B(n16707), .C(n457), .D(n426), 
         .Z(n471)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i323_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_250 (.A(i_mil[2]), .B(n21_adj_1857), .C(n34990), 
         .D(i_mil[1]), .Z(n22_adj_1856)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_adj_250.init = 16'h4888;
    LUT4 i3008_2_lut_3_lut_4_lut (.A(r2_active), .B(n36109), .C(j_cen[1]), 
         .D(j_cen[0]), .Z(j_cen_3__N_740[1])) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(330[21] 333[52])
    defparam i3008_2_lut_3_lut_4_lut.init = 16'hb4f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_251 (.A(state[0]), .B(blink_toggle), .C(n35185), 
         .D(state[1]), .Z(L1_Buffer_127__N_785[20])) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_251.init = 16'h000e;
    LUT4 i18499_3_lut (.A(n31401), .B(n34741), .C(n26985), .Z(n27109)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i18499_3_lut.init = 16'heaea;
    PFUMX i25471 (.BLUT(n34753), .ALUT(n34752), .C0(state[3]), .Z(n34754));
    LUT4 i1_4_lut_4_lut_adj_252 (.A(state[0]), .B(blink_toggle), .C(state[2]), 
         .D(n35166), .Z(L1_Buffer_127__N_785[30])) /* synthesis lut_function=(!(A (C+(D))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_adj_252.init = 16'h005e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_253 (.A(state[0]), .B(blink_toggle), .C(state[2]), 
         .D(state[1]), .Z(n7_adj_1868)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_253.init = 16'hf0fe;
    LUT4 i1_2_lut_rep_338_4_lut (.A(n33597), .B(n16919), .C(n34902), .D(n567_adj_1744), 
         .Z(n34878)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_338_4_lut.init = 16'h6996;
    LUT4 mod_105_i259_3_lut_4_lut (.A(n34917), .B(n16704), .C(n365), .D(n34923), 
         .Z(n379)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i259_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_adj_254 (.A(n9_adj_1685), .B(n10_adj_1883), .C(n5_adj_1851), 
         .D(n36128), .Z(n31401)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2_4_lut_adj_254.init = 16'h1110;
    LUT4 i18376_4_lut (.A(n26759), .B(n5_adj_1850), .C(n9_adj_1685), .D(n6_adj_1846), 
         .Z(n26985)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;
    defparam i18376_4_lut.init = 16'hafae;
    LUT4 i1_4_lut_adj_255 (.A(rom_out_r3[0]), .B(rom_out_r3[1]), .C(rom_out_r2[0]), 
         .D(rom_out_r2[1]), .Z(n5_adj_1851)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_255.init = 16'h7bde;
    LUT4 i18162_4_lut (.A(n5_adj_1877), .B(n10_adj_1883), .C(n3), .D(n4_adj_1673), 
         .Z(n26759)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i18162_4_lut.init = 16'h3332;
    LUT4 i1_4_lut_adj_256 (.A(rom_out_r3[0]), .B(rom_out_r3[1]), .C(n26768), 
         .D(rom_out_r1[1]), .Z(n5_adj_1850)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_256.init = 16'hb7ed;
    LUT4 i1_3_lut_4_lut_4_lut_adj_257 (.A(state[0]), .B(blink_toggle), .C(state[3]), 
         .D(state[2]), .Z(L1_Buffer_127__N_785[78])) /* synthesis lut_function=(!(A (C)+!A !(B+(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_257.init = 16'h5f5e;
    LUT4 i2_4_lut_adj_258 (.A(n35028), .B(rom_out_r3[3]), .C(n35050), 
         .D(rom_out_r1[3]), .Z(n6_adj_1846)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i2_4_lut_adj_258.init = 16'h7bde;
    LUT4 i1_4_lut_adj_259 (.A(rom_out_r2[0]), .B(rom_out_r2[1]), .C(n26768), 
         .D(rom_out_r1[1]), .Z(n5_adj_1877)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D))+!B !((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(286[25:40])
    defparam i1_4_lut_adj_259.init = 16'hb7ed;
    LUT4 i25248_2_lut_rep_512_3_lut_4_lut (.A(state[0]), .B(blink_toggle), 
         .C(state[3]), .D(state[2]), .Z(n35052)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i25248_2_lut_rep_512_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_641 (.A(state[2]), .B(blink_toggle), .Z(n35181)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_641.init = 16'h4444;
    LUT4 i25234_2_lut_rep_486_2_lut_3_lut_4_lut (.A(state[2]), .B(blink_toggle), 
         .C(n35182), .D(state[3]), .Z(n35026)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i25234_2_lut_rep_486_2_lut_3_lut_4_lut.init = 16'h000b;
    LUT4 i1_3_lut_4_lut_adj_260 (.A(j_mil[0]), .B(n35010), .C(j_mil[1]), 
         .D(n48), .Z(n14_adj_1840)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_adj_260.init = 16'hd200;
    LUT4 i1_2_lut_rep_642 (.A(state[0]), .B(state[1]), .Z(n35182)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_642.init = 16'heeee;
    LUT4 i2898_2_lut_rep_415_3_lut_4_lut (.A(r2_active), .B(n35008), .C(i_dec[1]), 
         .D(i_dec[0]), .Z(n34955)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(336[21] 342[28])
    defparam i2898_2_lut_rep_415_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_261 (.A(r2_active), .B(n35008), .C(n35153), 
         .D(i_dec[0]), .Z(n33420)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(336[21] 342[28])
    defparam i1_3_lut_4_lut_adj_261.init = 16'h7080;
    LUT4 i20738_3_lut_4_lut_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n40)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam i20738_3_lut_4_lut_3_lut.init = 16'he2e2;
    LUT4 mux_333_Mux_2_i15_4_lut (.A(n613_adj_1721), .B(Res_15__N_1527[2]), 
         .C(state[3]), .D(state[2]), .Z(calc_temp_31__N_1055[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_2_i15_4_lut.init = 16'h0aca;
    LUT4 i25250_2_lut_rep_505_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(state[3]), .Z(n35045)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i25250_2_lut_rep_505_3_lut_4_lut.init = 16'h0010;
    LUT4 mod_105_i294_3_lut_4_lut (.A(n34901), .B(n16706), .C(n414), .D(n383), 
         .Z(n428)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i294_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i25463 (.BLUT(n34740), .ALUT(n34739), .C0(idx_r1[2]), .Z(n34741));
    LUT4 i24847_3_lut_2_lut_rep_387_3_lut_4_lut (.A(n34936), .B(n289), .C(n34961), 
         .D(n34948), .Z(n34927)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i24847_3_lut_2_lut_rep_387_3_lut_4_lut.init = 16'hf080;
    MemoriaROM_U0 ROM_Instance_2 (.n35138(n35138), .n34775(n34775), .n35139(n35139), 
            .\rom_out_r2[1] (rom_out_r2[1]), .n1921(n1921), .\idx_r2[3] (idx_r2[3]), 
            .\idx_r2[2] (idx_r2[2]), .\rom_out_r2_3__N_42[0] (rom_out_r2_3__N_42[0]), 
            .\rom_out_r2_3__N_42[1] (rom_out_r2_3__N_42[1]), .\rom_out_r1[3] (rom_out_r1[3]), 
            .n4(n4_adj_1673));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(150[21:31])
    LUT4 i2_3_lut_rep_545_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(state[3]), .Z(n35085)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i2_3_lut_rep_545_4_lut.init = 16'h00e0;
    LUT4 i5_3_lut_adj_262 (.A(n467_adj_1787), .B(n10_adj_1699), .C(n469_adj_1785), 
         .Z(n16699)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i5_3_lut_adj_262.init = 16'hfefe;
    LUT4 i14805_3_lut_rep_553_4_lut_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n35093)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i14805_3_lut_rep_553_4_lut_3_lut.init = 16'h8181;
    LUT4 rem_103_i389_3_lut_4_lut (.A(n34861), .B(n16700), .C(n551_adj_1753), 
         .D(n34865), .Z(n565_adj_1745)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i389_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i24848_2_lut (.A(osc_div[20]), .B(osc_div[19]), .Z(n33675)) /* synthesis lut_function=(A (B)) */ ;
    defparam i24848_2_lut.init = 16'h8888;
    LUT4 i16872_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(L1_Buffer_127__N_785[86])) /* synthesis lut_function=(!(A (C)+!A !(B+(C+!(D))))) */ ;
    defparam i16872_4_lut_4_lut.init = 16'h5e5f;
    PFUMX mux_1875_i66 (.BLUT(n23886), .ALUT(n8643), .C0(n35016), .Z(n9111));
    LUT4 mod_105_i324_3_lut_4_lut_4_lut (.A(n34886), .B(n427), .C(n458), 
         .D(n16707), .Z(n472)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_105_i324_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i25190_3_lut (.A(state[3]), .B(n4_adj_1863), .C(n75), .Z(sys_clk_enable_136)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;
    defparam i25190_3_lut.init = 16'h2323;
    LUT4 i18264_2_lut_rep_437_4_lut (.A(n35022), .B(apuesta[9]), .C(n243), 
         .D(n35023), .Z(n34977)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i18264_2_lut_rep_437_4_lut.init = 16'hf0e0;
    LUT4 i2_2_lut_4_lut_adj_263 (.A(n34910), .B(n475_adj_1780), .C(n34902), 
         .D(n33597), .Z(n6_adj_1848)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A !(B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i2_2_lut_4_lut_adj_263.init = 16'h956a;
    CCU2D osc_div_2088_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(osc_div[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31246), .S1(n135));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088_add_4_1.INIT0 = 16'hF000;
    defparam osc_div_2088_add_4_1.INIT1 = 16'h0555;
    defparam osc_div_2088_add_4_1.INJECT1_0 = "NO";
    defparam osc_div_2088_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_323_Mux_64_i15_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[64])) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B ((D)+!C)))) */ ;
    defparam mux_323_Mux_64_i15_4_lut_4_lut.init = 16'h55e1;
    LUT4 rem_103_i294_3_lut_rep_339_4_lut (.A(n34885), .B(n16697), .C(n414_adj_1802), 
         .D(n383_adj_1812), .Z(n34879)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i294_3_lut_rep_339_4_lut.init = 16'hf1e0;
    LUT4 rem_103_i291_3_lut_rep_340_4_lut (.A(n34885), .B(n16697), .C(n411_adj_1805), 
         .D(n380_adj_1815), .Z(n34880)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i291_3_lut_rep_340_4_lut.init = 16'hf1e0;
    LUT4 mux_1438_i5_4_lut (.A(n6543), .B(n2109), .C(n6479), .D(state[2]), 
         .Z(n6492)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i5_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_4_lut_rep_643 (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(state[3]), .Z(n35183)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_rep_643.init = 16'h001c;
    LUT4 i1_2_lut_3_lut_4_lut_adj_264 (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[45])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_264.init = 16'h551c;
    CCU2D add_242_11 (.A0(n30539), .B0(B_input[12]), .C0(GND_net), .D0(GND_net), 
          .A1(n34893), .B1(n30550), .C1(B_input[13]), .D1(n9861), .CIN(n31025), 
          .COUT(n31026), .S0(n2068), .S1(n2067));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(304[38:42])
    defparam add_242_11.INIT0 = 16'h5aaa;
    defparam add_242_11.INIT1 = 16'hf606;
    defparam add_242_11.INJECT1_0 = "NO";
    defparam add_242_11.INJECT1_1 = "NO";
    LUT4 rem_103_i290_3_lut_4_lut (.A(n34885), .B(n16697), .C(n410_adj_1806), 
         .D(n379_adj_1817), .Z(n424_adj_1799)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i290_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i24871_2_lut_rep_644 (.A(state[0]), .B(r2_active), .Z(n35184)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i24871_2_lut_rep_644.init = 16'heeee;
    LUT4 i113_4_lut (.A(state[0]), .B(n120_adj_1830), .C(state[3]), .D(n34975), 
         .Z(n69)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i113_4_lut.init = 16'hc0c5;
    LUT4 i1_2_lut_rep_558_3_lut (.A(state[0]), .B(r2_active), .C(state[3]), 
         .Z(n35098)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_558_3_lut.init = 16'h1010;
    LUT4 i111_4_lut (.A(SW_MODE_c), .B(n1), .C(state[1]), .D(n33826), 
         .Z(n78)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i111_4_lut.init = 16'hc0ca;
    FD1P3AX L2_Buffer__i59 (.D(n9118), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[75]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i59.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i67 (.D(n8659), .SP(sys_clk_enable_352), .CD(n19070), 
            .CK(sys_clk), .Q(L2_Buffer[84]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i67.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i75 (.D(n8634), .SP(sys_clk_enable_352), .CD(n19070), 
            .CK(sys_clk), .Q(L2_Buffer[93]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i75.GSR = "DISABLED";
    FD1P3JX L2_Buffer__i81 (.D(n34989), .SP(sys_clk_enable_352), .PD(n28411), 
            .CK(sys_clk), .Q(L2_Buffer[100]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i81.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i82 (.D(n26942), .SP(sys_clk_enable_352), .CD(n19070), 
            .CK(sys_clk), .Q(L2_Buffer[101]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i82.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i85 (.D(n8625), .SP(sys_clk_enable_352), .CD(n19070), 
            .CK(sys_clk), .Q(L2_Buffer[105]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i85.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i87 (.D(n8623), .SP(sys_clk_enable_352), .CD(n19070), 
            .CK(sys_clk), .Q(L2_Buffer[107]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i87.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i88 (.D(n11976), .SP(sys_clk_enable_352), .CD(n19070), 
            .CK(sys_clk), .Q(L2_Buffer[108]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i88.GSR = "DISABLED";
    FD1P3IX L2_Buffer__i89 (.D(n8621), .SP(sys_clk_enable_352), .CD(n19070), 
            .CK(sys_clk), .Q(L2_Buffer[109]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i89.GSR = "DISABLED";
    FD1P3AX bcd_val_i0_i0 (.D(n32534), .SP(sys_clk_enable_339), .CK(sys_clk), 
            .Q(bcd_val[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam bcd_val_i0_i0.GSR = "DISABLED";
    FD1P3IX alu_opB_i0_i0 (.D(n7939), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(B_input[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i0.GSR = "DISABLED";
    FD1P3IX alu_opA_i0_i0 (.D(n2044), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i0.GSR = "DISABLED";
    FD1P3AX delay_timer_i0_i0 (.D(delay_timer_4__N_1092[0]), .SP(sys_clk_enable_395), 
            .CK(sys_clk), .Q(delay_timer[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_timer_i0_i0.GSR = "DISABLED";
    FD1P3IX delay_r2_target_i0_i0 (.D(n300), .SP(sys_clk_enable_403), .CD(n19149), 
            .CK(sys_clk), .Q(delay_r2_target[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_r2_target_i0_i0.GSR = "DISABLED";
    FD1P3IX apuesta_i0_i0 (.D(input_temp[0]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i0.GSR = "DISABLED";
    FD1P3JX L2_Buffer__i1 (.D(n35041), .SP(sys_clk_enable_352), .PD(n28411), 
            .CK(sys_clk), .Q(L2_Buffer[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i1.GSR = "DISABLED";
    FD1P3AX i_uni_i0 (.D(i_uni_3__N_130[0]), .SP(sys_clk_enable_346), .CK(sys_clk), 
            .Q(i_uni[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i_uni_i0.GSR = "ENABLED";
    FD1P3AX j_uni_i0 (.D(n33532), .SP(sys_clk_enable_347), .CK(sys_clk), 
            .Q(j_uni[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_uni_i0.GSR = "ENABLED";
    LUT4 i24978_4_lut (.A(n26833), .B(n34975), .C(n7_adj_1693), .D(n31704), 
         .Z(n33826)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i24978_4_lut.init = 16'h8000;
    FD1P3IX j_cen_i0 (.D(j_cen_3__N_740[0]), .SP(sys_clk_enable_348), .CD(n25437), 
            .CK(sys_clk), .Q(j_cen[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam j_cen_i0.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_265 (.A(n470_adj_1784), .B(n471_adj_1783), .C(n472_adj_1782), 
         .D(n468_adj_1786), .Z(n10_adj_1699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i4_4_lut_adj_265.init = 16'hfffe;
    LUT4 i28_3_lut_4_lut (.A(state[0]), .B(r2_active), .C(state[3]), .D(n13_adj_1690), 
         .Z(L1_Buffer_127__N_785[59])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i28_3_lut_4_lut.init = 16'h1f10;
    FD1P3IX idx_r1__i2 (.D(n36069), .SP(sys_clk_enable_350), .CD(n10194), 
            .CK(sys_clk), .Q(idx_r1[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r1__i2.GSR = "ENABLED";
    FD1P3IX idx_r1__i3 (.D(n36062), .SP(sys_clk_enable_350), .CD(n10194), 
            .CK(sys_clk), .Q(idx_r1[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam idx_r1__i3.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_266 (.A(n35172), .B(n35015), .C(n33459), .D(r2_active), 
         .Z(n33496)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2_3_lut_4_lut_adj_266.init = 16'h2000;
    LUT4 i1_3_lut_3_lut_4_lut_adj_267 (.A(state[0]), .B(r2_active), .C(n29246), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[126])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_267.init = 16'h110f;
    LUT4 i1_3_lut_3_lut_4_lut_adj_268 (.A(state[0]), .B(r2_active), .C(n26_adj_1887), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[114])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_268.init = 16'h110f;
    LUT4 i25131_2_lut_3_lut_4_lut (.A(r2_active), .B(n35008), .C(sys_clk_enable_181), 
         .D(n35153), .Z(sys_clk_enable_347)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(336[21] 342[28])
    defparam i25131_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 mux_243_i5_3_lut (.A(calc_temp[4]), .B(n2076), .C(r2_active), 
         .Z(n2109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i5_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_269 (.A(state[0]), .B(r2_active), .C(n29321), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[66])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_269.init = 16'hf1f0;
    LUT4 i10_4_lut_adj_270 (.A(input_temp[8]), .B(n20), .C(n16_adj_1858), 
         .D(input_temp[1]), .Z(n31704)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_270.init = 16'hfffe;
    LUT4 mux_333_Mux_13_i15_4_lut (.A(n149), .B(n2067), .C(state[3]), 
         .D(state[2]), .Z(calc_temp_31__N_1055[13])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam mux_333_Mux_13_i15_4_lut.init = 16'h0aca;
    LUT4 i1_3_lut_3_lut_4_lut_adj_271 (.A(state[0]), .B(r2_active), .C(n40), 
         .D(state[3]), .Z(L1_Buffer_127__N_785[51])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_271.init = 16'h110f;
    LUT4 rem_103_i289_3_lut_4_lut (.A(n34885), .B(n16697), .C(n409_adj_1807), 
         .D(n378_adj_1816), .Z(n423_adj_1800)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i289_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i9_4_lut_adj_272 (.A(n33281), .B(n18), .C(input_temp[4]), .D(input_temp[9]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut_adj_272.init = 16'hfffe;
    LUT4 i271_2_lut_rep_645 (.A(state[3]), .B(state[2]), .Z(n35185)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i271_2_lut_rep_645.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_273 (.A(state[3]), .B(state[2]), 
         .C(state[1]), .D(n35184), .Z(L1_Buffer_127__N_785[80])) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_273.init = 16'h01ab;
    LUT4 i1_3_lut_4_lut_4_lut_adj_274 (.A(state[3]), .B(state[2]), .C(n35186), 
         .D(n35184), .Z(L1_Buffer_127__N_785[108])) /* synthesis lut_function=(!(A (D)+!A (B+!(C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_274.init = 16'h10ba;
    LUT4 i25242_2_lut_rep_544_3_lut (.A(state[3]), .B(state[2]), .C(state[1]), 
         .Z(n35084)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i25242_2_lut_rep_544_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_rep_646 (.A(blink_toggle), .B(state[0]), .Z(n35186)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_646.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_adj_275 (.A(blink_toggle), .B(state[0]), .C(state[2]), 
         .D(state[1]), .Z(n29246)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_4_lut_adj_275.init = 16'hffc2;
    LUT4 i29_3_lut_4_lut_4_lut_4_lut (.A(blink_toggle), .B(state[0]), .C(state[2]), 
         .D(state[1]), .Z(n13_adj_1690)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i29_3_lut_4_lut_4_lut_4_lut.init = 16'hf0c2;
    LUT4 i1_2_lut_3_lut_4_lut_adj_276 (.A(blink_toggle), .B(state[0]), .C(state[2]), 
         .D(state[1]), .Z(n208)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_adj_276.init = 16'hf0f2;
    LUT4 i1_2_lut_3_lut_adj_277 (.A(n659), .B(n662_adj_1715), .C(n31911), 
         .Z(n4832)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i1_2_lut_3_lut_adj_277.init = 16'h9696;
    LUT4 i5_2_lut (.A(input_temp[7]), .B(input_temp[5]), .Z(n16_adj_1858)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_556_3_lut (.A(blink_toggle), .B(state[0]), .C(state[1]), 
         .Z(n35096)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_556_3_lut.init = 16'hf2f2;
    LUT4 i7_4_lut_adj_278 (.A(input_temp[2]), .B(input_temp[0]), .C(input_temp[3]), 
         .D(input_temp[6]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_278.init = 16'hfffe;
    LUT4 i1_2_lut_adj_279 (.A(tick_1s), .B(r2_active_N_1169), .Z(n1)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_279.init = 16'hdddd;
    LUT4 i24949_4_lut (.A(n16994), .B(n14_adj_1684), .C(n14), .D(state[0]), 
         .Z(n120_adj_1830)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i24949_4_lut.init = 16'hfaee;
    LUT4 rem_103_i293_3_lut_4_lut (.A(n34885), .B(n16697), .C(n413_adj_1803), 
         .D(n34894), .Z(n427_adj_1797)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i293_3_lut_4_lut.init = 16'he0f1;
    LUT4 i20689_3_lut_4_lut_4_lut_4_lut (.A(blink_toggle), .B(state[0]), 
         .C(state[2]), .D(state[1]), .Z(n26_adj_1887)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i20689_3_lut_4_lut_4_lut_4_lut.init = 16'h0f32;
    LUT4 rem_103_i381_3_lut_4_lut (.A(n34861), .B(n16700), .C(n543_adj_1761), 
         .D(n512_adj_1770), .Z(n557)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i381_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i25238_2_lut_rep_513_3_lut_4_lut (.A(blink_toggle), .B(state[0]), 
         .C(state[2]), .D(state[1]), .Z(n35053)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C+!(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i25238_2_lut_rep_513_3_lut_4_lut.init = 16'hf0fd;
    LUT4 i4_4_lut_adj_280 (.A(n35069), .B(n26833), .C(n31704), .D(n6_adj_1842), 
         .Z(n5390)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(213[24:60])
    defparam i4_4_lut_adj_280.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_adj_281 (.A(blink_toggle), .B(state[0]), 
         .C(state[2]), .D(state[1]), .Z(n7_adj_1827)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_adj_281.init = 16'h0032;
    LUT4 i25185_2_lut_rep_647 (.A(state[1]), .B(state[2]), .Z(n35187)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i25185_2_lut_rep_647.init = 16'h4444;
    LUT4 i17533_2_lut_3_lut (.A(state[1]), .B(state[2]), .C(bcd_val[3]), 
         .Z(n14_adj_1832)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i17533_2_lut_3_lut.init = 16'h4040;
    LUT4 i17702_3_lut_4_lut (.A(state[1]), .B(state[2]), .C(n34984), .D(i_cen[1]), 
         .Z(n14_adj_1861)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i17702_3_lut_4_lut.init = 16'h0440;
    LUT4 i17500_2_lut_3_lut (.A(state[1]), .B(state[2]), .C(bcd_val[2]), 
         .Z(n14_adj_1833)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i17500_2_lut_3_lut.init = 16'h4040;
    LUT4 i14792_4_lut (.A(n23398), .B(n23400), .C(state[3]), .D(n35073), 
         .Z(sys_clk_enable_138)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i14792_4_lut.init = 16'hccca;
    LUT4 i14780_3_lut (.A(n23397), .B(n46), .C(state[2]), .Z(n23398)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i14780_3_lut.init = 16'h3a3a;
    LUT4 i17495_2_lut_3_lut (.A(state[1]), .B(state[2]), .C(bcd_val[1]), 
         .Z(n14_adj_1834)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i17495_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_4_lut_adj_282 (.A(state[1]), .B(state[2]), .C(n34754), 
         .D(n69), .Z(n4_adj_1863)) /* synthesis lut_function=(A (C)+!A (B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_282.init = 16'he4a0;
    LUT4 mod_105_i263_3_lut_4_lut (.A(n34917), .B(n16704), .C(n369), .D(apuesta[7]), 
         .Z(n383)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i263_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_4_lut_adj_283 (.A(state[1]), .B(state[2]), .C(n78), 
         .D(n35090), .Z(n66)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (D)+!B !(C)))) */ ;
    defparam i1_4_lut_4_lut_adj_283.init = 16'h3074;
    LUT4 i2_3_lut_4_lut_adj_284 (.A(state[1]), .B(state[2]), .C(state[3]), 
         .D(n35082), .Z(n25437)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_284.init = 16'hb000;
    LUT4 i2268_3_lut_rep_648 (.A(j_cen[1]), .B(j_cen[3]), .C(j_cen[2]), 
         .Z(n35188)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i2268_3_lut_rep_648.init = 16'hc8c8;
    LUT4 i17785_2_lut_3_lut_3_lut (.A(j_cen[3]), .B(j_cen[2]), .C(n34992), 
         .Z(n9159)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i17785_2_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i17291_2_lut_4_lut (.A(j_cen[1]), .B(j_cen[3]), .C(j_cen[2]), 
         .D(j_cen[0]), .Z(n2555)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam i17291_2_lut_4_lut.init = 16'h3700;
    LUT4 i17911_2_lut_4_lut (.A(j_cen[1]), .B(j_cen[3]), .C(j_cen[2]), 
         .D(blink_toggle), .Z(n8575)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i17911_2_lut_4_lut.init = 16'hffc8;
    LUT4 i17765_2_lut_3_lut_3_lut (.A(j_cen[1]), .B(j_cen[3]), .C(n34992), 
         .Z(n9160)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i17765_2_lut_3_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_649 (.A(i_cen[3]), .B(i_cen[2]), .Z(n35189)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_649.init = 16'h4444;
    LUT4 i17887_2_lut_3_lut (.A(i_cen[3]), .B(i_cen[2]), .C(r2_active), 
         .Z(n8480)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i17887_2_lut_3_lut.init = 16'h4f4f;
    CCU2D add_242_9 (.A0(Res_15__N_1527[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n30492), .B1(B_input[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n31024), .COUT(n31025), .S0(n2070), .S1(n2069));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(304[38:42])
    defparam add_242_9.INIT0 = 16'hfaaa;
    defparam add_242_9.INIT1 = 16'h5aaa;
    defparam add_242_9.INJECT1_0 = "NO";
    defparam add_242_9.INJECT1_1 = "NO";
    PFUMX i15421 (.BLUT(n25), .ALUT(n27), .C0(n35080), .Z(n8625));
    CCU2D add_242_7 (.A0(Res_15__N_1527[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Res_15__N_1527[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31023), .COUT(n31024), .S0(n2072), .S1(n2071));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(304[38:42])
    defparam add_242_7.INIT0 = 16'h0555;
    defparam add_242_7.INIT1 = 16'h0555;
    defparam add_242_7.INJECT1_0 = "NO";
    defparam add_242_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_285 (.A(state[2]), .B(state[0]), .Z(n48)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_adj_285.init = 16'h4444;
    LUT4 rem_103_i257_3_lut_4_lut (.A(n333_adj_1809), .B(n34904), .C(n34900), 
         .D(n332), .Z(n377_adj_1814)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i257_3_lut_4_lut.init = 16'hfe01;
    LUT4 i1_3_lut_rep_650 (.A(i_cen[1]), .B(i_cen[3]), .C(i_cen[2]), .Z(n35190)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[19:24])
    defparam i1_3_lut_rep_650.init = 16'hc8c8;
    LUT4 i1_2_lut_4_lut_adj_286 (.A(i_cen[1]), .B(i_cen[3]), .C(i_cen[2]), 
         .D(i_cen[0]), .Z(n2483)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[19:24])
    defparam i1_2_lut_4_lut_adj_286.init = 16'h3700;
    LUT4 i1_2_lut_2_lut_adj_287 (.A(idx_r1[3]), .B(idx_r1[0]), .Z(n1725)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_2_lut_adj_287.init = 16'h9999;
    LUT4 rem_103_i288_3_lut_4_lut (.A(n34885), .B(n16697), .C(n408_adj_1808), 
         .D(n377_adj_1814), .Z(n422_adj_1801)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i288_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_1438_i6_4_lut (.A(n6542), .B(n2108), .C(n6479), .D(state[2]), 
         .Z(n6491)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i6_4_lut.init = 16'h0aca;
    LUT4 i18229_2_lut_rep_351_3_lut_4_lut (.A(n34905), .B(n16696), .C(n383_adj_1812), 
         .D(n337), .Z(n34891)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+!(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i18229_2_lut_rep_351_3_lut_4_lut.init = 16'hf2fd;
    LUT4 i1_3_lut_rep_466 (.A(state[0]), .B(n26833), .C(n27041), .Z(n35006)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_rep_466.init = 16'h0202;
    LUT4 mod_105_i228_3_lut_rep_383_4_lut_4_lut_4_lut (.A(n34936), .B(n289), 
         .C(n34948), .D(n34961), .Z(n34923)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;
    defparam mod_105_i228_3_lut_rep_383_4_lut_4_lut_4_lut.init = 16'h6664;
    LUT4 rem_103_i386_3_lut_4_lut (.A(n34861), .B(n16700), .C(n548_adj_1756), 
         .D(n517_adj_1765), .Z(n562_adj_1748)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i386_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut_adj_288 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_cen[0]), .Z(n33372)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_288.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_289 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_cen[3]), .Z(n33370)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_289.init = 16'h0200;
    LUT4 i1_4_lut_adj_290 (.A(j_mil[2]), .B(n48), .C(n34997), .D(j_mil[1]), 
         .Z(n14_adj_1839)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_adj_290.init = 16'h4888;
    LUT4 i4_4_lut_adj_291 (.A(n424), .B(n422), .C(n426), .D(n6_adj_1843), 
         .Z(n16707)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i4_4_lut_adj_291.init = 16'hfffe;
    PFUMX i25456 (.BLUT(n34729), .ALUT(n34728), .C0(n33604), .Z(n34730));
    LUT4 rem_103_i196_3_lut_4_lut_3_lut_4_lut (.A(n245), .B(n34940), .C(n242_adj_1820), 
         .D(n34941), .Z(n288)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i196_3_lut_4_lut_3_lut_4_lut.init = 16'h11e0;
    PFUMX i25317 (.BLUT(n36108), .ALUT(n34406), .C0(state[3]), .Z(sys_clk_enable_98));
    LUT4 i25143_4_lut (.A(n33838), .B(n12_adj_1841), .C(osc_div[24]), 
         .D(osc_div[22]), .Z(osc_div_25__N_499)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(167[16:33])
    defparam i25143_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_4_lut_adj_292 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_cen[1]), .Z(n33371)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_292.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_293 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11510), .Z(n33374)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_293.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_294 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11511), .Z(n33395)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_294.init = 16'h0200;
    FD1P3AX alu_opB_i0_i13 (.D(n33438), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i13.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_295 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_uni[0]), .Z(n33387)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_295.init = 16'h0200;
    LUT4 i1_4_lut_adj_296 (.A(Res_15__N_1527[1]), .B(alu_sum_res[1]), .C(n33313), 
         .D(n35070), .Z(n26)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_adj_296.init = 16'heca0;
    LUT4 i1_2_lut_4_lut_adj_297 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_dec[0]), .Z(n33385)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_297.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_298 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_cen[2]), .Z(n33368)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_298.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_299 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_uni[1]), .Z(n33388)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_299.init = 16'h0200;
    FD1P3AX L2_Buffer__i94 (.D(n33521), .SP(sys_clk_enable_352), .CK(sys_clk), 
            .Q(L2_Buffer[115]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam L2_Buffer__i94.GSR = "DISABLED";
    FD1P3AX alu_opB_i0_i12 (.D(n33440), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_300 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_dec[1]), .Z(n33394)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_300.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_301 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_uni[2]), .Z(n33382)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_301.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_302 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_dec[2]), .Z(n33389)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_302.init = 16'h0200;
    LUT4 rem_103_i258_3_lut_4_lut (.A(n34905), .B(n16696), .C(n34904), 
         .D(n333_adj_1809), .Z(n378_adj_1816)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i258_3_lut_4_lut.init = 16'hf20d;
    LUT4 i3_4_lut_adj_303 (.A(n380_adj_1815), .B(n377_adj_1814), .C(n378_adj_1816), 
         .D(n379_adj_1817), .Z(n16697)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i3_4_lut_adj_303.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_304 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11508), .Z(n33369)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_304.init = 16'h0200;
    LUT4 i1_2_lut_rep_490_3_lut (.A(RESET_N_c), .B(n35162), .C(blink_toggle), 
         .Z(n35030)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_490_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_4_lut_adj_305 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11509), .Z(n33376)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_305.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_306 (.A(state[3]), .B(n35132), .C(state[2]), 
         .D(n35182), .Z(L1_Buffer_127__N_785[60])) /* synthesis lut_function=(A (B)+!A !((D)+!C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_306.init = 16'h88d8;
    LUT4 i1_2_lut_4_lut_adj_307 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_uni[3]), .Z(n33377)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_307.init = 16'h0200;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_4_lut_4_lut (.A(RESET_N_c), .B(n35162), 
         .C(n35172), .D(n35042), .Z(n33521)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_4_lut_adj_308 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(i_dec[3]), .Z(n33392)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_308.init = 16'h0200;
    FD1P3IX apuesta_i0_i1 (.D(input_temp[1]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i1.GSR = "DISABLED";
    LUT4 rem_103_i418_3_lut_4_lut (.A(n34855), .B(n16701), .C(n594_adj_1737), 
         .D(n563_adj_1747), .Z(n608_adj_1726)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i418_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut_adj_309 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11506), .Z(n33383)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_309.init = 16'h0200;
    LUT4 mux_243_i6_3_lut (.A(calc_temp[5]), .B(n2075), .C(r2_active), 
         .Z(n2108)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i6_3_lut.init = 16'hcaca;
    LUT4 mod_105_i262_3_lut_4_lut (.A(n34917), .B(n16704), .C(n368), .D(n34922), 
         .Z(n382)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i262_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_1438_i7_4_lut (.A(n6541), .B(n2107), .C(n6479), .D(state[2]), 
         .Z(n6490)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i7_4_lut.init = 16'h0aca;
    LUT4 mux_243_i7_3_lut (.A(calc_temp[6]), .B(n2074), .C(r2_active), 
         .Z(n2107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i7_3_lut.init = 16'hcaca;
    LUT4 rem_103_i259_3_lut_4_lut (.A(n34905), .B(n16696), .C(n34908), 
         .D(n34915), .Z(n379_adj_1817)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i259_3_lut_4_lut.init = 16'hf20d;
    LUT4 i1_2_lut_rep_389_3_lut_4_lut (.A(n245), .B(n34940), .C(n242_adj_1820), 
         .D(n34941), .Z(n34929)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i1_2_lut_rep_389_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_4_lut_adj_310 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11507), .Z(n33378)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_310.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_311 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11504), .Z(n33390)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_311.init = 16'h0200;
    PFUMX i25525 (.BLUT(n35210), .ALUT(n35211), .C0(state[1]), .Z(sys_clk_enable_348));
    LUT4 i1_2_lut_4_lut_adj_312 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11505), .Z(n33384)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_312.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_313 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11502), .Z(n33379)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_313.init = 16'h0200;
    LUT4 rem_103_i383_3_lut_4_lut (.A(n34861), .B(n16700), .C(n545_adj_1759), 
         .D(n514_adj_1768), .Z(n559_adj_1751)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i383_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_314 (.A(state[0]), .B(n35098), .C(n35185), .D(n35170), 
         .Z(L1_Buffer_127__N_785[84])) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_314.init = 16'hcecf;
    LUT4 rem_103_i385_3_lut_4_lut (.A(n34861), .B(n16700), .C(n547_adj_1757), 
         .D(n516_adj_1766), .Z(n561_adj_1749)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i385_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX alu_opB_i0_i11 (.D(n33439), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i11.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_315 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11503), .Z(n33375)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_315.init = 16'h0200;
    LUT4 i1_2_lut_4_lut_adj_316 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11500), .Z(n33386)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_316.init = 16'h0200;
    LUT4 i1_2_lut_rep_355_3_lut (.A(n34906), .B(n381), .C(n16706), .Z(n34895)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_355_3_lut.init = 16'hf8f8;
    LUT4 i24987_4_lut (.A(osc_div[18]), .B(n33832), .C(n33675), .D(osc_div[17]), 
         .Z(n33838)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i24987_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_317 (.A(state[0]), .B(n26833), .C(n27041), 
         .D(n11501), .Z(n33373)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_adj_317.init = 16'h0200;
    LUT4 mux_1438_i8_4_lut (.A(n6540), .B(n2106), .C(n6479), .D(state[2]), 
         .Z(n6489)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i8_4_lut.init = 16'h0aca;
    PFUMX i25953 (.BLUT(n36129), .ALUT(n36130), .C0(state[2]), .Z(n31680));
    LUT4 i1_2_lut_rep_468 (.A(n14), .B(n16994), .Z(n35008)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_468.init = 16'heeee;
    FD1P3AX state_i0 (.D(state_3__N_54[0]), .SP(sys_clk_enable_356), .CK(sys_clk), 
            .Q(state[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam state_i0.GSR = "ENABLED";
    CCU2D add_242_5 (.A0(Res_15__N_1527[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Res_15__N_1527[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31022), .COUT(n31023), .S0(n2074), .S1(n2073));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(304[38:42])
    defparam add_242_5.INIT0 = 16'h0555;
    defparam add_242_5.INIT1 = 16'h0555;
    defparam add_242_5.INJECT1_0 = "NO";
    defparam add_242_5.INJECT1_1 = "NO";
    CCU2D add_242_3 (.A0(Res_15__N_1527[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Res_15__N_1527[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31021), .COUT(n31022), .S0(n2076), .S1(n2075));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(304[38:42])
    defparam add_242_3.INIT0 = 16'hfaaa;
    defparam add_242_3.INIT1 = 16'h0555;
    defparam add_242_3.INJECT1_0 = "NO";
    defparam add_242_3.INJECT1_1 = "NO";
    CCU2D add_242_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Res_15__N_1527[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31021), .S1(n2077));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(304[38:42])
    defparam add_242_1.INIT0 = 16'hF000;
    defparam add_242_1.INIT1 = 16'h0555;
    defparam add_242_1.INJECT1_0 = "NO";
    defparam add_242_1.INJECT1_1 = "NO";
    LUT4 mod_105_i292_3_lut_4_lut_4_lut (.A(n34906), .B(n381), .C(n412), 
         .D(n16706), .Z(n426)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_105_i292_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i816_2_lut_3_lut (.A(n14), .B(n16994), .C(r2_active), .Z(n5418)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i816_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_4_lut_4_lut_adj_318 (.A(state[3]), .B(n35132), .C(n35180), 
         .D(state[2]), .Z(L1_Buffer_127__N_785[72])) /* synthesis lut_function=(A (B)+!A (C+(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_4_lut_adj_318.init = 16'hddd8;
    PFUMX i25450 (.BLUT(n34700), .ALUT(n34699), .C0(n34902), .Z(n34701));
    LUT4 i2_3_lut_rep_362 (.A(n34918), .B(n34939), .C(n33591), .Z(n34902)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i2_3_lut_rep_362.init = 16'h9696;
    LUT4 i1_2_lut_rep_433_3_lut_4_lut (.A(n14), .B(n16994), .C(j_dec[0]), 
         .D(r2_active), .Z(n34973)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_433_3_lut_4_lut.init = 16'h00e0;
    LUT4 i1_4_lut_adj_319 (.A(state[3]), .B(state[1]), .C(state[0]), .D(state[2]), 
         .Z(n29321)) /* synthesis lut_function=(!(A+!(B+(C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_adj_319.init = 16'h5445;
    LUT4 i1_4_lut_adj_320 (.A(j_mil[3]), .B(n48), .C(n35010), .D(n31331), 
         .Z(n14_adj_1838)) /* synthesis lut_function=(A (B (C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_adj_320.init = 16'h8488;
    LUT4 i2_3_lut_adj_321 (.A(j_mil[2]), .B(j_mil[0]), .C(j_mil[1]), .Z(n31331)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(99[12:17])
    defparam i2_3_lut_adj_321.init = 16'h8080;
    LUT4 i1_2_lut_rep_356_4_lut (.A(n34918), .B(n34939), .C(n33591), .D(n475_adj_1780), 
         .Z(n34896)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i1_2_lut_rep_356_4_lut.init = 16'h6996;
    LUT4 i1_4_lut_adj_322 (.A(n35180), .B(n35097), .C(n35185), .D(state[1]), 
         .Z(L1_Buffer_127__N_785[65])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C))) */ ;
    defparam i1_4_lut_adj_322.init = 16'hcfcd;
    LUT4 i1_2_lut_3_lut_adj_323 (.A(tick_anim), .B(state[3]), .C(r2_active), 
         .Z(n4_adj_1823)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i1_2_lut_3_lut_adj_323.init = 16'hdfdf;
    LUT4 i814_2_lut_rep_442_3_lut (.A(n14), .B(n16994), .C(r2_active), 
         .Z(n34982)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i814_2_lut_rep_442_3_lut.init = 16'hf1f1;
    LUT4 i17288_2_lut_rep_458_3_lut (.A(n14), .B(n16994), .C(r2_active), 
         .Z(n34998)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17288_2_lut_rep_458_3_lut.init = 16'he0e0;
    LUT4 i2890_2_lut_rep_425_3_lut_4_lut (.A(n14), .B(n16994), .C(i_dec[0]), 
         .D(r2_active), .Z(n34965)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2890_2_lut_rep_425_3_lut_4_lut.init = 16'he000;
    LUT4 i279_4_lut (.A(state[3]), .B(state[2]), .C(state[1]), .D(state[0]), 
         .Z(L1_Buffer_127__N_785[46])) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C)))) */ ;
    defparam i279_4_lut.init = 16'h4541;
    LUT4 i1_2_lut_3_lut_4_lut_adj_324 (.A(n14), .B(n16994), .C(n33531), 
         .D(r2_active), .Z(n33532)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_324.init = 16'h0010;
    LUT4 rem_103_i387_3_lut_4_lut (.A(n34861), .B(n16700), .C(n549_adj_1755), 
         .D(n518_adj_1764), .Z(n563_adj_1747)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i387_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_243_i8_3_lut (.A(calc_temp[7]), .B(n2073), .C(r2_active), 
         .Z(n2106)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i8_3_lut.init = 16'hcaca;
    LUT4 mod_105_i258_3_lut_4_lut (.A(n34917), .B(n16704), .C(n364), .D(n333), 
         .Z(n378)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i258_3_lut_4_lut.init = 16'hf1e0;
    LUT4 rem_103_i292_3_lut_4_lut_4_lut (.A(n34891), .B(n34912), .C(n412_adj_1804), 
         .D(n16697), .Z(n426_adj_1798)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam rem_103_i292_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 rem_103_i421_3_lut_4_lut (.A(n34855), .B(n16701), .C(n597_adj_1734), 
         .D(n34858), .Z(n611_adj_1723)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i421_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_212_i99_3_lut_4_lut_4_lut_4_lut (.A(rom_out_r2_3__N_42[1]), .B(rom_out_r2_3__N_42[0]), 
         .C(idx_r2[3]), .Z(n1966)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(281[56:62])
    defparam mod_212_i99_3_lut_4_lut_4_lut_4_lut.init = 16'ha6a6;
    LUT4 i808_2_lut_rep_470 (.A(r2_active), .B(n5_adj_1876), .Z(n35010)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(324[21] 327[53])
    defparam i808_2_lut_rep_470.init = 16'hbbbb;
    FD1P3AX alu_opB_i0_i10 (.D(n33437), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i10.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_325 (.A(state[3]), .B(n35073), .C(n35181), .D(n35182), 
         .Z(L1_Buffer_127__N_785[28])) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_325.init = 16'h4445;
    LUT4 i2_3_lut_rep_346 (.A(n428), .B(apuesta[5]), .C(n429), .Z(n34886)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_346.init = 16'hfefe;
    LUT4 i1_2_lut_rep_457_3_lut (.A(r2_active), .B(n5_adj_1876), .C(j_mil[0]), 
         .Z(n34997)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(324[21] 327[53])
    defparam i1_2_lut_rep_457_3_lut.init = 16'h4040;
    LUT4 i18164_3_lut_4_lut (.A(r2_active), .B(n5_adj_1876), .C(j_mil[0]), 
         .D(n21_adj_1857), .Z(n14081)) /* synthesis lut_function=(A (C (D))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(324[21] 327[53])
    defparam i18164_3_lut_4_lut.init = 16'hb400;
    LUT4 i18270_2_lut_rep_342_4_lut (.A(n428), .B(apuesta[5]), .C(n429), 
         .D(n427), .Z(n34882)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i18270_2_lut_rep_342_4_lut.init = 16'hfe00;
    FD1P3IX apuesta_i0_i2 (.D(input_temp[2]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i2.GSR = "DISABLED";
    FD1P3AX alu_opB_i0_i9 (.D(n33447), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i9.GSR = "DISABLED";
    LUT4 rem_103_i384_3_lut_4_lut (.A(n34861), .B(n16700), .C(n546_adj_1758), 
         .D(n515_adj_1767), .Z(n560_adj_1750)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i384_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX alu_opB_i0_i8 (.D(n33446), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i8.GSR = "DISABLED";
    FD1P3AX alu_opB_i0_i7 (.D(n33445), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i7.GSR = "DISABLED";
    LUT4 i25262_2_lut (.A(state[0]), .B(state[3]), .Z(L1_Buffer_127__N_785[102])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i25262_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_rep_347 (.A(n521_adj_1762), .B(n16919), .Z(n34887)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_347.init = 16'h6666;
    LUT4 i15260_3_lut_4_lut (.A(RESET_N_c), .B(n35042), .C(n1921), .D(n35140), 
         .Z(n23874)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i15260_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_adj_326 (.A(state[3]), .B(n35078), .C(r2_active), .D(n8_adj_1671), 
         .Z(sys_clk_enable_178)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_326.init = 16'h8a88;
    LUT4 rem_103_i197_3_lut_4_lut_4_lut (.A(n245), .B(n34940), .C(n34941), 
         .D(n242_adj_1820), .Z(n289_adj_1821)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i197_3_lut_4_lut_4_lut.init = 16'h998c;
    LUT4 i5474_3_lut_4_lut (.A(n521_adj_1762), .B(n16919), .C(n567_adj_1744), 
         .D(n36107), .Z(n10760)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B (C+(D))))) */ ;
    defparam i5474_3_lut_4_lut.init = 16'h6660;
    LUT4 i1_4_lut_adj_327 (.A(j_dec[2]), .B(n35187), .C(j_dec[3]), .D(n4_adj_1697), 
         .Z(n14_adj_1835)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_adj_327.init = 16'h48c0;
    LUT4 i2_3_lut_3_lut_4_lut (.A(RESET_N_c), .B(n35042), .C(n35142), 
         .D(i_dec[0]), .Z(n31824)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h7000;
    LUT4 i2_3_lut_rep_366 (.A(n382), .B(apuesta[6]), .C(n383), .Z(n34906)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_366.init = 16'hfefe;
    LUT4 i1_4_lut_adj_328 (.A(j_dec[2]), .B(n35187), .C(n34973), .D(j_dec[1]), 
         .Z(n14_adj_1836)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_adj_328.init = 16'h4888;
    PFUMX i16487 (.BLUT(n33368), .ALUT(n22_adj_1856), .C0(state[3]), .Z(i_mil_3__N_118[2]));
    LUT4 mux_1784_i30_3_lut_4_lut (.A(RESET_N_c), .B(n35042), .C(rom_out_r1[3]), 
         .D(i_cen[3]), .Z(n8536)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam mux_1784_i30_3_lut_4_lut.init = 16'hf780;
    LUT4 i5_3_lut_adj_329 (.A(n467), .B(n10_adj_1867), .C(n469), .Z(n16708)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i5_3_lut_adj_329.init = 16'hfefe;
    FD1P3AX alu_opB_i0_i6 (.D(n33443), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i6.GSR = "DISABLED";
    LUT4 i18268_2_lut_rep_361_4_lut (.A(n382), .B(apuesta[6]), .C(n383), 
         .D(n381), .Z(n34901)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i18268_2_lut_rep_361_4_lut.init = 16'hfe00;
    LUT4 i4_4_lut_adj_330 (.A(n470), .B(n471), .C(n472), .D(n468), .Z(n10_adj_1867)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i4_4_lut_adj_330.init = 16'hfffe;
    LUT4 i2_3_lut_3_lut_4_lut_adj_331 (.A(RESET_N_c), .B(n35042), .C(n35120), 
         .D(i_mil[0]), .Z(n31791)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i2_3_lut_3_lut_4_lut_adj_331.init = 16'h7000;
    LUT4 i15272_3_lut_4_lut (.A(RESET_N_c), .B(n35042), .C(n35139), .D(i_uni[3]), 
         .Z(n23886)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i15272_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_1784_i31_3_lut_4_lut (.A(RESET_N_c), .B(n35042), .C(n35019), 
         .D(n35190), .Z(n11959)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam mux_1784_i31_3_lut_4_lut.init = 16'hf780;
    LUT4 rem_103_i260_3_lut_4_lut_4_lut_4_lut (.A(n335_adj_1810), .B(n34911), 
         .C(n16696), .D(n34909), .Z(n380_adj_1815)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !(B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i260_3_lut_4_lut_4_lut_4_lut.init = 16'h6a62;
    LUT4 rem_103_i422_3_lut_4_lut (.A(n34855), .B(n16701), .C(n598_adj_1733), 
         .D(n567_adj_1744), .Z(n612_adj_1722)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i422_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_474 (.A(r2_active), .B(n5_adj_1876), .Z(n35014)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_474.init = 16'h8888;
    LUT4 i1_2_lut_adj_332 (.A(i_uni[3]), .B(i_uni[1]), .Z(n2518)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_adj_332.init = 16'h4444;
    LUT4 i18101_3_lut_4_lut (.A(r2_active), .B(n5_adj_1876), .C(i_mil[0]), 
         .D(n21_adj_1857), .Z(n14170)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i18101_3_lut_4_lut.init = 16'h7800;
    LUT4 i7_4_lut_adj_333 (.A(n564), .B(n14_adj_1844), .C(n10_adj_1845), 
         .D(n560), .Z(n16710)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i7_4_lut_adj_333.init = 16'hfffe;
    LUT4 i6_4_lut_adj_334 (.A(n562), .B(n559), .C(n561), .D(n563), .Z(n14_adj_1844)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i6_4_lut_adj_334.init = 16'hfffe;
    LUT4 i1_2_lut_rep_450_3_lut (.A(r2_active), .B(n5_adj_1876), .C(i_mil[0]), 
         .Z(n34990)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_450_3_lut.init = 16'h8080;
    CCU2D add_450_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31020), 
          .S0(n149));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(236[35:42])
    defparam add_450_cout.INIT0 = 16'h0000;
    defparam add_450_cout.INIT1 = 16'h0000;
    defparam add_450_cout.INJECT1_0 = "NO";
    defparam add_450_cout.INJECT1_1 = "NO";
    LUT4 i22382_2_lut_rep_357_3_lut_4_lut (.A(n335_adj_1810), .B(n34911), 
         .C(n333_adj_1809), .D(n34915), .Z(n34897)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i22382_2_lut_rep_357_3_lut_4_lut.init = 16'hfff8;
    FD1P3AX alu_opB_i0_i5 (.D(n33444), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(B_input[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_431_3_lut_4_lut (.A(RESET_N_c), .B(n35041), .C(n35172), 
         .D(r2_active), .Z(n34971)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam i1_2_lut_rep_431_3_lut_4_lut.init = 16'h00d0;
    LUT4 i6_4_lut_adj_335 (.A(n516), .B(n12_adj_1888), .C(n517), .D(n513), 
         .Z(n16709)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i6_4_lut_adj_335.init = 16'hfffe;
    LUT4 i5_4_lut_adj_336 (.A(n518), .B(n514), .C(n515), .D(n512), .Z(n12_adj_1888)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i5_4_lut_adj_336.init = 16'hfffe;
    FD1P3IX apuesta_i0_i3 (.D(input_temp[3]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i3.GSR = "DISABLED";
    FD1P3IX alu_opB_i0_i4 (.D(n32344), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(B_input[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i4.GSR = "DISABLED";
    LUT4 i25256_3_lut_4_lut (.A(RESET_N_c), .B(n35041), .C(n35142), .D(r2_active), 
         .Z(n26926)) /* synthesis lut_function=(A (B (C+!(D)))+!A (C+!(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam i25256_3_lut_4_lut.init = 16'hd0dd;
    LUT4 i17848_3_lut_4_lut (.A(RESET_N_c), .B(n35041), .C(r2_active), 
         .D(n35188), .Z(n9052)) /* synthesis lut_function=(A (B (C+!(D)))+!A (C+!(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam i17848_3_lut_4_lut.init = 16'hd0dd;
    FD1P3IX apuesta_i0_i4 (.D(input_temp[4]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i4.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_337 (.A(n287), .B(n22_adj_1906), .C(n288), .D(n289_adj_1821), 
         .Z(n301)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;
    defparam i2_4_lut_adj_337.init = 16'h0405;
    LUT4 i25265_3_lut_4_lut (.A(RESET_N_c), .B(n35041), .C(n35141), .D(r2_active), 
         .Z(n24)) /* synthesis lut_function=(A (B ((D)+!C))+!A ((D)+!C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam i25265_3_lut_4_lut.init = 16'hdd0d;
    LUT4 i25204_2_lut (.A(state[2]), .B(state[3]), .Z(L1_Buffer_127__N_785[19])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i25204_2_lut.init = 16'h2222;
    FD1P3IX alu_opB_i0_i3 (.D(n32346), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(B_input[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i3.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_338 (.A(i_dec[3]), .B(n35153), .C(n34955), .D(i_dec[2]), 
         .Z(n33418)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_adj_338.init = 16'h4888;
    LUT4 state_3__I_0_425_Mux_1_i3_4_lut (.A(SW_MODE_c), .B(state[0]), .C(state[1]), 
         .D(n5390), .Z(n3_adj_1864)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam state_3__I_0_425_Mux_1_i3_4_lut.init = 16'h3830;
    LUT4 i1526_4_lut (.A(RESET_N_c), .B(n17077), .C(n35078), .D(state[3]), 
         .Z(n6663)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam i1526_4_lut.init = 16'ha088;
    FD1P3IX alu_opB_i0_i2 (.D(n32348), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(B_input[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i2.GSR = "DISABLED";
    LUT4 i14791_3_lut_4_lut (.A(n36114), .B(n5_adj_1876), .C(state[2]), 
         .D(n31_adj_1879), .Z(n9_adj_1875)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i14791_3_lut_4_lut.init = 16'hf808;
    LUT4 n34646_bdd_3_lut_3_lut_4_lut (.A(n36114), .B(n5_adj_1876), .C(n34646), 
         .D(state[3]), .Z(n34647)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n34646_bdd_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 i68_3_lut_4_lut (.A(n35034), .B(state[0]), .C(state[1]), .D(n120_adj_1830), 
         .Z(n31_adj_1879)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i68_3_lut_4_lut.init = 16'h1f10;
    FD1P3IX alu_opB_i0_i1 (.D(n7938), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(B_input[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opB_i0_i1.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_339 (.A(i_mil[2]), .B(i_mil[0]), .C(i_mil[1]), .Z(n31327)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[12:17])
    defparam i2_3_lut_adj_339.init = 16'h8080;
    FD1P3IX apuesta_i0_i5 (.D(input_temp[5]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i5.GSR = "DISABLED";
    LUT4 mux_1440_i15_3_lut (.A(alu_sum_res[14]), .B(n4873), .C(state[2]), 
         .Z(n6516)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i15_3_lut.init = 16'hcaca;
    LUT4 mux_1440_i16_3_lut (.A(alu_sum_res[15]), .B(n4872), .C(state[2]), 
         .Z(n6515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i16_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_436_3_lut_4_lut_4_lut (.A(apuesta[11]), .B(apuesta[10]), 
         .C(n35051), .D(apuesta[9]), .Z(n34976)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i2_2_lut_rep_436_3_lut_4_lut_4_lut.init = 16'hffbe;
    LUT4 i1_2_lut_adj_340 (.A(r2_active), .B(i_mil[3]), .Z(n8472)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_340.init = 16'hdddd;
    LUT4 mux_1438_i9_4_lut (.A(n6539), .B(n2105), .C(n6479), .D(state[2]), 
         .Z(n6488)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i9_4_lut.init = 16'h0aca;
    LUT4 mux_1440_i13_3_lut (.A(alu_sum_res[12]), .B(n4875), .C(state[2]), 
         .Z(n6518)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i13_3_lut.init = 16'hcaca;
    LUT4 i5249_3_lut_4_lut (.A(n429_adj_1796), .B(n34914), .C(n475_adj_1780), 
         .D(n34902), .Z(n4_adj_1689)) /* synthesis lut_function=(A (B (C+!(D)))+!A !(B+!(C+!(D)))) */ ;
    defparam i5249_3_lut_4_lut.init = 16'h9099;
    FD1P3AX alu_opA_i0_i15 (.D(n33442), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(alu_opA[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i15.GSR = "DISABLED";
    LUT4 mux_1440_i14_3_lut (.A(alu_sum_res[13]), .B(n4874), .C(state[2]), 
         .Z(n6517)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i14_3_lut.init = 16'hcaca;
    LUT4 mux_1440_i11_3_lut (.A(alu_sum_res[10]), .B(n4877), .C(state[2]), 
         .Z(n6520)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i11_3_lut.init = 16'hcaca;
    LUT4 mux_1440_i12_3_lut (.A(alu_sum_res[11]), .B(n4876), .C(state[2]), 
         .Z(n6519)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i12_3_lut.init = 16'hcaca;
    LUT4 mux_1440_i9_3_lut (.A(alu_sum_res[8]), .B(n4879), .C(state[2]), 
         .Z(n6522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i9_3_lut.init = 16'hcaca;
    LUT4 mux_1440_i10_3_lut (.A(alu_sum_res[9]), .B(n4878), .C(state[2]), 
         .Z(n6521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1440_i10_3_lut.init = 16'hcaca;
    LUT4 mod_105_i453_3_lut (.A(n612), .B(n643), .C(n617), .Z(n657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i453_3_lut.init = 16'hcaca;
    LUT4 i10_4_lut_adj_341 (.A(n11_adj_1891), .B(n20_adj_1896), .C(n16_adj_1897), 
         .D(n15_adj_1892), .Z(n662)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_341.init = 16'hfffe;
    LUT4 mod_105_i451_3_lut (.A(n610), .B(n641), .C(n617), .Z(n11_adj_1891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i451_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_342 (.A(n14_adj_1684), .B(n16994), .C(state[1]), 
         .Z(n21_adj_1717)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_342.init = 16'hf1f1;
    LUT4 i1_2_lut_3_lut_4_lut_adj_343 (.A(n14_adj_1684), .B(n16994), .C(j_cen[0]), 
         .D(r2_active), .Z(j_cen_3__N_740[0])) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_343.init = 16'hf01e;
    LUT4 i9_4_lut_adj_344 (.A(n23_adj_1894), .B(n13_adj_1899), .C(n12_adj_1900), 
         .D(n14_adj_1898), .Z(n20_adj_1896)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut_adj_344.init = 16'hfffe;
    LUT4 i5_4_lut_adj_345 (.A(n603), .B(n27_adj_1895), .C(n634), .D(n617), 
         .Z(n16_adj_1897)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i5_4_lut_adj_345.init = 16'hfcee;
    LUT4 mod_105_i449_3_lut (.A(n608), .B(n639), .C(n617), .Z(n15_adj_1892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i449_3_lut.init = 16'hcaca;
    LUT4 mod_105_i445_3_lut (.A(n604), .B(n635), .C(n617), .Z(n23_adj_1894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i445_3_lut.init = 16'hcaca;
    PFUMX i25951 (.BLUT(n36126), .ALUT(n36127), .C0(rom_out_r2_3__N_42[1]), 
          .Z(n36128));
    LUT4 i2_4_lut_adj_346 (.A(n609), .B(n17_adj_1893), .C(n640), .D(n617), 
         .Z(n13_adj_1899)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_346.init = 16'hfcee;
    LUT4 i1_4_lut_adj_347 (.A(n27045), .B(n605), .C(n636), .D(n617), 
         .Z(n12_adj_1900)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_347.init = 16'hfaee;
    FD1P3AX alu_opA_i0_i14 (.D(n33441), .SP(sys_clk_enable_389), .CK(sys_clk), 
            .Q(alu_opA[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i14.GSR = "DISABLED";
    LUT4 mux_243_i9_3_lut (.A(calc_temp[8]), .B(n2072), .C(r2_active), 
         .Z(n2105)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i9_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_348 (.A(n606), .B(n9_adj_1890), .C(n637), .D(n617), 
         .Z(n14_adj_1898)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i3_4_lut_adj_348.init = 16'hfcee;
    LUT4 mod_105_i448_3_lut (.A(n607), .B(n638), .C(n617), .Z(n17_adj_1893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i448_3_lut.init = 16'hcaca;
    LUT4 i811_2_lut_rep_453_3_lut (.A(n14_adj_1684), .B(n16994), .C(r2_active), 
         .Z(n34993)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i811_2_lut_rep_453_3_lut.init = 16'hf1f1;
    LUT4 i2_3_lut_rep_444_4_lut (.A(n14_adj_1684), .B(n16994), .C(r2_active), 
         .D(i_cen[0]), .Z(n34984)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_444_4_lut.init = 16'he000;
    LUT4 i3002_2_lut_rep_432_3_lut_4_lut (.A(n14_adj_1684), .B(n16994), 
         .C(j_cen[0]), .D(r2_active), .Z(n34972)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i3002_2_lut_rep_432_3_lut_4_lut.init = 16'h00e0;
    LUT4 mod_105_i257_3_lut_4_lut (.A(n34917), .B(n16704), .C(n363), .D(n34927), 
         .Z(n377)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i257_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut_4_lut_adj_349 (.A(state[3]), .B(n35132), .C(state[2]), 
         .D(n35182), .Z(L1_Buffer_127__N_785[83])) /* synthesis lut_function=(A (B)+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_4_lut_adj_349.init = 16'hd888;
    LUT4 mod_105_i443_3_lut (.A(n602), .B(n633), .C(n617), .Z(n27_adj_1895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i443_3_lut.init = 16'hcaca;
    LUT4 mod_105_i452_3_lut (.A(n611), .B(n642), .C(n617), .Z(n9_adj_1890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i452_3_lut.init = 16'hcaca;
    FD1P3IX alu_opA_i0_i13 (.D(n2031), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i13.GSR = "DISABLED";
    LUT4 i22374_2_lut_rep_364_3_lut_4_lut (.A(n34916), .B(n337), .C(n34915), 
         .D(n335_adj_1810), .Z(n34904)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i22374_2_lut_rep_364_3_lut_4_lut.init = 16'hfef0;
    LUT4 i9_4_lut_adj_350 (.A(n17_adj_1908), .B(n610), .C(n16), .D(n602), 
         .Z(n617)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut_adj_350.init = 16'hfffe;
    LUT4 i7_4_lut_adj_351 (.A(n604), .B(n608), .C(n609), .D(n606), .Z(n17_adj_1908)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_351.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_adj_352 (.A(state[3]), .B(n35173), 
         .C(n35078), .D(RESET_N_c), .Z(sys_clk_enable_395)) /* synthesis lut_function=(A (C (D))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_adj_352.init = 16'he400;
    LUT4 i6_4_lut_adj_353 (.A(n26877), .B(n607), .C(n603), .D(n605), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_353.init = 16'hfffe;
    LUT4 mux_1438_i10_4_lut (.A(n6538), .B(n2104), .C(n6479), .D(state[2]), 
         .Z(n6487)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i10_4_lut.init = 16'h0aca;
    LUT4 mux_243_i10_3_lut (.A(calc_temp[9]), .B(n2071), .C(r2_active), 
         .Z(n2104)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i10_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_4_lut_adj_354 (.A(n512), .B(n543), .C(n34866), .D(n558), 
         .Z(n10_adj_1845)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i2_2_lut_4_lut_adj_354.init = 16'hffca;
    LUT4 mod_105_i261_3_lut_4_lut (.A(n34917), .B(n16704), .C(n367), .D(n336), 
         .Z(n381)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i261_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX alu_opA_i0_i12 (.D(n2032), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i12.GSR = "DISABLED";
    LUT4 mux_1438_i11_4_lut (.A(n6537), .B(n2103), .C(n6479), .D(state[2]), 
         .Z(n6486)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i11_4_lut.init = 16'h0aca;
    LUT4 mod_105_i289_3_lut_4_lut (.A(n34901), .B(n16706), .C(n409), .D(n378), 
         .Z(n423)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i289_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_243_i11_3_lut (.A(calc_temp[10]), .B(n2070), .C(r2_active), 
         .Z(n2103)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i11_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_322 (.A(n566), .B(apuesta[2]), .C(n567), .Z(n34862)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_322.init = 16'hfefe;
    LUT4 mux_1438_i12_4_lut (.A(n6536), .B(n2102), .C(n6479), .D(state[2]), 
         .Z(n6485)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i12_4_lut.init = 16'h0aca;
    LUT4 mux_243_i12_3_lut (.A(calc_temp[11]), .B(n2069), .C(r2_active), 
         .Z(n2102)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i12_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_355 (.A(n33583), .B(n34918), .C(n16959), .D(n429_adj_1796), 
         .Z(n5029)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_355.init = 16'h0f96;
    LUT4 i1_2_lut_rep_473_3_lut_4_lut (.A(state[2]), .B(n36114), .C(RESET_N_c), 
         .D(state[3]), .Z(n35013)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_473_3_lut_4_lut.init = 16'h00e0;
    LUT4 mux_1438_i13_4_lut (.A(n6535), .B(n2101), .C(n6479), .D(state[2]), 
         .Z(n6484)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i13_4_lut.init = 16'h0aca;
    FD1P3IX alu_opA_i0_i11 (.D(n2033), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i11.GSR = "DISABLED";
    LUT4 mux_243_i13_3_lut (.A(calc_temp[12]), .B(n2068), .C(r2_active), 
         .Z(n2101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i13_3_lut.init = 16'hcaca;
    LUT4 i22459_2_lut_rep_382_3_lut_4_lut (.A(n34933), .B(n34948), .C(apuesta[8]), 
         .D(n34961), .Z(n34922)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i22459_2_lut_rep_382_3_lut_4_lut.init = 16'h0f1e;
    LUT4 n475_bdd_3_lut_4_lut (.A(n33583), .B(n34918), .C(n429_adj_1796), 
         .D(n16959), .Z(n34700)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (D))) */ ;
    defparam n475_bdd_3_lut_4_lut.init = 16'hff60;
    LUT4 mux_1438_i14_4_lut (.A(n6534), .B(n2100), .C(n6479), .D(state[2]), 
         .Z(n6483)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i14_4_lut.init = 16'h0aca;
    LUT4 i24982_4_lut (.A(osc_div[15]), .B(n33802), .C(osc_div[11]), .D(osc_div[12]), 
         .Z(n33832)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i24982_4_lut.init = 16'h8000;
    LUT4 mux_243_i14_3_lut (.A(calc_temp[13]), .B(n2067), .C(r2_active), 
         .Z(n2100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i14_3_lut.init = 16'hcaca;
    LUT4 i5410_3_lut_4_lut (.A(n33583), .B(n34918), .C(n429_adj_1796), 
         .D(n16959), .Z(n10648)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i5410_3_lut_4_lut.init = 16'hf600;
    FD1P3IX apuesta_i0_i6 (.D(input_temp[6]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i6.GSR = "DISABLED";
    LUT4 i17_4_lut (.A(n36108), .B(state[1]), .C(state[3]), .D(n6_adj_1678), 
         .Z(sys_clk_enable_104)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'hca0a;
    FD1P3IX alu_opA_i0_i10 (.D(n2034), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i10.GSR = "DISABLED";
    LUT4 mux_1438_i15_4_lut (.A(n6533), .B(n2099), .C(n6479), .D(state[2]), 
         .Z(n6482)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i15_4_lut.init = 16'h0aca;
    LUT4 mux_243_i15_3_lut (.A(calc_temp[14]), .B(n2066), .C(r2_active), 
         .Z(n2099)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i15_3_lut.init = 16'hcaca;
    LUT4 mod_105_i291_3_lut_rep_352_4_lut (.A(n34901), .B(n16706), .C(n411), 
         .D(n380), .Z(n34892)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i291_3_lut_rep_352_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_adj_356 (.A(state[3]), .B(n16687), .C(state[0]), .D(state[2]), 
         .Z(sys_clk_enable_181)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i2_4_lut_adj_356.init = 16'ha022;
    LUT4 i1_2_lut_rep_451_3_lut_4_lut (.A(state[3]), .B(n35078), .C(r2_active), 
         .D(RESET_N_c), .Z(n34991)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_451_3_lut_4_lut.init = 16'h70f0;
    FD1P3IX alu_opA_i0_i9 (.D(n2035), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i9.GSR = "DISABLED";
    LUT4 i25253_2_lut_2_lut_3_lut_4_lut (.A(state[3]), .B(n35078), .C(n12_adj_1674), 
         .D(RESET_N_c), .Z(n26924)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i25253_2_lut_2_lut_3_lut_4_lut.init = 16'h070f;
    LUT4 i1_2_lut_rep_370_3_lut (.A(n33583), .B(n34918), .C(n429_adj_1796), 
         .Z(n34910)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i1_2_lut_rep_370_3_lut.init = 16'h9696;
    LUT4 i25195_2_lut_rep_449_3_lut_4_lut (.A(state[3]), .B(n35078), .C(r2_active), 
         .D(RESET_N_c), .Z(n34989)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i25195_2_lut_rep_449_3_lut_4_lut.init = 16'h070f;
    LUT4 i1_2_lut_4_lut_adj_357 (.A(n289_adj_1821), .B(n34921), .C(n301), 
         .D(n332), .Z(n4_adj_1695)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i1_2_lut_4_lut_adj_357.init = 16'hffa6;
    LUT4 mux_1438_i16_4_lut (.A(n6532), .B(n2098), .C(n6479), .D(state[2]), 
         .Z(n6481)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1438_i16_4_lut.init = 16'h0aca;
    LUT4 mux_243_i16_3_lut (.A(calc_temp[15]), .B(n2065), .C(r2_active), 
         .Z(n2098)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(303[21] 310[28])
    defparam mux_243_i16_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_adj_358 (.A(n332), .B(n333_adj_1809), .C(n34915), .Z(n16696)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i2_3_lut_adj_358.init = 16'hfefe;
    LUT4 mux_1875_i86_3_lut_4_lut (.A(state[3]), .B(n35078), .C(n35172), 
         .D(n8624), .Z(n9091)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i86_3_lut_4_lut.init = 16'h7f70;
    LUT4 i1_4_lut_adj_359 (.A(i_mil[3]), .B(n21_adj_1857), .C(n35014), 
         .D(n31327), .Z(n24_adj_1854)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_4_lut_adj_359.init = 16'h4888;
    LUT4 mux_1875_i84_3_lut_4_lut (.A(state[3]), .B(n35078), .C(n35172), 
         .D(n8626), .Z(n9093)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i84_3_lut_4_lut.init = 16'h7f70;
    LUT4 mux_1875_i83_3_lut_4_lut (.A(state[3]), .B(n35078), .C(n35172), 
         .D(n26941), .Z(n9094)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i83_3_lut_4_lut.init = 16'h7f70;
    FD1P3IX apuesta_i0_i7 (.D(input_temp[7]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i7.GSR = "DISABLED";
    LUT4 mux_1875_i73_3_lut_4_lut (.A(state[3]), .B(n35078), .C(n35172), 
         .D(n8636), .Z(n9104)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i73_3_lut_4_lut.init = 16'h7f70;
    FD1P3IX apuesta_i0_i8 (.D(input_temp[8]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i8.GSR = "DISABLED";
    LUT4 mux_1875_i70_3_lut_4_lut (.A(state[3]), .B(n35078), .C(n35172), 
         .D(n8639), .Z(n9107)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1875_i70_3_lut_4_lut.init = 16'h7f70;
    FD1P3IX apuesta_i0_i9 (.D(input_temp[9]), .SP(sys_clk_enable_401), .CD(n19044), 
            .CK(sys_clk), .Q(apuesta[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i9.GSR = "DISABLED";
    FD1P3IX alu_opA_i0_i8 (.D(n2036), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i8.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_360 (.A(n380), .B(n411), .C(n34895), .D(n423), 
         .Z(n6_adj_1843)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i1_2_lut_4_lut_adj_360.init = 16'hffca;
    FD1P3IX alu_opA_i0_i7 (.D(n2037), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i7.GSR = "DISABLED";
    PFUMX i25426 (.BLUT(n34647), .ALUT(n34642), .C0(state[2]), .Z(sys_clk_enable_137));
    LUT4 i1_2_lut_3_lut_4_lut_adj_361 (.A(state[3]), .B(n35078), .C(r2_active), 
         .D(RESET_N_c), .Z(n33538)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_adj_361.init = 16'h8f0f;
    LUT4 i25286_2_lut_2_lut_3_lut_4_lut (.A(n35081), .B(state[3]), .C(n35172), 
         .D(n35080), .Z(n42)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i25286_2_lut_2_lut_3_lut_4_lut.init = 16'h0d0f;
    LUT4 rem_103_i226_4_lut (.A(n287), .B(n288), .C(n301), .D(n34919), 
         .Z(n332)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i226_4_lut.init = 16'haaa9;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(n35081), .B(state[3]), .C(i_mil[3]), 
         .D(RESET_N_c), .Z(n37)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'hd0f0;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_adj_362 (.A(n35081), .B(state[3]), .C(n33459), 
         .D(RESET_N_c), .Z(n33460)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_2_lut_3_lut_4_lut_adj_362.init = 16'hd0f0;
    FD1P3IX alu_opA_i0_i6 (.D(n2038), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i6.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_adj_363 (.A(n35081), .B(state[3]), .C(i_dec[3]), 
         .D(RESET_N_c), .Z(n8543)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_2_lut_3_lut_4_lut_adj_363.init = 16'hd0f0;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_adj_364 (.A(n35081), .B(state[3]), .C(n35146), 
         .D(RESET_N_c), .Z(n8545)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_2_lut_3_lut_4_lut_adj_364.init = 16'hd0f0;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_adj_365 (.A(n35081), .B(state[3]), .C(n35122), 
         .D(RESET_N_c), .Z(n27)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_2_lut_3_lut_4_lut_adj_365.init = 16'hd0f0;
    CCU2D add_450_13 (.A0(apuesta[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(apuesta[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31019), .COUT(n31020), .S0(n1352), .S1(n150));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(236[35:42])
    defparam add_450_13.INIT0 = 16'h5aaa;
    defparam add_450_13.INIT1 = 16'h5aaa;
    defparam add_450_13.INJECT1_0 = "NO";
    defparam add_450_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_447_3_lut_4_lut (.A(n35081), .B(state[3]), .C(n35162), 
         .D(RESET_N_c), .Z(n34987)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_rep_447_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_adj_366 (.A(n35081), .B(state[3]), .C(n33423), 
         .D(RESET_N_c), .Z(n33424)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_2_lut_2_lut_3_lut_4_lut_adj_366.init = 16'hd0f0;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n35080), .B(n34989), 
         .C(n35042), .D(n35172), .Z(n9079)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hcc0a;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut_adj_367 (.A(n35080), .B(n35042), 
         .C(n34991), .D(n35172), .Z(n9076)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut_adj_367.init = 16'hf022;
    FD1P3IX alu_opA_i0_i5 (.D(n2039), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i5.GSR = "DISABLED";
    FD1P3IX alu_opA_i0_i4 (.D(n2040), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i4.GSR = "DISABLED";
    LUT4 mod_105_i382_3_lut_4_lut (.A(n34868), .B(n16709), .C(n544), .D(n513), 
         .Z(n558)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i382_3_lut_4_lut.init = 16'hf1e0;
    CCU2D add_450_11 (.A0(apuesta[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(apuesta[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31018), .COUT(n31019), .S0(n291), .S1(n245));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(236[35:42])
    defparam add_450_11.INIT0 = 16'h5aaa;
    defparam add_450_11.INIT1 = 16'h5aaa;
    defparam add_450_11.INJECT1_0 = "NO";
    defparam add_450_11.INJECT1_1 = "NO";
    FD1P3IX alu_opA_i0_i3 (.D(n2041), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i3.GSR = "DISABLED";
    FD1P3IX alu_opA_i0_i2 (.D(n2042), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i2.GSR = "DISABLED";
    LUT4 mod_105_i386_3_lut_4_lut (.A(n34868), .B(n16709), .C(n548), .D(n517), 
         .Z(n562)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i386_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX alu_opA_i0_i1 (.D(n2043), .SP(sys_clk_enable_389), .CD(n19156), 
            .CK(sys_clk), .Q(alu_opA[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam alu_opA_i0_i1.GSR = "DISABLED";
    CCU2D rem_103_add_286_7 (.A0(n4_adj_1695), .B0(n34905), .C0(n34904), 
          .D0(n333_adj_1809), .A1(n16696), .B1(n34905), .C1(n34897), 
          .D1(n332), .CIN(n31235), .S0(n409_adj_1807), .S1(n408_adj_1808));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_286_7.INIT0 = 16'h0ff4;
    defparam rem_103_add_286_7.INIT1 = 16'h0bf4;
    defparam rem_103_add_286_7.INJECT1_0 = "NO";
    defparam rem_103_add_286_7.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_368 (.A(n8_adj_1679), .B(bcd_val[6]), .C(bcd_val[5]), 
         .D(bcd_val[4]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_368.init = 16'hfffe;
    LUT4 i2197_3_lut (.A(bcd_val[1]), .B(bcd_val[3]), .C(bcd_val[2]), 
         .Z(n8_adj_1679)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i2197_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_rep_507_4_lut (.A(RESET_N_c), .B(n36113), .C(state[3]), 
         .D(n35088), .Z(sys_clk_enable_302)) /* synthesis lut_function=(!((B (D)+!B (C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_507_4_lut.init = 16'h008a;
    PFUMX i25424 (.BLUT(n34645), .ALUT(n34644), .C0(state[1]), .Z(n34646));
    CCU2D add_450_9 (.A0(apuesta[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(apuesta[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31017), .COUT(n31018), .S0(n383_adj_1812), .S1(n337));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(236[35:42])
    defparam add_450_9.INIT0 = 16'h5aaa;
    defparam add_450_9.INIT1 = 16'h5aaa;
    defparam add_450_9.INJECT1_0 = "NO";
    defparam add_450_9.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_4_lut_adj_369 (.A(n35172), .B(n34971), .C(rom_out_r3[3]), 
         .D(n34987), .Z(n9123)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_3_lut_4_lut_4_lut_adj_369.init = 16'hdccc;
    LUT4 i1_2_lut_4_lut_4_lut_adj_370 (.A(n35172), .B(n35079), .C(r2_active), 
         .D(n35015), .Z(n9168)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_4_lut_adj_370.init = 16'h0008;
    LUT4 i1_2_lut_4_lut_4_lut_adj_371 (.A(n35172), .B(n35161), .C(r2_active), 
         .D(n35015), .Z(n9166)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_4_lut_adj_371.init = 16'h0008;
    LUT4 i1_3_lut_rep_515_4_lut (.A(RESET_N_c), .B(n36113), .C(state[3]), 
         .D(n35088), .Z(sys_clk_enable_189)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i1_3_lut_rep_515_4_lut.init = 16'h808a;
    LUT4 i10493_2_lut_4_lut_4_lut (.A(n35172), .B(n36137), .C(r2_active), 
         .D(n35015), .Z(n19104)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i10493_2_lut_4_lut_4_lut.init = 16'hccc4;
    LUT4 i36_3_lut_4_lut (.A(RESET_N_c), .B(n36113), .C(state[3]), .D(n35087), 
         .Z(sys_clk_enable_197)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i36_3_lut_4_lut.init = 16'h8a80;
    CCU2D rem_103_add_286_5 (.A0(n16696), .B0(n34909), .C0(n34907), .D0(n335_adj_1810), 
          .A1(n16696), .B1(n34905), .C1(n34908), .D1(n34915), .CIN(n31234), 
          .COUT(n31235), .S0(n411_adj_1805), .S1(n410_adj_1806));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_286_5.INIT0 = 16'h0b5f;
    defparam rem_103_add_286_5.INIT1 = 16'h0bf4;
    defparam rem_103_add_286_5.INJECT1_0 = "NO";
    defparam rem_103_add_286_5.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_372 (.A(bcd_val[9]), .B(bcd_val[8]), .C(bcd_val[7]), 
         .D(n33303), .Z(n16994)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_372.init = 16'hfffe;
    LUT4 i18418_2_lut_rep_315_3_lut (.A(n567_adj_1744), .B(n34858), .C(n565_adj_1745), 
         .Z(n34855)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i18418_2_lut_rep_315_3_lut.init = 16'he0e0;
    LUT4 i10463_2_lut_3_lut_4_lut (.A(state[0]), .B(n35173), .C(n35172), 
         .D(n36112), .Z(n19070)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i10463_2_lut_3_lut_4_lut.init = 16'hb000;
    LUT4 i1_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), .Z(n32)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(91[12:17])
    defparam i1_3_lut.init = 16'h8282;
    CCU2D rem_103_add_286_3 (.A0(n16696), .B0(n34905), .C0(n368_adj_1811), 
          .D0(n337), .A1(n16696), .B1(n34905), .C1(n337), .D1(n34916), 
          .CIN(n31233), .COUT(n31234), .S0(n413_adj_1803), .S1(n412_adj_1804));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_286_3.INIT0 = 16'h0b4f;
    defparam rem_103_add_286_3.INIT1 = 16'hf40b;
    defparam rem_103_add_286_3.INJECT1_0 = "NO";
    defparam rem_103_add_286_3.INJECT1_1 = "NO";
    LUT4 i5_4_lut_adj_373 (.A(osc_div[21]), .B(n16991), .C(osc_div[23]), 
         .D(osc_div[25]), .Z(n12_adj_1841)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_373.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_4_lut_adj_374 (.A(n35172), .B(n35163), .C(r2_active), 
         .D(n35015), .Z(n33526)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_4_lut_4_lut_adj_374.init = 16'h0008;
    FD1P3AX delay_timer_i0_i4 (.D(delay_timer_4__N_1092[4]), .SP(sys_clk_enable_395), 
            .CK(sys_clk), .Q(delay_timer[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_timer_i0_i4.GSR = "DISABLED";
    LUT4 i6_4_lut_adj_375 (.A(n516_adj_1766), .B(n12_adj_1688), .C(n517_adj_1765), 
         .D(n513_adj_1769), .Z(n16700)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i6_4_lut_adj_375.init = 16'hfffe;
    LUT4 i10477_2_lut_3_lut_4_lut_4_lut (.A(n35172), .B(n36137), .C(n35041), 
         .D(RESET_N_c), .Z(n19086)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i10477_2_lut_3_lut_4_lut_4_lut.init = 16'h4c44;
    LUT4 i2_3_lut_rep_452_4_lut_4_lut (.A(n35172), .B(r2_active), .C(n35041), 
         .D(RESET_N_c), .Z(n34992)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2_3_lut_rep_452_4_lut_4_lut.init = 16'hdfdd;
    LUT4 mod_105_i288_3_lut_4_lut (.A(n34901), .B(n16706), .C(n408), .D(n377), 
         .Z(n422)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i288_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i25245_2_lut_3_lut_4_lut_4_lut (.A(n35172), .B(r2_active), .C(n35041), 
         .D(RESET_N_c), .Z(n26439)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i25245_2_lut_3_lut_4_lut_4_lut.init = 16'h2022;
    LUT4 i5_4_lut_adj_376 (.A(n518_adj_1764), .B(n514_adj_1768), .C(n515_adj_1767), 
         .D(n512_adj_1770), .Z(n12_adj_1688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i5_4_lut_adj_376.init = 16'hfffe;
    LUT4 i17784_2_lut_3_lut_4_lut_4_lut (.A(n35172), .B(r2_active), .C(n35041), 
         .D(RESET_N_c), .Z(n9118)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i17784_2_lut_3_lut_4_lut_4_lut.init = 16'h8088;
    LUT4 i1_2_lut_rep_427_3_lut_4_lut_4_lut (.A(n35172), .B(n35162), .C(n35042), 
         .D(RESET_N_c), .Z(n34967)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_rep_427_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i18276_2_lut_rep_319_4_lut (.A(n566), .B(apuesta[2]), .C(n567), 
         .D(n565), .Z(n34859)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i18276_2_lut_rep_319_4_lut.init = 16'hfe00;
    LUT4 i1_3_lut_adj_377 (.A(input_temp[0]), .B(n35006), .C(key_code[1]), 
         .Z(n33396)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i1_3_lut_adj_377.init = 16'h4848;
    LUT4 i1_2_lut_adj_378 (.A(i_dec[2]), .B(i_dec[3]), .Z(n33459)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(7[9:16])
    defparam i1_2_lut_adj_378.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_379 (.A(n35088), .B(n36112), .C(n35133), .D(n34992), 
         .Z(n29873)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_379.init = 16'h4440;
    PFUMX i25523 (.BLUT(n35207), .ALUT(L1_Buffer_127__N_785[102]), .C0(state[1]), 
          .Z(L1_Buffer_127__N_785[58]));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_380 (.A(state[3]), .B(n35132), .C(n35154), 
         .D(state[2]), .Z(L1_Buffer_127__N_785[120])) /* synthesis lut_function=(A (B)+!A !((D)+!C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_380.init = 16'h88d8;
    LUT4 rem_103_i485_3_lut_rep_311 (.A(n34852), .B(n659), .C(n662_adj_1715), 
         .Z(n34851)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i485_3_lut_rep_311.init = 16'h9a9a;
    LUT4 i2_3_lut_4_lut_adj_381 (.A(n475_adj_1780), .B(n34902), .C(n521_adj_1762), 
         .D(n16919), .Z(n31907)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_381.init = 16'h6966;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_adj_382 (.A(state[0]), .B(n35173), .C(n35172), 
         .D(n36112), .Z(n28411)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_2_lut_3_lut_4_lut_adj_382.init = 16'h0b00;
    LUT4 i17933_4_lut (.A(i_cen[0]), .B(n35187), .C(n36109), .D(r2_active), 
         .Z(n14_adj_1700)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam i17933_4_lut.init = 16'h4888;
    LUT4 i1_2_lut_rep_373_3_lut (.A(n34920), .B(n335), .C(n16704), .Z(n34913)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_373_3_lut.init = 16'hf8f8;
    LUT4 mux_1783_i25_3_lut (.A(j_mil[3]), .B(i_uni[3]), .C(r2_active), 
         .Z(n8491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1783_i25_3_lut.init = 16'hcaca;
    LUT4 i15452_3_lut (.A(n35117), .B(n35140), .C(r2_active), .Z(n12_adj_1674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(108[12:21])
    defparam i15452_3_lut.init = 16'hcaca;
    L6MUX21 i25814 (.D0(n36106), .D1(n35814), .SD(n35016), .Z(n35818));
    LUT4 i18235_3_lut (.A(key_code[1]), .B(key_code[3]), .C(key_code[2]), 
         .Z(n26833)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i18235_3_lut.init = 16'hc8c8;
    LUT4 i16562_4_lut (.A(n2518), .B(rom_out_r2[1]), .C(n35013), .D(n1921), 
         .Z(n8551)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i16562_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_383 (.A(input_temp[5]), .B(n33281), .C(n10_adj_1675), 
         .D(input_temp[8]), .Z(n27041)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_383.init = 16'heccc;
    PFUMX i25809 (.BLUT(n35813), .ALUT(n34989), .C0(n35172), .Z(n35814));
    LCD_Controller Inst_LCD (.sys_clk(sys_clk), .LCD_DATA_c_0(LCD_DATA_c_0), 
            .RESET_N_c(RESET_N_c), .LCD_RS_c(LCD_RS_c), .LCD_DATA_c_1(LCD_DATA_c_1), 
            .LCD_DATA_c_2(LCD_DATA_c_2), .LCD_DATA_c_3(LCD_DATA_c_3), .LCD_DATA_c_4(LCD_DATA_c_4), 
            .LCD_DATA_c_5(LCD_DATA_c_5), .LCD_DATA_c_6(LCD_DATA_c_6), .\L1_Buffer[77] (L1_Buffer[77]), 
            .\L1_Buffer[125] (L1_Buffer[125]), .\L1_Buffer[14] (L1_Buffer[14]), 
            .\L1_Buffer[12] (L1_Buffer[12]), .\L1_Buffer[70] (L1_Buffer[70]), 
            .\L1_Buffer[96] (L1_Buffer[96]), .\L1_Buffer[100] (L1_Buffer[100]), 
            .\L2_Buffer[102] (L2_Buffer[102]), .\L1_Buffer[21] (L1_Buffer[21]), 
            .\L1_Buffer[53] (L1_Buffer[53]), .\L2_Buffer[125] (L2_Buffer[125]), 
            .\L2_Buffer[117] (L2_Buffer[117]), .\L2_Buffer[93] (L2_Buffer[93]), 
            .\L2_Buffer[99] (L2_Buffer[99]), .\L2_Buffer[97] (L2_Buffer[97]), 
            .\L2_Buffer[5] (L2_Buffer[5]), .\L2_Buffer[109] (L2_Buffer[109]), 
            .\L2_Buffer[69] (L2_Buffer[69]), .\L2_Buffer[37] (L2_Buffer[37]), 
            .\L2_Buffer[13] (L2_Buffer[13]), .\L1_Buffer[5] (L1_Buffer[5]), 
            .\L2_Buffer[61] (L2_Buffer[61]), .\L2_Buffer[101] (L2_Buffer[101]), 
            .\L2_Buffer[85] (L2_Buffer[85]), .\L2_Buffer[106] (L2_Buffer[106]), 
            .\L2_Buffer[27] (L2_Buffer[27]), .\L2_Buffer[25] (L2_Buffer[25]), 
            .\L2_Buffer[29] (L2_Buffer[29]), .\L1_Buffer[24] (L1_Buffer[24]), 
            .\L1_Buffer[104] (L1_Buffer[104]), .\L1_Buffer[64] (L1_Buffer[64]), 
            .\L1_Buffer[32] (L1_Buffer[32]), .\L1_Buffer[112] (L1_Buffer[112]), 
            .\L1_Buffer[56] (L1_Buffer[56]), .\L1_Buffer[16] (L1_Buffer[16]), 
            .\L1_Buffer[120] (L1_Buffer[120]), .\L1_Buffer[72] (L1_Buffer[72]), 
            .\L2_Buffer[88] (L2_Buffer[88]), .\L2_Buffer[91] (L2_Buffer[91]), 
            .\L2_Buffer[89] (L2_Buffer[89]), .\L2_Buffer[90] (L2_Buffer[90]), 
            .\L1_Buffer[126] (L1_Buffer[126]), .\L2_Buffer[123] (L2_Buffer[123]), 
            .\L1_Buffer[68] (L1_Buffer[68]), .\L1_Buffer[58] (L1_Buffer[58]), 
            .\L2_Buffer[64] (L2_Buffer[64]), .\L2_Buffer[56] (L2_Buffer[56]), 
            .\L2_Buffer[96] (L2_Buffer[96]), .\L2_Buffer[48] (L2_Buffer[48]), 
            .\L2_Buffer[32] (L2_Buffer[32]), .\L2_Buffer[16] (L2_Buffer[16]), 
            .\L2_Buffer[112] (L2_Buffer[112]), .\L2_Buffer[40] (L2_Buffer[40]), 
            .\L2_Buffer[8] (L2_Buffer[8]), .\L2_Buffer[24] (L2_Buffer[24]), 
            .\L2_Buffer[80] (L2_Buffer[80]), .\L1_Buffer[26] (L1_Buffer[26]), 
            .\L1_Buffer[82] (L1_Buffer[82]), .\L1_Buffer[18] (L1_Buffer[18]), 
            .\L1_Buffer[106] (L1_Buffer[106]), .\L1_Buffer[114] (L1_Buffer[114]), 
            .\L1_Buffer[90] (L1_Buffer[90]), .\L1_Buffer[66] (L1_Buffer[66]), 
            .\L2_Buffer[18] (L2_Buffer[18]), .\L2_Buffer[12] (L2_Buffer[12]), 
            .\L2_Buffer[10] (L2_Buffer[10]), .\L2_Buffer[26] (L2_Buffer[26]), 
            .\L2_Buffer[122] (L2_Buffer[122]), .\L2_Buffer[66] (L2_Buffer[66]), 
            .\L2_Buffer[58] (L2_Buffer[58]), .\L2_Buffer[82] (L2_Buffer[82]), 
            .\L2_Buffer[34] (L2_Buffer[34]), .\L2_Buffer[98] (L2_Buffer[98]), 
            .\L2_Buffer[50] (L2_Buffer[50]), .\L1_Buffer[83] (L1_Buffer[83]), 
            .\L1_Buffer[19] (L1_Buffer[19]), .\L1_Buffer[67] (L1_Buffer[67]), 
            .\L1_Buffer[1] (L1_Buffer[1]), .\L2_Buffer[46] (L2_Buffer[46]), 
            .\L2_Buffer[43] (L2_Buffer[43]), .\L1_Buffer[42] (L1_Buffer[42]), 
            .\L1_Buffer[46] (L1_Buffer[46]), .\L2_Buffer[41] (L2_Buffer[41]), 
            .\L1_Buffer[45] (L1_Buffer[45]), .\L2_Buffer[45] (L2_Buffer[45]), 
            .\L2_Buffer[42] (L2_Buffer[42]), .\L1_Buffer[75] (L1_Buffer[75]), 
            .LCD_DATA_c_7(LCD_DATA_c_7), .LCD_E_c(LCD_E_c), .LEDS_c_4(LEDS_c_4), 
            .\L1_Buffer[35] (L1_Buffer[35]), .\L2_Buffer[36] (L2_Buffer[36]), 
            .\L2_Buffer[108] (L2_Buffer[108]), .GND_net(GND_net), .\L2_Buffer[104] (L2_Buffer[104]), 
            .\L2_Buffer[110] (L2_Buffer[110]), .\L2_Buffer[115] (L2_Buffer[115]), 
            .\L2_Buffer[107] (L2_Buffer[107]), .\L1_Buffer[105] (L1_Buffer[105]), 
            .\L2_Buffer[105] (L2_Buffer[105]), .\L1_Buffer[80] (L1_Buffer[80]), 
            .\L2_Buffer[84] (L2_Buffer[84]), .\L1_Buffer[117] (L1_Buffer[117]), 
            .\L1_Buffer[50] (L1_Buffer[50]), .\L2_Buffer[53] (L2_Buffer[53]), 
            .\L2_Buffer[62] (L2_Buffer[62]), .\L2_Buffer[75] (L2_Buffer[75]), 
            .\L2_Buffer[51] (L2_Buffer[51]), .\L2_Buffer[19] (L2_Buffer[19]), 
            .\L2_Buffer[35] (L2_Buffer[35]), .\L2_Buffer[21] (L2_Buffer[21]), 
            .\L2_Buffer[77] (L2_Buffer[77]), .\L2_Buffer[83] (L2_Buffer[83]), 
            .\L2_Buffer[67] (L2_Buffer[67]), .\L2_Buffer[59] (L2_Buffer[59]), 
            .\L2_Buffer[11] (L2_Buffer[11]), .\L1_Buffer[25] (L1_Buffer[25]), 
            .\L1_Buffer[86] (L1_Buffer[86]), .\L1_Buffer[97] (L1_Buffer[97]), 
            .\L1_Buffer[65] (L1_Buffer[65]), .\L1_Buffer[33] (L1_Buffer[33]), 
            .\L1_Buffer[17] (L1_Buffer[17]), .\L2_Buffer[113] (L2_Buffer[113]), 
            .\L2_Buffer[73] (L2_Buffer[73]), .\L2_Buffer[49] (L2_Buffer[49]), 
            .\L1_Buffer[109] (L1_Buffer[109]), .\L1_Buffer[37] (L1_Buffer[37]), 
            .\L2_Buffer[17] (L2_Buffer[17]), .\L2_Buffer[33] (L2_Buffer[33]), 
            .\L2_Buffer[81] (L2_Buffer[81]), .\L1_Buffer[108] (L1_Buffer[108]), 
            .\L1_Buffer[116] (L1_Buffer[116]), .\L1_Buffer[20] (L1_Buffer[20]), 
            .\L1_Buffer[124] (L1_Buffer[124]), .\L1_Buffer[60] (L1_Buffer[60]), 
            .\L1_Buffer[84] (L1_Buffer[84]), .\L1_Buffer[28] (L1_Buffer[28]), 
            .\L2_Buffer[118] (L2_Buffer[118]), .\L2_Buffer[124] (L2_Buffer[124]), 
            .\L2_Buffer[68] (L2_Buffer[68]), .\L2_Buffer[100] (L2_Buffer[100]), 
            .\L2_Buffer[76] (L2_Buffer[76]), .\L1_Buffer[118] (L1_Buffer[118]), 
            .\L1_Buffer[38] (L1_Buffer[38]), .\L1_Buffer[62] (L1_Buffer[62]), 
            .\L1_Buffer[78] (L1_Buffer[78]), .\L1_Buffer[110] (L1_Buffer[110]), 
            .\L1_Buffer[30] (L1_Buffer[30]), .\L2_Buffer[30] (L2_Buffer[30]), 
            .\L2_Buffer[70] (L2_Buffer[70]), .\L2_Buffer[94] (L2_Buffer[94]), 
            .\L2_Buffer[65] (L2_Buffer[65]), .\L2_Buffer[78] (L2_Buffer[78]), 
            .\L2_Buffer[54] (L2_Buffer[54]), .\L2_Buffer[57] (L2_Buffer[57]), 
            .\L2_Buffer[9] (L2_Buffer[9]), .\L2_Buffer[38] (L2_Buffer[38]), 
            .\L2_Buffer[22] (L2_Buffer[22]), .\L2_Buffer[86] (L2_Buffer[86]), 
            .\L2_Buffer[14] (L2_Buffer[14]), .\L1_Buffer[91] (L1_Buffer[91]), 
            .\L1_Buffer[27] (L1_Buffer[27]), .\L1_Buffer[59] (L1_Buffer[59]), 
            .\L1_Buffer[51] (L1_Buffer[51]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(137[15:29])
    LUT4 i4_4_lut_adj_384 (.A(input_temp[3]), .B(n8_adj_1691), .C(input_temp[6]), 
         .D(input_temp[4]), .Z(n10_adj_1675)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_384.init = 16'hc080;
    LUT4 i18412_2_lut_rep_321_3_lut (.A(n521_adj_1762), .B(n34865), .C(n519_adj_1763), 
         .Z(n34861)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i18412_2_lut_rep_321_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_385 (.A(state[3]), .B(n35184), .C(n35154), 
         .D(state[2]), .Z(L1_Buffer_127__N_785[105])) /* synthesis lut_function=(!(A (B)+!A ((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_385.init = 16'h2272;
    LUT4 mod_105_i295_3_lut_4_lut (.A(n34901), .B(n16706), .C(n415), .D(apuesta[6]), 
         .Z(n429)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i295_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4088_2_lut_rep_459_3_lut_4_lut (.A(n35178), .B(apuesta[13]), .C(apuesta[9]), 
         .D(apuesta[10]), .Z(n34999)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i4088_2_lut_rep_459_3_lut_4_lut.init = 16'hf7f8;
    LUT4 mod_105_i260_3_lut_4_lut_4_lut (.A(n34920), .B(n335), .C(n366), 
         .D(n16704), .Z(n380)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_105_i260_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i1_3_lut_3_lut_4_lut_adj_386 (.A(n36113), .B(n35171), .C(n29869), 
         .D(n34964), .Z(n9108)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_386.init = 16'hf7f0;
    LUT4 i7871_2_lut (.A(r2_active), .B(i_dec[3]), .Z(n8485)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i7871_2_lut.init = 16'hdddd;
    CCU2D rem_103_add_286_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n383_adj_1812), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31233), .S1(n414_adj_1802));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_286_1.INIT0 = 16'hF000;
    defparam rem_103_add_286_1.INIT1 = 16'h5555;
    defparam rem_103_add_286_1.INJECT1_0 = "NO";
    defparam rem_103_add_286_1.INJECT1_1 = "NO";
    CCU2D rem_103_add_317_9 (.A0(n16697), .B0(n34885), .C0(n408_adj_1808), 
          .D0(n377_adj_1814), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31232), .S0(n453_adj_1795));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_317_9.INIT0 = 16'h0e1f;
    defparam rem_103_add_317_9.INIT1 = 16'h0000;
    defparam rem_103_add_317_9.INJECT1_0 = "NO";
    defparam rem_103_add_317_9.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_378 (.A(n6_adj_1677), .B(n16831), .C(n34937), .Z(n34918)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut_rep_378.init = 16'h9696;
    LUT4 mux_1786_i39_4_lut (.A(n2555), .B(n34991), .C(n35172), .D(blink_toggle), 
         .Z(n8632)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1786_i39_4_lut.init = 16'hcfca;
    LUT4 rem_103_i420_3_lut_4_lut_4_lut (.A(n34856), .B(n565_adj_1745), 
         .C(n596_adj_1735), .D(n16701), .Z(n610_adj_1724)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam rem_103_i420_3_lut_4_lut_4_lut.init = 16'hf0c4;
    FD1P3IX apuesta_i0_i10 (.D(input_temp[10]), .SP(sys_clk_enable_401), 
            .CD(n19044), .CK(sys_clk), .Q(apuesta[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i10.GSR = "DISABLED";
    CCU2D rem_103_add_317_7 (.A0(n16697), .B0(n34885), .C0(n410_adj_1806), 
          .D0(n379_adj_1817), .A1(n16697), .B1(n34885), .C1(n409_adj_1807), 
          .D1(n378_adj_1816), .CIN(n31231), .COUT(n31232), .S0(n455_adj_1793), 
          .S1(n454_adj_1794));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_317_7.INIT0 = 16'h0e1f;
    defparam rem_103_add_317_7.INIT1 = 16'h0e1f;
    defparam rem_103_add_317_7.INJECT1_0 = "NO";
    defparam rem_103_add_317_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_374_4_lut (.A(n6_adj_1677), .B(n16831), .C(n34937), 
         .D(n33583), .Z(n34914)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_374_4_lut.init = 16'h6996;
    CCU2D add_3222_4 (.A0(n13), .B0(key_code[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31008), 
          .COUT(n31009), .S0(n11510), .S1(n11509));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(218[48:58])
    defparam add_3222_4.INIT0 = 16'h5666;
    defparam add_3222_4.INIT1 = 16'h5aaa;
    defparam add_3222_4.INJECT1_0 = "NO";
    defparam add_3222_4.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(input_temp[7]), .B(input_temp[9]), .Z(n8_adj_1691)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_387 (.A(j_uni[2]), .B(j_uni[3]), .Z(n2589)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_adj_387.init = 16'h2222;
    LUT4 rem_103_i227_3_lut_4_lut (.A(n289_adj_1821), .B(n34921), .C(n301), 
         .D(n288), .Z(n333_adj_1809)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i227_3_lut_4_lut.init = 16'hf807;
    LUT4 i1_2_lut_rep_320_3_lut_4_lut (.A(n521_adj_1762), .B(n34865), .C(n16700), 
         .D(n519_adj_1763), .Z(n34860)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_320_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_4_lut_adj_388 (.A(n35087), .B(n7631), .C(state[3]), 
         .D(RESET_N_c), .Z(sys_clk_enable_402)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_388.init = 16'hc500;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(state[3]), .B(n35184), .C(n35181), 
         .D(n35182), .Z(L1_Buffer_127__N_785[124])) /* synthesis lut_function=(!(A (B)+!A (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h2227;
    LUT4 i18350_2_lut_rep_377_4_lut (.A(n336), .B(apuesta[7]), .C(n34922), 
         .D(n335), .Z(n34917)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i18350_2_lut_rep_377_4_lut.init = 16'hfe00;
    LUT4 i10531_2_lut_2_lut_3_lut_3_lut (.A(n35078), .B(state[3]), .C(RESET_N_c), 
         .Z(n19149)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i10531_2_lut_2_lut_3_lut_3_lut.init = 16'h8080;
    VLO i1 (.Z(GND_net));
    PFUMX i25748 (.BLUT(n35625), .ALUT(n35624), .C0(n6593), .Z(n35626));
    LUT4 i3_4_lut_adj_389 (.A(input_temp[10]), .B(input_temp[12]), .C(input_temp[11]), 
         .D(input_temp[13]), .Z(n33281)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_389.init = 16'hfffe;
    LUT4 i1_3_lut_rep_461_4_lut_4_lut (.A(n35078), .B(state[3]), .C(n35087), 
         .D(RESET_N_c), .Z(sys_clk_enable_403)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(B+(C+!(D)))) */ ;
    defparam i1_3_lut_rep_461_4_lut_4_lut.init = 16'h8b00;
    LUT4 rem_103_i228_3_lut_rep_375_4_lut (.A(n34925), .B(n291), .C(n301), 
         .D(n289_adj_1821), .Z(n34915)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_i228_3_lut_rep_375_4_lut.init = 16'hf20d;
    LUT4 i2_3_lut_rep_380_4_lut (.A(apuesta[8]), .B(n34926), .C(apuesta[7]), 
         .D(n336), .Z(n34920)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i2_3_lut_rep_380_4_lut.init = 16'hfff6;
    PFUMX i25742 (.BLUT(n35615), .ALUT(n35614), .C0(n6593), .Z(n35616));
    LUT4 mux_1784_i27_4_lut (.A(n2483), .B(idx_r1[0]), .C(n35013), .D(n14255), 
         .Z(n8539)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam mux_1784_i27_4_lut.init = 16'h0a3a;
    PFUMX i25521 (.BLUT(n35204), .ALUT(n35132), .C0(state[3]), .Z(L1_Buffer_127__N_785[24]));
    LUT4 i2746_4_lut_4_lut (.A(n34938), .B(n34928), .C(n383_adj_1812), 
         .D(n5007), .Z(n6_adj_1677)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(237[30:39])
    defparam i2746_4_lut_4_lut.init = 16'hdd40;
    LUT4 i1_3_lut_3_lut_4_lut_adj_390 (.A(n36113), .B(n35171), .C(n29869), 
         .D(n29882), .Z(n9114)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_390.init = 16'hf7f0;
    PFUMX i25397 (.BLUT(n34581), .ALUT(n34580), .C0(state[2]), .Z(n34582));
    LUT4 mod_105_i290_3_lut_4_lut (.A(n34901), .B(n16706), .C(n410), .D(n379), 
         .Z(n424)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i290_3_lut_4_lut.init = 16'hf1e0;
    CCU2D rem_103_add_317_5 (.A0(n34891), .B0(n16697), .C0(n412_adj_1804), 
          .D0(n34912), .A1(n16697), .B1(n34885), .C1(n411_adj_1805), 
          .D1(n380_adj_1815), .CIN(n31230), .COUT(n31231), .S0(n457_adj_1791), 
          .S1(n456_adj_1792));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_317_5.INIT0 = 16'h0e3f;
    defparam rem_103_add_317_5.INIT1 = 16'h0e1f;
    defparam rem_103_add_317_5.INJECT1_0 = "NO";
    defparam rem_103_add_317_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_391 (.A(n27041), .B(n34981), .C(n7_adj_1693), .D(n26833), 
         .Z(n5380)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(213[24:60])
    defparam i1_4_lut_adj_391.init = 16'h0c44;
    PFUMX i16552 (.BLUT(n25149), .ALUT(n25150), .C0(n35016), .Z(n9112));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_2_lut_3_lut_4_lut_3_lut_4_lut (.A(n36113), .B(n35171), .C(n34989), 
         .D(n34987), .Z(n9086)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i1_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hf780;
    PFUMX i25394 (.BLUT(n34578), .ALUT(n34577), .C0(state[2]), .Z(L1_Buffer_127__N_785[98]));
    LUT4 i1_3_lut_4_lut_3_lut_4_lut (.A(n36113), .B(n35171), .C(n34991), 
         .D(n8659), .Z(n9116)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i1_3_lut_4_lut_3_lut_4_lut.init = 16'hf780;
    CCU2D rem_103_add_317_3 (.A0(n16697), .B0(n34885), .C0(n414_adj_1802), 
          .D0(n383_adj_1812), .A1(n34900), .B1(n337), .C1(n413_adj_1803), 
          .D1(n34883), .CIN(n31229), .COUT(n31230), .S0(n459_adj_1789), 
          .S1(n458_adj_1790));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_317_3.INIT0 = 16'h0e1f;
    defparam rem_103_add_317_3.INIT1 = 16'hf099;
    defparam rem_103_add_317_3.INJECT1_0 = "NO";
    defparam rem_103_add_317_3.INJECT1_1 = "NO";
    MemoriaROM ROM_Instance_3 (.n35065(n35065), .\rom_out_r3_3__N_48[4] (rom_out_r3_3__N_48[4]), 
            .\rom_out_r3[3] (rom_out_r3[3]), .\rom_out_r3[1] (rom_out_r3[1]), 
            .n1939(n1939), .\rom_out_r3_3__N_48[0] (rom_out_r3_3__N_48[0]), 
            .\rom_out_r3_3__N_48[1] (rom_out_r3_3__N_48[1]), .\rom_out_r3_3__N_48[2] (rom_out_r3_3__N_48[2]), 
            .n46(n46_adj_1694), .n35081(n35081), .n62(n62), .n35028(n35028), 
            .\rom_out_r3[0] (rom_out_r3[0]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(151[21:31])
    PFUMX i25567 (.BLUT(n35280), .ALUT(n35281), .C0(state[2]), .Z(n35282));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX delay_timer_i0_i3 (.D(delay_timer_4__N_1092[3]), .SP(sys_clk_enable_395), 
            .CK(sys_clk), .Q(delay_timer[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_timer_i0_i3.GSR = "DISABLED";
    PFUMX i25565 (.BLUT(n35277), .ALUT(n35278), .C0(n31907), .Z(n35279));
    CCU2D rem_103_add_317_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n429_adj_1796), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31229), .S1(n460_adj_1788));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_317_1.INIT0 = 16'hF000;
    defparam rem_103_add_317_1.INIT1 = 16'h5555;
    defparam rem_103_add_317_1.INJECT1_0 = "NO";
    defparam rem_103_add_317_1.INJECT1_1 = "NO";
    PFUMX i25563 (.BLUT(n35274), .ALUT(n35132), .C0(state[3]), .Z(L1_Buffer_127__N_785[32]));
    LUT4 rem_103_i229_3_lut_4_lut (.A(n245), .B(n34929), .C(n301), .D(n291), 
         .Z(n335_adj_1810)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;
    defparam rem_103_i229_3_lut_4_lut.init = 16'h6669;
    CCU2D rem_103_add_348_9 (.A0(n16698), .B0(n34875), .C0(n454_adj_1794), 
          .D0(n423_adj_1800), .A1(n16698), .B1(n34875), .C1(n453_adj_1795), 
          .D1(n422_adj_1801), .CIN(n31227), .S0(n499_adj_1778), .S1(n498_adj_1779));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_348_9.INIT0 = 16'h0e1f;
    defparam rem_103_add_348_9.INIT1 = 16'h0e1f;
    defparam rem_103_add_348_9.INJECT1_0 = "NO";
    defparam rem_103_add_348_9.INJECT1_1 = "NO";
    PFUMX i25561 (.BLUT(n35271), .ALUT(n35272), .C0(n1352), .Z(n33583));
    CCU2D rem_103_add_348_7 (.A0(n16698), .B0(n34875), .C0(n456_adj_1792), 
          .D0(n34880), .A1(n16698), .B1(n34875), .C1(n455_adj_1793), 
          .D1(n424_adj_1799), .CIN(n31226), .COUT(n31227), .S0(n501_adj_1776), 
          .S1(n500_adj_1777));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_348_7.INIT0 = 16'h0e1f;
    defparam rem_103_add_348_7.INIT1 = 16'h0e1f;
    defparam rem_103_add_348_7.INJECT1_0 = "NO";
    defparam rem_103_add_348_7.INJECT1_1 = "NO";
    FD1P3IX calc_temp_i0_i14 (.D(n2066), .SP(sys_clk_enable_402), .CD(n31680), 
            .CK(sys_clk), .Q(calc_temp[14]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i14.GSR = "DISABLED";
    PFUMX i25559 (.BLUT(n35268), .ALUT(n35269), .C0(state[1]), .Z(sys_clk_enable_134));
    FD1P3AX delay_timer_i0_i2 (.D(delay_timer_4__N_1092[2]), .SP(sys_clk_enable_395), 
            .CK(sys_clk), .Q(delay_timer[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_timer_i0_i2.GSR = "DISABLED";
    PFUMX i25557 (.BLUT(n35265), .ALUT(n35266), .C0(state[2]), .Z(sys_clk_enable_350));
    LUT4 i1_2_lut_rep_494_4_lut (.A(n35137), .B(key_code[2]), .C(key_code[1]), 
         .D(key_valid), .Z(n35034)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(353[44:59])
    defparam i1_2_lut_rep_494_4_lut.init = 16'h1000;
    FD1P3AX delay_timer_i0_i1 (.D(delay_timer_4__N_1092[1]), .SP(sys_clk_enable_395), 
            .CK(sys_clk), .Q(delay_timer[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_timer_i0_i1.GSR = "DISABLED";
    FD1P3IX delay_r2_target_i0_i4 (.D(n34731), .SP(sys_clk_enable_403), 
            .CD(n19149), .CK(sys_clk), .Q(delay_r2_target[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_r2_target_i0_i4.GSR = "DISABLED";
    FD1P3IX delay_r2_target_i0_i3 (.D(n31521), .SP(sys_clk_enable_403), 
            .CD(n19149), .CK(sys_clk), .Q(delay_r2_target[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_r2_target_i0_i3.GSR = "DISABLED";
    LUT4 i4722_2_lut_rep_379_3_lut_4_lut (.A(n245), .B(n34929), .C(n289_adj_1821), 
         .D(n291), .Z(n34919)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i4722_2_lut_rep_379_3_lut_4_lut.init = 16'hf060;
    LUT4 i1_2_lut_3_lut_4_lut_3_lut_4_lut_adj_392 (.A(n36113), .B(n35171), 
         .C(n35030), .D(n35041), .Z(n9117)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_3_lut_4_lut_adj_392.init = 16'hf870;
    LUT4 i18242_2_lut_rep_323_4_lut (.A(n475_adj_1780), .B(n506_adj_1771), 
         .C(n34867), .D(n521_adj_1762), .Z(n34863)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam i18242_2_lut_rep_323_4_lut.init = 16'hffca;
    PFUMX i25553 (.BLUT(n36108), .ALUT(n35260), .C0(state[3]), .Z(sys_clk_enable_101));
    LUT4 i1_2_lut_3_lut_4_lut_adj_393 (.A(n35160), .B(n35171), .C(state[0]), 
         .D(n16387), .Z(n33487)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_adj_393.init = 16'h33bf;
    FD1S3IX osc_div_2088__i1 (.D(n134), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_4_lut (.A(n35142), .B(n35172), .C(r2_active), 
         .D(n35015), .Z(n31679)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(100[26:31])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 mod_105_i229_3_lut_4_lut (.A(n34961), .B(n34934), .C(n34942), 
         .D(n34946), .Z(n335)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i229_3_lut_4_lut.init = 16'hf10e;
    FD1P3IX delay_r2_target_i0_i2 (.D(n16799), .SP(sys_clk_enable_403), 
            .CD(n19149), .CK(sys_clk), .Q(delay_r2_target[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_r2_target_i0_i2.GSR = "DISABLED";
    LUT4 n5_bdd_2_lut_3_lut (.A(n35175), .B(tick_1s), .C(state[2]), .Z(n34753)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam n5_bdd_2_lut_3_lut.init = 16'h7070;
    LUT4 state_3__I_0_426_Mux_0_i15_4_lut_then_4_lut (.A(r2_active), .B(state[2]), 
         .C(B_input[0]), .D(alu_opA[0]), .Z(n35224)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(191[13] 356[22])
    defparam state_3__I_0_426_Mux_0_i15_4_lut_then_4_lut.init = 16'h2000;
    FD1P3IX apuesta_i0_i11 (.D(input_temp[11]), .SP(sys_clk_enable_401), 
            .CD(n19044), .CK(sys_clk), .Q(apuesta[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i11.GSR = "DISABLED";
    LUT4 i25164_4_lut (.A(state[3]), .B(n33726), .C(RESET_N_c), .D(n36114), 
         .Z(sys_clk_enable_404)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i25164_4_lut.init = 16'hc040;
    LUT4 i1_2_lut_4_lut_4_lut_adj_394 (.A(n289), .B(n34936), .C(n34927), 
         .D(n34926), .Z(n4_adj_1704)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i1_2_lut_4_lut_4_lut_adj_394.init = 16'hf6fa;
    LUT4 i24895_2_lut (.A(n31279), .B(state[2]), .Z(n33726)) /* synthesis lut_function=(A (B)) */ ;
    defparam i24895_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_395 (.A(n31279), .B(state[2]), .C(n17_adj_1696), 
         .D(RESET_N_c), .Z(n19147)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_395.init = 16'h8000;
    PFUMX i25545 (.BLUT(n35242), .ALUT(n35243), .C0(state[0]), .Z(n16387));
    LUT4 i28_4_lut (.A(n35074), .B(n36114), .C(state[3]), .D(n35182), 
         .Z(n17_adj_1696)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;
    defparam i28_4_lut.init = 16'hc5cf;
    PFUMX i25543 (.BLUT(n35239), .ALUT(n35240), .C0(n6593), .Z(n35241));
    LUT4 i23_4_lut (.A(n35189), .B(n35177), .C(n35013), .D(n14255), 
         .Z(n9_adj_1881)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i23_4_lut.init = 16'h0aca;
    FD1S3IX osc_div_2088__i2 (.D(n133), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i2.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i3 (.D(n132), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i3.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i4 (.D(n131), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i4.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i5 (.D(n130), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i5.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i6 (.D(n129), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i6.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i7 (.D(n128), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i7.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i8 (.D(n127), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i8.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i9 (.D(n126), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i9.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i10 (.D(n125), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[10])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i10.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i11 (.D(n124), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[11])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i11.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i12 (.D(n123), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[12])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i12.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i13 (.D(n122), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[13])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i13.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i14 (.D(n121), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[14])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i14.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i15 (.D(n120), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[15])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i15.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i16 (.D(n119), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[16])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i16.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i17 (.D(n118), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[17])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i17.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i18 (.D(n117), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[18])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i18.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i19 (.D(n116), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[19])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i19.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i20 (.D(n115), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[20])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i20.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i21 (.D(n114), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[21])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i21.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i22 (.D(n113), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[22])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i22.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i23 (.D(n112), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[23])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i23.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i24 (.D(n111), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[24])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i24.GSR = "ENABLED";
    FD1S3IX osc_div_2088__i25 (.D(n110), .CK(sys_clk), .CD(osc_div_25__N_499), 
            .Q(osc_div[25])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam osc_div_2088__i25.GSR = "ENABLED";
    FD1P3IX apuesta_i0_i12 (.D(input_temp[12]), .SP(sys_clk_enable_401), 
            .CD(n19044), .CK(sys_clk), .Q(apuesta[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i12.GSR = "DISABLED";
    FD1P3IX apuesta_i0_i13 (.D(input_temp[13]), .SP(sys_clk_enable_401), 
            .CD(n19044), .CK(sys_clk), .Q(apuesta[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam apuesta_i0_i13.GSR = "DISABLED";
    PFUMX i25541 (.BLUT(n35236), .ALUT(n35237), .C0(n34970), .Z(n35238));
    CCU2D rem_103_add_348_5 (.A0(n34877), .B0(n16698), .C0(n458_adj_1790), 
          .D0(n427_adj_1797), .A1(n16698), .B1(n34875), .C1(n457_adj_1791), 
          .D1(n426_adj_1798), .CIN(n31225), .COUT(n31226), .S0(n503_adj_1774), 
          .S1(n502_adj_1775));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_348_5.INIT0 = 16'h0e3f;
    defparam rem_103_add_348_5.INIT1 = 16'h0e1f;
    defparam rem_103_add_348_5.INJECT1_0 = "NO";
    defparam rem_103_add_348_5.INJECT1_1 = "NO";
    PFUMX i25539 (.BLUT(n35233), .ALUT(n35234), .C0(r2_active), .Z(n6479));
    AdderSub16 CPU_ADDER (.alu_opA({alu_opA}), .\B_input[0] (B_input[0]), 
            .alu_sum_res({alu_sum_res}), .GND_net(GND_net), .\B_input[12] (B_input[12]), 
            .\B_input[13] (B_input[13]), .\B_input[10] (B_input[10]), .\B_input[11] (B_input[11]), 
            .\B_input[8] (B_input[8]), .\B_input[9] (B_input[9]), .\B_input[6] (B_input[6]), 
            .\B_input[7] (B_input[7]), .\B_input[4] (B_input[4]), .\B_input[5] (B_input[5]), 
            .\B_input[2] (B_input[2]), .\B_input[3] (B_input[3]), .\B_input[1] (B_input[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(143[16:26])
    CCU2D rem_103_add_348_3 (.A0(n16698), .B0(n34875), .C0(n460_adj_1788), 
          .D0(n429_adj_1796), .A1(n16698), .B1(n34875), .C1(n459_adj_1789), 
          .D1(n34879), .CIN(n31224), .COUT(n31225), .S0(n505_adj_1772), 
          .S1(n504_adj_1773));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_348_3.INIT0 = 16'h0e1f;
    defparam rem_103_add_348_3.INIT1 = 16'hf1e0;
    defparam rem_103_add_348_3.INJECT1_0 = "NO";
    defparam rem_103_add_348_3.INJECT1_1 = "NO";
    FD1P3IX calc_temp_i0_i15 (.D(n2065), .SP(sys_clk_enable_402), .CD(n31680), 
            .CK(sys_clk), .Q(calc_temp[15]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam calc_temp_i0_i15.GSR = "DISABLED";
    FD1P3IX delay_r2_target_i0_i1 (.D(n4832), .SP(sys_clk_enable_403), .CD(n19149), 
            .CK(sys_clk), .Q(delay_r2_target[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam delay_r2_target_i0_i1.GSR = "DISABLED";
    PFUMX i25537 (.BLUT(n35229), .ALUT(n35230), .C0(tick_anim), .Z(sys_clk_enable_233));
    LUT4 i1_2_lut_3_lut_4_lut_adj_396 (.A(state[2]), .B(n35154), .C(key_valid), 
         .D(n25931), .Z(n17077)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i1_2_lut_3_lut_4_lut_adj_396.init = 16'h0040;
    Multiplier16 CPU_MULT (.\B_input[7] (B_input[7]), .alu_opA({alu_opA}), 
            .GND_net(GND_net), .\B_input[0] (B_input[0]), .\B_input[1] (B_input[1]), 
            .\B_input[9] (B_input[9]), .\Res_15__N_1527[9] (Res_15__N_1527[9]), 
            .\Res_15__N_1527[7] (Res_15__N_1527[7]), .n6(n6_adj_1681), .n33586(n33586), 
            .n33587(n33587), .\B_input[8] (B_input[8]), .\Res_15__N_1527[8] (Res_15__N_1527[8]), 
            .\B_input[10] (B_input[10]), .\Res_15__N_1527[1] (Res_15__N_1527[1]), 
            .\Res_15__N_1527[10] (Res_15__N_1527[10]), .\B_input[6] (B_input[6]), 
            .\Res_15__N_1527[6] (Res_15__N_1527[6]), .\B_input[12] (B_input[12]), 
            .n34890(n34890), .n30559(n30559), .\B_input[11] (B_input[11]), 
            .n30492(n30492), .\B_input[5] (B_input[5]), .\Res_15__N_1527[5] (Res_15__N_1527[5]), 
            .\B_input[4] (B_input[4]), .\Res_15__N_1527[4] (Res_15__N_1527[4]), 
            .\B_input[3] (B_input[3]), .\Res_15__N_1527[3] (Res_15__N_1527[3]), 
            .n31535(n31535), .n30539(n30539), .n34893(n34893), .n9861(n9861), 
            .n30550(n30550), .\B_input[2] (B_input[2]), .\Res_15__N_1527[2] (Res_15__N_1527[2]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(144[15:27])
    LUT4 i15253_4_lut (.A(n35099), .B(n31_adj_1701), .C(n35013), .D(n16488), 
         .Z(n23867)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i15253_4_lut.init = 16'hca0a;
    LUT4 i22401_2_lut (.A(stop_timer[1]), .B(n4_adj_1813), .Z(n24_adj_1818)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(282[80:90])
    defparam i22401_2_lut.init = 16'h6666;
    CCU2D add_450_7 (.A0(apuesta[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(apuesta[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31016), .COUT(n31017), .S0(n475_adj_1780), .S1(n429_adj_1796));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(236[35:42])
    defparam add_450_7.INIT0 = 16'h5aaa;
    defparam add_450_7.INIT1 = 16'h5aaa;
    defparam add_450_7.INJECT1_0 = "NO";
    defparam add_450_7.INJECT1_1 = "NO";
    PFUMX i25299 (.BLUT(n34375), .ALUT(n35041), .C0(n35172), .Z(n34376));
    LUT4 mod_105_i230_3_lut_4_lut (.A(n34961), .B(n34934), .C(apuesta[8]), 
         .D(n34945), .Z(n336)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam mod_105_i230_3_lut_4_lut.init = 16'hf10e;
    LUT4 i2_3_lut_rep_497_4_lut (.A(state[2]), .B(n35154), .C(state[3]), 
         .D(r2_active), .Z(sys_clk_enable_45)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(179[9] 357[16])
    defparam i2_3_lut_rep_497_4_lut.init = 16'h0040;
    LUT4 i22463_4_lut_4_lut (.A(tick_1s), .B(n35175), .C(state[1]), .D(state[3]), 
         .Z(n31278)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (C (D))) */ ;
    defparam i22463_4_lut_4_lut.init = 16'hfa2a;
    CCU2D rem_103_add_348_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n475_adj_1780), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n31224), .S1(n506_adj_1771));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(238[30:39])
    defparam rem_103_add_348_1.INIT0 = 16'hF000;
    defparam rem_103_add_348_1.INIT1 = 16'h5555;
    defparam rem_103_add_348_1.INJECT1_0 = "NO";
    defparam rem_103_add_348_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_397 (.A(n475_adj_1780), .B(n34902), .C(n16919), 
         .D(n521_adj_1762), .Z(n32016)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_397.init = 16'h6000;
    LUT4 i2_3_lut_4_lut_adj_398 (.A(n34961), .B(n34934), .C(n34923), .D(n333), 
         .Z(n16704)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(240[31:38])
    defparam i2_3_lut_4_lut_adj_398.init = 16'hfff8;
    PFUMX delay_timer_4__I_0_i10 (.BLUT(n4), .ALUT(n8_adj_1687), .C0(n33845), 
          .Z(r2_active_N_1169));
    LUT4 state_2__bdd_4_lut_25413 (.A(state[0]), .B(state[3]), .C(state[1]), 
         .D(blink_toggle), .Z(n34578)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C+!(D))))) */ ;
    defparam state_2__bdd_4_lut_25413.init = 16'h7475;
    KeypadController Inst_Key (.sys_clk(sys_clk), .key_code({key_code}), 
            .ROWS_IN_c_3(ROWS_IN_c_3), .key_valid(key_valid), .n35069(n35069), 
            .n36113(n36113), .\state[0] (state[0]), .n33453(n33453), .GND_net(GND_net), 
            .ROWS_IN_c_0(ROWS_IN_c_0), .ROWS_IN_c_1(ROWS_IN_c_1), .ROWS_IN_c_2(ROWS_IN_c_2), 
            .n25931(n25931), .n34981(n34981), .n7(n7_adj_1693), .n6(n6_adj_1842), 
            .n34975(n34975), .COLS_OUT_c_3(COLS_OUT_c_3), .COLS_OUT_c_2(COLS_OUT_c_2), 
            .key_cooldown({key_cooldown}), .COLS_OUT_c_1(COLS_OUT_c_1), 
            .COLS_OUT_c_0(COLS_OUT_c_0));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(135[15:31])
    GSR GSR_INST (.GSR(RESET_N_c));
    FD1P3IX stop_timer_2090__i0 (.D(n25_adj_1819), .SP(sys_clk_enable_404), 
            .CD(n19147), .CK(sys_clk), .Q(n4_adj_1813));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(282[80:90])
    defparam stop_timer_2090__i0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module MemoriaROM_U1
//

module MemoriaROM_U1 (idx_r1, \rom_out_r1[1] , \rom_out_r1[3] , n26768, 
            n35177, n34775, n35138, n3, n14255, n35019);
    input [3:0]idx_r1;
    output \rom_out_r1[1] ;
    output \rom_out_r1[3] ;
    output n26768;
    input n35177;
    input n34775;
    input n35138;
    output n3;
    output n14255;
    output n35019;
    
    
    LUT4 mux_457_Mux_1_i15_4_lut_4_lut (.A(idx_r1[1]), .B(idx_r1[0]), .C(idx_r1[2]), 
         .D(idx_r1[3]), .Z(\rom_out_r1[1] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (B (D)+!B (C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam mux_457_Mux_1_i15_4_lut_4_lut.init = 16'h01e6;
    LUT4 idx_r1_0__bdd_4_lut_25929 (.A(idx_r1[0]), .B(idx_r1[3]), .C(idx_r1[2]), 
         .D(idx_r1[1]), .Z(\rom_out_r1[3] )) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+(D))+!B))) */ ;
    defparam idx_r1_0__bdd_4_lut_25929.init = 16'h2004;
    LUT4 i18171_2_lut (.A(idx_r1[0]), .B(idx_r1[3]), .Z(n26768)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18171_2_lut.init = 16'heeee;
    LUT4 rom_out_r2_3__I_0_439_i3_2_lut_3_lut_4_lut (.A(n35177), .B(idx_r1[3]), 
         .C(n34775), .D(n35138), .Z(n3)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam rom_out_r2_3__I_0_439_i3_2_lut_3_lut_4_lut.init = 16'h22d2;
    LUT4 i5679_2_lut_4_lut_4_lut (.A(n35177), .B(idx_r1[3]), .C(\rom_out_r1[3] ), 
         .D(\rom_out_r1[1] ), .Z(n14255)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam i5679_2_lut_4_lut_4_lut.init = 16'hfcec;
    LUT4 i2262_3_lut_rep_479_4_lut (.A(n35177), .B(idx_r1[3]), .C(\rom_out_r1[3] ), 
         .D(\rom_out_r1[1] ), .Z(n35019)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam i2262_3_lut_rep_479_4_lut.init = 16'hf020;
    
endmodule
//
// Verilog Description of module MemoriaROM_U0
//

module MemoriaROM_U0 (n35138, n34775, n35139, \rom_out_r2[1] , n1921, 
            \idx_r2[3] , \idx_r2[2] , \rom_out_r2_3__N_42[0] , \rom_out_r2_3__N_42[1] , 
            \rom_out_r1[3] , n4);
    input n35138;
    input n34775;
    output n35139;
    output \rom_out_r2[1] ;
    output n1921;
    input \idx_r2[3] ;
    input \idx_r2[2] ;
    input \rom_out_r2_3__N_42[0] ;
    input \rom_out_r2_3__N_42[1] ;
    input \rom_out_r1[3] ;
    output n4;
    
    
    LUT4 i2260_3_lut_4_lut (.A(n35138), .B(n34775), .C(n35139), .D(\rom_out_r2[1] ), 
         .Z(n1921)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam i2260_3_lut_4_lut.init = 16'hf040;
    LUT4 idx_r2_3__bdd_4_lut_25676 (.A(\idx_r2[3] ), .B(\idx_r2[2] ), .C(\rom_out_r2_3__N_42[0] ), 
         .D(\rom_out_r2_3__N_42[1] ), .Z(\rom_out_r2[1] )) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C (D))))) */ ;
    defparam idx_r2_3__bdd_4_lut_25676.init = 16'h4551;
    LUT4 i1_3_lut_rep_599 (.A(\rom_out_r2_3__N_42[0] ), .B(\rom_out_r2_3__N_42[1] ), 
         .C(\idx_r2[3] ), .Z(n35139)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut_rep_599.init = 16'h0202;
    LUT4 rom_out_r2_3__I_0_439_i4_2_lut_4_lut (.A(\rom_out_r2_3__N_42[0] ), 
         .B(\rom_out_r2_3__N_42[1] ), .C(\idx_r2[3] ), .D(\rom_out_r1[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;
    defparam rom_out_r2_3__I_0_439_i4_2_lut_4_lut.init = 16'hfd02;
    
endmodule
//
// Verilog Description of module LCD_Controller
//

module LCD_Controller (sys_clk, LCD_DATA_c_0, RESET_N_c, LCD_RS_c, LCD_DATA_c_1, 
            LCD_DATA_c_2, LCD_DATA_c_3, LCD_DATA_c_4, LCD_DATA_c_5, 
            LCD_DATA_c_6, \L1_Buffer[77] , \L1_Buffer[125] , \L1_Buffer[14] , 
            \L1_Buffer[12] , \L1_Buffer[70] , \L1_Buffer[96] , \L1_Buffer[100] , 
            \L2_Buffer[102] , \L1_Buffer[21] , \L1_Buffer[53] , \L2_Buffer[125] , 
            \L2_Buffer[117] , \L2_Buffer[93] , \L2_Buffer[99] , \L2_Buffer[97] , 
            \L2_Buffer[5] , \L2_Buffer[109] , \L2_Buffer[69] , \L2_Buffer[37] , 
            \L2_Buffer[13] , \L1_Buffer[5] , \L2_Buffer[61] , \L2_Buffer[101] , 
            \L2_Buffer[85] , \L2_Buffer[106] , \L2_Buffer[27] , \L2_Buffer[25] , 
            \L2_Buffer[29] , \L1_Buffer[24] , \L1_Buffer[104] , \L1_Buffer[64] , 
            \L1_Buffer[32] , \L1_Buffer[112] , \L1_Buffer[56] , \L1_Buffer[16] , 
            \L1_Buffer[120] , \L1_Buffer[72] , \L2_Buffer[88] , \L2_Buffer[91] , 
            \L2_Buffer[89] , \L2_Buffer[90] , \L1_Buffer[126] , \L2_Buffer[123] , 
            \L1_Buffer[68] , \L1_Buffer[58] , \L2_Buffer[64] , \L2_Buffer[56] , 
            \L2_Buffer[96] , \L2_Buffer[48] , \L2_Buffer[32] , \L2_Buffer[16] , 
            \L2_Buffer[112] , \L2_Buffer[40] , \L2_Buffer[8] , \L2_Buffer[24] , 
            \L2_Buffer[80] , \L1_Buffer[26] , \L1_Buffer[82] , \L1_Buffer[18] , 
            \L1_Buffer[106] , \L1_Buffer[114] , \L1_Buffer[90] , \L1_Buffer[66] , 
            \L2_Buffer[18] , \L2_Buffer[12] , \L2_Buffer[10] , \L2_Buffer[26] , 
            \L2_Buffer[122] , \L2_Buffer[66] , \L2_Buffer[58] , \L2_Buffer[82] , 
            \L2_Buffer[34] , \L2_Buffer[98] , \L2_Buffer[50] , \L1_Buffer[83] , 
            \L1_Buffer[19] , \L1_Buffer[67] , \L1_Buffer[1] , \L2_Buffer[46] , 
            \L2_Buffer[43] , \L1_Buffer[42] , \L1_Buffer[46] , \L2_Buffer[41] , 
            \L1_Buffer[45] , \L2_Buffer[45] , \L2_Buffer[42] , \L1_Buffer[75] , 
            LCD_DATA_c_7, LCD_E_c, LEDS_c_4, \L1_Buffer[35] , \L2_Buffer[36] , 
            \L2_Buffer[108] , GND_net, \L2_Buffer[104] , \L2_Buffer[110] , 
            \L2_Buffer[115] , \L2_Buffer[107] , \L1_Buffer[105] , \L2_Buffer[105] , 
            \L1_Buffer[80] , \L2_Buffer[84] , \L1_Buffer[117] , \L1_Buffer[50] , 
            \L2_Buffer[53] , \L2_Buffer[62] , \L2_Buffer[75] , \L2_Buffer[51] , 
            \L2_Buffer[19] , \L2_Buffer[35] , \L2_Buffer[21] , \L2_Buffer[77] , 
            \L2_Buffer[83] , \L2_Buffer[67] , \L2_Buffer[59] , \L2_Buffer[11] , 
            \L1_Buffer[25] , \L1_Buffer[86] , \L1_Buffer[97] , \L1_Buffer[65] , 
            \L1_Buffer[33] , \L1_Buffer[17] , \L2_Buffer[113] , \L2_Buffer[73] , 
            \L2_Buffer[49] , \L1_Buffer[109] , \L1_Buffer[37] , \L2_Buffer[17] , 
            \L2_Buffer[33] , \L2_Buffer[81] , \L1_Buffer[108] , \L1_Buffer[116] , 
            \L1_Buffer[20] , \L1_Buffer[124] , \L1_Buffer[60] , \L1_Buffer[84] , 
            \L1_Buffer[28] , \L2_Buffer[118] , \L2_Buffer[124] , \L2_Buffer[68] , 
            \L2_Buffer[100] , \L2_Buffer[76] , \L1_Buffer[118] , \L1_Buffer[38] , 
            \L1_Buffer[62] , \L1_Buffer[78] , \L1_Buffer[110] , \L1_Buffer[30] , 
            \L2_Buffer[30] , \L2_Buffer[70] , \L2_Buffer[94] , \L2_Buffer[65] , 
            \L2_Buffer[78] , \L2_Buffer[54] , \L2_Buffer[57] , \L2_Buffer[9] , 
            \L2_Buffer[38] , \L2_Buffer[22] , \L2_Buffer[86] , \L2_Buffer[14] , 
            \L1_Buffer[91] , \L1_Buffer[27] , \L1_Buffer[59] , \L1_Buffer[51] );
    input sys_clk;
    output LCD_DATA_c_0;
    input RESET_N_c;
    output LCD_RS_c;
    output LCD_DATA_c_1;
    output LCD_DATA_c_2;
    output LCD_DATA_c_3;
    output LCD_DATA_c_4;
    output LCD_DATA_c_5;
    output LCD_DATA_c_6;
    input \L1_Buffer[77] ;
    input \L1_Buffer[125] ;
    input \L1_Buffer[14] ;
    input \L1_Buffer[12] ;
    input \L1_Buffer[70] ;
    input \L1_Buffer[96] ;
    input \L1_Buffer[100] ;
    input \L2_Buffer[102] ;
    input \L1_Buffer[21] ;
    input \L1_Buffer[53] ;
    input \L2_Buffer[125] ;
    input \L2_Buffer[117] ;
    input \L2_Buffer[93] ;
    input \L2_Buffer[99] ;
    input \L2_Buffer[97] ;
    input \L2_Buffer[5] ;
    input \L2_Buffer[109] ;
    input \L2_Buffer[69] ;
    input \L2_Buffer[37] ;
    input \L2_Buffer[13] ;
    input \L1_Buffer[5] ;
    input \L2_Buffer[61] ;
    input \L2_Buffer[101] ;
    input \L2_Buffer[85] ;
    input \L2_Buffer[106] ;
    input \L2_Buffer[27] ;
    input \L2_Buffer[25] ;
    input \L2_Buffer[29] ;
    input \L1_Buffer[24] ;
    input \L1_Buffer[104] ;
    input \L1_Buffer[64] ;
    input \L1_Buffer[32] ;
    input \L1_Buffer[112] ;
    input \L1_Buffer[56] ;
    input \L1_Buffer[16] ;
    input \L1_Buffer[120] ;
    input \L1_Buffer[72] ;
    input \L2_Buffer[88] ;
    input \L2_Buffer[91] ;
    input \L2_Buffer[89] ;
    input \L2_Buffer[90] ;
    input \L1_Buffer[126] ;
    input \L2_Buffer[123] ;
    input \L1_Buffer[68] ;
    input \L1_Buffer[58] ;
    input \L2_Buffer[64] ;
    input \L2_Buffer[56] ;
    input \L2_Buffer[96] ;
    input \L2_Buffer[48] ;
    input \L2_Buffer[32] ;
    input \L2_Buffer[16] ;
    input \L2_Buffer[112] ;
    input \L2_Buffer[40] ;
    input \L2_Buffer[8] ;
    input \L2_Buffer[24] ;
    input \L2_Buffer[80] ;
    input \L1_Buffer[26] ;
    input \L1_Buffer[82] ;
    input \L1_Buffer[18] ;
    input \L1_Buffer[106] ;
    input \L1_Buffer[114] ;
    input \L1_Buffer[90] ;
    input \L1_Buffer[66] ;
    input \L2_Buffer[18] ;
    input \L2_Buffer[12] ;
    input \L2_Buffer[10] ;
    input \L2_Buffer[26] ;
    input \L2_Buffer[122] ;
    input \L2_Buffer[66] ;
    input \L2_Buffer[58] ;
    input \L2_Buffer[82] ;
    input \L2_Buffer[34] ;
    input \L2_Buffer[98] ;
    input \L2_Buffer[50] ;
    input \L1_Buffer[83] ;
    input \L1_Buffer[19] ;
    input \L1_Buffer[67] ;
    input \L1_Buffer[1] ;
    input \L2_Buffer[46] ;
    input \L2_Buffer[43] ;
    input \L1_Buffer[42] ;
    input \L1_Buffer[46] ;
    input \L2_Buffer[41] ;
    input \L1_Buffer[45] ;
    input \L2_Buffer[45] ;
    input \L2_Buffer[42] ;
    input \L1_Buffer[75] ;
    output LCD_DATA_c_7;
    output LCD_E_c;
    output LEDS_c_4;
    input \L1_Buffer[35] ;
    input \L2_Buffer[36] ;
    input \L2_Buffer[108] ;
    input GND_net;
    input \L2_Buffer[104] ;
    input \L2_Buffer[110] ;
    input \L2_Buffer[115] ;
    input \L2_Buffer[107] ;
    input \L1_Buffer[105] ;
    input \L2_Buffer[105] ;
    input \L1_Buffer[80] ;
    input \L2_Buffer[84] ;
    input \L1_Buffer[117] ;
    input \L1_Buffer[50] ;
    input \L2_Buffer[53] ;
    input \L2_Buffer[62] ;
    input \L2_Buffer[75] ;
    input \L2_Buffer[51] ;
    input \L2_Buffer[19] ;
    input \L2_Buffer[35] ;
    input \L2_Buffer[21] ;
    input \L2_Buffer[77] ;
    input \L2_Buffer[83] ;
    input \L2_Buffer[67] ;
    input \L2_Buffer[59] ;
    input \L2_Buffer[11] ;
    input \L1_Buffer[25] ;
    input \L1_Buffer[86] ;
    input \L1_Buffer[97] ;
    input \L1_Buffer[65] ;
    input \L1_Buffer[33] ;
    input \L1_Buffer[17] ;
    input \L2_Buffer[113] ;
    input \L2_Buffer[73] ;
    input \L2_Buffer[49] ;
    input \L1_Buffer[109] ;
    input \L1_Buffer[37] ;
    input \L2_Buffer[17] ;
    input \L2_Buffer[33] ;
    input \L2_Buffer[81] ;
    input \L1_Buffer[108] ;
    input \L1_Buffer[116] ;
    input \L1_Buffer[20] ;
    input \L1_Buffer[124] ;
    input \L1_Buffer[60] ;
    input \L1_Buffer[84] ;
    input \L1_Buffer[28] ;
    input \L2_Buffer[118] ;
    input \L2_Buffer[124] ;
    input \L2_Buffer[68] ;
    input \L2_Buffer[100] ;
    input \L2_Buffer[76] ;
    input \L1_Buffer[118] ;
    input \L1_Buffer[38] ;
    input \L1_Buffer[62] ;
    input \L1_Buffer[78] ;
    input \L1_Buffer[110] ;
    input \L1_Buffer[30] ;
    input \L2_Buffer[30] ;
    input \L2_Buffer[70] ;
    input \L2_Buffer[94] ;
    input \L2_Buffer[65] ;
    input \L2_Buffer[78] ;
    input \L2_Buffer[54] ;
    input \L2_Buffer[57] ;
    input \L2_Buffer[9] ;
    input \L2_Buffer[38] ;
    input \L2_Buffer[22] ;
    input \L2_Buffer[86] ;
    input \L2_Buffer[14] ;
    input \L1_Buffer[91] ;
    input \L1_Buffer[27] ;
    input \L1_Buffer[59] ;
    input \L1_Buffer[51] ;
    
    wire sys_clk /* synthesis SET_AS_NETWORK=sys_clk, is_clock=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(65[12:19])
    
    wire n45, n20, n14, n2, n22;
    wire [17:0]n135;
    
    wire n19145;
    wire [17:0]n77;
    wire [3:0]char_index;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(37[12:22])
    
    wire sys_clk_enable_230;
    wire [3:0]char_index_3__N_1403;
    wire [7:0]current_char;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(38[12:24])
    
    wire sys_clk_enable_243;
    wire [7:0]current_char_7__N_1407;
    
    wire sys_clk_enable_292;
    wire [7:0]LCD_DATA_7__N_1395;
    
    wire n33629, n14_adj_1562;
    wire [3:0]state;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(34[12:17])
    
    wire n35066, n33505, n18645, n35220, n35221, n35222, n33278, 
        n33296, n35035, n28145, n34434, sys_clk_enable_291, n31311, 
        n35007, n26901, n33559, n16, n11, n35114, n35062, n35111, 
        n35104, n35060, n35192, n35194, n35103, n33628, n35191, 
        n4, n4_adj_1563, n35072, n33813, n18_adj_1564, n33615, n18_adj_1565, 
        n7, n25, n35109, n35061, n4_adj_1566, n4_adj_1567, n11_adj_1568, 
        n28, n22_adj_1569, n13, n30, n33809, n14_adj_1570, LCD_E_N_1417, 
        n23, n10, n35105, n35106, n832, n35196, n20_adj_1571, 
        n14_adj_1572, n35113, n26, n35197, n8, n11_adj_1573, n13_adj_1574, 
        n13_adj_1575, n6, n26_adj_1576, n20_adj_1577, n11_adj_1578, 
        n28_adj_1579, n21, n15, n35107, n18_adj_1580, n5, n24, 
        n35112, n31382, n35284, n1, n35283, LCD_ON_N_1425, n35287, 
        n16_adj_1581, n35286, n35290, n35289, n18434, n35029, LCD_E_N_1421, 
        n6_adj_1582, sys_clk_enable_326, n5_adj_1583, n5_adj_1584, n35017, 
        n5_adj_1585, n7_adj_1586, n32794, n5_adj_1587, n35296, n35295, 
        n1_adj_1588, n35299, n35298, n35302, n35301, n1_adj_1589, 
        n35306, n35305, n35195, n8_adj_1590, n8_adj_1591, n35193, 
        n6_adj_1592, n8_adj_1593, n34513, n34515, n35018;
    wire [3:0]state_3__N_1269;
    
    wire n9, n12, n8_adj_1594, n31734, n35102, n10_adj_1595, n3, 
        n35108, n8_adj_1596, n10_adj_1597, n7_adj_1598, n10_adj_1599, 
        n33619, n33620, n8_adj_1600, n10_adj_1601, n12_adj_1602, n8_adj_1603, 
        n31740, n10_adj_1604, n10_adj_1605, n11_adj_1606, n12_adj_1607, 
        n35129, n34966, n19033, n11_adj_1608, n14_adj_1609, n14_adj_1610, 
        n35067, n36117, n11_adj_1611, n11_adj_1612, n11_adj_1613, 
        n35131, n35068, n7_adj_1614, n14_adj_1615, n34980, n33576, 
        n14_adj_1616, n34995, n6_adj_1617, n34399, n14_adj_1618, n33577, 
        n14_adj_1619, n7_adj_1620, n31725, sys_clk_enable_289, n35214, 
        sys_clk_enable_290, n33504, n34433, n34432, n35217, n35218, 
        n35219, n34957;
    wire [17:0]timer;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(35[12:17])
    
    wire n35167, n4_adj_1621, sys_clk_enable_307, sys_clk_enable_309, 
        n35213, n35215, n14_adj_1622, n17, n7_adj_1623, n14_adj_1624, 
        n10_adj_1625, n31743, n33551, n31737, n33343, n33575, n15_adj_1626, 
        n33565, n16_adj_1627, n33341, n31245, n9_adj_1628, n3_adj_1629, 
        n12_adj_1630, n3_adj_1631, n3_adj_1632, n3_adj_1633, n6_adj_1634, 
        n11_adj_1635, n31727, n12_adj_1636, n9_adj_1637, n55, n17_adj_1638, 
        n22_adj_1639, n18_adj_1640, n52, n35285, n33724, n33569, 
        n33568, n27113, n33541, n4_adj_1641, n6_adj_1642, n31244, 
        n31243, n31319, n25922, n15_adj_1643, n20_adj_1644, n33617, 
        n34398, n34974, n35044, n26183, n48, n31242, n31241, n10_adj_1645, 
        n8_adj_1646, n34400, n12_adj_1647, n13_adj_1648, n10_adj_1649, 
        n31240, n31239, n31238, n31237, n14_adj_1650, n10_adj_1651, 
        n12_adj_1652, n37, n25281, n10_adj_1653, n15_adj_1654, n20_adj_1655, 
        n33613, n18_adj_1656, n12_adj_1657, n14_adj_1658, n18_adj_1659, 
        n12_adj_1660, n14_adj_1661, n19, n16_adj_1662, n13_adj_1663, 
        n8_adj_1664, n14_adj_1665, n10_adj_1666, n12_adj_1667, n8_adj_1668, 
        n10_adj_1669, n33728;
    
    LUT4 i10_4_lut (.A(n45), .B(n20), .C(n14), .D(n2), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i10_4_lut.init = 16'hfffe;
    FD1S3IX timer_2092__i0 (.D(n77[0]), .CK(sys_clk), .CD(n19145), .Q(n135[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i0.GSR = "ENABLED";
    FD1P3AX char_index_i0_i0 (.D(char_index_3__N_1403[0]), .SP(sys_clk_enable_230), 
            .CK(sys_clk), .Q(char_index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam char_index_i0_i0.GSR = "DISABLED";
    FD1P3AX current_char_i0_i0 (.D(current_char_7__N_1407[0]), .SP(sys_clk_enable_243), 
            .CK(sys_clk), .Q(current_char[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam current_char_i0_i0.GSR = "DISABLED";
    FD1P3AX lcd_db_int_i0_i1 (.D(LCD_DATA_7__N_1395[0]), .SP(sys_clk_enable_292), 
            .CK(sys_clk), .Q(LCD_DATA_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_db_int_i0_i1.GSR = "DISABLED";
    PFUMX mux_172_Mux_0_i15 (.BLUT(n33629), .ALUT(n14_adj_1562), .C0(state[3]), 
          .Z(current_char_7__N_1407[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[3]), .B(n35066), .C(state[0]), 
         .D(RESET_N_c), .Z(n33505)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hb000;
    FD1P3IX lcd_rs_int_190 (.D(n18645), .SP(sys_clk_enable_292), .CD(n33505), 
            .CK(sys_clk), .Q(LCD_RS_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_rs_int_190.GSR = "DISABLED";
    PFUMX i25531 (.BLUT(n35220), .ALUT(n35221), .C0(char_index[3]), .Z(n35222));
    LUT4 i1_2_lut_rep_495 (.A(n33278), .B(n33296), .Z(n35035)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(80[27:40])
    defparam i1_2_lut_rep_495.init = 16'heeee;
    LUT4 i1_3_lut (.A(state[3]), .B(n28145), .C(n34434), .Z(sys_clk_enable_291)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'hdcdc;
    FD1P3AX char_index_i0_i1 (.D(char_index_3__N_1403[1]), .SP(sys_clk_enable_230), 
            .CK(sys_clk), .Q(char_index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam char_index_i0_i1.GSR = "DISABLED";
    FD1P3AX char_index_i0_i2 (.D(char_index_3__N_1403[2]), .SP(sys_clk_enable_230), 
            .CK(sys_clk), .Q(char_index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam char_index_i0_i2.GSR = "DISABLED";
    FD1P3AX char_index_i0_i3 (.D(char_index_3__N_1403[3]), .SP(sys_clk_enable_230), 
            .CK(sys_clk), .Q(char_index[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam char_index_i0_i3.GSR = "DISABLED";
    LUT4 i18429_2_lut_rep_467_3_lut (.A(n33278), .B(n33296), .C(n31311), 
         .Z(n35007)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(80[27:40])
    defparam i18429_2_lut_rep_467_3_lut.init = 16'hfefe;
    LUT4 i18300_2_lut_3_lut_4_lut (.A(n33278), .B(n33296), .C(state[2]), 
         .D(n31311), .Z(n26901)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(80[27:40])
    defparam i18300_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1P3AX current_char_i0_i1 (.D(current_char_7__N_1407[1]), .SP(sys_clk_enable_243), 
            .CK(sys_clk), .Q(current_char[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam current_char_i0_i1.GSR = "DISABLED";
    FD1P3AX current_char_i0_i2 (.D(current_char_7__N_1407[2]), .SP(sys_clk_enable_243), 
            .CK(sys_clk), .Q(current_char[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam current_char_i0_i2.GSR = "DISABLED";
    FD1P3AX current_char_i0_i3 (.D(current_char_7__N_1407[3]), .SP(sys_clk_enable_243), 
            .CK(sys_clk), .Q(current_char[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam current_char_i0_i3.GSR = "DISABLED";
    FD1P3AX current_char_i0_i4 (.D(current_char_7__N_1407[4]), .SP(sys_clk_enable_243), 
            .CK(sys_clk), .Q(current_char[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam current_char_i0_i4.GSR = "DISABLED";
    FD1P3AX current_char_i0_i5 (.D(current_char_7__N_1407[5]), .SP(sys_clk_enable_243), 
            .CK(sys_clk), .Q(current_char[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam current_char_i0_i5.GSR = "DISABLED";
    FD1P3AX current_char_i0_i6 (.D(current_char_7__N_1407[6]), .SP(sys_clk_enable_243), 
            .CK(sys_clk), .Q(current_char[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam current_char_i0_i6.GSR = "DISABLED";
    FD1P3AX lcd_db_int_i0_i2 (.D(LCD_DATA_7__N_1395[1]), .SP(sys_clk_enable_292), 
            .CK(sys_clk), .Q(LCD_DATA_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_db_int_i0_i2.GSR = "DISABLED";
    FD1P3AX lcd_db_int_i0_i3 (.D(LCD_DATA_7__N_1395[2]), .SP(sys_clk_enable_292), 
            .CK(sys_clk), .Q(LCD_DATA_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_db_int_i0_i3.GSR = "DISABLED";
    FD1P3AX lcd_db_int_i0_i4 (.D(LCD_DATA_7__N_1395[3]), .SP(sys_clk_enable_292), 
            .CK(sys_clk), .Q(LCD_DATA_c_3)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_db_int_i0_i4.GSR = "DISABLED";
    FD1P3AX lcd_db_int_i0_i5 (.D(LCD_DATA_7__N_1395[4]), .SP(sys_clk_enable_292), 
            .CK(sys_clk), .Q(LCD_DATA_c_4)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_db_int_i0_i5.GSR = "DISABLED";
    FD1P3AX lcd_db_int_i0_i6 (.D(LCD_DATA_7__N_1395[5]), .SP(sys_clk_enable_292), 
            .CK(sys_clk), .Q(LCD_DATA_c_5)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_db_int_i0_i6.GSR = "DISABLED";
    FD1P3AX lcd_db_int_i0_i7 (.D(LCD_DATA_7__N_1395[6]), .SP(sys_clk_enable_292), 
            .CK(sys_clk), .Q(LCD_DATA_c_6)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_db_int_i0_i7.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(char_index[2]), .D(char_index[0]), .Z(n33559)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h20a0;
    LUT4 i8_4_lut (.A(\L1_Buffer[77] ), .B(n16), .C(n11), .D(n35114), 
         .Z(n20)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i8_4_lut.init = 16'hfefc;
    LUT4 i2_4_lut (.A(\L1_Buffer[125] ), .B(\L1_Buffer[14] ), .C(n35062), 
         .D(n35111), .Z(n14)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i2_4_lut.init = 16'hce0a;
    LUT4 i4_4_lut (.A(\L1_Buffer[12] ), .B(\L1_Buffer[70] ), .C(n35104), 
         .D(n35060), .Z(n16)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i4_4_lut.init = 16'heca0;
    LUT4 i1_3_lut_4_lut (.A(n35192), .B(n35194), .C(n35103), .D(\L1_Buffer[96] ), 
         .Z(n33628)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_3_lut_4_lut.init = 16'hf800;
    LUT4 Select_88_i4_2_lut_4_lut (.A(n35191), .B(char_index[0]), .C(char_index[3]), 
         .D(\L1_Buffer[100] ), .Z(n4)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_88_i4_2_lut_4_lut.init = 16'h0800;
    LUT4 Select_142_i4_2_lut_4_lut (.A(n35191), .B(char_index[0]), .C(char_index[3]), 
         .D(\L2_Buffer[102] ), .Z(n4_adj_1563)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_142_i4_2_lut_4_lut.init = 16'h0800;
    LUT4 i6_4_lut (.A(\L1_Buffer[21] ), .B(\L1_Buffer[53] ), .C(n35072), 
         .D(n33813), .Z(n18_adj_1564)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i6_4_lut.init = 16'heca0;
    LUT4 i11_2_lut_3_lut_4_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(char_index[2]), .D(char_index[0]), .Z(n33615)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;
    defparam i11_2_lut_3_lut_4_lut_4_lut.init = 16'h0208;
    LUT4 i9_4_lut (.A(\L2_Buffer[125] ), .B(n18_adj_1565), .C(n7), .D(n35062), 
         .Z(n25)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i9_4_lut.init = 16'hfcfe;
    LUT4 i2_4_lut_adj_17 (.A(\L2_Buffer[117] ), .B(\L2_Buffer[93] ), .C(n35109), 
         .D(n35061), .Z(n18_adj_1565)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i2_4_lut_adj_17.init = 16'heca0;
    LUT4 Select_145_i4_2_lut_4_lut (.A(n35191), .B(char_index[0]), .C(char_index[3]), 
         .D(\L2_Buffer[99] ), .Z(n4_adj_1566)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_145_i4_2_lut_4_lut.init = 16'h0800;
    LUT4 Select_147_i4_2_lut_4_lut (.A(n35191), .B(char_index[0]), .C(char_index[3]), 
         .D(\L2_Buffer[97] ), .Z(n4_adj_1567)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_147_i4_2_lut_4_lut.init = 16'h0800;
    LUT4 i14_4_lut (.A(n11_adj_1568), .B(n28), .C(n22_adj_1569), .D(n13), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i14_4_lut.init = 16'hfffe;
    PFUMX state_3__I_0_201_i15 (.BLUT(n33809), .ALUT(n14_adj_1570), .C0(state[3]), 
          .Z(LCD_E_N_1417)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i12_4_lut (.A(n23), .B(n10), .C(n35105), .D(\L2_Buffer[5] ), 
         .Z(n28)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i12_4_lut.init = 16'hefee;
    LUT4 i6_4_lut_adj_18 (.A(\L2_Buffer[109] ), .B(\L2_Buffer[69] ), .C(n35106), 
         .D(n35111), .Z(n22_adj_1569)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i6_4_lut_adj_18.init = 16'heca0;
    LUT4 i7_4_lut (.A(\L2_Buffer[37] ), .B(\L2_Buffer[13] ), .C(n832), 
         .D(n35060), .Z(n23)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i7_4_lut.init = 16'heca0;
    LUT4 i2_2_lut_4_lut (.A(n35196), .B(char_index[3]), .C(char_index[0]), 
         .D(\L1_Buffer[5] ), .Z(n45)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i2_2_lut_4_lut.init = 16'h8000;
    LUT4 i10_4_lut_adj_19 (.A(\L2_Buffer[61] ), .B(n20_adj_1571), .C(n14_adj_1572), 
         .D(n35113), .Z(n26)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i10_4_lut_adj_19.init = 16'hfefc;
    LUT4 i4_4_lut_adj_20 (.A(\L2_Buffer[101] ), .B(\L2_Buffer[85] ), .C(n35103), 
         .D(n35104), .Z(n20_adj_1571)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i4_4_lut_adj_20.init = 16'heca0;
    LUT4 i4_3_lut_4_lut (.A(n35197), .B(n35191), .C(n8), .D(\L2_Buffer[106] ), 
         .Z(n11_adj_1573)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i4_3_lut_4_lut.init = 16'hf4f0;
    LUT4 Select_145_i13_2_lut_4_lut (.A(n35194), .B(char_index[2]), .C(char_index[0]), 
         .D(\L2_Buffer[27] ), .Z(n13_adj_1574)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_145_i13_2_lut_4_lut.init = 16'h0800;
    LUT4 Select_147_i13_2_lut_4_lut (.A(n35194), .B(char_index[2]), .C(char_index[0]), 
         .D(\L2_Buffer[25] ), .Z(n13_adj_1575)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_147_i13_2_lut_4_lut.init = 16'h0800;
    LUT4 i13_4_lut (.A(n6), .B(n26_adj_1576), .C(n20_adj_1577), .D(n11_adj_1578), 
         .Z(n28_adj_1579)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 Select_143_i13_2_lut_4_lut (.A(n35194), .B(char_index[2]), .C(char_index[0]), 
         .D(\L2_Buffer[29] ), .Z(n13)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_143_i13_2_lut_4_lut.init = 16'h0800;
    LUT4 i11_4_lut (.A(n21), .B(n15), .C(n35105), .D(\L1_Buffer[12] ), 
         .Z(n26_adj_1576)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i11_4_lut.init = 16'hefee;
    LUT4 i5_4_lut (.A(\L1_Buffer[24] ), .B(\L1_Buffer[104] ), .C(n35107), 
         .D(n35106), .Z(n20_adj_1577)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i5_4_lut.init = 16'heca0;
    LUT4 i6_4_lut_adj_21 (.A(\L1_Buffer[64] ), .B(\L1_Buffer[32] ), .C(n35111), 
         .D(n832), .Z(n21)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i6_4_lut_adj_21.init = 16'heca0;
    LUT4 i9_4_lut_adj_22 (.A(\L1_Buffer[112] ), .B(n18_adj_1580), .C(n5), 
         .D(n35109), .Z(n24)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i9_4_lut_adj_22.init = 16'hfefc;
    LUT4 i3_4_lut (.A(\L1_Buffer[56] ), .B(\L1_Buffer[16] ), .C(n35113), 
         .D(n35112), .Z(n18_adj_1580)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i3_4_lut.init = 16'heca0;
    LUT4 i19725_4_lut_4_lut_then_4_lut (.A(state[2]), .B(n33296), .C(n31382), 
         .D(state[1]), .Z(n35284)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i19725_4_lut_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i19725_4_lut_4_lut_else_4_lut (.A(state[2]), .B(state[1]), .C(n1), 
         .Z(n35283)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i19725_4_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 i1_2_lut (.A(state[3]), .B(state[2]), .Z(LCD_ON_N_1425)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 current_char_5__bdd_4_lut_then_4_lut (.A(state[2]), .B(state[0]), 
         .C(state[1]), .D(state[3]), .Z(n35287)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (C)))) */ ;
    defparam current_char_5__bdd_4_lut_then_4_lut.init = 16'h0125;
    LUT4 Select_92_i5_2_lut_3_lut_4_lut (.A(char_index[1]), .B(n35197), 
         .C(\L1_Buffer[5] ), .D(char_index[2]), .Z(n5)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_92_i5_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_4_lut (.A(\L1_Buffer[120] ), .B(\L1_Buffer[72] ), .C(n35062), 
         .D(n35114), .Z(n16_adj_1581)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut.init = 16'hce0a;
    LUT4 current_char_5__bdd_4_lut_else_4_lut (.A(state[2]), .B(state[1]), 
         .C(state[3]), .Z(n35286)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam current_char_5__bdd_4_lut_else_4_lut.init = 16'h0101;
    LUT4 current_char_6__bdd_4_lut_then_4_lut (.A(state[0]), .B(state[1]), 
         .C(state[2]), .D(state[3]), .Z(n35290)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam current_char_6__bdd_4_lut_then_4_lut.init = 16'h01c0;
    LUT4 current_char_6__bdd_4_lut_else_4_lut (.A(state[0]), .B(state[1]), 
         .C(state[2]), .D(state[3]), .Z(n35289)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam current_char_6__bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_23 (.A(n18434), .B(n35029), .C(LCD_E_N_1421), .D(n6_adj_1582), 
         .Z(sys_clk_enable_326)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(34[12:17])
    defparam i1_4_lut_adj_23.init = 16'hccc8;
    LUT4 Select_148_i5_2_lut_3_lut_4_lut (.A(char_index[1]), .B(n35197), 
         .C(\L2_Buffer[88] ), .D(char_index[2]), .Z(n5_adj_1583)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_148_i5_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 Select_145_i5_2_lut_3_lut_4_lut (.A(char_index[1]), .B(n35197), 
         .C(\L2_Buffer[91] ), .D(char_index[2]), .Z(n5_adj_1584)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_145_i5_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_4_lut_adj_24 (.A(state[3]), .B(n35007), .C(n35017), .D(state[0]), 
         .Z(n6_adj_1582)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_24.init = 16'hafbb;
    LUT4 Select_147_i5_2_lut_3_lut_4_lut (.A(char_index[1]), .B(n35197), 
         .C(\L2_Buffer[89] ), .D(char_index[2]), .Z(n5_adj_1585)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_147_i5_2_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX mux_172_Mux_4_i15 (.BLUT(n7_adj_1586), .ALUT(n32794), .C0(state[3]), 
          .Z(current_char_7__N_1407[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 Select_146_i5_2_lut_3_lut_4_lut (.A(char_index[1]), .B(n35197), 
         .C(\L2_Buffer[90] ), .D(char_index[2]), .Z(n5_adj_1587)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_146_i5_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 n25308_bdd_4_lut_then_4_lut (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(state[3]), .Z(n35296)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C+!(D))))) */ ;
    defparam n25308_bdd_4_lut_then_4_lut.init = 16'h010e;
    LUT4 n25308_bdd_4_lut_else_4_lut (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(state[3]), .Z(n35295)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam n25308_bdd_4_lut_else_4_lut.init = 16'h0006;
    LUT4 Select_86_i1_2_lut_3_lut_4_lut (.A(char_index[1]), .B(n35197), 
         .C(\L1_Buffer[126] ), .D(char_index[2]), .Z(n1_adj_1588)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam Select_86_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 current_char_1__bdd_4_lut_then_4_lut (.A(state[0]), .B(state[2]), 
         .C(state[1]), .D(state[3]), .Z(n35299)) /* synthesis lut_function=(!(A+(B (D)+!B (C+!(D))))) */ ;
    defparam current_char_1__bdd_4_lut_then_4_lut.init = 16'h0144;
    LUT4 current_char_1__bdd_4_lut_else_4_lut (.A(state[0]), .B(state[2]), 
         .C(state[1]), .D(state[3]), .Z(n35298)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam current_char_1__bdd_4_lut_else_4_lut.init = 16'h0004;
    LUT4 current_char_0__bdd_4_lut_then_4_lut (.A(state[2]), .B(state[0]), 
         .C(state[1]), .D(state[3]), .Z(n35302)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam current_char_0__bdd_4_lut_then_4_lut.init = 16'h0160;
    LUT4 current_char_0__bdd_4_lut_else_4_lut (.A(state[2]), .B(state[0]), 
         .C(state[1]), .D(state[3]), .Z(n35301)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam current_char_0__bdd_4_lut_else_4_lut.init = 16'h0040;
    LUT4 Select_145_i1_2_lut_3_lut_4_lut (.A(char_index[1]), .B(n35197), 
         .C(\L2_Buffer[123] ), .D(char_index[2]), .Z(n1_adj_1589)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam Select_145_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 current_char_3__bdd_4_lut_then_4_lut (.A(state[2]), .B(state[0]), 
         .C(state[1]), .D(state[3]), .Z(n35306)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam current_char_3__bdd_4_lut_then_4_lut.init = 16'h0135;
    LUT4 current_char_3__bdd_4_lut_else_4_lut (.A(state[2]), .B(state[0]), 
         .C(state[1]), .D(state[3]), .Z(n35305)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (D)))) */ ;
    defparam current_char_3__bdd_4_lut_else_4_lut.init = 16'h0015;
    LUT4 Select_88_i8_2_lut_4_lut (.A(n35195), .B(char_index[1]), .C(char_index[3]), 
         .D(\L1_Buffer[68] ), .Z(n8_adj_1590)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_88_i8_2_lut_4_lut.init = 16'h0800;
    LUT4 Select_86_i8_2_lut_4_lut (.A(n35195), .B(char_index[1]), .C(char_index[3]), 
         .D(\L1_Buffer[70] ), .Z(n8_adj_1591)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_86_i8_2_lut_4_lut.init = 16'h0800;
    LUT4 i3_3_lut_4_lut (.A(n35194), .B(n35193), .C(n6_adj_1592), .D(\L1_Buffer[58] ), 
         .Z(n8_adj_1593)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i3_3_lut_4_lut.init = 16'hf2f0;
    LUT4 n34513_bdd_4_lut (.A(n34513), .B(state[0]), .C(n34515), .D(n35018), 
         .Z(state_3__N_1269[0])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n34513_bdd_4_lut.init = 16'h22f0;
    LUT4 i3_4_lut_adj_25 (.A(\L2_Buffer[64] ), .B(\L2_Buffer[56] ), .C(n35111), 
         .D(n35113), .Z(n9)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i3_4_lut_adj_25.init = 16'heca0;
    LUT4 i6_4_lut_adj_26 (.A(\L2_Buffer[96] ), .B(n12), .C(n8_adj_1594), 
         .D(n35103), .Z(n31734)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i6_4_lut_adj_26.init = 16'hfefc;
    LUT4 i5_4_lut_adj_27 (.A(n35102), .B(n10_adj_1595), .C(n3), .D(\L2_Buffer[48] ), 
         .Z(n12)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i5_4_lut_adj_27.init = 16'hfefc;
    LUT4 i1_4_lut_adj_28 (.A(\L2_Buffer[32] ), .B(\L2_Buffer[16] ), .C(n832), 
         .D(n35112), .Z(n8_adj_1594)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i1_4_lut_adj_28.init = 16'heca0;
    LUT4 i3_4_lut_adj_29 (.A(\L2_Buffer[112] ), .B(\L2_Buffer[40] ), .C(n35109), 
         .D(n35108), .Z(n10_adj_1595)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i3_4_lut_adj_29.init = 16'heca0;
    LUT4 i4_4_lut_adj_30 (.A(\L2_Buffer[8] ), .B(n8_adj_1596), .C(n5_adj_1583), 
         .D(n35060), .Z(n10_adj_1597)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i4_4_lut_adj_30.init = 16'hfefc;
    LUT4 i2_4_lut_adj_31 (.A(\L2_Buffer[24] ), .B(\L2_Buffer[80] ), .C(n35107), 
         .D(n35104), .Z(n8_adj_1596)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i2_4_lut_adj_31.init = 16'heca0;
    LUT4 i2_4_lut_adj_32 (.A(\L1_Buffer[26] ), .B(\L1_Buffer[82] ), .C(n35107), 
         .D(n35104), .Z(n7_adj_1598)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i2_4_lut_adj_32.init = 16'heca0;
    LUT4 i5_4_lut_adj_33 (.A(\L1_Buffer[21] ), .B(n10_adj_1599), .C(n33619), 
         .D(n35103), .Z(n33620)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i5_4_lut_adj_33.init = 16'hfefc;
    LUT4 i4_4_lut_adj_34 (.A(\L1_Buffer[18] ), .B(n8_adj_1600), .C(n10_adj_1601), 
         .D(n35112), .Z(n10_adj_1599)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i4_4_lut_adj_34.init = 16'hfefc;
    LUT4 i2_4_lut_adj_35 (.A(\L1_Buffer[106] ), .B(\L1_Buffer[114] ), .C(n35106), 
         .D(n35109), .Z(n8_adj_1600)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i2_4_lut_adj_35.init = 16'heca0;
    LUT4 i1_4_lut_adj_36 (.A(\L1_Buffer[90] ), .B(\L1_Buffer[66] ), .C(n35061), 
         .D(n35111), .Z(n6_adj_1592)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_36.init = 16'heca0;
    LUT4 i1_4_lut_adj_37 (.A(\L2_Buffer[18] ), .B(\L2_Buffer[12] ), .C(n35112), 
         .D(n35109), .Z(n8)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i1_4_lut_adj_37.init = 16'heca0;
    LUT4 i6_4_lut_adj_38 (.A(\L2_Buffer[10] ), .B(n12_adj_1602), .C(n8_adj_1603), 
         .D(n35060), .Z(n31740)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i6_4_lut_adj_38.init = 16'hfefc;
    LUT4 i5_4_lut_adj_39 (.A(\L2_Buffer[26] ), .B(n10_adj_1604), .C(n5_adj_1587), 
         .D(n35107), .Z(n12_adj_1602)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i5_4_lut_adj_39.init = 16'hfefc;
    LUT4 i1_4_lut_adj_40 (.A(\L2_Buffer[122] ), .B(\L2_Buffer[66] ), .C(n35062), 
         .D(n35111), .Z(n8_adj_1603)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i1_4_lut_adj_40.init = 16'hce0a;
    LUT4 i3_4_lut_adj_41 (.A(\L2_Buffer[58] ), .B(\L2_Buffer[82] ), .C(n35113), 
         .D(n35104), .Z(n10_adj_1604)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i3_4_lut_adj_41.init = 16'heca0;
    LUT4 i5_4_lut_adj_42 (.A(\L2_Buffer[34] ), .B(n10_adj_1605), .C(n11_adj_1606), 
         .D(n832), .Z(n12_adj_1607)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i5_4_lut_adj_42.init = 16'hfefc;
    LUT4 i3_4_lut_adj_43 (.A(\L2_Buffer[98] ), .B(\L2_Buffer[50] ), .C(n35103), 
         .D(n35102), .Z(n10_adj_1605)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i3_4_lut_adj_43.init = 16'heca0;
    LUT4 i7421_2_lut_rep_589 (.A(state[0]), .B(state[1]), .Z(n35129)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i7421_2_lut_rep_589.init = 16'heeee;
    LUT4 i17972_3_lut_4_lut (.A(char_index[1]), .B(n34966), .C(char_index[2]), 
         .D(n19033), .Z(char_index_3__N_1403[2])) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(124[21] 133[28])
    defparam i17972_3_lut_4_lut.init = 16'h0078;
    LUT4 i10338_3_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(n19033)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i10338_3_lut_4_lut_4_lut.init = 16'hfaea;
    LUT4 i6_4_lut_adj_44 (.A(n11_adj_1608), .B(\L1_Buffer[83] ), .C(n14_adj_1609), 
         .D(n35104), .Z(n14_adj_1610)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i6_4_lut_adj_44.init = 16'hfefa;
    LUT4 i25213_2_lut_rep_526_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n35066)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i25213_2_lut_rep_526_3_lut.init = 16'h0101;
    LUT4 i2_2_lut_rep_489_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[3]), 
         .D(state[2]), .Z(n35029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i2_2_lut_rep_489_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_527_3_lut (.A(char_index[3]), .B(char_index[1]), .C(char_index[2]), 
         .Z(n35067)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_527_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_45 (.A(\L1_Buffer[19] ), .B(\L1_Buffer[67] ), .C(n35112), 
         .D(n35111), .Z(n11_adj_1608)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i3_4_lut_adj_45.init = 16'heca0;
    LUT4 i1_4_lut_adj_46 (.A(\L1_Buffer[1] ), .B(n35105), .C(n35109), 
         .D(n35062), .Z(n14_adj_1609)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_46.init = 16'ha2aa;
    LUT4 i1_2_lut_rep_520_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(char_index[0]), .D(char_index[2]), .Z(n35060)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_520_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_671 (.A(char_index[3]), .B(char_index[1]), .Z(n36117)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_671.init = 16'h8888;
    LUT4 Select_142_i11_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L2_Buffer[46] ), .D(n35193), .Z(n11_adj_1611)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_142_i11_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 Select_145_i11_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L2_Buffer[43] ), .D(n35193), .Z(n11_adj_1612)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_145_i11_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_adj_47 (.A(char_index[3]), .B(char_index[1]), 
         .C(\L1_Buffer[42] ), .D(char_index[2]), .Z(n33619)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_adj_47.init = 16'h0080;
    LUT4 Select_92_i11_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L1_Buffer[46] ), .D(n35193), .Z(n11_adj_1578)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_92_i11_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 Select_147_i11_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L2_Buffer[41] ), .D(n35193), .Z(n11_adj_1613)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_147_i11_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 Select_87_i11_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L1_Buffer[45] ), .D(n35193), .Z(n11)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_87_i11_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 Select_143_i11_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L2_Buffer[45] ), .D(n35193), .Z(n11_adj_1568)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_143_i11_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 Select_146_i11_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L2_Buffer[42] ), .D(n35193), .Z(n11_adj_1606)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_146_i11_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i25177_2_lut_rep_591 (.A(state[0]), .B(state[1]), .Z(n35131)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i25177_2_lut_rep_591.init = 16'h4444;
    LUT4 i25225_2_lut_rep_528_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n35068)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i25225_2_lut_rep_528_3_lut.init = 16'h4040;
    LUT4 i2_3_lut_4_lut (.A(state[2]), .B(state[1]), .C(state[3]), .D(state[0]), 
         .Z(state_3__N_1269[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i2_3_lut_4_lut.init = 16'h0800;
    PFUMX mux_172_Mux_6_i15 (.BLUT(n7_adj_1614), .ALUT(n14_adj_1615), .C0(state[3]), 
          .Z(current_char_7__N_1407[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i17970_3_lut_4_lut (.A(char_index[0]), .B(n34980), .C(n19033), 
         .D(char_index[1]), .Z(char_index_3__N_1403[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(124[21] 133[28])
    defparam i17970_3_lut_4_lut.init = 16'h0708;
    PFUMX mux_172_Mux_3_i15 (.BLUT(n33576), .ALUT(n14_adj_1616), .C0(state[3]), 
          .Z(current_char_7__N_1407[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i2_3_lut_4_lut_adj_48 (.A(state[2]), .B(n34995), .C(n6_adj_1617), 
         .D(state[3]), .Z(state_3__N_1269[1])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i2_3_lut_4_lut_adj_48.init = 16'h00e0;
    LUT4 n1_bdd_4_lut_25314 (.A(n1), .B(n35105), .C(state[2]), .D(state[1]), 
         .Z(n34399)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam n1_bdd_4_lut_25314.init = 16'hc005;
    LUT4 i17732_4_lut (.A(n11_adj_1573), .B(n35066), .C(n31740), .D(n12_adj_1607), 
         .Z(n14_adj_1618)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17732_4_lut.init = 16'hccc8;
    PFUMX mux_172_Mux_1_i15 (.BLUT(n33577), .ALUT(n14_adj_1619), .C0(state[3]), 
          .Z(current_char_7__N_1407[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i1_4_lut_adj_49 (.A(n7_adj_1620), .B(n7_adj_1598), .C(n33620), 
         .D(n8_adj_1593), .Z(n31725)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_49.init = 16'hfffe;
    LUT4 i14_4_lut_adj_50 (.A(n33628), .B(n28_adj_1579), .C(n24), .D(n16_adj_1581), 
         .Z(n33629)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i14_4_lut_adj_50.init = 16'hfffe;
    FD1P3AX state_i3 (.D(state_3__N_1269[3]), .SP(sys_clk_enable_289), .CK(sys_clk), 
            .Q(state[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam state_i3.GSR = "ENABLED";
    LUT4 i2_4_lut_then_4_lut (.A(\L1_Buffer[75] ), .B(char_index[0]), .C(char_index[1]), 
         .D(char_index[3]), .Z(n35214)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i2_4_lut_then_4_lut.init = 16'h0020;
    FD1P3AX state_i2 (.D(state_3__N_1269[2]), .SP(sys_clk_enable_290), .CK(sys_clk), 
            .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam state_i2.GSR = "ENABLED";
    FD1P3AX state_i1 (.D(state_3__N_1269[1]), .SP(sys_clk_enable_291), .CK(sys_clk), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam state_i1.GSR = "ENABLED";
    FD1P3IX lcd_db_int_i0_i8 (.D(LCD_ON_N_1425), .SP(sys_clk_enable_292), 
            .CD(n33504), .CK(sys_clk), .Q(LCD_DATA_c_7)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_db_int_i0_i8.GSR = "DISABLED";
    PFUMX i25324 (.BLUT(n34433), .ALUT(n34432), .C0(state[2]), .Z(n34434));
    PFUMX i25529 (.BLUT(n35217), .ALUT(n35218), .C0(char_index[2]), .Z(n35219));
    LUT4 i17578_3_lut_4_lut (.A(n35018), .B(char_index[0]), .C(n35067), 
         .D(n19033), .Z(char_index_3__N_1403[0])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!B))) */ ;
    defparam i17578_3_lut_4_lut.init = 16'h00e6;
    LUT4 i2856_2_lut_rep_417_3_lut_4_lut (.A(n35018), .B(char_index[0]), 
         .C(n35067), .D(char_index[1]), .Z(n34957)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2856_2_lut_rep_417_3_lut_4_lut.init = 16'h0800;
    LUT4 i17347_3_lut_4_lut (.A(LCD_E_c), .B(n35007), .C(LCD_E_N_1421), 
         .D(n35066), .Z(n14_adj_1570)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(124[21] 133[28])
    defparam i17347_3_lut_4_lut.init = 16'hf800;
    LUT4 i24965_3_lut_4_lut (.A(LCD_E_c), .B(n35007), .C(LCD_E_N_1421), 
         .D(n18434), .Z(n33809)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(124[21] 133[28])
    defparam i24965_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i10033_4_lut_3_lut (.A(state[1]), .B(state[2]), .C(state[3]), 
         .Z(n18645)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i10033_4_lut_3_lut.init = 16'h1818;
    LUT4 i1_2_lut_rep_627 (.A(timer[3]), .B(timer[2]), .Z(n35167)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_627.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_51 (.A(timer[3]), .B(timer[2]), .C(timer[4]), 
         .D(timer[1]), .Z(n4_adj_1621)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_51.init = 16'hf0e0;
    FD1P3AX state_i0 (.D(state_3__N_1269[0]), .SP(sys_clk_enable_307), .CK(sys_clk), 
            .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX LCD_ON_189 (.D(LCD_ON_N_1425), .SP(sys_clk_enable_309), .CK(sys_clk), 
            .Q(LEDS_c_4)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam LCD_ON_189.GSR = "ENABLED";
    LUT4 i2_4_lut_else_4_lut (.A(\L1_Buffer[35] ), .B(char_index[1]), .C(char_index[3]), 
         .Z(n35213)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i2_4_lut_else_4_lut.init = 16'h8080;
    PFUMX i25527 (.BLUT(n35213), .ALUT(n35214), .C0(char_index[2]), .Z(n35215));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(state[0]), .B(RESET_N_c), .C(n35066), 
         .D(state[3]), .Z(n33504)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4404;
    LUT4 i17725_4_lut (.A(n25), .B(n35066), .C(n30), .D(n26), .Z(n14_adj_1622)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17725_4_lut.init = 16'hccc8;
    LUT4 i17726_4_lut (.A(n17), .B(n35068), .C(n22), .D(n18_adj_1564), 
         .Z(n7_adj_1623)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17726_4_lut.init = 16'hccc8;
    PFUMX mux_172_Mux_5_i15 (.BLUT(n7_adj_1623), .ALUT(n14_adj_1622), .C0(state[3]), 
          .Z(current_char_7__N_1407[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i7_4_lut_adj_52 (.A(n11_adj_1612), .B(n14_adj_1624), .C(n10_adj_1625), 
         .D(n4_adj_1566), .Z(n31743)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i7_4_lut_adj_52.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_53 (.A(state[1]), .B(n35018), .C(state[0]), 
         .D(state[2]), .Z(n33551)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_53.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(char_index[3]), .B(char_index[0]), 
         .C(\L1_Buffer[5] ), .D(char_index[1]), .Z(n35218)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(char_index[3]), .B(char_index[0]), 
         .C(\L1_Buffer[5] ), .D(char_index[1]), .Z(n35217)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'h4000;
    LUT4 i17733_4_lut (.A(n1_adj_1589), .B(n35066), .C(n31737), .D(n33343), 
         .Z(n14_adj_1619)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17733_4_lut.init = 16'hccc8;
    LUT4 i2_4_lut_adj_54 (.A(n33575), .B(n15_adj_1626), .C(n33565), .D(n16_adj_1627), 
         .Z(n33577)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i2_4_lut_adj_54.init = 16'hfffe;
    FD1P3AX lcd_e_int_188 (.D(LCD_E_N_1417), .SP(sys_clk_enable_326), .CK(sys_clk), 
            .Q(LCD_E_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam lcd_e_int_188.GSR = "ENABLED";
    FD1S3IX timer_2092__i1 (.D(n77[1]), .CK(sys_clk), .CD(n19145), .Q(timer[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i1.GSR = "ENABLED";
    LUT4 i5_4_lut_then_4_lut (.A(\L2_Buffer[36] ), .B(char_index[0]), .C(char_index[2]), 
         .D(char_index[1]), .Z(n35221)) /* synthesis lut_function=(!((B (C+!(D))+!B (C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i5_4_lut_then_4_lut.init = 16'h0a02;
    LUT4 i5_4_lut_else_4_lut (.A(\L2_Buffer[108] ), .B(char_index[0]), .C(char_index[2]), 
         .D(char_index[1]), .Z(n35220)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i5_4_lut_else_4_lut.init = 16'h0200;
    LUT4 state_2__bdd_4_lut_25402 (.A(state[0]), .B(state[1]), .C(n1), 
         .D(n35017), .Z(n34433)) /* synthesis lut_function=(A ((D)+!B)+!A (B+(C))) */ ;
    defparam state_2__bdd_4_lut_25402.init = 16'hfe76;
    LUT4 state_2__bdd_4_lut_25323 (.A(n35018), .B(n35105), .C(state[0]), 
         .D(state[1]), .Z(n34432)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;
    defparam state_2__bdd_4_lut_25323.init = 16'ha2aa;
    LUT4 i17729_4_lut (.A(n1_adj_1589), .B(n35066), .C(n31743), .D(n33341), 
         .Z(n14_adj_1616)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17729_4_lut.init = 16'hccc8;
    CCU2D timer_2092_add_4_19 (.A0(timer[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31245), .S0(n77[17]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_19.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_19.INIT1 = 16'h0000;
    defparam timer_2092_add_4_19.INJECT1_0 = "NO";
    defparam timer_2092_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_651 (.A(char_index[1]), .B(char_index[2]), .Z(n35191)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_651.init = 16'h2222;
    LUT4 i2_3_lut_rep_563_4_lut (.A(char_index[1]), .B(char_index[2]), .C(char_index[3]), 
         .D(char_index[0]), .Z(n35103)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i2_3_lut_rep_563_4_lut.init = 16'h0200;
    LUT4 i1_4_lut_adj_55 (.A(n9_adj_1628), .B(n33575), .C(n14_adj_1610), 
         .D(n35215), .Z(n33576)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_55.init = 16'hfffe;
    LUT4 Select_148_i3_2_lut_3_lut_4_lut (.A(char_index[1]), .B(char_index[2]), 
         .C(\L2_Buffer[104] ), .D(n35197), .Z(n3)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_148_i3_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 Select_142_i3_2_lut_3_lut_4_lut (.A(char_index[1]), .B(char_index[2]), 
         .C(\L2_Buffer[110] ), .D(n35197), .Z(n3_adj_1629)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_142_i3_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i6_4_lut_adj_56 (.A(\L2_Buffer[115] ), .B(n12_adj_1630), .C(n3_adj_1631), 
         .D(n35109), .Z(n14_adj_1624)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i6_4_lut_adj_56.init = 16'hfefc;
    LUT4 Select_145_i3_2_lut_3_lut_4_lut (.A(char_index[1]), .B(char_index[2]), 
         .C(\L2_Buffer[107] ), .D(n35197), .Z(n3_adj_1631)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_145_i3_2_lut_3_lut_4_lut.init = 16'h0020;
    PFUMX mux_172_Mux_2_i15 (.BLUT(n31725), .ALUT(n14_adj_1618), .C0(state[3]), 
          .Z(current_char_7__N_1407[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 Select_91_i3_2_lut_3_lut_4_lut (.A(char_index[1]), .B(char_index[2]), 
         .C(\L1_Buffer[105] ), .D(n35197), .Z(n3_adj_1632)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_91_i3_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 Select_147_i3_2_lut_3_lut_4_lut (.A(char_index[1]), .B(char_index[2]), 
         .C(\L2_Buffer[105] ), .D(n35197), .Z(n3_adj_1633)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_147_i3_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 Select_92_i6_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L1_Buffer[80] ), .D(n35195), .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_92_i6_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 Select_144_i6_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L2_Buffer[84] ), .D(n35195), .Z(n6_adj_1634)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_144_i6_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 Select_87_i2_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L1_Buffer[117] ), .D(n35192), .Z(n2)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_87_i2_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_652 (.A(char_index[0]), .B(char_index[2]), .Z(n35192)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_652.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_57 (.A(char_index[0]), .B(char_index[2]), 
         .C(char_index[1]), .D(char_index[3]), .Z(n832)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_3_lut_4_lut_adj_57.init = 16'h2000;
    LUT4 i1_2_lut_rep_569_3_lut_4_lut (.A(char_index[0]), .B(char_index[2]), 
         .C(char_index[1]), .D(char_index[3]), .Z(n35109)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_569_3_lut_4_lut.init = 16'h0002;
    LUT4 Select_90_i10_2_lut_3_lut_4_lut (.A(char_index[0]), .B(char_index[2]), 
         .C(\L1_Buffer[50] ), .D(n35194), .Z(n10_adj_1601)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_90_i10_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 Select_143_i10_2_lut_3_lut_4_lut (.A(char_index[0]), .B(char_index[2]), 
         .C(\L2_Buffer[53] ), .D(n35194), .Z(n10)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_143_i10_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i24891_2_lut_rep_653 (.A(char_index[2]), .B(char_index[0]), .Z(n35193)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i24891_2_lut_rep_653.init = 16'heeee;
    LUT4 i17723_4_lut (.A(n11_adj_1635), .B(n35066), .C(n31727), .D(n12_adj_1636), 
         .Z(n14_adj_1615)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17723_4_lut.init = 16'hccc8;
    LUT4 i1_2_lut_rep_568_3_lut_4_lut (.A(char_index[2]), .B(char_index[0]), 
         .C(char_index[1]), .D(char_index[3]), .Z(n35108)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_568_3_lut_4_lut.init = 16'h1000;
    LUT4 Select_142_i9_2_lut_3_lut_4_lut (.A(char_index[2]), .B(char_index[0]), 
         .C(\L2_Buffer[62] ), .D(n35194), .Z(n9_adj_1637)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam Select_142_i9_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_654 (.A(char_index[3]), .B(char_index[1]), .Z(n35194)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_654.init = 16'h2222;
    LUT4 i24968_2_lut_3_lut_4_lut_2_lut_3_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(char_index[2]), .Z(n33813)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i24968_2_lut_3_lut_4_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_562_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(char_index[2]), .D(char_index[0]), .Z(n35102)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_562_3_lut_4_lut.init = 16'h0200;
    LUT4 i2_4_lut_adj_58 (.A(\L2_Buffer[75] ), .B(\L2_Buffer[51] ), .C(n35114), 
         .D(n35102), .Z(n10_adj_1625)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i2_4_lut_adj_58.init = 16'heca0;
    LUT4 i4_4_lut_adj_59 (.A(\L2_Buffer[19] ), .B(\L2_Buffer[35] ), .C(n35112), 
         .D(n832), .Z(n12_adj_1630)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i4_4_lut_adj_59.init = 16'heca0;
    LUT4 i24918_2_lut_rep_532_3_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(char_index[2]), .Z(n35072)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i24918_2_lut_rep_532_3_lut.init = 16'h2020;
    LUT4 i2_3_lut_rep_567_4_lut (.A(char_index[3]), .B(char_index[1]), .C(char_index[0]), 
         .D(char_index[2]), .Z(n35107)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i2_3_lut_rep_567_4_lut.init = 16'h0200;
    LUT4 i1_4_lut_adj_60 (.A(state[2]), .B(n1), .C(n35018), .D(state[1]), 
         .Z(n55)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_4_lut_adj_60.init = 16'hfaee;
    LUT4 Select_143_i14_2_lut_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(\L2_Buffer[21] ), .D(n35195), .Z(n14_adj_1572)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_143_i14_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_573_3_lut_4_lut (.A(char_index[3]), .B(char_index[1]), 
         .C(char_index[0]), .D(char_index[2]), .Z(n35113)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_573_3_lut_4_lut.init = 16'h0002;
    LUT4 i17724_4_lut (.A(n17_adj_1638), .B(n35068), .C(n22_adj_1639), 
         .D(n18_adj_1640), .Z(n7_adj_1614)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17724_4_lut.init = 16'hccc8;
    LUT4 i1_2_lut_rep_655 (.A(char_index[2]), .B(char_index[0]), .Z(n35195)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_655.init = 16'h8888;
    LUT4 i1_2_lut_rep_564_3_lut_4_lut (.A(char_index[2]), .B(char_index[0]), 
         .C(char_index[1]), .D(char_index[3]), .Z(n35104)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_564_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_572_3_lut_4_lut (.A(char_index[2]), .B(char_index[0]), 
         .C(char_index[1]), .D(char_index[3]), .Z(n35112)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_572_3_lut_4_lut.init = 16'h0800;
    LUT4 i14_4_lut_adj_61 (.A(n52), .B(n33551), .C(state[3]), .D(n35285), 
         .Z(n19145)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(34[12:17])
    defparam i14_4_lut_adj_61.init = 16'hc0c5;
    LUT4 i2_3_lut_rep_571_4_lut (.A(char_index[2]), .B(char_index[0]), .C(char_index[3]), 
         .D(char_index[1]), .Z(n35111)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i2_3_lut_rep_571_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_656 (.A(char_index[2]), .B(char_index[1]), .Z(n35196)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_rep_656.init = 16'h8888;
    LUT4 i25278_3_lut_rep_565_4_lut (.A(char_index[2]), .B(char_index[1]), 
         .C(char_index[0]), .D(char_index[3]), .Z(n35105)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i25278_3_lut_rep_565_4_lut.init = 16'h7fff;
    LUT4 Select_90_i7_2_lut_3_lut_4_lut (.A(char_index[2]), .B(char_index[1]), 
         .C(\L1_Buffer[53] ), .D(n35197), .Z(n7_adj_1620)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_90_i7_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 Select_143_i7_2_lut_3_lut_4_lut (.A(char_index[2]), .B(char_index[1]), 
         .C(\L2_Buffer[77] ), .D(n35197), .Z(n7)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_143_i7_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_657 (.A(char_index[0]), .B(char_index[3]), .Z(n35197)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_657.init = 16'heeee;
    LUT4 i1_2_lut_rep_574_3_lut_4_lut (.A(char_index[0]), .B(char_index[3]), 
         .C(char_index[1]), .D(char_index[2]), .Z(n35114)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_574_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_566_3_lut_4_lut (.A(char_index[0]), .B(char_index[3]), 
         .C(char_index[2]), .D(char_index[1]), .Z(n35106)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_566_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_521_3_lut_4_lut (.A(char_index[0]), .B(char_index[3]), 
         .C(char_index[2]), .D(char_index[1]), .Z(n35061)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_521_3_lut_4_lut.init = 16'h0010;
    LUT4 i24893_2_lut (.A(state[1]), .B(n1), .Z(n33724)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i24893_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_62 (.A(timer[17]), .B(timer[16]), .C(n33569), .D(timer[15]), 
         .Z(n1)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_62.init = 16'heaaa;
    LUT4 i1_4_lut_adj_63 (.A(timer[12]), .B(n33568), .C(n27113), .D(timer[11]), 
         .Z(n33569)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_63.init = 16'heccc;
    LUT4 i1_2_lut_rep_522_3_lut_4_lut (.A(char_index[0]), .B(char_index[3]), 
         .C(char_index[2]), .D(char_index[1]), .Z(n35062)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_522_3_lut_4_lut.init = 16'hfffe;
    LUT4 i18503_4_lut (.A(n33541), .B(timer[10]), .C(timer[9]), .D(n4_adj_1641), 
         .Z(n27113)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i18503_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut_adj_64 (.A(timer[3]), .B(timer[6]), .C(timer[5]), .D(timer[4]), 
         .Z(n4_adj_1641)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[27:39])
    defparam i1_4_lut_adj_64.init = 16'hfcec;
    LUT4 i1_2_lut_adj_65 (.A(timer[7]), .B(timer[8]), .Z(n33541)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[27:39])
    defparam i1_2_lut_adj_65.init = 16'heeee;
    LUT4 i1_2_lut_adj_66 (.A(timer[13]), .B(timer[14]), .Z(n33568)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_66.init = 16'heeee;
    LUT4 i10318_2_lut (.A(state[0]), .B(state[1]), .Z(n6_adj_1617)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i10318_2_lut.init = 16'h6666;
    LUT4 i4_4_lut_adj_67 (.A(timer[12]), .B(n33568), .C(timer[17]), .D(n6_adj_1642), 
         .Z(n33296)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_67.init = 16'hfffe;
    LUT4 i1_2_lut_adj_68 (.A(timer[16]), .B(timer[15]), .Z(n6_adj_1642)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_68.init = 16'heeee;
    LUT4 i3_4_lut_adj_69 (.A(timer[9]), .B(timer[11]), .C(timer[10]), 
         .D(n33541), .Z(n33278)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[27:39])
    defparam i3_4_lut_adj_69.init = 16'hfffe;
    LUT4 i2_4_lut_adj_70 (.A(timer[6]), .B(timer[5]), .C(timer[4]), .D(n35167), 
         .Z(n31311)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_70.init = 16'h8880;
    CCU2D timer_2092_add_4_17 (.A0(timer[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31244), .COUT(n31245), .S0(n77[15]), .S1(n77[16]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_17.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_17.INIT1 = 16'hfaaa;
    defparam timer_2092_add_4_17.INJECT1_0 = "NO";
    defparam timer_2092_add_4_17.INJECT1_1 = "NO";
    CCU2D timer_2092_add_4_15 (.A0(timer[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31243), .COUT(n31244), .S0(n77[13]), .S1(n77[14]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_15.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_15.INIT1 = 16'hfaaa;
    defparam timer_2092_add_4_15.INJECT1_0 = "NO";
    defparam timer_2092_add_4_15.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_71 (.A(timer[11]), .B(n31319), .C(timer[10]), .D(timer[9]), 
         .Z(n31382)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_71.init = 16'ha080;
    LUT4 i2_4_lut_adj_72 (.A(timer[8]), .B(n25922), .C(timer[7]), .D(timer[6]), 
         .Z(n31319)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_72.init = 16'ha080;
    LUT4 i17331_4_lut (.A(timer[5]), .B(timer[4]), .C(timer[3]), .D(timer[2]), 
         .Z(n25922)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i17331_4_lut.init = 16'ha888;
    LUT4 i1_4_lut_adj_73 (.A(n35066), .B(n15_adj_1643), .C(n20_adj_1644), 
         .D(n35222), .Z(n32794)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i1_4_lut_adj_73.init = 16'haaa8;
    LUT4 i17728_4_lut (.A(n33565), .B(n35068), .C(n7_adj_1620), .D(n33617), 
         .Z(n7_adj_1586)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17728_4_lut.init = 16'hccc8;
    LUT4 i1_2_lut_rep_477 (.A(n31382), .B(n33296), .Z(n35017)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(80[27:40])
    defparam i1_2_lut_rep_477.init = 16'heeee;
    LUT4 n1_bdd_3_lut_25313_4_lut (.A(n31382), .B(n33296), .C(state[1]), 
         .D(state[2]), .Z(n34398)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(80[27:40])
    defparam n1_bdd_3_lut_25313_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_434_3_lut_4_lut (.A(n31382), .B(n33296), .C(state[2]), 
         .D(state[1]), .Z(n34974)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(80[27:40])
    defparam i1_2_lut_rep_434_3_lut_4_lut.init = 16'h0100;
    LUT4 n28308_bdd_4_lut_25365 (.A(n35105), .B(state[3]), .C(state[2]), 
         .D(state[1]), .Z(n34513)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C+(D))))) */ ;
    defparam n28308_bdd_4_lut_25365.init = 16'h1337;
    LUT4 i52_3_lut_4_lut (.A(n33296), .B(n35044), .C(state[2]), .D(n26183), 
         .Z(n48)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i52_3_lut_4_lut.init = 16'h1ff0;
    LUT4 i1_3_lut_4_lut_adj_74 (.A(n33296), .B(n35044), .C(n6_adj_1617), 
         .D(state[2]), .Z(n52)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_74.init = 16'h1110;
    LUT4 i2848_2_lut_rep_426_3_lut_4_lut (.A(n33296), .B(n35044), .C(n35067), 
         .D(char_index[0]), .Z(n34966)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i2848_2_lut_rep_426_3_lut_4_lut.init = 16'h0e00;
    LUT4 i1_3_lut_rep_440_4_lut (.A(n33296), .B(n35044), .C(n35067), .D(char_index[0]), 
         .Z(n34980)) /* synthesis lut_function=(!(A (C (D))+!A ((C (D))+!B))) */ ;
    defparam i1_3_lut_rep_440_4_lut.init = 16'h0eee;
    CCU2D timer_2092_add_4_13 (.A0(timer[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31242), .COUT(n31243), .S0(n77[11]), .S1(n77[12]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_13.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_13.INIT1 = 16'hfaaa;
    defparam timer_2092_add_4_13.INJECT1_0 = "NO";
    defparam timer_2092_add_4_13.INJECT1_1 = "NO";
    CCU2D timer_2092_add_4_11 (.A0(timer[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n31241), .COUT(n31242), .S0(n77[9]), .S1(n77[10]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_11.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_11.INIT1 = 16'hfaaa;
    defparam timer_2092_add_4_11.INJECT1_0 = "NO";
    defparam timer_2092_add_4_11.INJECT1_1 = "NO";
    LUT4 i5_4_lut_adj_75 (.A(\L2_Buffer[83] ), .B(n10_adj_1645), .C(n13_adj_1574), 
         .D(n35104), .Z(n33341)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i5_4_lut_adj_75.init = 16'hfefc;
    LUT4 i17458_4_lut (.A(n9), .B(n35066), .C(n31734), .D(n10_adj_1597), 
         .Z(n14_adj_1562)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i17458_4_lut.init = 16'hccc8;
    LUT4 i4_4_lut_adj_76 (.A(\L2_Buffer[67] ), .B(n8_adj_1646), .C(n5_adj_1584), 
         .D(n35111), .Z(n10_adj_1645)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i4_4_lut_adj_76.init = 16'hfefc;
    LUT4 i2_4_lut_adj_77 (.A(\L2_Buffer[59] ), .B(\L2_Buffer[11] ), .C(n35113), 
         .D(n35060), .Z(n8_adj_1646)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i2_4_lut_adj_77.init = 16'heca0;
    PFUMX i25311 (.BLUT(n34399), .ALUT(n34398), .C0(state[0]), .Z(n34400));
    LUT4 i6_4_lut_adj_78 (.A(\L1_Buffer[25] ), .B(n12_adj_1647), .C(n3_adj_1632), 
         .D(n35107), .Z(n15_adj_1626)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i6_4_lut_adj_78.init = 16'hfefc;
    LUT4 i3_4_lut_adj_79 (.A(\L1_Buffer[14] ), .B(\L1_Buffer[86] ), .C(n35109), 
         .D(n35104), .Z(n12_adj_1647)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i3_4_lut_adj_79.init = 16'heca0;
    LUT4 i7_4_lut_adj_80 (.A(n13_adj_1648), .B(\L1_Buffer[97] ), .C(n10_adj_1649), 
         .D(n35103), .Z(n16_adj_1627)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i7_4_lut_adj_80.init = 16'hfefa;
    CCU2D timer_2092_add_4_9 (.A0(timer[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31240), .COUT(n31241), .S0(n77[7]), .S1(n77[8]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_9.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_9.INIT1 = 16'hfaaa;
    defparam timer_2092_add_4_9.INJECT1_0 = "NO";
    defparam timer_2092_add_4_9.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_81 (.A(\L1_Buffer[65] ), .B(\L1_Buffer[35] ), .C(n35111), 
         .D(n35108), .Z(n13_adj_1648)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i4_4_lut_adj_81.init = 16'heca0;
    LUT4 i1_4_lut_adj_82 (.A(\L1_Buffer[33] ), .B(\L1_Buffer[17] ), .C(n832), 
         .D(n35112), .Z(n10_adj_1649)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_82.init = 16'heca0;
    LUT4 i1_4_lut_adj_83 (.A(char_index[3]), .B(n19033), .C(n34957), .D(char_index[2]), 
         .Z(char_index_3__N_1403[3])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(34[12:17])
    defparam i1_4_lut_adj_83.init = 16'h1222;
    CCU2D timer_2092_add_4_7 (.A0(timer[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31239), .COUT(n31240), .S0(n77[5]), .S1(n77[6]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_7.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_7.INIT1 = 16'hfaaa;
    defparam timer_2092_add_4_7.INJECT1_0 = "NO";
    defparam timer_2092_add_4_7.INJECT1_1 = "NO";
    CCU2D timer_2092_add_4_5 (.A0(timer[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31238), .COUT(n31239), .S0(n77[3]), .S1(n77[4]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_5.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_5.INIT1 = 16'hfaaa;
    defparam timer_2092_add_4_5.INJECT1_0 = "NO";
    defparam timer_2092_add_4_5.INJECT1_1 = "NO";
    CCU2D timer_2092_add_4_3 (.A0(timer[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31237), .COUT(n31238), .S0(n77[1]), .S1(n77[2]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_3.INIT0 = 16'hfaaa;
    defparam timer_2092_add_4_3.INIT1 = 16'hfaaa;
    defparam timer_2092_add_4_3.INJECT1_0 = "NO";
    defparam timer_2092_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_504 (.A(n33278), .B(n31311), .Z(n35044)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_504.init = 16'heeee;
    CCU2D timer_2092_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31237), .S1(n77[0]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092_add_4_1.INIT0 = 16'hF000;
    defparam timer_2092_add_4_1.INIT1 = 16'h0555;
    defparam timer_2092_add_4_1.INJECT1_0 = "NO";
    defparam timer_2092_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_478_3_lut (.A(n33278), .B(n31311), .C(n33296), .Z(n35018)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_478_3_lut.init = 16'hfefe;
    LUT4 i7_4_lut_adj_84 (.A(n11_adj_1613), .B(n14_adj_1650), .C(n10_adj_1651), 
         .D(n4_adj_1567), .Z(n31737)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i7_4_lut_adj_84.init = 16'hfffe;
    LUT4 i6_4_lut_adj_85 (.A(\L2_Buffer[113] ), .B(n12_adj_1652), .C(n3_adj_1633), 
         .D(n35109), .Z(n14_adj_1650)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i6_4_lut_adj_85.init = 16'hfefc;
    LUT4 i19736_3_lut_4_lut (.A(n33278), .B(n31311), .C(state[1]), .D(n31382), 
         .Z(n37)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i19736_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i1_2_lut_rep_455_3_lut_4_lut (.A(n33278), .B(n31311), .C(state[1]), 
         .D(n33296), .Z(n34995)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_455_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_86 (.A(\L2_Buffer[73] ), .B(\L2_Buffer[49] ), .C(n35114), 
         .D(n35102), .Z(n10_adj_1651)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i2_4_lut_adj_86.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n33278), .B(n31311), .C(n33296), 
         .D(n35105), .Z(n25281)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h00fe;
    LUT4 i5_4_lut_adj_87 (.A(\L1_Buffer[109] ), .B(\L1_Buffer[37] ), .C(n35106), 
         .D(n832), .Z(n17)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i5_4_lut_adj_87.init = 16'heca0;
    LUT4 i1_2_lut_adj_88 (.A(state[2]), .B(state[1]), .Z(n18434)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_2_lut_adj_88.init = 16'hbbbb;
    LUT4 i4_4_lut_adj_89 (.A(\L2_Buffer[17] ), .B(\L2_Buffer[33] ), .C(n35112), 
         .D(n832), .Z(n12_adj_1652)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i4_4_lut_adj_89.init = 16'heca0;
    LUT4 i25216_4_lut (.A(n35035), .B(timer[5]), .C(timer[6]), .D(n4_adj_1621), 
         .Z(LCD_E_N_1421)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;
    defparam i25216_4_lut.init = 16'h0105;
    LUT4 i5_4_lut_adj_90 (.A(\L2_Buffer[81] ), .B(n10_adj_1653), .C(n13_adj_1575), 
         .D(n35104), .Z(n33343)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i5_4_lut_adj_90.init = 16'hfefc;
    LUT4 i1_4_lut_adj_91 (.A(\L1_Buffer[12] ), .B(n35105), .C(n35061), 
         .D(\L1_Buffer[1] ), .Z(n33565)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_91.init = 16'hb3a0;
    LUT4 i10_4_lut_adj_92 (.A(n15_adj_1654), .B(n20_adj_1655), .C(n8_adj_1590), 
         .D(n33613), .Z(n33617)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i10_4_lut_adj_92.init = 16'hfffe;
    LUT4 i4_4_lut_adj_93 (.A(\L1_Buffer[108] ), .B(\L1_Buffer[12] ), .C(n35106), 
         .D(n35060), .Z(n15_adj_1654)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i4_4_lut_adj_93.init = 16'heca0;
    LUT4 i9_4_lut_adj_94 (.A(\L1_Buffer[1] ), .B(n18_adj_1656), .C(n12_adj_1657), 
         .D(n33615), .Z(n20_adj_1655)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i9_4_lut_adj_94.init = 16'hfefc;
    LUT4 i1_4_lut_adj_95 (.A(\L1_Buffer[116] ), .B(n35192), .C(char_index[3]), 
         .D(char_index[1]), .Z(n33613)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_95.init = 16'h8008;
    LUT4 i7_4_lut_adj_96 (.A(\L1_Buffer[20] ), .B(n14_adj_1658), .C(n4), 
         .D(n35112), .Z(n18_adj_1656)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i7_4_lut_adj_96.init = 16'hfefc;
    LUT4 i1_4_lut_adj_97 (.A(\L1_Buffer[124] ), .B(\L1_Buffer[60] ), .C(n35062), 
         .D(n35113), .Z(n12_adj_1657)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_97.init = 16'hce0a;
    LUT4 i3_4_lut_adj_98 (.A(\L1_Buffer[84] ), .B(\L1_Buffer[28] ), .C(n35104), 
         .D(n35107), .Z(n14_adj_1658)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i3_4_lut_adj_98.init = 16'heca0;
    LUT4 n28308_bdd_4_lut (.A(state[0]), .B(state[3]), .C(state[2]), .D(state[1]), 
         .Z(n34515)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+(C)))) */ ;
    defparam n28308_bdd_4_lut.init = 16'h2123;
    LUT4 i4_4_lut_adj_99 (.A(\L2_Buffer[113] ), .B(n35109), .C(n35102), 
         .D(\L2_Buffer[118] ), .Z(n15_adj_1643)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i4_4_lut_adj_99.init = 16'heca0;
    LUT4 i9_4_lut_adj_100 (.A(\L2_Buffer[12] ), .B(n18_adj_1659), .C(n12_adj_1660), 
         .D(n33559), .Z(n20_adj_1644)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i9_4_lut_adj_100.init = 16'hfefc;
    LUT4 i7_4_lut_adj_101 (.A(n35062), .B(n14_adj_1661), .C(n6_adj_1634), 
         .D(\L2_Buffer[124] ), .Z(n18_adj_1659)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i7_4_lut_adj_101.init = 16'hfdfc;
    LUT4 i1_4_lut_adj_102 (.A(\L2_Buffer[68] ), .B(n35061), .C(n35111), 
         .D(\L2_Buffer[117] ), .Z(n12_adj_1660)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i1_4_lut_adj_102.init = 16'heca0;
    LUT4 i3_4_lut_adj_103 (.A(\L2_Buffer[100] ), .B(n35114), .C(n35103), 
         .D(\L2_Buffer[76] ), .Z(n14_adj_1661)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(59[13] 136[22])
    defparam i3_4_lut_adj_103.init = 16'heca0;
    LUT4 i5_4_lut_adj_104 (.A(\L1_Buffer[118] ), .B(\L1_Buffer[38] ), .C(n35109), 
         .D(n832), .Z(n17_adj_1638)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i5_4_lut_adj_104.init = 16'heca0;
    LUT4 i10_4_lut_adj_105 (.A(n19), .B(n8_adj_1591), .C(n16_adj_1662), 
         .D(n1_adj_1588), .Z(n22_adj_1639)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i10_4_lut_adj_105.init = 16'hfffe;
    LUT4 i7_4_lut_adj_106 (.A(n13_adj_1663), .B(n35219), .C(\L1_Buffer[62] ), 
         .D(n33813), .Z(n19)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i7_4_lut_adj_106.init = 16'hfeee;
    LUT4 i4_4_lut_adj_107 (.A(\L1_Buffer[14] ), .B(\L1_Buffer[78] ), .C(n35060), 
         .D(n35114), .Z(n16_adj_1662)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i4_4_lut_adj_107.init = 16'heca0;
    LUT4 i1_4_lut_adj_108 (.A(n35104), .B(n35106), .C(\L1_Buffer[86] ), 
         .D(\L1_Buffer[110] ), .Z(n13_adj_1663)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_108.init = 16'heca0;
    LUT4 i6_4_lut_adj_109 (.A(n35108), .B(\L1_Buffer[30] ), .C(\L1_Buffer[46] ), 
         .D(n35072), .Z(n18_adj_1640)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i6_4_lut_adj_109.init = 16'heca0;
    LUT4 i4_3_lut (.A(\L2_Buffer[30] ), .B(n8_adj_1664), .C(n35107), .Z(n11_adj_1635)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i4_3_lut.init = 16'hecec;
    LUT4 i1_4_lut_adj_110 (.A(\L2_Buffer[70] ), .B(\L2_Buffer[94] ), .C(n35111), 
         .D(n35061), .Z(n8_adj_1664)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i1_4_lut_adj_110.init = 16'heca0;
    LUT4 i7_4_lut_adj_111 (.A(n11_adj_1611), .B(n14_adj_1665), .C(n10_adj_1666), 
         .D(n4_adj_1563), .Z(n31727)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i7_4_lut_adj_111.init = 16'hfffe;
    LUT4 i6_4_lut_adj_112 (.A(\L2_Buffer[118] ), .B(n12_adj_1667), .C(n3_adj_1629), 
         .D(n35109), .Z(n14_adj_1665)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i6_4_lut_adj_112.init = 16'hfefc;
    LUT4 i4_4_lut_adj_113 (.A(\L2_Buffer[65] ), .B(n8_adj_1668), .C(n5_adj_1585), 
         .D(n35111), .Z(n10_adj_1653)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i4_4_lut_adj_113.init = 16'hfefc;
    LUT4 i2_4_lut_adj_114 (.A(\L2_Buffer[78] ), .B(\L2_Buffer[54] ), .C(n35114), 
         .D(n35102), .Z(n10_adj_1666)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i2_4_lut_adj_114.init = 16'heca0;
    PFUMX i25584 (.BLUT(n35305), .ALUT(n35306), .C0(current_char[3]), 
          .Z(LCD_DATA_7__N_1395[3]));
    PFUMX i25581 (.BLUT(n35301), .ALUT(n35302), .C0(current_char[0]), 
          .Z(LCD_DATA_7__N_1395[0]));
    LUT4 i24_4_lut_4_lut (.A(n35129), .B(state[2]), .C(n26901), .D(state[3]), 
         .Z(sys_clk_enable_309)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam i24_4_lut_4_lut.init = 16'hee05;
    PFUMX i25579 (.BLUT(n35298), .ALUT(n35299), .C0(current_char[1]), 
          .Z(LCD_DATA_7__N_1395[1]));
    PFUMX i25577 (.BLUT(n35295), .ALUT(n35296), .C0(current_char[2]), 
          .Z(LCD_DATA_7__N_1395[2]));
    LUT4 i2_4_lut_adj_115 (.A(\L2_Buffer[57] ), .B(\L2_Buffer[9] ), .C(n35113), 
         .D(n35060), .Z(n8_adj_1668)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i2_4_lut_adj_115.init = 16'heca0;
    PFUMX i25573 (.BLUT(n35289), .ALUT(n35290), .C0(current_char[6]), 
          .Z(LCD_DATA_7__N_1395[6]));
    PFUMX i25571 (.BLUT(n35286), .ALUT(n35287), .C0(current_char[5]), 
          .Z(LCD_DATA_7__N_1395[5]));
    PFUMX i25569 (.BLUT(n35283), .ALUT(n35284), .C0(state[0]), .Z(n35285));
    LUT4 i4_4_lut_adj_116 (.A(n35112), .B(\L2_Buffer[38] ), .C(\L2_Buffer[22] ), 
         .D(n832), .Z(n12_adj_1667)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i4_4_lut_adj_116.init = 16'heca0;
    LUT4 i1_2_lut_rep_463_3_lut_4_lut (.A(n35129), .B(state[2]), .C(RESET_N_c), 
         .D(state[3]), .Z(sys_clk_enable_292)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_463_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_4_lut_adj_117 (.A(state[3]), .B(n55), .C(n34974), .D(state[0]), 
         .Z(sys_clk_enable_307)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_4_lut_adj_117.init = 16'hafee;
    LUT4 Select_92_i15_2_lut_3_lut_4_lut (.A(char_index[2]), .B(n36117), 
         .C(\L1_Buffer[1] ), .D(char_index[0]), .Z(n15)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam Select_92_i15_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_118 (.A(n34400), .B(n28145), .C(state[3]), .D(n52), 
         .Z(sys_clk_enable_289)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_118.init = 16'hcccd;
    LUT4 i1_3_lut_4_lut_adj_119 (.A(state[2]), .B(n35131), .C(state[3]), 
         .D(RESET_N_c), .Z(sys_clk_enable_243)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_3_lut_4_lut_adj_119.init = 16'hf800;
    LUT4 i5_4_lut_adj_120 (.A(\L2_Buffer[36] ), .B(n10_adj_1669), .C(n9_adj_1637), 
         .D(n35062), .Z(n12_adj_1636)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i5_4_lut_adj_120.init = 16'hfcfe;
    LUT4 i3_4_lut_adj_121 (.A(n35060), .B(\L2_Buffer[86] ), .C(\L2_Buffer[14] ), 
         .D(n35104), .Z(n10_adj_1669)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(121[50:70])
    defparam i3_4_lut_adj_121.init = 16'heca0;
    FD1S3IX timer_2092__i2 (.D(n77[2]), .CK(sys_clk), .CD(n19145), .Q(timer[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i2.GSR = "ENABLED";
    FD1S3IX timer_2092__i3 (.D(n77[3]), .CK(sys_clk), .CD(n19145), .Q(timer[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i3.GSR = "ENABLED";
    FD1S3IX timer_2092__i4 (.D(n77[4]), .CK(sys_clk), .CD(n19145), .Q(timer[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i4.GSR = "ENABLED";
    FD1S3IX timer_2092__i5 (.D(n77[5]), .CK(sys_clk), .CD(n19145), .Q(timer[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i5.GSR = "ENABLED";
    FD1S3IX timer_2092__i6 (.D(n77[6]), .CK(sys_clk), .CD(n19145), .Q(timer[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i6.GSR = "ENABLED";
    FD1S3IX timer_2092__i7 (.D(n77[7]), .CK(sys_clk), .CD(n19145), .Q(timer[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i7.GSR = "ENABLED";
    FD1S3IX timer_2092__i8 (.D(n77[8]), .CK(sys_clk), .CD(n19145), .Q(timer[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i8.GSR = "ENABLED";
    FD1S3IX timer_2092__i9 (.D(n77[9]), .CK(sys_clk), .CD(n19145), .Q(timer[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i9.GSR = "ENABLED";
    FD1S3IX timer_2092__i10 (.D(n77[10]), .CK(sys_clk), .CD(n19145), .Q(timer[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i10.GSR = "ENABLED";
    FD1S3IX timer_2092__i11 (.D(n77[11]), .CK(sys_clk), .CD(n19145), .Q(timer[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i11.GSR = "ENABLED";
    FD1S3IX timer_2092__i12 (.D(n77[12]), .CK(sys_clk), .CD(n19145), .Q(timer[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i12.GSR = "ENABLED";
    FD1S3IX timer_2092__i13 (.D(n77[13]), .CK(sys_clk), .CD(n19145), .Q(timer[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i13.GSR = "ENABLED";
    FD1S3IX timer_2092__i14 (.D(n77[14]), .CK(sys_clk), .CD(n19145), .Q(timer[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i14.GSR = "ENABLED";
    FD1S3IX timer_2092__i15 (.D(n77[15]), .CK(sys_clk), .CD(n19145), .Q(timer[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i15.GSR = "ENABLED";
    FD1S3IX timer_2092__i16 (.D(n77[16]), .CK(sys_clk), .CD(n19145), .Q(timer[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i16.GSR = "ENABLED";
    FD1S3IX timer_2092__i17 (.D(n77[17]), .CK(sys_clk), .CD(n19145), .Q(timer[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(125[72:77])
    defparam timer_2092__i17.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_122 (.A(RESET_N_c), .B(state[3]), .C(state[2]), 
         .D(n35129), .Z(sys_clk_enable_230)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_122.init = 16'ha888;
    LUT4 i1_4_lut_adj_123 (.A(state[3]), .B(state[2]), .C(n35129), .D(n25281), 
         .Z(n28145)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i1_4_lut_adj_123.init = 16'haaa8;
    PFUMX i25547 (.BLUT(n35286), .ALUT(n35287), .C0(current_char[4]), 
          .Z(LCD_DATA_7__N_1395[4]));
    LUT4 i24970_4_lut (.A(state[3]), .B(n33728), .C(n34995), .D(state[2]), 
         .Z(sys_clk_enable_290)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i24970_4_lut.init = 16'hfaee;
    LUT4 i1_4_lut_adj_124 (.A(n35061), .B(n35107), .C(\L1_Buffer[91] ), 
         .D(\L1_Buffer[27] ), .Z(n9_adj_1628)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_124.init = 16'heca0;
    LUT4 i1_4_lut_adj_125 (.A(\L1_Buffer[59] ), .B(\L1_Buffer[51] ), .C(n35113), 
         .D(n35102), .Z(n33575)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(98[50:70])
    defparam i1_4_lut_adj_125.init = 16'heca0;
    LUT4 i34_4_lut (.A(n33724), .B(n33296), .C(state[0]), .D(n37), .Z(n33728)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(53[9] 137[16])
    defparam i34_4_lut.init = 16'hfaca;
    LUT4 i71_4_lut (.A(state[3]), .B(n35066), .C(n48), .D(n25281), .Z(state_3__N_1269[2])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(34[12:17])
    defparam i71_4_lut.init = 16'hd850;
    LUT4 i17588_2_lut (.A(state[1]), .B(state[0]), .Z(n26183)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/lcd_controller.vhd(34[12:17])
    defparam i17588_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module MemoriaROM
//

module MemoriaROM (n35065, \rom_out_r3_3__N_48[4] , \rom_out_r3[3] , \rom_out_r3[1] , 
            n1939, \rom_out_r3_3__N_48[0] , \rom_out_r3_3__N_48[1] , \rom_out_r3_3__N_48[2] , 
            n46, n35081, n62, n35028, \rom_out_r3[0] );
    output n35065;
    input \rom_out_r3_3__N_48[4] ;
    output \rom_out_r3[3] ;
    output \rom_out_r3[1] ;
    output n1939;
    input \rom_out_r3_3__N_48[0] ;
    input \rom_out_r3_3__N_48[1] ;
    input \rom_out_r3_3__N_48[2] ;
    output n46;
    input n35081;
    output n62;
    output n35028;
    output \rom_out_r3[0] ;
    
    
    LUT4 i2259_3_lut_4_lut (.A(n35065), .B(\rom_out_r3_3__N_48[4] ), .C(\rom_out_r3[3] ), 
         .D(\rom_out_r3[1] ), .Z(n1939)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam i2259_3_lut_4_lut.init = 16'hf020;
    LUT4 i3_4_lut (.A(\rom_out_r3_3__N_48[0] ), .B(\rom_out_r3_3__N_48[1] ), 
         .C(\rom_out_r3_3__N_48[2] ), .D(\rom_out_r3_3__N_48[4] ), .Z(n46)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0008;
    LUT4 rom_out_r3_3__N_48_1__bdd_4_lut_25807 (.A(\rom_out_r3_3__N_48[1] ), 
         .B(\rom_out_r3_3__N_48[4] ), .C(\rom_out_r3_3__N_48[0] ), .D(\rom_out_r3_3__N_48[2] ), 
         .Z(\rom_out_r3[1] )) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C+(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam rom_out_r3_3__N_48_1__bdd_4_lut_25807.init = 16'h3027;
    LUT4 rom_out_r3_3__N_48_2__bdd_4_lut_25732 (.A(\rom_out_r3_3__N_48[2] ), 
         .B(\rom_out_r3_3__N_48[0] ), .C(\rom_out_r3_3__N_48[4] ), .D(\rom_out_r3_3__N_48[1] ), 
         .Z(\rom_out_r3[3] )) /* synthesis lut_function=(!(A+(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam rom_out_r3_3__N_48_2__bdd_4_lut_25732.init = 16'h0410;
    LUT4 i1_4_lut_4_lut (.A(\rom_out_r3_3__N_48[0] ), .B(\rom_out_r3_3__N_48[1] ), 
         .C(\rom_out_r3_3__N_48[2] ), .D(n35081), .Z(n62)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(C+!(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam i1_4_lut_4_lut.init = 16'had00;
    LUT4 mux_459_Mux_2_i45_3_lut_rep_525_3_lut (.A(\rom_out_r3_3__N_48[0] ), 
         .B(\rom_out_r3_3__N_48[1] ), .C(\rom_out_r3_3__N_48[2] ), .Z(n35065)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam mux_459_Mux_2_i45_3_lut_rep_525_3_lut.init = 16'hc6c6;
    LUT4 i17620_2_lut_rep_488_4_lut_4_lut (.A(\rom_out_r3_3__N_48[0] ), .B(\rom_out_r3_3__N_48[1] ), 
         .C(\rom_out_r3_3__N_48[4] ), .D(\rom_out_r3_3__N_48[2] ), .Z(n35028)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam i17620_2_lut_rep_488_4_lut_4_lut.init = 16'h0c06;
    LUT4 i17624_2_lut (.A(\rom_out_r3_3__N_48[2] ), .B(\rom_out_r3_3__N_48[4] ), 
         .Z(\rom_out_r3[0] )) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/memoriarom.vhd(41[22:26])
    defparam i17624_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module AdderSub16
//

module AdderSub16 (alu_opA, \B_input[0] , alu_sum_res, GND_net, \B_input[12] , 
            \B_input[13] , \B_input[10] , \B_input[11] , \B_input[8] , 
            \B_input[9] , \B_input[6] , \B_input[7] , \B_input[4] , 
            \B_input[5] , \B_input[2] , \B_input[3] , \B_input[1] );
    input [15:0]alu_opA;
    input \B_input[0] ;
    output [15:0]alu_sum_res;
    input GND_net;
    input \B_input[12] ;
    input \B_input[13] ;
    input \B_input[10] ;
    input \B_input[11] ;
    input \B_input[8] ;
    input \B_input[9] ;
    input \B_input[6] ;
    input \B_input[7] ;
    input \B_input[4] ;
    input \B_input[5] ;
    input \B_input[2] ;
    input \B_input[3] ;
    input \B_input[1] ;
    
    
    FullAdder \GEN_ADDERS_0..FAx  (.alu_opA({alu_opA}), .\B_input[0] (\B_input[0] ), 
            .alu_sum_res({alu_sum_res}), .GND_net(GND_net), .\B_input[12] (\B_input[12] ), 
            .\B_input[13] (\B_input[13] ), .\B_input[10] (\B_input[10] ), 
            .\B_input[11] (\B_input[11] ), .\B_input[8] (\B_input[8] ), 
            .\B_input[9] (\B_input[9] ), .\B_input[6] (\B_input[6] ), .\B_input[7] (\B_input[7] ), 
            .\B_input[4] (\B_input[4] ), .\B_input[5] (\B_input[5] ), .\B_input[2] (\B_input[2] ), 
            .\B_input[3] (\B_input[3] ), .\B_input[1] (\B_input[1] ));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/addersub16.vhd(33[14:23])
    
endmodule
//
// Verilog Description of module FullAdder
//

module FullAdder (alu_opA, \B_input[0] , alu_sum_res, GND_net, \B_input[12] , 
            \B_input[13] , \B_input[10] , \B_input[11] , \B_input[8] , 
            \B_input[9] , \B_input[6] , \B_input[7] , \B_input[4] , 
            \B_input[5] , \B_input[2] , \B_input[3] , \B_input[1] );
    input [15:0]alu_opA;
    input \B_input[0] ;
    output [15:0]alu_sum_res;
    input GND_net;
    input \B_input[12] ;
    input \B_input[13] ;
    input \B_input[10] ;
    input \B_input[11] ;
    input \B_input[8] ;
    input \B_input[9] ;
    input \B_input[6] ;
    input \B_input[7] ;
    input \B_input[4] ;
    input \B_input[5] ;
    input \B_input[2] ;
    input \B_input[3] ;
    input \B_input[1] ;
    
    
    wire n31102, n31101, n31100, n31099, n31098, n31097, n31096;
    
    LUT4 i22430_2_lut (.A(alu_opA[0]), .B(\B_input[0] ), .Z(alu_sum_res[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i22430_2_lut.init = 16'h6666;
    CCU2D add_498_16 (.A0(alu_opA[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(alu_opA[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31102), .S0(alu_sum_res[14]), .S1(alu_sum_res[15]));
    defparam add_498_16.INIT0 = 16'h5aaa;
    defparam add_498_16.INIT1 = 16'h5aaa;
    defparam add_498_16.INJECT1_0 = "NO";
    defparam add_498_16.INJECT1_1 = "NO";
    CCU2D add_498_14 (.A0(alu_opA[12]), .B0(\B_input[12] ), .C0(GND_net), 
          .D0(GND_net), .A1(alu_opA[13]), .B1(\B_input[13] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n31101), .COUT(n31102), .S0(alu_sum_res[12]), 
          .S1(alu_sum_res[13]));
    defparam add_498_14.INIT0 = 16'h5666;
    defparam add_498_14.INIT1 = 16'h5666;
    defparam add_498_14.INJECT1_0 = "NO";
    defparam add_498_14.INJECT1_1 = "NO";
    CCU2D add_498_12 (.A0(alu_opA[10]), .B0(\B_input[10] ), .C0(GND_net), 
          .D0(GND_net), .A1(alu_opA[11]), .B1(\B_input[11] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n31100), .COUT(n31101), .S0(alu_sum_res[10]), 
          .S1(alu_sum_res[11]));
    defparam add_498_12.INIT0 = 16'h5666;
    defparam add_498_12.INIT1 = 16'h5666;
    defparam add_498_12.INJECT1_0 = "NO";
    defparam add_498_12.INJECT1_1 = "NO";
    CCU2D add_498_10 (.A0(alu_opA[8]), .B0(\B_input[8] ), .C0(GND_net), 
          .D0(GND_net), .A1(alu_opA[9]), .B1(\B_input[9] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n31099), .COUT(n31100), .S0(alu_sum_res[8]), 
          .S1(alu_sum_res[9]));
    defparam add_498_10.INIT0 = 16'h5666;
    defparam add_498_10.INIT1 = 16'h5666;
    defparam add_498_10.INJECT1_0 = "NO";
    defparam add_498_10.INJECT1_1 = "NO";
    CCU2D add_498_8 (.A0(alu_opA[6]), .B0(\B_input[6] ), .C0(GND_net), 
          .D0(GND_net), .A1(alu_opA[7]), .B1(\B_input[7] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n31098), .COUT(n31099), .S0(alu_sum_res[6]), 
          .S1(alu_sum_res[7]));
    defparam add_498_8.INIT0 = 16'h5666;
    defparam add_498_8.INIT1 = 16'h5666;
    defparam add_498_8.INJECT1_0 = "NO";
    defparam add_498_8.INJECT1_1 = "NO";
    CCU2D add_498_6 (.A0(alu_opA[4]), .B0(\B_input[4] ), .C0(GND_net), 
          .D0(GND_net), .A1(alu_opA[5]), .B1(\B_input[5] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n31097), .COUT(n31098), .S0(alu_sum_res[4]), 
          .S1(alu_sum_res[5]));
    defparam add_498_6.INIT0 = 16'h5666;
    defparam add_498_6.INIT1 = 16'h5666;
    defparam add_498_6.INJECT1_0 = "NO";
    defparam add_498_6.INJECT1_1 = "NO";
    CCU2D add_498_4 (.A0(alu_opA[2]), .B0(\B_input[2] ), .C0(GND_net), 
          .D0(GND_net), .A1(alu_opA[3]), .B1(\B_input[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n31096), .COUT(n31097), .S0(alu_sum_res[2]), 
          .S1(alu_sum_res[3]));
    defparam add_498_4.INIT0 = 16'h5666;
    defparam add_498_4.INIT1 = 16'h5666;
    defparam add_498_4.INJECT1_0 = "NO";
    defparam add_498_4.INJECT1_1 = "NO";
    CCU2D add_498_2 (.A0(alu_opA[0]), .B0(\B_input[0] ), .C0(GND_net), 
          .D0(GND_net), .A1(alu_opA[1]), .B1(\B_input[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n31096), .S1(alu_sum_res[1]));
    defparam add_498_2.INIT0 = 16'h7000;
    defparam add_498_2.INIT1 = 16'h5666;
    defparam add_498_2.INJECT1_0 = "NO";
    defparam add_498_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Multiplier16
//

module Multiplier16 (\B_input[7] , alu_opA, GND_net, \B_input[0] , \B_input[1] , 
            \B_input[9] , \Res_15__N_1527[9] , \Res_15__N_1527[7] , n6, 
            n33586, n33587, \B_input[8] , \Res_15__N_1527[8] , \B_input[10] , 
            \Res_15__N_1527[1] , \Res_15__N_1527[10] , \B_input[6] , \Res_15__N_1527[6] , 
            \B_input[12] , n34890, n30559, \B_input[11] , n30492, 
            \B_input[5] , \Res_15__N_1527[5] , \B_input[4] , \Res_15__N_1527[4] , 
            \B_input[3] , \Res_15__N_1527[3] , n31535, n30539, n34893, 
            n9861, n30550, \B_input[2] , \Res_15__N_1527[2] );
    input \B_input[7] ;
    input [15:0]alu_opA;
    input GND_net;
    input \B_input[0] ;
    input \B_input[1] ;
    input \B_input[9] ;
    output \Res_15__N_1527[9] ;
    output \Res_15__N_1527[7] ;
    output n6;
    output n33586;
    output n33587;
    input \B_input[8] ;
    output \Res_15__N_1527[8] ;
    input \B_input[10] ;
    output \Res_15__N_1527[1] ;
    output \Res_15__N_1527[10] ;
    input \B_input[6] ;
    output \Res_15__N_1527[6] ;
    input \B_input[12] ;
    output n34890;
    output n30559;
    input \B_input[11] ;
    output n30492;
    input \B_input[5] ;
    output \Res_15__N_1527[5] ;
    input \B_input[4] ;
    output \Res_15__N_1527[4] ;
    input \B_input[3] ;
    output \Res_15__N_1527[3] ;
    output n31535;
    output n30539;
    output n34893;
    output n9861;
    output n30550;
    input \B_input[2] ;
    output \Res_15__N_1527[2] ;
    
    
    wire n31079;
    wire [31:0]n438;
    wire [31:0]n505;
    
    wire n31091;
    wire [31:0]n103;
    
    wire n31092, n31090, n31089, n31088, n31087, n31078, n31077, 
        n31076, n31083;
    wire [7:0]n11307;
    wire [31:0]n639;
    
    wire n31084, n31085, n31086, n31075, n4, n31070, n31069, n31068, 
        n31067, n31062, n30298;
    wire [5:0]n11282;
    
    wire n31061, n30302, n30300, n31060, n30304, n31157;
    wire [10:0]n11351;
    
    wire n31156, n34889, n34377, n31155, n31154, n31153, n30326;
    wire [31:0]n840;
    
    wire n35124, n35125, n35126, n34903, n35127, n35128, n34899, 
        n34888, n31143;
    wire [11:0]n11367;
    
    wire n31142, n31141, n31140, n31139, n31138, n31133;
    wire [12:0]n11384;
    
    wire n31132, n31131, n31130, n31129, n31128, n31124;
    wire [13:0]n11402;
    
    wire n31123, n31122, n31121, n31120, n31119, n31118, n34884, 
        n34898, n31113, n34378, n31112, n34379, n31111, n31110, 
        n31109, n31108, n31107, n31093;
    
    CCU2D add_3198_11 (.A0(n438[15]), .B0(\B_input[7] ), .C0(alu_opA[8]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31079), .S0(n505[15]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3198_11.INIT0 = 16'h5a6a;
    defparam add_3198_11.INIT1 = 16'h0000;
    defparam add_3198_11.INJECT1_0 = "NO";
    defparam add_3198_11.INJECT1_1 = "NO";
    CCU2D add_3209_11 (.A0(alu_opA[10]), .B0(\B_input[0] ), .C0(alu_opA[9]), 
          .D0(\B_input[1] ), .A1(alu_opA[11]), .B1(\B_input[0] ), .C1(alu_opA[10]), 
          .D1(\B_input[1] ), .CIN(n31091), .COUT(n31092), .S0(n103[10]), 
          .S1(n103[11]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(24[13] 26[20])
    defparam add_3209_11.INIT0 = 16'h7888;
    defparam add_3209_11.INIT1 = 16'h7888;
    defparam add_3209_11.INJECT1_0 = "NO";
    defparam add_3209_11.INJECT1_1 = "NO";
    CCU2D add_3209_9 (.A0(alu_opA[8]), .B0(\B_input[0] ), .C0(alu_opA[7]), 
          .D0(\B_input[1] ), .A1(alu_opA[9]), .B1(\B_input[0] ), .C1(alu_opA[8]), 
          .D1(\B_input[1] ), .CIN(n31090), .COUT(n31091), .S0(n103[8]), 
          .S1(n103[9]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(24[13] 26[20])
    defparam add_3209_9.INIT0 = 16'h7888;
    defparam add_3209_9.INIT1 = 16'h7888;
    defparam add_3209_9.INJECT1_0 = "NO";
    defparam add_3209_9.INJECT1_1 = "NO";
    CCU2D add_3209_7 (.A0(alu_opA[6]), .B0(\B_input[0] ), .C0(alu_opA[5]), 
          .D0(\B_input[1] ), .A1(alu_opA[7]), .B1(\B_input[0] ), .C1(alu_opA[6]), 
          .D1(\B_input[1] ), .CIN(n31089), .COUT(n31090), .S0(n103[6]), 
          .S1(n103[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(24[13] 26[20])
    defparam add_3209_7.INIT0 = 16'h7888;
    defparam add_3209_7.INIT1 = 16'h7888;
    defparam add_3209_7.INJECT1_0 = "NO";
    defparam add_3209_7.INJECT1_1 = "NO";
    CCU2D add_3209_5 (.A0(alu_opA[4]), .B0(\B_input[0] ), .C0(alu_opA[3]), 
          .D0(\B_input[1] ), .A1(alu_opA[5]), .B1(\B_input[0] ), .C1(alu_opA[4]), 
          .D1(\B_input[1] ), .CIN(n31088), .COUT(n31089), .S0(n103[4]), 
          .S1(n103[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(24[13] 26[20])
    defparam add_3209_5.INIT0 = 16'h7888;
    defparam add_3209_5.INIT1 = 16'h7888;
    defparam add_3209_5.INJECT1_0 = "NO";
    defparam add_3209_5.INJECT1_1 = "NO";
    CCU2D add_3209_3 (.A0(alu_opA[2]), .B0(\B_input[0] ), .C0(alu_opA[1]), 
          .D0(\B_input[1] ), .A1(alu_opA[3]), .B1(\B_input[0] ), .C1(alu_opA[2]), 
          .D1(\B_input[1] ), .CIN(n31087), .COUT(n31088), .S0(n103[2]), 
          .S1(n103[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(24[13] 26[20])
    defparam add_3209_3.INIT0 = 16'h7888;
    defparam add_3209_3.INIT1 = 16'h7888;
    defparam add_3209_3.INJECT1_0 = "NO";
    defparam add_3209_3.INJECT1_1 = "NO";
    CCU2D add_3198_9 (.A0(n438[13]), .B0(\B_input[7] ), .C0(alu_opA[6]), 
          .D0(GND_net), .A1(n438[14]), .B1(\B_input[7] ), .C1(alu_opA[7]), 
          .D1(GND_net), .CIN(n31078), .COUT(n31079), .S0(n505[13]), 
          .S1(n505[14]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3198_9.INIT0 = 16'h5a6a;
    defparam add_3198_9.INIT1 = 16'h5a6a;
    defparam add_3198_9.INJECT1_0 = "NO";
    defparam add_3198_9.INJECT1_1 = "NO";
    CCU2D add_3198_7 (.A0(n438[11]), .B0(\B_input[7] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n438[12]), .B1(\B_input[7] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31077), .COUT(n31078), .S0(n505[11]), 
          .S1(n505[12]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3198_7.INIT0 = 16'h5a6a;
    defparam add_3198_7.INIT1 = 16'h5a6a;
    defparam add_3198_7.INJECT1_0 = "NO";
    defparam add_3198_7.INJECT1_1 = "NO";
    CCU2D add_3198_5 (.A0(n438[9]), .B0(\B_input[7] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n438[10]), .B1(\B_input[7] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31076), .COUT(n31077), .S0(n505[9]), .S1(n505[10]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3198_5.INIT0 = 16'h5a6a;
    defparam add_3198_5.INIT1 = 16'h5a6a;
    defparam add_3198_5.INJECT1_0 = "NO";
    defparam add_3198_5.INJECT1_1 = "NO";
    CCU2D add_3192_3 (.A0(n11307[1]), .B0(\B_input[9] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n11307[2]), .B1(\B_input[9] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31083), .COUT(n31084), .S0(\Res_15__N_1527[9] ), 
          .S1(n639[10]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3192_3.INIT0 = 16'h5a6a;
    defparam add_3192_3.INIT1 = 16'h5a6a;
    defparam add_3192_3.INJECT1_0 = "NO";
    defparam add_3192_3.INJECT1_1 = "NO";
    CCU2D add_3192_7 (.A0(n11307[5]), .B0(\B_input[9] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n11307[6]), .B1(\B_input[9] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31085), .COUT(n31086), .S0(n639[13]), 
          .S1(n639[14]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3192_7.INIT0 = 16'h5a6a;
    defparam add_3192_7.INIT1 = 16'h5a6a;
    defparam add_3192_7.INJECT1_0 = "NO";
    defparam add_3192_7.INJECT1_1 = "NO";
    CCU2D add_3198_3 (.A0(n438[7]), .B0(\B_input[7] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n438[8]), .B1(\B_input[7] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31075), .COUT(n31076), .S0(\Res_15__N_1527[7] ), 
          .S1(n505[8]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3198_3.INIT0 = 16'h5a6a;
    defparam add_3198_3.INIT1 = 16'h5a6a;
    defparam add_3198_3.INJECT1_0 = "NO";
    defparam add_3198_3.INJECT1_1 = "NO";
    CCU2D add_3198_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[7] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31075));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3198_1.INIT0 = 16'hF000;
    defparam add_3198_1.INIT1 = 16'h0fff;
    defparam add_3198_1.INJECT1_0 = "NO";
    defparam add_3198_1.INJECT1_1 = "NO";
    CCU2D add_3192_5 (.A0(n11307[3]), .B0(\B_input[9] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n11307[4]), .B1(\B_input[9] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31084), .COUT(n31085), .S0(n639[11]), 
          .S1(n639[12]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3192_5.INIT0 = 16'h5a6a;
    defparam add_3192_5.INIT1 = 16'h5a6a;
    defparam add_3192_5.INJECT1_0 = "NO";
    defparam add_3192_5.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(alu_opA[2]), .B(n6), .C(n4), .D(n33586), .Z(n33587)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i3_4_lut.init = 16'h6996;
    CCU2D add_3194_9 (.A0(n505[14]), .B0(\B_input[8] ), .C0(alu_opA[6]), 
          .D0(GND_net), .A1(n505[15]), .B1(\B_input[8] ), .C1(alu_opA[7]), 
          .D1(GND_net), .CIN(n31070), .S0(n11307[6]), .S1(n11307[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3194_9.INIT0 = 16'h5a6a;
    defparam add_3194_9.INIT1 = 16'h5a6a;
    defparam add_3194_9.INJECT1_0 = "NO";
    defparam add_3194_9.INJECT1_1 = "NO";
    CCU2D add_3194_7 (.A0(n505[12]), .B0(\B_input[8] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n505[13]), .B1(\B_input[8] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31069), .COUT(n31070), .S0(n11307[4]), 
          .S1(n11307[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3194_7.INIT0 = 16'h5a6a;
    defparam add_3194_7.INIT1 = 16'h5a6a;
    defparam add_3194_7.INJECT1_0 = "NO";
    defparam add_3194_7.INJECT1_1 = "NO";
    CCU2D add_3194_5 (.A0(n505[10]), .B0(\B_input[8] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n505[11]), .B1(\B_input[8] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31068), .COUT(n31069), .S0(n11307[2]), 
          .S1(n11307[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3194_5.INIT0 = 16'h5a6a;
    defparam add_3194_5.INIT1 = 16'h5a6a;
    defparam add_3194_5.INJECT1_0 = "NO";
    defparam add_3194_5.INJECT1_1 = "NO";
    CCU2D add_3194_3 (.A0(n505[8]), .B0(\B_input[8] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n505[9]), .B1(\B_input[8] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31067), .COUT(n31068), .S0(\Res_15__N_1527[8] ), 
          .S1(n11307[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3194_3.INIT0 = 16'h5a6a;
    defparam add_3194_3.INIT1 = 16'h5a6a;
    defparam add_3194_3.INJECT1_0 = "NO";
    defparam add_3194_3.INJECT1_1 = "NO";
    CCU2D add_3194_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[8] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31067));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3194_1.INIT0 = 16'hF000;
    defparam add_3194_1.INIT1 = 16'h0fff;
    defparam add_3194_1.INJECT1_0 = "NO";
    defparam add_3194_1.INJECT1_1 = "NO";
    CCU2D add_3192_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[9] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31083));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3192_1.INIT0 = 16'hF000;
    defparam add_3192_1.INIT1 = 16'h0fff;
    defparam add_3192_1.INJECT1_0 = "NO";
    defparam add_3192_1.INJECT1_1 = "NO";
    CCU2D add_3188_7 (.A0(n639[14]), .B0(\B_input[10] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n639[15]), .B1(\B_input[10] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31062), .S0(n30298), .S1(n11282[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3188_7.INIT0 = 16'h5a6a;
    defparam add_3188_7.INIT1 = 16'h5a6a;
    defparam add_3188_7.INJECT1_0 = "NO";
    defparam add_3188_7.INJECT1_1 = "NO";
    CCU2D add_3209_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(alu_opA[1]), .B1(\B_input[0] ), .C1(alu_opA[0]), .D1(\B_input[1] ), 
          .COUT(n31087), .S1(\Res_15__N_1527[1] ));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(24[13] 26[20])
    defparam add_3209_1.INIT0 = 16'hF000;
    defparam add_3209_1.INIT1 = 16'h7888;
    defparam add_3209_1.INJECT1_0 = "NO";
    defparam add_3209_1.INJECT1_1 = "NO";
    CCU2D add_3188_5 (.A0(n639[12]), .B0(\B_input[10] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n639[13]), .B1(\B_input[10] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31061), .COUT(n31062), .S0(n30302), .S1(n30300));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3188_5.INIT0 = 16'h5a6a;
    defparam add_3188_5.INIT1 = 16'h5a6a;
    defparam add_3188_5.INJECT1_0 = "NO";
    defparam add_3188_5.INJECT1_1 = "NO";
    CCU2D add_3188_3 (.A0(n639[10]), .B0(\B_input[10] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n639[11]), .B1(\B_input[10] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31060), .COUT(n31061), .S0(\Res_15__N_1527[10] ), 
          .S1(n30304));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3188_3.INIT0 = 16'h5a6a;
    defparam add_3188_3.INIT1 = 16'h5a6a;
    defparam add_3188_3.INJECT1_0 = "NO";
    defparam add_3188_3.INJECT1_1 = "NO";
    CCU2D add_3188_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[10] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31060));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3188_1.INIT0 = 16'hF000;
    defparam add_3188_1.INIT1 = 16'h0fff;
    defparam add_3188_1.INJECT1_0 = "NO";
    defparam add_3188_1.INJECT1_1 = "NO";
    CCU2D add_3200_11 (.A0(n11351[9]), .B0(\B_input[6] ), .C0(alu_opA[8]), 
          .D0(GND_net), .A1(n11351[10]), .B1(\B_input[6] ), .C1(alu_opA[9]), 
          .D1(GND_net), .CIN(n31157), .S0(n438[14]), .S1(n438[15]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3200_11.INIT0 = 16'h5a6a;
    defparam add_3200_11.INIT1 = 16'h5a6a;
    defparam add_3200_11.INJECT1_0 = "NO";
    defparam add_3200_11.INJECT1_1 = "NO";
    CCU2D add_3200_9 (.A0(n11351[7]), .B0(\B_input[6] ), .C0(alu_opA[6]), 
          .D0(GND_net), .A1(n11351[8]), .B1(\B_input[6] ), .C1(alu_opA[7]), 
          .D1(GND_net), .CIN(n31156), .COUT(n31157), .S0(n438[12]), 
          .S1(n438[13]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3200_9.INIT0 = 16'h5a6a;
    defparam add_3200_9.INIT1 = 16'h5a6a;
    defparam add_3200_9.INJECT1_0 = "NO";
    defparam add_3200_9.INJECT1_1 = "NO";
    LUT4 alu_opA_4__bdd_4_lut (.A(alu_opA[4]), .B(n30298), .C(alu_opA[3]), 
         .D(n34889), .Z(n34377)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam alu_opA_4__bdd_4_lut.init = 16'h566a;
    CCU2D add_3200_7 (.A0(n11351[5]), .B0(\B_input[6] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n11351[6]), .B1(\B_input[6] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31155), .COUT(n31156), .S0(n438[10]), 
          .S1(n438[11]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3200_7.INIT0 = 16'h5a6a;
    defparam add_3200_7.INIT1 = 16'h5a6a;
    defparam add_3200_7.INJECT1_0 = "NO";
    defparam add_3200_7.INJECT1_1 = "NO";
    CCU2D add_3200_5 (.A0(n11351[3]), .B0(\B_input[6] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n11351[4]), .B1(\B_input[6] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31154), .COUT(n31155), .S0(n438[8]), .S1(n438[9]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3200_5.INIT0 = 16'h5a6a;
    defparam add_3200_5.INIT1 = 16'h5a6a;
    defparam add_3200_5.INJECT1_0 = "NO";
    defparam add_3200_5.INJECT1_1 = "NO";
    CCU2D add_3200_3 (.A0(n11351[1]), .B0(\B_input[6] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n11351[2]), .B1(\B_input[6] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31153), .COUT(n31154), .S0(\Res_15__N_1527[6] ), 
          .S1(n438[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3200_3.INIT0 = 16'h5a6a;
    defparam add_3200_3.INIT1 = 16'h5a6a;
    defparam add_3200_3.INJECT1_0 = "NO";
    defparam add_3200_3.INJECT1_1 = "NO";
    CCU2D add_3200_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[6] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31153));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3200_1.INIT0 = 16'hF000;
    defparam add_3200_1.INIT1 = 16'h0fff;
    defparam add_3200_1.INJECT1_0 = "NO";
    defparam add_3200_1.INJECT1_1 = "NO";
    LUT4 i21981_4_lut_3_lut_4_lut (.A(alu_opA[2]), .B(\B_input[12] ), .C(n30326), 
         .D(n34890), .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21981_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 i21975_2_lut_3_lut (.A(alu_opA[2]), .B(\B_input[12] ), .C(n30326), 
         .Z(n30559)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21975_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_3_lut_4_lut (.A(alu_opA[2]), .B(\B_input[12] ), .C(n34890), 
         .D(n30326), .Z(n840[14])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i2_3_lut_4_lut.init = 16'h8778;
    LUT4 i22444_2_lut_rep_584 (.A(alu_opA[0]), .B(\B_input[12] ), .Z(n35124)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i22444_2_lut_rep_584.init = 16'h8888;
    LUT4 i22445_2_lut_rep_585 (.A(alu_opA[1]), .B(\B_input[12] ), .Z(n35125)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i22445_2_lut_rep_585.init = 16'h8888;
    LUT4 i22468_2_lut_rep_586 (.A(alu_opA[0]), .B(\B_input[11] ), .Z(n35126)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i22468_2_lut_rep_586.init = 16'h8888;
    LUT4 i21915_2_lut_3_lut (.A(alu_opA[0]), .B(\B_input[11] ), .C(n30304), 
         .Z(n30492)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21915_2_lut_3_lut.init = 16'h7878;
    LUT4 i21924_2_lut_rep_363_3_lut (.A(alu_opA[0]), .B(\B_input[11] ), 
         .C(n30304), .Z(n34903)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21924_2_lut_rep_363_3_lut.init = 16'h8080;
    LUT4 i22471_2_lut_rep_587 (.A(alu_opA[1]), .B(\B_input[11] ), .Z(n35127)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i22471_2_lut_rep_587.init = 16'h8888;
    LUT4 i22472_2_lut_rep_588 (.A(alu_opA[2]), .B(\B_input[11] ), .Z(n35128)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i22472_2_lut_rep_588.init = 16'h8888;
    LUT4 i2_3_lut_rep_348_4_lut (.A(alu_opA[2]), .B(\B_input[11] ), .C(n34899), 
         .D(n30300), .Z(n34888)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i2_3_lut_rep_348_4_lut.init = 16'h8778;
    LUT4 i21939_4_lut_3_lut_rep_349_4_lut (.A(alu_opA[2]), .B(\B_input[11] ), 
         .C(n30300), .D(n34899), .Z(n34889)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21939_4_lut_3_lut_rep_349_4_lut.init = 16'hf880;
    CCU2D add_3202_13 (.A0(n11367[11]), .B0(\B_input[5] ), .C0(alu_opA[10]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31143), .S0(n11351[10]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3202_13.INIT0 = 16'h5a6a;
    defparam add_3202_13.INIT1 = 16'h0000;
    defparam add_3202_13.INJECT1_0 = "NO";
    defparam add_3202_13.INJECT1_1 = "NO";
    CCU2D add_3202_11 (.A0(n11367[9]), .B0(\B_input[5] ), .C0(alu_opA[8]), 
          .D0(GND_net), .A1(n11367[10]), .B1(\B_input[5] ), .C1(alu_opA[9]), 
          .D1(GND_net), .CIN(n31142), .COUT(n31143), .S0(n11351[8]), 
          .S1(n11351[9]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3202_11.INIT0 = 16'h5a6a;
    defparam add_3202_11.INIT1 = 16'h5a6a;
    defparam add_3202_11.INJECT1_0 = "NO";
    defparam add_3202_11.INJECT1_1 = "NO";
    CCU2D add_3202_9 (.A0(n11367[7]), .B0(\B_input[5] ), .C0(alu_opA[6]), 
          .D0(GND_net), .A1(n11367[8]), .B1(\B_input[5] ), .C1(alu_opA[7]), 
          .D1(GND_net), .CIN(n31141), .COUT(n31142), .S0(n11351[6]), 
          .S1(n11351[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3202_9.INIT0 = 16'h5a6a;
    defparam add_3202_9.INIT1 = 16'h5a6a;
    defparam add_3202_9.INJECT1_0 = "NO";
    defparam add_3202_9.INJECT1_1 = "NO";
    CCU2D add_3202_7 (.A0(n11367[5]), .B0(\B_input[5] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n11367[6]), .B1(\B_input[5] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31140), .COUT(n31141), .S0(n11351[4]), 
          .S1(n11351[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3202_7.INIT0 = 16'h5a6a;
    defparam add_3202_7.INIT1 = 16'h5a6a;
    defparam add_3202_7.INJECT1_0 = "NO";
    defparam add_3202_7.INJECT1_1 = "NO";
    CCU2D add_3202_5 (.A0(n11367[3]), .B0(\B_input[5] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n11367[4]), .B1(\B_input[5] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31139), .COUT(n31140), .S0(n11351[2]), 
          .S1(n11351[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3202_5.INIT0 = 16'h5a6a;
    defparam add_3202_5.INIT1 = 16'h5a6a;
    defparam add_3202_5.INJECT1_0 = "NO";
    defparam add_3202_5.INJECT1_1 = "NO";
    CCU2D add_3202_3 (.A0(n11367[1]), .B0(\B_input[5] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n11367[2]), .B1(\B_input[5] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31138), .COUT(n31139), .S0(\Res_15__N_1527[5] ), 
          .S1(n11351[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3202_3.INIT0 = 16'h5a6a;
    defparam add_3202_3.INIT1 = 16'h5a6a;
    defparam add_3202_3.INJECT1_0 = "NO";
    defparam add_3202_3.INJECT1_1 = "NO";
    CCU2D add_3202_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[5] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31138));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3202_1.INIT0 = 16'hF000;
    defparam add_3202_1.INIT1 = 16'h0fff;
    defparam add_3202_1.INJECT1_0 = "NO";
    defparam add_3202_1.INJECT1_1 = "NO";
    CCU2D add_3204_13 (.A0(n11384[11]), .B0(\B_input[4] ), .C0(alu_opA[10]), 
          .D0(GND_net), .A1(n11384[12]), .B1(\B_input[4] ), .C1(alu_opA[11]), 
          .D1(GND_net), .CIN(n31133), .S0(n11367[10]), .S1(n11367[11]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3204_13.INIT0 = 16'h5a6a;
    defparam add_3204_13.INIT1 = 16'h5a6a;
    defparam add_3204_13.INJECT1_0 = "NO";
    defparam add_3204_13.INJECT1_1 = "NO";
    CCU2D add_3204_11 (.A0(n11384[9]), .B0(\B_input[4] ), .C0(alu_opA[8]), 
          .D0(GND_net), .A1(n11384[10]), .B1(\B_input[4] ), .C1(alu_opA[9]), 
          .D1(GND_net), .CIN(n31132), .COUT(n31133), .S0(n11367[8]), 
          .S1(n11367[9]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3204_11.INIT0 = 16'h5a6a;
    defparam add_3204_11.INIT1 = 16'h5a6a;
    defparam add_3204_11.INJECT1_0 = "NO";
    defparam add_3204_11.INJECT1_1 = "NO";
    CCU2D add_3192_9 (.A0(n11307[7]), .B0(\B_input[9] ), .C0(alu_opA[6]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31086), .S0(n639[15]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3192_9.INIT0 = 16'h5a6a;
    defparam add_3192_9.INIT1 = 16'h0000;
    defparam add_3192_9.INJECT1_0 = "NO";
    defparam add_3192_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(alu_opA[3]), .B(n30298), .C(\B_input[11] ), .D(n34889), 
         .Z(n30326)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i2_4_lut.init = 16'h936c;
    CCU2D add_3204_9 (.A0(n11384[7]), .B0(\B_input[4] ), .C0(alu_opA[6]), 
          .D0(GND_net), .A1(n11384[8]), .B1(\B_input[4] ), .C1(alu_opA[7]), 
          .D1(GND_net), .CIN(n31131), .COUT(n31132), .S0(n11367[6]), 
          .S1(n11367[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3204_9.INIT0 = 16'h5a6a;
    defparam add_3204_9.INIT1 = 16'h5a6a;
    defparam add_3204_9.INJECT1_0 = "NO";
    defparam add_3204_9.INJECT1_1 = "NO";
    CCU2D add_3204_7 (.A0(n11384[5]), .B0(\B_input[4] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n11384[6]), .B1(\B_input[4] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31130), .COUT(n31131), .S0(n11367[4]), 
          .S1(n11367[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3204_7.INIT0 = 16'h5a6a;
    defparam add_3204_7.INIT1 = 16'h5a6a;
    defparam add_3204_7.INJECT1_0 = "NO";
    defparam add_3204_7.INJECT1_1 = "NO";
    CCU2D add_3204_5 (.A0(n11384[3]), .B0(\B_input[4] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n11384[4]), .B1(\B_input[4] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31129), .COUT(n31130), .S0(n11367[2]), 
          .S1(n11367[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3204_5.INIT0 = 16'h5a6a;
    defparam add_3204_5.INIT1 = 16'h5a6a;
    defparam add_3204_5.INJECT1_0 = "NO";
    defparam add_3204_5.INJECT1_1 = "NO";
    CCU2D add_3204_3 (.A0(n11384[1]), .B0(\B_input[4] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n11384[2]), .B1(\B_input[4] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31128), .COUT(n31129), .S0(\Res_15__N_1527[4] ), 
          .S1(n11367[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3204_3.INIT0 = 16'h5a6a;
    defparam add_3204_3.INIT1 = 16'h5a6a;
    defparam add_3204_3.INJECT1_0 = "NO";
    defparam add_3204_3.INJECT1_1 = "NO";
    CCU2D add_3204_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[4] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31128));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3204_1.INIT0 = 16'hF000;
    defparam add_3204_1.INIT1 = 16'h0fff;
    defparam add_3204_1.INJECT1_0 = "NO";
    defparam add_3204_1.INJECT1_1 = "NO";
    CCU2D add_3206_15 (.A0(n11402[13]), .B0(\B_input[3] ), .C0(alu_opA[12]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31124), .S0(n11384[12]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3206_15.INIT0 = 16'h5a6a;
    defparam add_3206_15.INIT1 = 16'h0000;
    defparam add_3206_15.INJECT1_0 = "NO";
    defparam add_3206_15.INJECT1_1 = "NO";
    CCU2D add_3206_13 (.A0(n11402[11]), .B0(\B_input[3] ), .C0(alu_opA[10]), 
          .D0(GND_net), .A1(n11402[12]), .B1(\B_input[3] ), .C1(alu_opA[11]), 
          .D1(GND_net), .CIN(n31123), .COUT(n31124), .S0(n11384[10]), 
          .S1(n11384[11]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3206_13.INIT0 = 16'h5a6a;
    defparam add_3206_13.INIT1 = 16'h5a6a;
    defparam add_3206_13.INJECT1_0 = "NO";
    defparam add_3206_13.INJECT1_1 = "NO";
    CCU2D add_3206_11 (.A0(n11402[9]), .B0(\B_input[3] ), .C0(alu_opA[8]), 
          .D0(GND_net), .A1(n11402[10]), .B1(\B_input[3] ), .C1(alu_opA[9]), 
          .D1(GND_net), .CIN(n31122), .COUT(n31123), .S0(n11384[8]), 
          .S1(n11384[9]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3206_11.INIT0 = 16'h5a6a;
    defparam add_3206_11.INIT1 = 16'h5a6a;
    defparam add_3206_11.INJECT1_0 = "NO";
    defparam add_3206_11.INJECT1_1 = "NO";
    CCU2D add_3206_9 (.A0(n11402[7]), .B0(\B_input[3] ), .C0(alu_opA[6]), 
          .D0(GND_net), .A1(n11402[8]), .B1(\B_input[3] ), .C1(alu_opA[7]), 
          .D1(GND_net), .CIN(n31121), .COUT(n31122), .S0(n11384[6]), 
          .S1(n11384[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3206_9.INIT0 = 16'h5a6a;
    defparam add_3206_9.INIT1 = 16'h5a6a;
    defparam add_3206_9.INJECT1_0 = "NO";
    defparam add_3206_9.INJECT1_1 = "NO";
    CCU2D add_3206_7 (.A0(n11402[5]), .B0(\B_input[3] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n11402[6]), .B1(\B_input[3] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31120), .COUT(n31121), .S0(n11384[4]), 
          .S1(n11384[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3206_7.INIT0 = 16'h5a6a;
    defparam add_3206_7.INIT1 = 16'h5a6a;
    defparam add_3206_7.INJECT1_0 = "NO";
    defparam add_3206_7.INJECT1_1 = "NO";
    CCU2D add_3206_5 (.A0(n11402[3]), .B0(\B_input[3] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n11402[4]), .B1(\B_input[3] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31119), .COUT(n31120), .S0(n11384[2]), 
          .S1(n11384[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3206_5.INIT0 = 16'h5a6a;
    defparam add_3206_5.INIT1 = 16'h5a6a;
    defparam add_3206_5.INJECT1_0 = "NO";
    defparam add_3206_5.INJECT1_1 = "NO";
    CCU2D add_3206_3 (.A0(n11402[1]), .B0(\B_input[3] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n11402[2]), .B1(\B_input[3] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31118), .COUT(n31119), .S0(\Res_15__N_1527[3] ), 
          .S1(n11384[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3206_3.INIT0 = 16'h5a6a;
    defparam add_3206_3.INIT1 = 16'h5a6a;
    defparam add_3206_3.INJECT1_0 = "NO";
    defparam add_3206_3.INJECT1_1 = "NO";
    LUT4 i2767_4_lut_3_lut_4_lut (.A(n34884), .B(alu_opA[0]), .C(n840[14]), 
         .D(alu_opA[1]), .Z(n4)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i2767_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_15 (.A(n34884), .B(alu_opA[0]), .C(n840[14]), 
         .D(alu_opA[1]), .Z(n31535)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i2_3_lut_4_lut_adj_15.init = 16'h8778;
    CCU2D add_3206_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[3] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31118));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3206_1.INIT0 = 16'hF000;
    defparam add_3206_1.INIT1 = 16'h0fff;
    defparam add_3206_1.INJECT1_0 = "NO";
    defparam add_3206_1.INJECT1_1 = "NO";
    LUT4 i21957_2_lut_4_lut (.A(n35127), .B(n30302), .C(n34903), .D(n35124), 
         .Z(n30539)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21957_2_lut_4_lut.init = 16'h6996;
    LUT4 i21966_2_lut_rep_353_4_lut (.A(n35127), .B(n30302), .C(n34903), 
         .D(n35124), .Z(n34893)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21966_2_lut_rep_353_4_lut.init = 16'h9600;
    LUT4 i2754_2_lut_4_lut (.A(n35125), .B(n34888), .C(n34893), .D(alu_opA[0]), 
         .Z(n9861)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i2754_2_lut_4_lut.init = 16'h6996;
    LUT4 i21931_4_lut_3_lut_rep_359_4_lut (.A(n30304), .B(n35126), .C(n30302), 
         .D(n35127), .Z(n34899)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21931_4_lut_3_lut_rep_359_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_rep_358_4_lut (.A(n30304), .B(n35126), .C(n30302), .D(n35127), 
         .Z(n34898)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i2_3_lut_rep_358_4_lut.init = 16'h8778;
    LUT4 i21967_2_lut_4_lut (.A(n35128), .B(n30300), .C(n34899), .D(n35125), 
         .Z(n30550)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21967_2_lut_4_lut.init = 16'h6996;
    CCU2D add_3208_15 (.A0(n103[14]), .B0(\B_input[2] ), .C0(alu_opA[12]), 
          .D0(GND_net), .A1(n103[15]), .B1(\B_input[2] ), .C1(alu_opA[13]), 
          .D1(GND_net), .CIN(n31113), .S0(n11402[12]), .S1(n11402[13]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3208_15.INIT0 = 16'h5a6a;
    defparam add_3208_15.INIT1 = 16'h5a6a;
    defparam add_3208_15.INJECT1_0 = "NO";
    defparam add_3208_15.INJECT1_1 = "NO";
    LUT4 alu_opA_4__bdd_2_lut_4_lut (.A(n35128), .B(n34899), .C(n30300), 
         .D(n30298), .Z(n34378)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam alu_opA_4__bdd_2_lut_4_lut.init = 16'he800;
    CCU2D add_3208_13 (.A0(n103[12]), .B0(\B_input[2] ), .C0(alu_opA[10]), 
          .D0(GND_net), .A1(n103[13]), .B1(\B_input[2] ), .C1(alu_opA[11]), 
          .D1(GND_net), .CIN(n31112), .COUT(n31113), .S0(n11402[10]), 
          .S1(n11402[11]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3208_13.INIT0 = 16'h5a6a;
    defparam add_3208_13.INIT1 = 16'h5a6a;
    defparam add_3208_13.INJECT1_0 = "NO";
    defparam add_3208_13.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_16 (.A(alu_opA[3]), .B(n34379), .C(n11282[5]), .D(\B_input[12] ), 
         .Z(n33586)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C)+!B !(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i3_4_lut_adj_16.init = 16'h963c;
    CCU2D add_3208_11 (.A0(n103[10]), .B0(\B_input[2] ), .C0(alu_opA[8]), 
          .D0(GND_net), .A1(n103[11]), .B1(\B_input[2] ), .C1(alu_opA[9]), 
          .D1(GND_net), .CIN(n31111), .COUT(n31112), .S0(n11402[8]), 
          .S1(n11402[9]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3208_11.INIT0 = 16'h5a6a;
    defparam add_3208_11.INIT1 = 16'h5a6a;
    defparam add_3208_11.INJECT1_0 = "NO";
    defparam add_3208_11.INJECT1_1 = "NO";
    CCU2D add_3208_9 (.A0(n103[8]), .B0(\B_input[2] ), .C0(alu_opA[6]), 
          .D0(GND_net), .A1(n103[9]), .B1(\B_input[2] ), .C1(alu_opA[7]), 
          .D1(GND_net), .CIN(n31110), .COUT(n31111), .S0(n11402[6]), 
          .S1(n11402[7]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3208_9.INIT0 = 16'h5a6a;
    defparam add_3208_9.INIT1 = 16'h5a6a;
    defparam add_3208_9.INJECT1_0 = "NO";
    defparam add_3208_9.INJECT1_1 = "NO";
    CCU2D add_3208_7 (.A0(n103[6]), .B0(\B_input[2] ), .C0(alu_opA[4]), 
          .D0(GND_net), .A1(n103[7]), .B1(\B_input[2] ), .C1(alu_opA[5]), 
          .D1(GND_net), .CIN(n31109), .COUT(n31110), .S0(n11402[4]), 
          .S1(n11402[5]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3208_7.INIT0 = 16'h5a6a;
    defparam add_3208_7.INIT1 = 16'h5a6a;
    defparam add_3208_7.INJECT1_0 = "NO";
    defparam add_3208_7.INJECT1_1 = "NO";
    CCU2D add_3208_5 (.A0(n103[4]), .B0(\B_input[2] ), .C0(alu_opA[2]), 
          .D0(GND_net), .A1(n103[5]), .B1(\B_input[2] ), .C1(alu_opA[3]), 
          .D1(GND_net), .CIN(n31108), .COUT(n31109), .S0(n11402[2]), 
          .S1(n11402[3]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3208_5.INIT0 = 16'h5a6a;
    defparam add_3208_5.INIT1 = 16'h5a6a;
    defparam add_3208_5.INJECT1_0 = "NO";
    defparam add_3208_5.INJECT1_1 = "NO";
    CCU2D add_3208_3 (.A0(n103[2]), .B0(\B_input[2] ), .C0(alu_opA[0]), 
          .D0(GND_net), .A1(n103[3]), .B1(\B_input[2] ), .C1(alu_opA[1]), 
          .D1(GND_net), .CIN(n31107), .COUT(n31108), .S0(\Res_15__N_1527[2] ), 
          .S1(n11402[1]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3208_3.INIT0 = 16'h5a6a;
    defparam add_3208_3.INIT1 = 16'h5a6a;
    defparam add_3208_3.INJECT1_0 = "NO";
    defparam add_3208_3.INJECT1_1 = "NO";
    CCU2D add_3208_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\B_input[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n31107));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam add_3208_1.INIT0 = 16'hF000;
    defparam add_3208_1.INIT1 = 16'h0fff;
    defparam add_3208_1.INJECT1_0 = "NO";
    defparam add_3208_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_344_4_lut (.A(n34898), .B(n35124), .C(n34888), .D(n35125), 
         .Z(n34884)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i2_3_lut_rep_344_4_lut.init = 16'h8778;
    LUT4 i21973_4_lut_3_lut_rep_350_4_lut (.A(n34898), .B(n35124), .C(n34888), 
         .D(n35125), .Z(n34890)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(25[26:31])
    defparam i21973_4_lut_3_lut_rep_350_4_lut.init = 16'hf880;
    PFUMX i25301 (.BLUT(n34378), .ALUT(n34377), .C0(\B_input[11] ), .Z(n34379));
    CCU2D add_3209_15 (.A0(alu_opA[14]), .B0(\B_input[0] ), .C0(alu_opA[13]), 
          .D0(\B_input[1] ), .A1(alu_opA[15]), .B1(\B_input[0] ), .C1(alu_opA[14]), 
          .D1(\B_input[1] ), .CIN(n31093), .S0(n103[14]), .S1(n103[15]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(24[13] 26[20])
    defparam add_3209_15.INIT0 = 16'h7888;
    defparam add_3209_15.INIT1 = 16'h7888;
    defparam add_3209_15.INJECT1_0 = "NO";
    defparam add_3209_15.INJECT1_1 = "NO";
    CCU2D add_3209_13 (.A0(alu_opA[12]), .B0(\B_input[0] ), .C0(alu_opA[11]), 
          .D0(\B_input[1] ), .A1(alu_opA[13]), .B1(\B_input[0] ), .C1(alu_opA[12]), 
          .D1(\B_input[1] ), .CIN(n31092), .COUT(n31093), .S0(n103[12]), 
          .S1(n103[13]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/multiplier16.vhd(24[13] 26[20])
    defparam add_3209_13.INIT0 = 16'h7888;
    defparam add_3209_13.INIT1 = 16'h7888;
    defparam add_3209_13.INJECT1_0 = "NO";
    defparam add_3209_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module KeypadController
//

module KeypadController (sys_clk, key_code, ROWS_IN_c_3, key_valid, 
            n35069, n36113, \state[0] , n33453, GND_net, ROWS_IN_c_0, 
            ROWS_IN_c_1, ROWS_IN_c_2, n25931, n34981, n7, n6, n34975, 
            COLS_OUT_c_3, COLS_OUT_c_2, key_cooldown, COLS_OUT_c_1, 
            COLS_OUT_c_0);
    input sys_clk;
    output [3:0]key_code;
    input ROWS_IN_c_3;
    output key_valid;
    input n35069;
    input n36113;
    input \state[0] ;
    output n33453;
    input GND_net;
    input ROWS_IN_c_0;
    input ROWS_IN_c_1;
    input ROWS_IN_c_2;
    output n25931;
    output n34981;
    input n7;
    output n6;
    output n34975;
    output COLS_OUT_c_3;
    output COLS_OUT_c_2;
    input [20:0]key_cooldown;
    output COLS_OUT_c_1;
    output COLS_OUT_c_0;
    
    wire sys_clk /* synthesis SET_AS_NETWORK=sys_clk, is_clock=1 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/tragamonedas_top.vhd(65[12:19])
    wire [1:0]state;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(17[12:17])
    
    wire sys_clk_enable_234;
    wire [1:0]state_1__N_1181;
    
    wire sys_clk_enable_237, n34591;
    wire [1:0]col_idx;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(20[12:19])
    
    wire KEY_VALID_N_1258;
    wire [1:0]col_idx_1__N_1256;
    wire [3:0]COLS_3__N_1204;
    
    wire n35071, sys_clk_enable_332, n36132, n36133, n33874, n34576, 
        n17139;
    wire [3:0]n176;
    
    wire n31055;
    wire [18:0]timer;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(19[12:17])
    wire [18:0]timer_18__N_1233;
    
    wire n31054, n31053, n31052, n31051, n31050, n31049, n31048, 
        n31047, n35156, n1, n35226, n36122, n36121;
    wire [3:0]n5152;
    
    wire n35009, n34575, sys_clk_enable_334, n19190, n1_adj_1560, 
        n31496, sys_clk_enable_333, n35101, n34732, n35143, n35032, 
        n35144, n35145, n8, n26829, n26950;
    wire [18:0]timer_18__N_1183;
    
    wire n35227, n27, n40, n36, n28, n38, n32, n34, n24, n33873, 
        n34574, n33562, n6_adj_1561, n17002, n31313, n4;
    
    FD1P3AX state_i0 (.D(state_1__N_1181[0]), .SP(sys_clk_enable_234), .CK(sys_clk), 
            .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam state_i0.GSR = "DISABLED";
    FD1P3AX KEY_CODE_i0 (.D(n34591), .SP(sys_clk_enable_237), .CK(sys_clk), 
            .Q(key_code[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam KEY_CODE_i0.GSR = "DISABLED";
    FD1P3AX col_idx_i0 (.D(col_idx_1__N_1256[0]), .SP(KEY_VALID_N_1258), 
            .CK(sys_clk), .Q(col_idx[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam col_idx_i0.GSR = "DISABLED";
    LUT4 i17516_2_lut (.A(col_idx[0]), .B(col_idx[1]), .Z(COLS_3__N_1204[1])) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(31[21] 36[30])
    defparam i17516_2_lut.init = 16'hdddd;
    LUT4 state_1__I_0_87_Mux_1_i3_3_lut_3_lut_4_lut (.A(n35071), .B(ROWS_IN_c_3), 
         .C(state[1]), .D(state[0]), .Z(state_1__N_1181[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam state_1__I_0_87_Mux_1_i3_3_lut_3_lut_4_lut.init = 16'h0f70;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n35071), .B(ROWS_IN_c_3), .C(state[1]), 
         .D(state[0]), .Z(sys_clk_enable_237)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0070;
    LUT4 i2882_3_lut_4_lut (.A(n35071), .B(ROWS_IN_c_3), .C(col_idx[0]), 
         .D(col_idx[1]), .Z(col_idx_1__N_1256[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i2882_3_lut_4_lut.init = 16'h7f80;
    LUT4 i25160_2_lut_3_lut_4_lut (.A(n35071), .B(ROWS_IN_c_3), .C(state[0]), 
         .D(state[1]), .Z(state_1__N_1181[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;
    defparam i25160_2_lut_3_lut_4_lut.init = 16'h070f;
    LUT4 i17447_2_lut (.A(col_idx[0]), .B(col_idx[1]), .Z(COLS_3__N_1204[2])) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(31[21] 36[30])
    defparam i17447_2_lut.init = 16'hbbbb;
    LUT4 i14_3_lut_3_lut_4_lut (.A(n35071), .B(ROWS_IN_c_3), .C(state[0]), 
         .D(state[1]), .Z(sys_clk_enable_332)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i14_3_lut_3_lut_4_lut.init = 16'hf70f;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_valid), .B(n35069), .C(n36113), 
         .D(\state[0] ), .Z(n33453)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf020;
    PFUMX i25955 (.BLUT(n36132), .ALUT(n36133), .C0(ROWS_IN_c_3), .Z(n33874));
    FD1P3AX state_i1 (.D(state_1__N_1181[1]), .SP(sys_clk_enable_234), .CK(sys_clk), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam state_i1.GSR = "DISABLED";
    FD1P3AX KEY_CODE_i1 (.D(n34576), .SP(sys_clk_enable_237), .CK(sys_clk), 
            .Q(key_code[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam KEY_CODE_i1.GSR = "DISABLED";
    FD1P3AX KEY_CODE_i2 (.D(n17139), .SP(sys_clk_enable_237), .CK(sys_clk), 
            .Q(key_code[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam KEY_CODE_i2.GSR = "DISABLED";
    FD1P3AX KEY_CODE_i3 (.D(n176[3]), .SP(sys_clk_enable_237), .CK(sys_clk), 
            .Q(key_code[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam KEY_CODE_i3.GSR = "DISABLED";
    FD1P3AX col_idx_i1 (.D(col_idx_1__N_1256[1]), .SP(KEY_VALID_N_1258), 
            .CK(sys_clk), .Q(col_idx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam col_idx_i1.GSR = "DISABLED";
    CCU2D add_62_19 (.A0(timer[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31055), .S0(timer_18__N_1233[17]), .S1(timer_18__N_1233[18]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_19.INIT0 = 16'h5aaa;
    defparam add_62_19.INIT1 = 16'h5aaa;
    defparam add_62_19.INJECT1_0 = "NO";
    defparam add_62_19.INJECT1_1 = "NO";
    CCU2D add_62_17 (.A0(timer[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31054), .COUT(n31055), .S0(timer_18__N_1233[15]), .S1(timer_18__N_1233[16]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_17.INIT0 = 16'h5aaa;
    defparam add_62_17.INIT1 = 16'h5aaa;
    defparam add_62_17.INJECT1_0 = "NO";
    defparam add_62_17.INJECT1_1 = "NO";
    CCU2D add_62_15 (.A0(timer[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31053), .COUT(n31054), .S0(timer_18__N_1233[13]), .S1(timer_18__N_1233[14]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_15.INIT0 = 16'h5aaa;
    defparam add_62_15.INIT1 = 16'h5aaa;
    defparam add_62_15.INJECT1_0 = "NO";
    defparam add_62_15.INJECT1_1 = "NO";
    CCU2D add_62_13 (.A0(timer[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31052), .COUT(n31053), .S0(timer_18__N_1233[11]), .S1(timer_18__N_1233[12]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_13.INIT0 = 16'h5aaa;
    defparam add_62_13.INIT1 = 16'h5aaa;
    defparam add_62_13.INJECT1_0 = "NO";
    defparam add_62_13.INJECT1_1 = "NO";
    CCU2D add_62_11 (.A0(timer[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31051), .COUT(n31052), .S0(timer_18__N_1233[9]), .S1(timer_18__N_1233[10]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_11.INIT0 = 16'h5aaa;
    defparam add_62_11.INIT1 = 16'h5aaa;
    defparam add_62_11.INJECT1_0 = "NO";
    defparam add_62_11.INJECT1_1 = "NO";
    CCU2D add_62_9 (.A0(timer[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31050), 
          .COUT(n31051), .S0(timer_18__N_1233[7]), .S1(timer_18__N_1233[8]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_9.INIT0 = 16'h5aaa;
    defparam add_62_9.INIT1 = 16'h5aaa;
    defparam add_62_9.INJECT1_0 = "NO";
    defparam add_62_9.INJECT1_1 = "NO";
    CCU2D add_62_7 (.A0(timer[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31049), 
          .COUT(n31050), .S0(timer_18__N_1233[5]), .S1(timer_18__N_1233[6]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_7.INIT0 = 16'h5aaa;
    defparam add_62_7.INIT1 = 16'h5aaa;
    defparam add_62_7.INJECT1_0 = "NO";
    defparam add_62_7.INJECT1_1 = "NO";
    CCU2D add_62_5 (.A0(timer[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31048), 
          .COUT(n31049), .S0(timer_18__N_1233[3]), .S1(timer_18__N_1233[4]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_5.INIT0 = 16'h5aaa;
    defparam add_62_5.INIT1 = 16'h5aaa;
    defparam add_62_5.INJECT1_0 = "NO";
    defparam add_62_5.INJECT1_1 = "NO";
    CCU2D add_62_3 (.A0(timer[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31047), 
          .COUT(n31048), .S0(timer_18__N_1233[1]), .S1(timer_18__N_1233[2]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_3.INIT0 = 16'h5aaa;
    defparam add_62_3.INIT1 = 16'h5aaa;
    defparam add_62_3.INJECT1_0 = "NO";
    defparam add_62_3.INJECT1_1 = "NO";
    CCU2D add_62_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(timer[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n31047), 
          .S1(timer_18__N_1233[0]));   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(117[38:43])
    defparam add_62_1.INIT0 = 16'hF000;
    defparam add_62_1.INIT1 = 16'h5555;
    defparam add_62_1.INJECT1_0 = "NO";
    defparam add_62_1.INJECT1_1 = "NO";
    LUT4 i25024_4_lut_then_3_lut (.A(ROWS_IN_c_0), .B(ROWS_IN_c_1), .C(col_idx[0]), 
         .Z(n36133)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i25024_4_lut_then_3_lut.init = 16'h7070;
    LUT4 mux_1650_Mux_3_i1_3_lut_4_lut_4_lut_4_lut (.A(ROWS_IN_c_0), .B(col_idx[0]), 
         .C(ROWS_IN_c_1), .D(n35156), .Z(n1)) /* synthesis lut_function=((B ((D)+!C))+!A) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(72[29:71])
    defparam mux_1650_Mux_3_i1_3_lut_4_lut_4_lut_4_lut.init = 16'hdd5d;
    LUT4 i24947_3_lut_else_4_lut (.A(ROWS_IN_c_2), .B(ROWS_IN_c_1), .C(ROWS_IN_c_0), 
         .D(ROWS_IN_c_3), .Z(n35226)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i24947_3_lut_else_4_lut.init = 16'h30b0;
    LUT4 i25023_3_lut_4_lut_then_4_lut (.A(col_idx[0]), .B(ROWS_IN_c_0), 
         .C(ROWS_IN_c_1), .D(ROWS_IN_c_3), .Z(n36122)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A (B (C)))) */ ;
    defparam i25023_3_lut_4_lut_then_4_lut.init = 16'h1d9d;
    LUT4 i25023_3_lut_4_lut_else_4_lut (.A(col_idx[0]), .B(ROWS_IN_c_0), 
         .C(ROWS_IN_c_1), .Z(n36121)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;
    defparam i25023_3_lut_4_lut_else_4_lut.init = 16'h5d5d;
    LUT4 n5154_bdd_3_lut (.A(n5152[3]), .B(n35009), .C(n5152[0]), .Z(n34575)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;
    defparam n5154_bdd_3_lut.init = 16'hb4b4;
    LUT4 i17517_2_lut (.A(col_idx[0]), .B(col_idx[1]), .Z(COLS_3__N_1204[0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(31[21] 36[30])
    defparam i17517_2_lut.init = 16'heeee;
    LUT4 n5154_bdd_4_lut (.A(n5152[2]), .B(n5152[3]), .C(n35009), .D(n5152[0]), 
         .Z(n34591)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam n5154_bdd_4_lut.init = 16'ha07e;
    LUT4 i25124_2_lut_rep_578 (.A(state[1]), .B(state[0]), .Z(sys_clk_enable_334)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i25124_2_lut_rep_578.init = 16'h9999;
    LUT4 i10571_2_lut_2_lut (.A(state[1]), .B(state[0]), .Z(n19190)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10571_2_lut_2_lut.init = 16'h8888;
    LUT4 i56_4_lut (.A(state[0]), .B(n1_adj_1560), .C(state[1]), .D(n31496), 
         .Z(sys_clk_enable_333)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;
    defparam i56_4_lut.init = 16'hc5cf;
    LUT4 n102_bdd_4_lut (.A(n35101), .B(col_idx[0]), .C(n34732), .D(col_idx[1]), 
         .Z(n5152[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n102_bdd_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_rep_603 (.A(ROWS_IN_c_2), .B(ROWS_IN_c_1), .Z(n35143)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(71[29:71])
    defparam i1_2_lut_rep_603.init = 16'h8888;
    LUT4 i1_2_lut_rep_531_3_lut (.A(ROWS_IN_c_2), .B(ROWS_IN_c_1), .C(ROWS_IN_c_0), 
         .Z(n35071)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(71[29:71])
    defparam i1_2_lut_rep_531_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_492_3_lut_4_lut (.A(ROWS_IN_c_2), .B(ROWS_IN_c_1), 
         .C(ROWS_IN_c_3), .D(ROWS_IN_c_0), .Z(n35032)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(71[29:71])
    defparam i1_2_lut_rep_492_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_604 (.A(timer[8]), .B(timer[9]), .Z(n35144)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_604.init = 16'h8888;
    LUT4 i3_3_lut_4_lut (.A(timer[8]), .B(timer[9]), .C(timer[10]), .D(n35145), 
         .Z(n8)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h8000;
    LUT4 i18183_2_lut_rep_605 (.A(timer[4]), .B(timer[5]), .Z(n35145)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18183_2_lut_rep_605.init = 16'heeee;
    LUT4 i18231_2_lut_3_lut (.A(timer[4]), .B(timer[5]), .C(timer[6]), 
         .Z(n26829)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i18231_2_lut_3_lut.init = 16'he0e0;
    LUT4 i18341_3_lut_4_lut_4_lut (.A(ROWS_IN_c_1), .B(ROWS_IN_c_0), .C(col_idx[0]), 
         .D(ROWS_IN_c_2), .Z(n26950)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(57[29:71])
    defparam i18341_3_lut_4_lut_4_lut.init = 16'h373f;
    LUT4 i17301_2_lut_rep_616 (.A(ROWS_IN_c_3), .B(ROWS_IN_c_2), .Z(n35156)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(65[29:71])
    defparam i17301_2_lut_rep_616.init = 16'h4444;
    LUT4 i17488_2_lut_rep_561_3_lut_4_lut (.A(ROWS_IN_c_3), .B(ROWS_IN_c_2), 
         .C(ROWS_IN_c_0), .D(ROWS_IN_c_1), .Z(n35101)) /* synthesis lut_function=(!(A (C (D))+!A !(B+!(C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(65[29:71])
    defparam i17488_2_lut_rep_561_3_lut_4_lut.init = 16'h4fff;
    FD1P3AX timer_i18 (.D(timer_18__N_1183[18]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i18.GSR = "DISABLED";
    FD1P3AX timer_i17 (.D(timer_18__N_1183[17]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i17.GSR = "DISABLED";
    FD1P3AX timer_i16 (.D(timer_18__N_1183[16]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i16.GSR = "DISABLED";
    LUT4 i24947_3_lut_then_4_lut (.A(ROWS_IN_c_2), .B(ROWS_IN_c_1), .C(col_idx[1]), 
         .D(ROWS_IN_c_0), .Z(n35227)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A !(B (C+!(D))+!B !(C (D))))) */ ;
    defparam i24947_3_lut_then_4_lut.init = 16'h43ff;
    FD1P3AX timer_i15 (.D(timer_18__N_1183[15]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i15.GSR = "DISABLED";
    LUT4 n33516_bdd_4_lut (.A(n35143), .B(ROWS_IN_c_0), .C(ROWS_IN_c_3), 
         .D(col_idx[0]), .Z(n34732)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A !(B (D)+!B !(D)))) */ ;
    defparam n33516_bdd_4_lut.init = 16'h4c3b;
    LUT4 i1_2_lut_rep_441 (.A(n25931), .B(key_valid), .Z(n34981)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam i1_2_lut_rep_441.init = 16'h4444;
    LUT4 i1_2_lut_3_lut (.A(n25931), .B(key_valid), .C(n7), .Z(n6)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i24814_2_lut_rep_435_3_lut (.A(n25931), .B(key_valid), .C(n35069), 
         .Z(n34975)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam i24814_2_lut_rep_435_3_lut.init = 16'h0404;
    FD1P3AX timer_i14 (.D(timer_18__N_1183[14]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i14.GSR = "DISABLED";
    FD1P3AX timer_i13 (.D(timer_18__N_1183[13]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i13.GSR = "DISABLED";
    LUT4 mux_52_Mux_3_i15_4_lut_4_lut (.A(n5152[0]), .B(n35009), .C(n5152[2]), 
         .D(n5152[3]), .Z(n176[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(76[25] 102[34])
    defparam mux_52_Mux_3_i15_4_lut_4_lut.init = 16'h09f3;
    FD1P3AX timer_i12 (.D(timer_18__N_1183[12]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i12.GSR = "DISABLED";
    FD1P3AX timer_i11 (.D(timer_18__N_1183[11]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i11.GSR = "DISABLED";
    FD1P3AX timer_i10 (.D(timer_18__N_1183[10]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i10.GSR = "DISABLED";
    FD1P3AX timer_i9 (.D(timer_18__N_1183[9]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i9.GSR = "DISABLED";
    FD1P3AX timer_i8 (.D(timer_18__N_1183[8]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i8.GSR = "DISABLED";
    FD1P3AX timer_i7 (.D(timer_18__N_1183[7]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i7.GSR = "DISABLED";
    FD1P3AX timer_i6 (.D(timer_18__N_1183[6]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i6.GSR = "DISABLED";
    FD1P3AX timer_i5 (.D(timer_18__N_1183[5]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i5.GSR = "DISABLED";
    FD1P3AX timer_i4 (.D(timer_18__N_1183[4]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i4.GSR = "DISABLED";
    FD1P3AX timer_i3 (.D(timer_18__N_1183[3]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i3.GSR = "DISABLED";
    FD1P3AX timer_i2 (.D(timer_18__N_1183[2]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i2.GSR = "DISABLED";
    FD1P3AX timer_i1 (.D(timer_18__N_1183[1]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i1.GSR = "DISABLED";
    FD1P3IX COLS_i4 (.D(COLS_3__N_1204[3]), .SP(sys_clk_enable_334), .CD(n19190), 
            .CK(sys_clk), .Q(COLS_OUT_c_3)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam COLS_i4.GSR = "DISABLED";
    LUT4 i20_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(n25931)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i20_4_lut.init = 16'hfffe;
    FD1P3IX COLS_i3 (.D(COLS_3__N_1204[2]), .SP(sys_clk_enable_334), .CD(n19190), 
            .CK(sys_clk), .Q(COLS_OUT_c_2)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam COLS_i3.GSR = "DISABLED";
    LUT4 i6_2_lut (.A(key_cooldown[1]), .B(key_cooldown[12]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    FD1P3IX COLS_i2 (.D(COLS_3__N_1204[1]), .SP(sys_clk_enable_334), .CD(n19190), 
            .CK(sys_clk), .Q(COLS_OUT_c_1)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam COLS_i2.GSR = "DISABLED";
    LUT4 i19_4_lut (.A(key_cooldown[11]), .B(n38), .C(n32), .D(key_cooldown[7]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i15_4_lut (.A(key_cooldown[8]), .B(key_cooldown[3]), .C(key_cooldown[9]), 
         .D(key_cooldown[20]), .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(key_cooldown[13]), .B(key_cooldown[15]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7_2_lut.init = 16'heeee;
    FD1P3AX KEY_VALID_80 (.D(KEY_VALID_N_1258), .SP(sys_clk_enable_332), 
            .CK(sys_clk), .Q(key_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam KEY_VALID_80.GSR = "DISABLED";
    FD1P3AX timer_i0 (.D(timer_18__N_1183[0]), .SP(sys_clk_enable_333), 
            .CK(sys_clk), .Q(timer[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam timer_i0.GSR = "DISABLED";
    FD1P3IX COLS_i1 (.D(COLS_3__N_1204[0]), .SP(sys_clk_enable_334), .CD(n19190), 
            .CK(sys_clk), .Q(COLS_OUT_c_0)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=31, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(26[9] 125[16])
    defparam COLS_i1.GSR = "DISABLED";
    LUT4 i17914_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[18]), 
         .Z(timer_18__N_1183[18])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17914_2_lut_4_lut.init = 16'hca00;
    LUT4 i17915_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[17]), 
         .Z(timer_18__N_1183[17])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17915_2_lut_4_lut.init = 16'hca00;
    LUT4 i17916_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[16]), 
         .Z(timer_18__N_1183[16])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17916_2_lut_4_lut.init = 16'hca00;
    LUT4 i17917_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[15]), 
         .Z(timer_18__N_1183[15])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17917_2_lut_4_lut.init = 16'hca00;
    LUT4 i17918_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[14]), 
         .Z(timer_18__N_1183[14])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17918_2_lut_4_lut.init = 16'hca00;
    LUT4 i17_4_lut (.A(key_cooldown[2]), .B(n34), .C(n24), .D(key_cooldown[14]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i17919_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[13]), 
         .Z(timer_18__N_1183[13])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17919_2_lut_4_lut.init = 16'hca00;
    LUT4 i17920_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[12]), 
         .Z(timer_18__N_1183[12])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17920_2_lut_4_lut.init = 16'hca00;
    LUT4 i17921_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[11]), 
         .Z(timer_18__N_1183[11])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17921_2_lut_4_lut.init = 16'hca00;
    LUT4 i17922_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[10]), 
         .Z(timer_18__N_1183[10])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17922_2_lut_4_lut.init = 16'hca00;
    LUT4 i17923_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[9]), 
         .Z(timer_18__N_1183[9])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17923_2_lut_4_lut.init = 16'hca00;
    LUT4 i17924_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[8]), 
         .Z(timer_18__N_1183[8])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17924_2_lut_4_lut.init = 16'hca00;
    LUT4 i17925_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[7]), 
         .Z(timer_18__N_1183[7])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17925_2_lut_4_lut.init = 16'hca00;
    LUT4 i17926_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[6]), 
         .Z(timer_18__N_1183[6])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17926_2_lut_4_lut.init = 16'hca00;
    LUT4 i17927_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[5]), 
         .Z(timer_18__N_1183[5])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17927_2_lut_4_lut.init = 16'hca00;
    LUT4 i17928_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[4]), 
         .Z(timer_18__N_1183[4])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17928_2_lut_4_lut.init = 16'hca00;
    LUT4 i17929_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[3]), 
         .Z(timer_18__N_1183[3])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17929_2_lut_4_lut.init = 16'hca00;
    LUT4 i17930_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[2]), 
         .Z(timer_18__N_1183[2])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17930_2_lut_4_lut.init = 16'hca00;
    LUT4 i17931_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[1]), 
         .Z(timer_18__N_1183[1])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17931_2_lut_4_lut.init = 16'hca00;
    LUT4 i17556_2_lut_4_lut (.A(state[0]), .B(n35032), .C(state[1]), .D(timer_18__N_1233[0]), 
         .Z(timer_18__N_1183[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i17556_2_lut_4_lut.init = 16'hca00;
    LUT4 i25154_2_lut (.A(col_idx[0]), .B(col_idx[1]), .Z(COLS_3__N_1204[3])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i25154_2_lut.init = 16'h7777;
    LUT4 i25025_3_lut_rep_469 (.A(n33873), .B(n33874), .C(col_idx[1]), 
         .Z(n35009)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25025_3_lut_rep_469.init = 16'hcaca;
    LUT4 n5154_bdd_3_lut_25390_4_lut (.A(n33873), .B(n33874), .C(col_idx[1]), 
         .D(n5152[3]), .Z(n34574)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (C (D))+!B !(D)))) */ ;
    defparam n5154_bdd_3_lut_25390_4_lut.init = 16'h35cc;
    LUT4 i11_3_lut (.A(key_cooldown[19]), .B(key_cooldown[18]), .C(key_cooldown[6]), 
         .Z(n32)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 i13_4_lut (.A(key_cooldown[10]), .B(key_cooldown[5]), .C(key_cooldown[4]), 
         .D(key_cooldown[0]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(key_cooldown[16]), .B(key_cooldown[17]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    PFUMX mux_1650_Mux_3_i3 (.BLUT(n1), .ALUT(n26950), .C0(col_idx[1]), 
          .Z(n5152[3]));
    LUT4 i8528_4_lut (.A(n5152[0]), .B(n5152[3]), .C(n35009), .D(n5152[2]), 
         .Z(n17139)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A !(B+(C (D)+!C !(D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(76[25] 102[34])
    defparam i8528_4_lut.init = 16'ha33a;
    LUT4 i13_4_lut_adj_11 (.A(n31496), .B(n1_adj_1560), .C(state[1]), 
         .D(state[0]), .Z(sys_clk_enable_234)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i13_4_lut_adj_11.init = 16'h3a3f;
    LUT4 i4_4_lut (.A(timer[14]), .B(n33562), .C(timer[15]), .D(n6_adj_1561), 
         .Z(n31496)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n17002), .B(timer[6]), .C(n8), .D(timer[7]), .Z(n6_adj_1561)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'heaaa;
    LUT4 i1_4_lut_adj_12 (.A(n31313), .B(state[0]), .C(n35032), .D(n33562), 
         .Z(n1_adj_1560)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_12.init = 16'h0c4c;
    LUT4 i2_4_lut (.A(timer[14]), .B(timer[15]), .C(n17002), .D(n4), 
         .Z(n31313)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i1_4_lut_adj_13 (.A(timer[7]), .B(timer[10]), .C(n35144), .D(n26829), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(116[28:41])
    defparam i1_4_lut_adj_13.init = 16'hfcec;
    LUT4 i2_3_lut (.A(timer[13]), .B(timer[12]), .C(timer[11]), .Z(n17002)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(116[28:41])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut (.A(timer[16]), .B(timer[18]), .C(timer[17]), .Z(n33562)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i25206_2_lut (.A(state[0]), .B(state[1]), .Z(KEY_VALID_N_1258)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/jecal/onedrive/desktop/arqui/arqui_v2/proyecto5/keypadcontroller.vhd(27[13] 124[22])
    defparam i25206_2_lut.init = 16'h4444;
    LUT4 i25024_4_lut_else_3_lut (.A(ROWS_IN_c_0), .B(ROWS_IN_c_1), .C(col_idx[0]), 
         .D(ROWS_IN_c_2), .Z(n36132)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i25024_4_lut_else_3_lut.init = 16'h7870;
    PFUMX i25391 (.BLUT(n34575), .ALUT(n34574), .C0(n5152[2]), .Z(n34576));
    PFUMX i25949 (.BLUT(n36121), .ALUT(n36122), .C0(ROWS_IN_c_2), .Z(n33873));
    LUT4 i1_2_lut_3_lut_4_lut_adj_14 (.A(ROWS_IN_c_0), .B(n35143), .C(col_idx[0]), 
         .D(ROWS_IN_c_3), .Z(col_idx_1__N_1256[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_14.init = 16'h78f0;
    PFUMX i25535 (.BLUT(n35226), .ALUT(n35227), .C0(col_idx[0]), .Z(n5152[0]));
    
endmodule
