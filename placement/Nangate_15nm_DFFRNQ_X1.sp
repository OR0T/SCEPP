*
********************************************************************************
* 
* ******************************************************************************
* *                                                                            *
* *                   Copyright (C) 2004-2014, Nangate Inc.                    *
* *                           All rights reserved.                             *
* *                                                                            *
* * Nangate and the Nangate logo are trademarks of Nangate Inc.                *
* *                                                                            *
* * All trademarks, logos, software marks, and trade names (collectively the   *
* * "Marks") in this program are proprietary to Nangate or other respective    *
* * owners that have granted Nangate the right and license to use such Marks.  *
* * You are not permitted to use the Marks without the prior written consent   *
* * of Nangate or such third party that may own the Marks.                     *
* *                                                                            *
* * This file has been provided pursuant to a License Agreement containing     *
* * restrictions on its use. This file contains valuable trade secrets and     *
* * proprietary information of Nangate Inc., and is protected by U.S. and      *
* * international laws and/or treaties.                                        *
* *                                                                            *
* * The copyright notice(s) in this file does not indicate actual or intended  *
* * publication of this file.                                                  *
* *                                                                            *
* *        NGLibraryCreator, v2014.01-QR01-SP2_64 - build 201403252143         *
* *                                                                            *
* ******************************************************************************
* 
* 
* Running on us19.nangate.us for user Jody Maick Matos (jmm).
* Local time is now Wed, 7 May 2014, 16:55:34.
* Main process id is 9588.
*
********************************************************************************
*                                                                              *
* Cellname:   DFFRNQ_X1.                                                       *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 16:55:34 on Wed, 7 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT DFFRNQ_X1 D RN CLK Q VDD VNW VPW VSS 
*.PININFO D:I RN:I CLK:I Q:O VDD:B VNW:B VPW:B VSS:B 
M_tn10 VSS CLK ncki VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn13 cki ncki VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn11 net10 D VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn15 net1 ncki net10 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn14 net15 cki net1 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn8 net12 net2 net15 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn9 VSS RN net12 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn18 net2 net1 VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn0 net8 cki net2 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn1 net11 ncki net8 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn12 VSS net4 net11 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn5 net0 RN VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn4 net4 net8 net0 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn3 VSS net4 Q VPW nfet W=0.288000U L=0.020000U nfin=7
M_tp8 VDD CLK ncki VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp11 cki ncki VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp9 net10 D VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp15 net1 cki net10 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp7 net9 ncki net1 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp6 VDD net2 net9 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp12 net9 RN VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp18 net2 net1 VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp2 net8 ncki net2 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp3 net11 cki net8 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp10 VDD net4 net11 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp5 net4 RN VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp4 VDD net8 net4 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp1 VDD net4 Q VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
