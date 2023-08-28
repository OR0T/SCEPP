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
* Running on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm).
* Local time is now Fri, 23 May 2014, 16:56:14.
* Main process id is 25172.
*
********************************************************************************
*                                                                              *
* Cellname:   DFFSNQ_X1.                                                       *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 16:56:14 on Fri, 23 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT DFFSNQ_X1 D SN CLK Q VDD VNW VPW VSS 
*.PININFO D:I SN:I CLK:I Q:O VDD:B VNW:B VPW:B VSS:B 
M_tn10 VSS CLK ncki VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn13 cki ncki VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn11 net10 D VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn15 net1 ncki net10 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn14 net15 cki net1 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn8 VSS net2 net15 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn9 net_0 SN VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn18 net2 net1 net_0 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn0 net8 cki net2 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn1 net_3 ncki net8 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn12 net_1 net4 net_3 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn5 VSS SN net_1 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn4 net4 net8 VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn3 VSS net4 Q VPW nfet W=0.288000U L=0.020000U nfin=7
M_tp8 VDD CLK ncki VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp11 cki ncki VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp9 net10 D VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp15 net1 cki net10 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp7 net9 ncki net1 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp6 VDD net2 net9 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp12 net2 SN VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp18 net2 net1 VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp2 net8 ncki net2 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp3 net_2 cki net8 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp10 VDD net4 net_2 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp5 net_2 SN VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp4 VDD net8 net4 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp1 VDD net4 Q VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
