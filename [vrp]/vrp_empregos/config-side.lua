cfg = {}

-- Novos valores
cfg.config = {

    ["Tomate"] = {
        price = math.random(150,450),
        rotas = {
            [1] = { coords= vec3(1751.14,4980.20,48.55), visivel = true},
            [2] = { coords= vec3(1752.94,4981.57,48.87), visivel = true},
            [3] = { coords= vec3(1754.68,4983.19,49.21), visivel = true},
            [4] = { coords= vec3(1755.96,4984.12,49.41), visivel = true},
            [5] = { coords= vec3(1756.88,4984.94,49.56), visivel = true},
            [6] = { coords= vec3(1761.21,4988.92,50.24), visivel = true},
            [7] = { coords= vec3(1762.78,4990.28,50.44), visivel = true},
            [8] = { coords= vec3(1765.75,4992.86,50.88), visivel = true},
            [9] = { coords= vec3(1766.99,4993.45,51.37), visivel = true},
        }
    },

    ["Drogas"] = {
        valorPorPolicia = 40, 
        valorPorDroga = 500,
        rotas = {
            sul = {
                { coords= vec3(446.0,-1242.17,30.29), visivel = true},
                { coords= vec3(-2.62,-1496.68,31.86), visivel = true},
                { coords= vec3(-428.99,-1728.12,19.79), visivel = true},
                { coords= vec3(-273.53,28.29,54.76), visivel = true},
                { coords= vec3(-64.59,77.2,71.62), visivel = true},
                { coords= vec3(-456.81,289.21,83.23), visivel = true},
                { coords= vec3(840.18,-181.86,74.19), visivel = true},
                { coords= vec3(1105.55,-778.86,58.27), visivel = true},
                { coords= vec3(245.62,358.95,105.96), visivel = true},
                { coords= vec3(-602.11,244.44,82.31), visivel = true},
                { coords= vec3(67.55,-1416.77,29.32), visivel = true},
                { coords= vec3(160.33,-1540.91,29.15), visivel = true},
                { coords= vec3(228.54,-1767.23,28.7), visivel = true},
                { coords= vec3(86.87,-1670.27,29.17), visivel = true},
                { coords= vec3(-643.22,-1227.69,11.55), visivel = true},
                { coords= vec3(-815.09,-957.15,15.3), visivel = true},
                { coords= vec3(-1964.77,-297.15,41.1), visivel = true},
                { coords= vec3(-1772.24,-378.16,46.49), visivel = true},
                { coords= vec3(-2205.63,-373.59,13.33), visivel = true},
                { coords= vec3(-3101.87,367.03,7.12), visivel = true},
                { coords= vec3(-3101.24,743.43,21.29), visivel = true},
                { coords= vec3(-2977.23,609.34,20.25), visivel = true},
                { coords= vec3(-2956.02,385.71,15.03), visivel = true},
                { coords= vec3(-1110.52,-1498.56,4.68), visivel = true},
                { coords= vec3(-1109.06,-1482.27,4.92), visivel = true},
                { coords= vec3(-1302.72,-271.41,40.0), visivel = true},
                { coords= vec3(-1034.91,-1146.78,2.16), visivel = true},
                { coords= vec3(-1349.78,-1161.6,4.51), visivel = true},
                { coords= vec3(474.25,-635.15,25.65), visivel = true},
                { coords= vec3(373.75,-1441.92,29.44), visivel = true},
                { coords= vec3(-37.82,-1473.01,31.58), visivel = true},
                { coords= vec3(521.18,-1917.13,25.93), visivel = true},
                { coords= vec3(-715.82,-864.54,23.19), visivel = true},
                { coords= vec3(833.81,-1075.15,28.15), visivel = true},
                { coords= vec3(868.78,-1639.86,30.34), visivel = true},
                { coords= vec3(477.84,-1943.58,24.98), visivel = true},
                { coords= vec3(953.32,-196.62,73.21), visivel = true},
            },
            norte = {
                { coords= vec3(843.41,2192.39,52.28), visivel = true},
                { coords= vec3(355.05,2561.12,43.52), visivel = true},
                { coords= vec3(-1105.88,2696.56,18.62), visivel = true},
                { coords= vec3(-2521.09,2310.33,33.21), visivel = true},
                { coords= vec3(-2202.89,4244.73,48.34), visivel = true},
                { coords= vec3(-709.89,5768.68,17.51), visivel = true},
                { coords= vec3(-1075.8,4897.48,214.26), visivel = true},
                { coords= vec3(711.22,4185.37,41.08), visivel = true},
                { coords= vec3(1309.5,4384.36,42.06), visivel = true},
                { coords= vec3(1682.87,4689.38,43.07), visivel = true},
                { coords= vec3(1991.13,3779.48,32.18), visivel = true},
                { coords= vec3(2179.13,3496.41,46.02), visivel = true},
                { coords= vec3(2403.7,3128.1,48.16), visivel = true},
                { coords= vec3(1764.73,3320.09,41.42), visivel = true},
                { coords= vec3(2003.07,3049.17,47.21), visivel = true},
            }
        }
    },

    ["Lixeiro"] = {
        price = math.random(300,600),
        rotas = {
            [1] = { coords = vec3(154.6,-1046.18,29.28), visivel = true},
            [2] = { coords = vec3(153.81,-1048.48,29.25), visivel = true},
            [3] = { coords = vec3(151.83,-1065.59,29.2), visivel = true},
            [4] = { coords = vec3(154.19,-1066.51,29.2), visivel = true},
            [5] = { coords = vec3(172.63,-1073.94,29.2), visivel = true},
            [6] = { coords = vec3(172.34,-1076.23,29.2), visivel = true},
            [7] = { coords = vec3(130.09,-1054.79,29.2), visivel = true},
            [8] = { coords = vec3(115.61,-1049.6,29.21), visivel = true},
            [9] = { coords = vec3(127.78,-1054.33,29.2), visivel = true},
            [10] = { coords = vec3(125.73,-1087.32,29.21), visivel = true},
            [11] = { coords = vec3(121.39,-1087.56,29.22), visivel = true},
            [12] = { coords = vec3(304.84,-1004.11,29.33), visivel = true},
            [13] = { coords = vec3(294.12,-995.35,29.28), visivel = true},
            [14] = { coords = vec3(281.49,-1003.51,29.36), visivel = true},
            [15] = { coords = vec3(279.36,-1003.83,29.36), visivel = true},
            [16] = { coords = vec3(341.68,-1076.74,29.54), visivel = true},
            [17] = { coords = vec3(335.73,-1074.81,29.55), visivel = true},
            [18] = { coords = vec3(336.09,-1081.78,29.46), visivel = true},
            [19] = { coords = vec3(335.73,-1077.82,29.51), visivel = true},
            [20] = { coords = vec3(379.28,-1117.94,29.41), visivel = true},
            [21] = { coords = vec3(381.0,-1117.61,29.41), visivel = true},
            [22] = { coords = vec3(341.66,-1106.65,29.41), visivel = true},
            [23] = { coords = vec3(341.67,-1102.61,29.41), visivel = true},
            [24] = { coords = vec3(468.45,-948.42,27.82), visivel = true},
            [25] = { coords = vec3(466.04,-948.35,27.92), visivel = true},
            [26] = { coords = vec3(339.4,-961.09,29.43), visivel = true},
            [27] = { coords = vec3(316.01,-946.94,29.27), visivel = true},
            [28] = { coords = vec3(313.57,-947.06,29.27), visivel = true},
            [29] = { coords = vec3(425.22,-684.93,29.29), visivel = true},
            [30] = { coords = vec3(453.07,-917.32,28.48), visivel = true},
            [31] = { coords = vec3(453.41,-932.21,28.49), visivel = true},
            [32] = { coords = vec3(165.06,-1286.74,29.3), visivel = true},
            [33] = { coords = vec3(166.35,-1294.0,29.46), visivel = true},
            [34] = { coords = vec3(156.09,-1306.9,29.21), visivel = true},
            [35] = { coords = vec3(155.04,-1309.13,29.21), visivel = true},
            [36] = { coords = vec3(137.23,-1313.52,29.21), visivel = true},
            [37] = { coords = vec3(163.39,-1351.02,29.32), visivel = true},
            [38] = { coords = vec3(166.27,-1347.25,29.32), visivel = true},
            [39] = { coords = vec3(167.69,-1345.43,29.33), visivel = true},
            [40] = { coords = vec3(187.63,-1320.0,29.32), visivel = true},
            [41] = { coords = vec3(143.28,-1259.57,29.31), visivel = true},
            [42] = { coords = vec3(143.99,-1260.69,29.29), visivel = true},
            [43] = { coords = vec3(145.32,-1263.36,29.25), visivel = true},
            [44] = { coords = vec3(144.71,-1262.13,29.26), visivel = true},
            [45] = { coords = vec3(144.65,-1290.66,29.36), visivel = true},
            [46] = { coords = vec3(146.6,-1289.49,29.34), visivel = true},
            [47] = { coords = vec3(-43.89,-1285.73,29.1), visivel = true},
            [48] = { coords = vec3(-43.79,-1299.81,29.09), visivel = true},
            [49] = { coords = vec3(-22.09,-1295.73,29.36), visivel = true},
            [50] = { coords = vec3(-10.82,-1308.48,29.29), visivel = true},
            [51] = { coords = vec3(89.57,-1285.26,29.3), visivel = true},
            [52] = { coords = vec3(91.31,-1284.21,29.29), visivel = true},
            [53] = { coords = vec3(-87.13,-1330.35,29.3), visivel = true},
            [54] = { coords = vec3(-87.47,-1298.66,29.31), visivel = true},
            [55] = { coords = vec3(-87.38,-1287.46,29.3), visivel = true},
            [56] = { coords = vec3(-87.35,-1278.26,29.3), visivel = true},
            [57] = { coords = vec3(-80.7,-1265.85,29.17), visivel = true},
            [58] = { coords = vec3(-78.33,-1266.04,29.19), visivel = true},
            [59] = { coords = vec3(-17.57,-1390.83,29.43), visivel = true},
            [60] = { coords = vec3(-28.11,-1352.09,29.32), visivel = true},
            [61] = { coords = vec3(-38.99,-1352.05,29.34), visivel = true},
            [62] = { coords = vec3(-50.71,-1350.69,29.33), visivel = true},
            [63] = { coords = vec3(-77.46,-1383.55,29.32), visivel = true},
            [64] = { coords = vec3(65.97,-1391.83,29.38), visivel = true},
            [65] = { coords = vec3(48.9,-1386.43,29.33), visivel = true},
            [66] = { coords = vec3(2.27,-1351.44,29.33), visivel = true},
            [67] = { coords = vec3(0.95,-1386.56,29.29), visivel = true},
            [68] = { coords = vec3(2.84,-1386.54,29.3), visivel = true},
            [69] = { coords = vec3(39.81,-1453.79,29.32), visivel = true},
            [70] = { coords = vec3(53.34,-1437.86,29.32), visivel = true},
            [71] = { coords = vec3(54.83,-1436.11,29.32), visivel = true},
            [72] = { coords = vec3(66.59,-1408.53,29.36), visivel = true},
            [73] = { coords = vec3(65.8,-1396.42,29.38), visivel = true},
            [74] = { coords = vec3(65.91,-1395.03,29.38), visivel = true},
            [75] = { coords = vec3(65.82,-1393.2,29.39), visivel = true},
            [76] = { coords = vec3(-9.98,-1486.05,30.24), visivel = true},
            [77] = { coords = vec3(-10.99,-1487.95,30.18), visivel = true},
            [78] = { coords = vec3(-11.94,-1488.88,30.17), visivel = true},
            [79] = { coords = vec3(-1.61,-1481.39,30.32), visivel = true},
            [80] = { coords = vec3(-0.18,-1479.94,30.37), visivel = true},
            [81] = { coords = vec3(-9.47,-1478.59,30.49), visivel = true},
            [82] = { coords = vec3(-7.71,-1477.84,30.52), visivel = true},
            [83] = { coords = vec3(-6.38,-1476.16,30.54), visivel = true},
            [84] = { coords = vec3(597.53,150.75,98.2), visivel = true},
            [85] = { coords = vec3(596.58,148.66,98.05), visivel = true},
            [86] = { coords = vec3(619.68,189.64,98.41), visivel = true},
            [87] = { coords = vec3(618.9,187.07,98.42), visivel = true},
            [88] = { coords = vec3(625.35,205.1,98.6), visivel = true},
            [89] = { coords = vec3(560.48,171.42,100.24), visivel = true},
            [90] = { coords = vec3(397.85,290.24,102.95), visivel = true},
            [91] = { coords = vec3(394.8,269.52,103.03), visivel = true},
            [92] = { coords = vec3(379.81,251.12,103.04), visivel = true},
            [93] = { coords = vec3(366.76,255.54,103.01), visivel = true},
            [94] = { coords = vec3(382.1,250.45,103.03), visivel = true},
            [95] = { coords = vec3(309.66,344.43,105.3), visivel = true},
            [96] = { coords = vec3(349.78,340.66,105.21), visivel = true},
            [97] = { coords = vec3(345.03,352.69,105.3), visivel = true},
            [98] = { coords = vec3(345.5,354.51,105.3), visivel = true},
            [99] = { coords = vec3(374.82,355.66,102.64), visivel = true},
            [100] = { coords = vec3(373.7,351.31,102.82), visivel = true},
            [101] = { coords = vec3(269.87,311.34,105.55), visivel = true},
            [102] = { coords = vec3(276.5,308.76,105.55), visivel = true},
            [103] = { coords = vec3(280.39,307.35,105.55), visivel = true},
            [104] = { coords = vec3(291.22,365.75,105.49), visivel = true},
            [105] = { coords = vec3(294.19,365.09,105.47), visivel = true},
            [106] = { coords = vec3(313.4,361.62,105.39), visivel = true},
            [107] = { coords = vec3(314.04,363.41,105.42), visivel = true},
            [108] = { coords = vec3(194.2,321.22,105.4), visivel = true},
            [109] = { coords = vec3(192.93,332.9,105.43), visivel = true},
            [110] = { coords = vec3(195.26,335.77,105.55), visivel = true},
            [111] = { coords = vec3(195.27,341.45,106.07), visivel = true},
            [112] = { coords = vec3(210.2,336.06,105.5), visivel = true},
            [113] = { coords = vec3(207.62,337.05,105.55), visivel = true},
            [114] = { coords = vec3(218.26,343.05,105.61), visivel = true},
            [115] = { coords = vec3(271.95,310.63,105.55), visivel = true},
            [116] = { coords = vec3(124.42,314.57,112.15), visivel = true},
            [117] = { coords = vec3(132.16,321.05,112.21), visivel = true},
            [118] = { coords = vec3(147.58,311.92,112.16), visivel = true},
            [119] = { coords = vec3(148.71,309.48,112.14), visivel = true},
            [120] = { coords = vec3(160.67,305.83,112.13), visivel = true},
            [121] = { coords = vec3(158.76,305.62,112.13), visivel = true},
            [122] = { coords = vec3(175.4,294.64,105.41), visivel = true},
            [123] = { coords = vec3(175.08,306.61,105.38), visivel = true},
            [124] = { coords = vec3(174.25,304.97,105.38), visivel = true},
            [125] = { coords = vec3(114.76,330.42,112.13), visivel = true},
            [126] = { coords = vec3(116.39,327.12,112.13), visivel = true},
            [127] = { coords = vec3(97.37,320.25,112.08), visivel = true},
            [128] = { coords = vec3(102.06,318.18,112.1), visivel = true},
            [129] = { coords = vec3(114.67,330.48,112.13), visivel = true},
            [130] = { coords = vec3(116.33,327.11,112.13), visivel = true},
            [131] = { coords = vec3(87.96,310.54,110.02), visivel = true},
            [132] = { coords = vec3(96.15,299.11,110.01), visivel = true},
            [133] = { coords = vec3(98.06,298.32,110.01), visivel = true},
            [134] = { coords = vec3(119.71,279.49,109.98), visivel = true},
            [135] = { coords = vec3(126.45,274.11,109.98), visivel = true},
            [136] = { coords = vec3(128.19,273.47,109.99), visivel = true},
            [137] = { coords = vec3(98.7,161.89,104.62), visivel = true},
            [138] = { coords = vec3(97.87,159.84,104.66), visivel = true},
            [139] = { coords = vec3(97.01,157.46,104.7), visivel = true},
            [140] = { coords = vec3(126.29,165.55,104.73), visivel = true},
            [141] = { coords = vec3(128.53,163.75,104.71), visivel = true},
            [142] = { coords = vec3(134.82,170.11,105.09), visivel = true},
            [143] = { coords = vec3(522.33,-162.59,56.2), visivel = true},
            [144] = { coords = vec3(580.22,84.64,94.93), visivel = true},
            [145] = { coords = vec3(600.57,76.54,92.61), visivel = true},
            [146] = { coords = vec3(617.36,70.63,90.75), visivel = true},
        }
    },

    ["Minerador"] = {
        rotas = {
            [1] = { coords = vec(2964.40,2773.66,40.05), visivel = true },
            [2] = { coords = vec(2957.67,2772.70,40.32), visivel = true},
            [3] = { coords = vec(2951.70,2767.77,39.85), visivel = true},
            [4] = { coords = vec(2938.44,2774.31,39.78), visivel = true},
            [5] = { coords = vec(2928.15,2788.90,40.62), visivel = true},
            [6] = { coords = vec(2926.03,2792.18,41.25), visivel = true},
            [7] = { coords = vec(2925.97,2792.28,41.27), visivel = true},
            [8] = { coords = vec(2921.35,2798.60,42.22), visivel = true},
            [9] = { coords = vec(2936.85,2814.16,44.02), visivel = true},
            [10] = { coords = vec(2944.29,2818.39,43.57), visivel = true},
            [11] = { coords = vec(2948.06,2820.96,43.60), visivel = true},
            [12] = { coords = vec(2955.69,2820.15,43.17), visivel = true},
            [13] = { coords = vec(2959.09,2819.89,43.69), visivel = true},
            [14] = { coords = vec(2972.23,2799.36,42.16), visivel = true},
            [15] = { coords = vec(2976.34,2794.88,41.63), visivel = true},
            [16] = { coords = vec(2976.87,2792.45,41.39), visivel = true},
            [17] = { coords = vec(2979.39,2791.14,41.65), visivel = true},
            [18] = { coords = vec(2982.00,2787.06,41.18), visivel = true},
            [19] = { coords = vec(2972.13,2775.15,39.23), visivel = true},
            [20] = { coords = vec(2968.65,2773.63,38.71), visivel = true},
            [21] = { coords = vec(2957.61,2772.80,40.33), visivel = true},
            [22] = { coords = vec(2959.89,2765.89,41.94), visivel = true},
            [23] = { coords = vec(2947.62,2754.47,43.97), visivel = true},
            [24] = { coords = vec(2937.28,2757.36,44.67), visivel = true},
            [25] = { coords = vec(2931.06,2762.11,45.03), visivel = true},
            [26] = { coords = vec(2928.90,2765.21,44.64), visivel = true},
            [27] = { coords = vec(2928.22,2767.76,44.34), visivel = true},
            [28] = { coords = vec(2988.46,2753.98,43.54), visivel = true},
            [29] = { coords = vec(2993.63,2753.59,43.70), visivel = true},
            [30] = { coords = vec(2974.29,2745.54,43.97), visivel = true},
            [31] = { coords = vec(2980.96,2764.28,43.22), visivel = true},
            [32] = { coords = vec(2983.86,2763.28,43.63), visivel = true},
        }
    },

    ["Motorista"] = {
        price = math.random(400,600),
        rotas = {
            [1] = { coords = vec3(72.12,-973.65,29.23), visivel = true},
            [2] = { coords = vec3(306.49,-765.82,29.2), visivel = true},
            [3] = { coords = vec3(108.59,-604.88,44.08), visivel = true},
            [4] = { coords = vec3(2.35,-260.86,47.11), visivel = true},
            [5] = { coords = vec3(163.98,-210.12,54.12), visivel = true},
            [6] = { coords = vec3(311.84,-264.91,53.83), visivel = true},
            [7] = { coords = vec3(450.16,-67.6,73.62), visivel = true},
            [8] = { coords = vec3(444.98,121.11,99.51), visivel = true},
            [9] = { coords = vec3(127.35,0.51,67.69), visivel = true},
            [10] = { coords = vec3(-96.92,68.2,71.42), visivel = true},
            [11] = { coords = vec3(-501.91,135.1,63.39), visivel = true},
            [12] = { coords = vec3(-555.72,35.9,45.04), visivel = true},
            [13] = { coords = vec3(-695.87,-7.73,38.08), visivel = true},
            [14] = { coords = vec3(-943.43,-132.52,37.59), visivel = true},
            [15] = { coords = vec3(-1358.5,-361.19,36.61), visivel = true},
            [16] = { coords = vec3(-1525.37,-467.41,35.36), visivel = true},
            [17] = { coords = vec3(-1628.39,-540.44,34.15), visivel = true},
            [18] = { coords = vec3(-1705.18,-404.94,45.76), visivel = true},
            [19] = { coords = vec3(-1999.04,-158.97,29.53), visivel = true},
            [20] = { coords = vec3(-2175.57,-318.29,12.95), visivel = true},
            [21] = { coords = vec3(-2385.6,-252.38,14.92), visivel = true},
            [22] = { coords = vec3(-2753.21,23.6,15.35), visivel = true},
            [23] = { coords = vec3(-2987.44,385.07,14.85), visivel = true},
            [24] = { coords = vec3(-3133.87,864.79,15.47), visivel = true},
            [25] = { coords = vec3(-3093.53,1244.43,20.27), visivel = true},
            [26] = { coords = vec3(-2925.46,2128.4,40.5), visivel = true},
            [27] = { coords = vec3(-2660.33,2576.32,16.7), visivel = true},
            [28] = { coords = vec3(-2480.01,3568.05,14.78), visivel = true},
            [29] = { coords = vec3(-2207.85,4299.82,48.22), visivel = true},
            [30] = { coords = vec3(-1491.89,5004.13,62.82), visivel = true},
            [31] = { coords = vec3(-834.51,5445.74,34.03), visivel = true},
            [32] = { coords = vec3(-262.92,6100.94,31.23), visivel = true},
            [33] = { coords = vec3(111.48,6472.16,31.34), visivel = true},
            [34] = { coords = vec3(444.18,6558.63,27.06), visivel = true},
            [35] = { coords = vec3(1500.3,6427.8,22.65), visivel = true},
            [36] = { coords = vec3(2584.25,5167.63,44.73), visivel = true},
            [37] = { coords = vec3(2801.44,4299.29,50.18), visivel = true},
            [38] = { coords = vec3(2767.76,3392.43,56.01), visivel = true},
            [39] = { coords = vec3(1762.97,2047.39,67.62), visivel = true},
            [40] = { coords = vec3(1642.24,1231.64,85.14), visivel = true},
            [41] = { coords = vec3(1318.43,623.56,80.35), visivel = true},
            [42] = { coords = vec3(1033.83,368.84,90.2), visivel = true},
            [43] = { coords = vec3(846.64,136.06,72.08), visivel = true},
            [44] = { coords = vec3(628.66,-243.19,42.43), visivel = true},
            [45] = { coords = vec3(439.74,-509.89,28.62), visivel = true},
            [46] = { coords = vec3(353.46,-642.9,29.22), visivel = true},
        }
    },

    ["Taxista"] = {
        price = math.random(600,700),
        rotas = {
            [1] = { coords = vec3(72.12,-973.65,29.23), visivel = true},
            [2] = { coords = vec3(306.49,-765.82,29.2), visivel = true},
            [3] = { coords = vec3(108.59,-604.88,44.08), visivel = true},
            [4] = { coords = vec3(2.35,-260.86,47.11), visivel = true},
            [5] = { coords = vec3(163.98,-210.12,54.12), visivel = true},
            [6] = { coords = vec3(311.84,-264.91,53.83), visivel = true},
            [7] = { coords = vec3(450.16,-67.6,73.62), visivel = true},
            [8] = { coords = vec3(444.98,121.11,99.51), visivel = true},
            [9] = { coords = vec3(127.35,0.51,67.69), visivel = true},
            [10] = { coords = vec3(-96.92,68.2,71.42), visivel = true},
            [11] = { coords = vec3(-501.91,135.1,63.39), visivel = true},
            [12] = { coords = vec3(-555.72,35.9,45.04), visivel = true},
            [13] = { coords = vec3(-695.87,-7.73,38.08), visivel = true},
            [14] = { coords = vec3(-943.43,-132.52,37.59), visivel = true},
            [15] = { coords = vec3(-1358.5,-361.19,36.61), visivel = true},
            [16] = { coords = vec3(-1525.37,-467.41,35.36), visivel = true},
            [17] = { coords = vec3(-1628.39,-540.44,34.15), visivel = true},
            [18] = { coords = vec3(-1705.18,-404.94,45.76), visivel = true},
            [19] = { coords = vec3(-1999.04,-158.97,29.53), visivel = true},
            [20] = { coords = vec3(-2175.57,-318.29,12.95), visivel = true},
            [21] = { coords = vec3(-2385.6,-252.38,14.92), visivel = true},
            [22] = { coords = vec3(-2753.21,23.6,15.35), visivel = true},
            [23] = { coords = vec3(-2987.44,385.07,14.85), visivel = true},
            [24] = { coords = vec3(-3133.87,864.79,15.47), visivel = true},
            [25] = { coords = vec3(-3093.53,1244.43,20.27), visivel = true},
            [26] = { coords = vec3(-2925.46,2128.4,40.5), visivel = true},
            [27] = { coords = vec3(-2660.33,2576.32,16.7), visivel = true},
            [28] = { coords = vec3(-2480.01,3568.05,14.78), visivel = true},
            [29] = { coords = vec3(-2207.85,4299.82,48.22), visivel = true},
            [30] = { coords = vec3(-1491.89,5004.13,62.82), visivel = true},
            [31] = { coords = vec3(-834.51,5445.74,34.03), visivel = true},
            [32] = { coords = vec3(-262.92,6100.94,31.23), visivel = true},
            [33] = { coords = vec3(111.48,6472.16,31.34), visivel = true},
            [34] = { coords = vec3(444.18,6558.63,27.06), visivel = true},
            [35] = { coords = vec3(1500.3,6427.8,22.65), visivel = true},
            [36] = { coords = vec3(2584.25,5167.63,44.73), visivel = true},
            [37] = { coords = vec3(2801.44,4299.29,50.18), visivel = true},
            [38] = { coords = vec3(2767.76,3392.43,56.01), visivel = true},
            [39] = { coords = vec3(1762.97,2047.39,67.62), visivel = true},
            [40] = { coords = vec3(1642.24,1231.64,85.14), visivel = true},
            [41] = { coords = vec3(1318.43,623.56,80.35), visivel = true},
            [42] = { coords = vec3(1033.83,368.84,90.2), visivel = true},
            [43] = { coords = vec3(846.64,136.06,72.08), visivel = true},
            [44] = { coords = vec3(628.66,-243.19,42.43), visivel = true},
            [45] = { coords = vec3(439.74,-509.89,28.62), visivel = true},
            [46] = { coords = vec3(353.46,-642.9,29.22), visivel = true},
        }
    },

    ["Entregador"] = {
        price = math.random(600,800),
        rotas = {
            [1] = { coords = vec3(142.32,-1520.65,29.84), visivel = true},
            [2] = { coords = vec3(16.12,-1032.38,29.46), visivel = true},
            [3] = { coords = vec3(488.48,-898.53,25.94), visivel = true},
            [4] = { coords = vec3(642.02,260.61,103.3), visivel = true},
            [5] = { coords = vec3(-955.64,463.39,80.03), visivel = true},
            [6] = { coords = vec3(-668.3,-971.64,22.35), visivel = true},
            [7] = { coords = vec3(-178.89,314.28,97.95), visivel = true},
            [8] = { coords = vec3(215.66,294.51,105.59), visivel = true},
            [9] = { coords = vec3(-81.13,-1326.22,29.27), visivel = true},
            [10] = { coords = vec3(-428.64,-1728.3,19.79), visivel = true},
            [11] = { coords = vec3(886.44,-1587.82,30.96), visivel = true},
            [12] = { coords = vec3(1367.24,-605.92,74.72), visivel = true},
            [13] = { coords = vec3(814.39,-93.47,80.6), visivel = true},
            [14] = { coords = vec3(206.44,-85.58,69.23), visivel = true},
            [15] = { coords = vec3(244.78,-41.2,69.9), visivel = true},
            [16] = { coords = vec3(292.33,-162.58,64.62), visivel = true},
            [17] = { coords = vec3(-584.75,-896.99,25.95), visivel = true},
            [18] = { coords = vec3(-1090.74,-926.23,3.14), visivel = true},
            [19] = { coords = vec3(-519.81,-677.56,33.68), visivel = true},
            [20] = { coords = vec3(-1095.05,-325.38,37.83), visivel = true},
            [21] = { coords = vec3(-724.86,123.85,56.58), visivel = true},
        }
    },

    ["Lenhador"] = {
        rotas = {
            [1] = { coords = vec(-1572.21,4503.46,21.08), visivel = true},
            [2] = { coords = vec(-1578.40,4511.57,20.01), visivel = true},
            [3] = { coords = vec(-1581.37,4513.21,19.61), visivel = true},
            [4] = { coords = vec(-1583.76,4515.34,19.12), visivel = true},
            [5] = { coords = vec(-1585.77,4517.43,18.69), visivel = true},
            [6] = { coords = vec(-1592.50,4516.11,17.90), visivel = true},
            [7] = { coords = vec(-1591.42,4513.11,18.72), visivel = true},
            [8] = { coords = vec(-1599.48,4516.98,16.56), visivel = true},
            [9] = { coords = vec(-1599.46,4509.56,18.33), visivel = true},
            [10] = { coords = vec( -1591.53,4503.52,20.42), visivel = true},
            [11] = { coords = vec(-1592.89,4500.82,20.46), visivel = true},
            [12] = { coords = vec(-1596.87,4496.79,20.09), visivel = true},
            [13] = { coords = vec(-1597.69,4488.00,18.75), visivel = true},
            [14] = { coords = vec(-1603.97,4484.48,17.13), visivel = true},
            [15] = { coords = vec(-1592.72,4485.04,17.27), visivel = true},
            [16] = { coords = vec(-1589.83,4488.52,18.73), visivel = true},
            [17] = { coords = vec(-1584.59,4491.67,20.71), visivel = true},
            [18] = { coords = vec(-1581.03,4495.48,21.37), visivel = true},
            [19] = { coords = vec(-1574.47,4497.08,21.75), visivel = true},
            [20] = { coords = vec(-1574.86,4492.36,22.45), visivel = true},
        }
    },

    ["Pescador"] = {
        rotas = {
            [1] = { coords = vec3( 1106.27,-569.12,55.34 ), visivel = true},
        }
    },

    ["Graos"] = {
        rotas = {
            [1] = { coords = vec3(737.85,6456.1,31.61), visivel = true},
            [2] = { coords = vec3(715.7,6457.47,30.4), visivel = true},
            [3] = { coords = vec3(696.5,6457.79,30.37), visivel = true},
            [4] = { coords = vec3(654.7,6457.8,30.8), visivel = true},
            [5] = { coords = vec3(629.05,6458.43,29.73), visivel = true},
            [6] = { coords = vec3(615.94,6463.86,29.41), visivel = true},
            [7] = { coords = vec3(634.44,6463.72,29.72), visivel = true},
            [8] = { coords = vec3(656.7,6462.79,30.51), visivel = true},
            [9] = { coords = vec3(682.24,6462.67,30.37), visivel = true},
            [10] = { coords = vec3(714.78,6462.47,30.13), visivel = true},
            [11] = { coords = vec3(741.87,6461.8,30.89), visivel = true},
            [12] = { coords = vec3(734.29,6465.73,30.37), visivel = true},
            [13] = { coords = vec3(715.48,6466.73,29.59), visivel = true},
            [14] = { coords = vec3(695.1,6467.43,29.97), visivel = true},
            [15] = { coords = vec3(668.77,6467.33,30.02), visivel = true},
            [16] = { coords = vec3(646.27,6467.8,30.1), visivel = true},
            [17] = { coords = vec3(622.51,6468.3,29.45), visivel = true},
            [18] = { coords = vec3(614.72,6474.9,29.4), visivel = true},
            [19] = { coords = vec3(632.1,6475.1,30.01), visivel = true},
            [20] = { coords = vec3(666.82,6474.98,29.8), visivel = true},
            [21] = { coords = vec3(697.3,6474.98,29.13), visivel = true},
            [22] = { coords = vec3(724.89,6474.53,28.58), visivel = true},
            [23] = { coords = vec3(743.12,6474.06,28.13), visivel = true},
            [24] = { coords = vec3(685.79,6481.78,29.22), visivel = true},
            [25] = { coords = vec3(655.26,6482.03,29.88), visivel = true},
            [26] = { coords = vec3(629.2,6482.46,30.26), visivel = true},
            [27] = { coords = vec3(621.31,6490.1,29.59), visivel = true},
            [28] = { coords = vec3(639.89,6489.84,29.56), visivel = true},
        }
    },

    ["Tartaruga"] = {
        rotas = {
            [1] = { coords = vec3( 4279.22,4352.34,-61.17 ), visivel = true},
            [2] = { coords = vec3( 4303.63,4355.72,-64.13 ), visivel = true},
            [3] = { coords = vec3( 4308.17,4388.97,-71.49 ), visivel = true},
            [4] = { coords = vec3( 4264.9,4411.96,-63.25 ), visivel = true},
            [5] = { coords = vec3( 4231.47,4399.01,-46.31 ), visivel = true},
            [6] = { coords = vec3( 3649.6,5171.0,-36.23 ), visivel = true},
            [7] = { coords = vec3( 3638.02,5193.51,-42.01 ), visivel = true},
            [8] = { coords = vec3( 3658.07,5212.98,-41.69 ), visivel = true},
            [9] = { coords = vec3( 3686.47,5194.66,-38.46 ), visivel = true},
            [10] = { coords = vec3( 3705.88,5176.91,-42.19 ), visivel = true},
            [11] = { coords = vec3( 3729.64,5159.02,-48.6 ), visivel = true},
            [12] = { coords = vec3( 3751.45,5164.04,-52.75 ), visivel = true},
            [13] = { coords = vec3( 3767.01,5197.16,-49.36 ), visivel = true},
            [14] = { coords = vec3( 3814.96,5186.91,-57.84 ), visivel = true},
            [15] = { coords = vec3( 3827.99,5159.06,-56.29 ), visivel = true},
            [16] = { coords = vec3( 3813.19,5127.87,-56.94 ), visivel = true},
            [17] = { coords = vec3( 3817.73,5098.16,-56.45 ), visivel = true},
            [18] = { coords = vec3( 3859.49,5068.17,-53.53 ), visivel = true},
            [19] = { coords = vec3( 3894.67,5050.74,-53.45 ), visivel = true},
            [20] = { coords = vec3( 950.13,6863.37,-11.35 ), visivel = true},
            [21] = { coords = vec3( 951.85,6832.3,-11.82 ), visivel = true},
            [22] = { coords = vec3( 915.23,6819.71,-11.27 ), visivel = true},
            [23] = { coords = vec3( 898.89,6849.6,-10.15 ), visivel = true},
            [24] = { coords = vec3( 899.53,6883.4,-10.47 ), visivel = true},
            [25] = { coords = vec3( 914.23,6934.32,-10.74 ), visivel = true},
            [26] = { coords = vec3( 951.26,6952.27,-9.11 ), visivel = true},
            [27] = { coords = vec3( 995.16,6954.72,-13.08 ), visivel = true},
            [28] = { coords = vec3( 1036.33,6934.91,-13.6 ), visivel = true},
            [29] = { coords = vec3( 1037.24,6889.96,-11.76 ), visivel = true},
            [30] = { coords = vec3( 1021.43,6861.89,-11.07 ), visivel = true},
            [31] = { coords = vec3( 996.81,6834.82,-9.78 ), visivel = true},
        }
    }
}