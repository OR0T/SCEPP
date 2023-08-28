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
* *       NGLibraryCreator, Development_version_64 - build 201404300500        *
* *                                                                            *
* ******************************************************************************
* 
* 
* Running on us21.nangate.us for user Guilherme Simoes Schlinker (gss).
* Local time is now Wed, 30 Apr 2014, 14:50:25.
* Main process id is 26458.
*
********************************************************************************
*                                                                              *
* Cellname:   AND2_X1.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us21.nangate.us for user Guilherme Simoes Schlinker (gss)         *
* at 14:50:25 on Wed, 30 Apr 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT AND2_X1 A1 A2 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 net_0 A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 Z_neg A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5 Z_neg A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 VDD A1 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Thu, 1 May 2014, 08:46:56.
* Main process id is 3703.
*
********************************************************************************
*                                                                              *
* Cellname:   AND2_X2.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 08:46:56 on Thu, 1 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AND2_X2 A1 A2 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 net_0 A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 Z_neg A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5 Z_neg A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 VDD A1 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 09:01:40.
* Main process id is 25654.
*
********************************************************************************
*                                                                              *
* Cellname:   AND3_X1.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:01:40 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AND3_X1 A1 A2 A3 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_4 net_1 A3 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 net_0 A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 Z_neg A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7 Z_neg A3 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 VDD A2 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 Z_neg A1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Thu, 1 May 2014, 17:24:31.
* Main process id is 25654.
*
********************************************************************************
*                                                                              *
* Cellname:   AND3_X2.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 17:24:31 on Thu, 1 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AND3_X2 A1 A2 A3 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 net_0 A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 Z_neg A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 VSS A3 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_6 Z_neg A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 VDD A1 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7 VDD A3 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Thu, 1 May 2014, 18:31:14.
* Main process id is 25654.
*
********************************************************************************
*                                                                              *
* Cellname:   AND4_X1.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 18:31:14 on Thu, 1 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AND4_X1 A1 A2 A3 A4 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I A4:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_5 net_2 A4 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 net_1 A3 net_2 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 net_0 A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 Z_neg A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_9 Z_neg A4 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_8 VDD A3 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7 Z_neg A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 VDD A1 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Thu, 1 May 2014, 19:08:32.
* Main process id is 25654.
*
********************************************************************************
*                                                                              *
* Cellname:   AND4_X2.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 19:08:32 on Thu, 1 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AND4_X2 A1 A2 A3 A4 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I A4:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_5 net_2 A4 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 net_1 A3 net_2 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 net_0 A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 Z_neg A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_9 Z_neg A4 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_8 VDD A3 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7 Z_neg A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 VDD A1 Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 10:28:51.
* Main process id is 25654.
*
********************************************************************************
*                                                                              *
* Cellname:   AOI21_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 10:28:51 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AOI21_X1 A1 A2 B ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I B:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_1 net_0 A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS B ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 ZN A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3 net_1 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 VDD B net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 13:25:06.
* Main process id is 22114.
*
********************************************************************************
*                                                                              *
* Cellname:   AOI21_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 13:25:06 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AOI21_X2 A1 A2 B ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I B:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_0 ZN B VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 VSS B ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 net_0 A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 net_0 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VSS A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5_0 VDD B net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_1 net_1 B VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_0 ZN A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 net_1 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 ZN A1 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_1 net_1 A2 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 12:25:36.
* Main process id is 25654.
*
********************************************************************************
*                                                                              *
* Cellname:   AOI22_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 12:25:36 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AOI22_X1 A1 A2 B1 B2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I B1:I B2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 net_1 B2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 ZN B1 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 net_0 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 VSS A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7 net_2 B2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 VDD B1 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 ZN A1 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 net_2 A2 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 16:23:34.
* Main process id is 8541.
*
********************************************************************************
*                                                                              *
* Cellname:   AOI22_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 16:23:34 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AOI22_X2 A1 A2 B1 B2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I B1:I B2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_3_1 net_1 B2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 VSS B2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 net_1 B1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_0 ZN B1 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 net_0 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VSS A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 net_0 A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7_1 net_2 B2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7_0 VDD B2 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6_1 VDD B1 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6_0 net_2 B1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_1 ZN A1 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_1 net_2 A2 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_0 ZN A2 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_0 net_2 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 14:50:34.
* Main process id is 25654.
*
********************************************************************************
*                                                                              *
* Cellname:   BUF_X1.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 14:50:34 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT BUF_X1 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 09:10:09.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   BUF_X12.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:10:09 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT BUF_X12 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_0 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_2 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_3 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_4 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_5 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_2 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_3 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_4 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_5 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_6 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_7 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_8 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_9 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_10 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_11 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_2 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_3 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_4 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_5 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_4 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_5 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_6 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_7 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_8 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_9 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_10 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_11 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 09:54:32.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   BUF_X16.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:54:32 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT BUF_X16 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_0 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_2 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_3 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_4 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_5 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_6 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_7 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_2 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_3 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_4 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_5 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_6 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_7 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_8 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_9 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_10 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_11 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_12 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_13 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_14 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_15 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_2 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_3 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_4 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_5 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_6 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_7 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_4 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_5 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_6 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_7 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_8 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_9 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_10 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_11 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_12 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_13 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_14 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_15 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 17:06:02.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   BUF_X2.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 17:06:02 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT BUF_X2 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1_x2_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1_x2_1 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1_x2_0 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1_x2_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 20:08:14.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   BUF_X4.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 20:08:14 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT BUF_X4 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_0 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_2 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_3 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 08:49:22.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   BUF_X8.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 08:49:22 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT BUF_X8 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_3 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_2 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_0 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_7 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_6 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_5 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_4 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_3 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_2 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3_3 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_2 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_7 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_6 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_5 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_4 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 14:50:34.
* Main process id is 25654.
*
********************************************************************************
*                                                                              *
* Cellname:   CLKBUF_X1.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 14:50:34 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT CLKBUF_X1 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2 Z_neg I VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6

M_i_3 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Wed, 21 May 2014, 11:37:08.
* Main process id is 18690.
*
********************************************************************************
*                                                                              *
* Cellname:   CLKBUF_X12.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 11:37:08 on Wed, 21 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT CLKBUF_X12 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_0 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U
M_i_2_1 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U
M_i_2_2 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U
M_i_2_3 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U
M_i_2_4 Z_neg I VSS VPW nfet W=0.288000U L=0.020000U
M_i_2_5 VSS I Z_neg VPW nfet W=0.288000U L=0.020000U
M_i_0_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U
M_i_0_1 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U
M_i_0_2 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U
M_i_0_3 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U
M_i_0_4 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U
M_i_0_5 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U
M_i_0_6 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U
M_i_0_7 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U
M_i_0_8 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U
M_i_0_9 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U
M_i_0_10 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U
M_i_0_11 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U
M_i_3_0 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U
M_i_3_1 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U
M_i_3_2 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U
M_i_3_3 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U
M_i_3_4 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U
M_i_3_5 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U
M_i_1_0 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U
M_i_1_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U
M_i_1_2 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U
M_i_1_3 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U
M_i_1_4 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U
M_i_1_5 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U
M_i_1_6 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U
M_i_1_7 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U
M_i_1_8 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U
M_i_1_9 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U
M_i_1_10 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U
M_i_1_11 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 09:54:32.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   CLKBUF_X16.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:54:32 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT CLKBUF_X16 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_0 Z_neg I VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_1 VSS I Z_neg VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_2 Z_neg I VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_3 VSS I Z_neg VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_4 Z_neg I VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_5 VSS I Z_neg VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_6 Z_neg I VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_7 VSS I Z_neg VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_0 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_1 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_2 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_3 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_4 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_5 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_6 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_7 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_8 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_9 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_10 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_11 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_12 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_13 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_14 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_15 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6

M_i_3_0 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_2 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_3 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_4 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_5 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_6 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_7 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_4 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_5 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_6 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_7 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_8 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_9 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_10 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_11 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_12 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_13 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_14 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_15 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 17:06:02.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   CLKBUF_X2.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 17:06:02 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT CLKBUF_X2 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2 VSS I Z_neg VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_1_x2_0 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_1_x2_1 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6

M_i_3 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1_x2_0 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1_x2_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 20:08:14.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   CLKBUF_X4.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 20:08:14 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT CLKBUF_X4 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_0 Z_neg I VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_1 VSS I Z_neg VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_0 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_1 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_2 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_3 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6 

M_i_3_0 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 08:49:22.
* Main process id is 7969.
*
********************************************************************************
*                                                                              *
* Cellname:   CLKBUF_X8.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 08:49:22 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT CLKBUF_X8 I Z VDD VNW VPW VSS 
*.PININFO I:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_3 Z_neg I VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_2 VSS I Z_neg VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_1 Z_neg I VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_2_0 VSS I Z_neg VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_7 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_6 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_5 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_4 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_3 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_2 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_1 Z Z_neg VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_i_0_0 VSS Z_neg Z VPW nfet W=0.248000U L=0.020000U nfin=6

M_i_3_3 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_2 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 Z_neg I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 VDD I Z_neg VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_7 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_6 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_5 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_4 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* *        NGLibraryCreator, v2013.11-QR08-SP3_64 - build 201401301945         *
* *                                                                            *
* ******************************************************************************
* 

.SUBCKT CLKGATETST_X1 CLK E TE Q VDD VNW VPW VSS 
*.PININFO CLK:I E:I TE:I Q:O VDD:B VNW:B VPW:B VSS:B 

M_MU19 net50 TE VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_MU20 VSS E net50 VPW nfet W=0.168000U L=0.020000U nfin=4
M_MI82 net50 NCK net53 VPW nfet W=0.168000U L=0.020000U nfin=4
M_MI91 net53 CK net033 VPW nfet W=0.168000U L=0.020000U nfin=4
M_MI92 net033 QD VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_MI80_M_u2 VSS net53 QD VPW nfet W=0.168000U L=0.020000U nfin=4
M_MU82_M_u2 VSS NCK CK VPW nfet W=0.168000U L=0.020000U nfin=4
M_MU81_M_u2 NCK CLK VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_MI85_M_u3 XI85-net6 CLK d3 VPW nfet W=0.168000U L=0.020000U nfin=4
M_MI85_M_u4 VSS QD XI85-net6 VPW nfet W=0.168000U L=0.020000U nfin=4
M_MU75_M_u2 Q d3 VSS VPW nfet W=0.248000U L=0.020000U nfin=6

M_MI81 VDD TE net58 VNW pfet W=0.248000U L=0.020000U nfin=6
M_MU17 net58 E net61 VNW pfet W=0.248000U L=0.020000U nfin=6
M_MU16 net61 CK net53 VNW pfet W=0.248000U L=0.020000U nfin=6
M_MI90 net53 NCK net062 VNW pfet W=0.248000U L=0.020000U nfin=6
M_MI88 net062 QD VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_MI80_M_u3 VDD net53 QD VNW pfet W=0.248000U L=0.020000U nfin=6
M_MU82_M_u3 CK NCK VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_MU81_M_u3 VDD CLK NCK VNW pfet W=0.248000U L=0.020000U nfin=6
M_MI85_M_u1 d3 CLK VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_MI85_M_u2 VDD QD d3 VNW pfet W=0.248000U L=0.020000U nfin=6
M_MU75_M_u3 Q d3 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Wed, 7 May 2014, 10:10:12.
* Main process id is 9588.
*
********************************************************************************
*                                                                              *
* Cellname:   FA_X1.                                                           *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 10:10:12 on Wed, 7 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT FA_X1 A B CI CO S VDD VNW VPW VSS 
*.PININFO A:I B:I CI:I CO:O S:O VDD:B VNW:B VPW:B VSS:B 
M_M50 net49 A VSS VPW nfet W=0.128000U L=0.020000U nfin=3
M_M48 net47 B net49 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M46 net9 CI net47 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M41 net42 net7 net9 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M43 VSS A net42 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M44 net42 B VSS VPW nfet W=0.128000U L=0.020000U nfin=3
M_M45 VSS CI net42 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M51 S net9 VSS VPW nfet W=0.248000U L=0.020000U nfin=6
M_M40 VSS B net5 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M39 net5 A VSS VPW nfet W=0.128000U L=0.020000U nfin=3
M_M38 net7 CI net5 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M37 net36 B net7 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M35 VSS A net36 VPW nfet W=0.128000U L=0.020000U nfin=3
M_M34 CO net7 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_M32 net31 A VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_M30 net29 B net31 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M28 net9 CI net29 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M24 net3 net7 net9 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M25 VDD A net3 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M26 net3 B VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_M27 VDD CI net3 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M33 S net9 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_M23 VDD B net1 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M22 net1 A VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_M21 net7 CI net1 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M20 net19 B net7 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M18 VDD A net19 VNW pfet W=0.168000U L=0.020000U nfin=4
M_M17 CO net7 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Tue, 6 May 2014, 15:54:27.
* Main process id is 7244.
*
********************************************************************************
*                                                                              *
* Cellname:   HA_X1.                                                           *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 15:54:27 on Tue, 6 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT HA_X1 A B CO S VDD VNW VPW VSS 
*.PININFO A:I B:I CO:O S:O VDD:B VNW:B VPW:B VSS:B 
M_i_2 CO NCO VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5 net_0 A VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_i_4 NCO B net_0 VPW nfet W=0.168000U L=0.020000U nfin=4
M_i_9 NS B net_1 VPW nfet W=0.168000U L=0.020000U nfin=4
M_i_8 net_1 A NS VPW nfet W=0.168000U L=0.020000U nfin=4
M_i_10 VSS NCO net_1 VPW nfet W=0.168000U L=0.020000U nfin=4
M_i_0 VSS NS S VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 CO NCO VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7 NCO A VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_i_6 VDD B NCO VNW pfet W=0.168000U L=0.020000U nfin=4
M_i_12 net_2 B VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_i_11 NS A net_2 VNW pfet W=0.168000U L=0.020000U nfin=4
M_i_13 VDD NCO NS VNW pfet W=0.168000U L=0.020000U nfin=4
M_i_1 VDD NS S VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Wed, 30 Apr 2014, 16:13:01.
* Main process id is 1264.
*
********************************************************************************
*                                                                              *
* Cellname:   INV_X1.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 16:13:01 on Wed, 30 Apr 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT INV_X1 I ZN VDD VNW VPW VSS 
*.PININFO I:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Thu, 1 May 2014, 09:58:31.
* Main process id is 1264.
*
********************************************************************************
*                                                                              *
* Cellname:   INV_X12.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 09:58:31 on Thu, 1 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT INV_X12 I ZN VDD VNW VPW VSS 
*.PININFO I:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0_0 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_2 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_3 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_4 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_5 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_6 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_7 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_8 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_9 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_10 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_11 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_4 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_5 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_6 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_7 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_8 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_9 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_10 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_11 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Thu, 1 May 2014, 15:09:24.
* Main process id is 8203.
*
********************************************************************************
*                                                                              *
* Cellname:   INV_X16.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 15:09:24 on Thu, 1 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT INV_X16 I ZN VDD VNW VPW VSS 
*.PININFO I:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0_0 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_2 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_3 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_4 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_5 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_6 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_7 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_8 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_9 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_10 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_11 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_12 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_13 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_14 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_15 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_4 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_5 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_6 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_7 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_8 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_9 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_10 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_11 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_12 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_13 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_14 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_15 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Wed, 30 Apr 2014, 16:13:12.
* Main process id is 1264.
*
********************************************************************************
*                                                                              *
* Cellname:   INV_X2.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 16:13:12 on Wed, 30 Apr 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT INV_X2 I ZN VDD VNW VPW VSS 
*.PININFO I:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0_0 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Wed, 30 Apr 2014, 16:40:49.
* Main process id is 1264.
*
********************************************************************************
*                                                                              *
* Cellname:   INV_X4.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 16:40:49 on Wed, 30 Apr 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT INV_X4 I ZN VDD VNW VPW VSS 
*.PININFO I:I ZN:O VDD:B VNW:B VPW:B VSS:B
M_i_0_0 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_2 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_3 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Wed, 30 Apr 2014, 18:37:59.
* Main process id is 1264.
*
********************************************************************************
*                                                                              *
* Cellname:   INV_X8.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 18:37:59 on Wed, 30 Apr 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT INV_X8 I ZN VDD VNW VPW VSS 
*.PININFO I:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0_0 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_2 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_3 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_4 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_5 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_6 ZN I VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_7 VSS I ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_2 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_3 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_4 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_5 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_6 ZN I VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_7 VDD I ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Wed, 7 May 2014, 15:07:02.
* Main process id is 32631.
*
********************************************************************************
*                                                                              *
* Cellname:   LHQ_X1.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 15:07:02 on Wed, 7 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT LHQ_X1 D E Q VDD VNW VPW VSS 
*.PININFO D:I E:I Q:O VDD:B VNW:B VPW:B VSS:B 
M_tn0 net4 E VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn8 net7 net4 VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn4 net3 D VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn5 net5 net7 net3 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn1 net2 net4 net5 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn2 VSS net6 net2 VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn3 net6 net5 VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn6 Q net5 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_tp0 net4 E VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp8 net7 net4 VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp5 net1 D VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp4 net5 net4 net1 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp2 net0 net7 net5 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp1 VDD net6 net0 VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp3 net6 net5 VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp6 Q net5 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Tue, 6 May 2014, 11:21:55.
* Main process id is 9588.
*
********************************************************************************
*                                                                              *
* Cellname:   MUX2_X1.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 11:21:55 on Tue, 6 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT MUX2_X1 I0 I1 S Z VDD VNW VPW VSS 
*.PININFO I0:I I1:I S:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_MN1 sel1_n S VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_MN4 net_1 I1 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_MN8 int04 S net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_MN7 net_3 sel1_n int04 VPW nfet W=0.288000U L=0.020000U nfin=7
M_MN3 VSS I0 net_3 VPW nfet W=0.288000U L=0.020000U nfin=7
M_MN2 VSS int04 Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_MP1 sel1_n S VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_MP4 net_0 I1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_MP8 int04 sel1_n net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_MP7 net_2 S int04 VNW pfet W=0.288000U L=0.020000U nfin=7
M_MP3 VDD I0 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_MP5 VDD int04 Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Thu, 1 May 2014, 15:38:36.
* Main process id is 8203.
*
********************************************************************************
*                                                                              *
* Cellname:   NAND2_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 15:38:36 on Thu, 1 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NAND2_X1 A1 A2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_1 net_0 A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 ZN A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_2 VDD A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Thu, 1 May 2014, 18:19:32.
* Main process id is 24437.
*
********************************************************************************
*                                                                              *
* Cellname:   NAND2_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 18:19:32 on Thu, 1 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NAND2_X2 A1 A2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_1_1 net_0_0 A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 ZN A1 net_0_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 net_0_1 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VSS A2 net_0_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 ZN A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 VDD A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_2_0 ZN A1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 VDD A2 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 10:03:24.
* Main process id is 808.
*
********************************************************************************
*                                                                              *
* Cellname:   NAND3_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 10:03:24 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NAND3_X1 A1 A2 A3 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_2 net_1 A3 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 net_0 A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5 ZN A3 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 VDD A2 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3 ZN A1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 12:32:12.
* Main process id is 8286.
*
********************************************************************************
*                                                                              *
* Cellname:   NAND3_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 12:32:12 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NAND3_X2 A1 A2 A3 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_0 net_1 A3 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 VSS A3 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 net_1 A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 net_0 A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 net_0 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5_0 ZN A3 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_1 VDD A3 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_1 ZN A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_0 VDD A2 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 ZN A1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 VDD A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 16:03:27.
* Main process id is 8286.
*
********************************************************************************
*                                                                              *
* Cellname:   NAND4_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 16:03:28 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NAND4_X1 A1 A2 A3 A4 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I A4:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 net_2 A4 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 net_1 A3 net_2 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 net_0 A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7 ZN A4 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 VDD A3 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 ZN A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 VDD A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 2 May 2014, 17:41:11.
* Main process id is 8286.
*
********************************************************************************
*                                                                              *
* Cellname:   NAND4_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 17:41:11 on Fri, 2 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NAND4_X2 A1 A2 A3 A4 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I A4:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_3_0 VSS A4 net_2 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 net_2 A4 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_0 net_1 A3 net_2 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 net_2 A3 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 net_1 A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 net_0 A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 net_0 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7_0 ZN A4 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7_1 VDD A4 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6_0 ZN A3 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6_1 VDD A3 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_0 ZN A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_1 VDD A2 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_0 ZN A1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_1 VDD A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 9 May 2014, 11:23:25.
* Main process id is 10870.
*
********************************************************************************
*                                                                              *
* Cellname:   NOR2_X1.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 11:23:25 on Fri, 9 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NOR2_X1 A1 A2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0 VSS A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 VSS A2 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 net_0 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3 VDD A2 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 9 May 2014, 11:23:25.
* Main process id is 10870.
*
********************************************************************************
*                                                                              *
* Cellname:   NOR2_X2.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 11:23:25 on Fri, 9 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NOR2_X2 A1 A2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0 VSS A1 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_1 VSS A2 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_2 net_0 A1 ZN VNW pfet W=0.576000U L=0.020000U nfin=14.2
M_i_3 VDD A2 net_0 VNW pfet W=0.576000U L=0.020000U nfin=14.2
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 9 May 2014, 11:23:25.
* Main process id is 10870.
*
********************************************************************************
*                                                                              *
* Cellname:   NOR3_X1.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 11:23:26 on Fri, 9 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NOR3_X1 A1 A2 A3 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0 VSS A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 VSS A2 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS A3 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 net_0 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 net_1 A2 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 VDD A3 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 9 May 2014, 11:23:26.
* Main process id is 10870.
*
********************************************************************************
*                                                                              *
* Cellname:   NOR3_X2.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 11:23:26 on Fri, 9 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NOR3_X2 A1 A2 A3 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0 VSS A1 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_1 VSS A2 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_2 VSS A3 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_3 net_0 A1 ZN VNW pfet W=0.576000U L=0.020000U nfin=14.2
M_i_4 net_1 A2 net_0 VNW pfet W=0.576000U L=0.020000U nfin=14.2
M_i_5 VDD A3 net_1 VNW pfet W=0.576000U L=0.020000U nfin=14.2
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 9 May 2014, 11:23:25.
* Main process id is 10870.
*
********************************************************************************
*                                                                              *
* Cellname:   NOR4_X1.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 11:23:25 on Fri, 9 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NOR4_X1 A1 A2 A3 A4 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I A4:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0 VSS A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 VSS A2 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS A3 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 VSS A4 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 net_0 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 net_1 A2 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 net_2 A3 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7 VDD A4 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 9 May 2014, 11:23:26.
* Main process id is 10870.
*
********************************************************************************
*                                                                              *
* Cellname:   NOR4_X2.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 11:23:26 on Fri, 9 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT NOR4_X2 A1 A2 A3 A4 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I A4:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0 VSS A1 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_1 VSS A2 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_2 VSS A3 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_3 VSS A4 ZN VPW nfet W=0.576000U L=0.020000U nfin=14.2
M_i_4 net_0 A1 ZN VNW pfet W=0.576000U L=0.020000U nfin=14.2
M_i_5 net_1 A2 net_0 VNW pfet W=0.576000U L=0.020000U nfin=14.2
M_i_6 net_2 A3 net_1 VNW pfet W=0.576000U L=0.020000U nfin=14.2
M_i_7 VDD A4 net_2 VNW pfet W=0.576000U L=0.020000U nfin=14.2
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:49.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OAI21_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:49 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OAI21_X1 A1 A2 B ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I B:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_1 ZN A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 net_0 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS B net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 net_1 A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3 ZN A1 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 VDD B ZN VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:50.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OAI21_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:50 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OAI21_X2 A1 A2 B ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I B:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_2_1 VSS B net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_0 net_0 B VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 ZN A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 net_0 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 ZN A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5_1 ZN B VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_0 VDD B ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_1 net_1 A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_1 ZN A1 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 net_1 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_0 VDD A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:49.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OAI22_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:49 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OAI22_X1 A1 A2 B1 B2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I B1:I B2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 net_0 B2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS B1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 net_0 A2 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7 net_2 B2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 ZN B1 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 net_1 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 VDD A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:49.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OAI22_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:49 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OAI22_X2 A1 A2 B1 B2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I B1:I B2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_3_1 net_0 B2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3_0 VSS B2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_1 VSS B1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2_0 net_0 B1 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 ZN A1 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 net_0 A2 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 ZN A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 net_0 A1 ZN VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7_1 net_2 B2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7_0 VDD B2 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6_1 net_2 B1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6_0 ZN B1 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_1 net_1 A1 ZN VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_1 VDD A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5_0 net_1 A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4_0 ZN A1 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:50.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OR2_X1.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:50 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OR2_X1 A1 A2 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 Z_neg A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS A1 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5 net_0 A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 Z_neg A1 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:49.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OR2_X2.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:49 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OR2_X2 A1 A2 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 Z_neg A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS A1 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_5 net_0 A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 Z_neg A1 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:49.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OR3_X1.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:49 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OR3_X1 A1 A2 A3 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_4 Z_neg A3 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 VSS A2 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 Z_neg A1 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7 net_1 A3 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 net_0 A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 Z_neg A1 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:49.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OR3_X2.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:49 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OR3_X2 A1 A2 A3 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_3 Z_neg A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS A1 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 VSS A3 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_6 net_0 A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 Z_neg A1 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7 VDD A3 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:49.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OR4_X1.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:49 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OR4_X1 A1 A2 A3 A4 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I A4:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_5 Z_neg A4 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 VSS A3 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 Z_neg A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS A1 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_9 net_2 A4 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_8 net_1 A3 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7 net_0 A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 Z_neg A1 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 12 May 2014, 09:21:49.
* Main process id is 24027.
*
********************************************************************************
*                                                                              *
* Cellname:   OR4_X2.                                                          *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Mayler Gama Alvarenga Martins (mgm)      *
* at 09:21:49 on Mon, 12 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT OR4_X2 A1 A2 A3 A4 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I A3:I A4:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_5 Z_neg A4 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 VSS A3 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 Z_neg A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS A1 Z_neg VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_1 Z Z_neg VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0_0 VSS Z_neg Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_9 net_2 A4 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_8 net_1 A3 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_7 net_0 A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 Z_neg A1 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_1 Z Z_neg VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_1_0 VDD Z_neg Z VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* *        NGLibraryCreator, v2013.11-QR08-SP3_64 - build 201401301945         *
* *                                                                            *
* ******************************************************************************
* 
* 
* Cellname:   SDFFRNQ_X1.
.SUBCKT SDFFRNQ_X1 D RN SE SI CLK Q VDD VNW VPW VSS 
*.PININFO D:I RN:I SE:I SI:I CLK:I Q:O VDD:B VNW:B VPW:B VSS:B 

M_tn17 net3 SE VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn7 VSS SI net13 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn6 net13 SE net10 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn11 net10 D net5 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn16 net5 net3 VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn10 ncki CLK VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn13 cki ncki VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn15 net10 ncki net1 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn14 net1 cki net15 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn8 net12 net2 net15 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn9 VSS RN net12 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn18 VSS net1 net2 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn0 net8 cki net2 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn1 net11 ncki net8 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn12 net11 net4 VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn5 net0 RN VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn4 net4 net8 net0 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn3 Q net4 VSS VPW nfet W=0.288000U L=0.020000U nfin=7

M_tp17 net3 SE VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp16 net7 SI VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp13 net6 net3 net7 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp9 net14 D net6 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp14 VDD SE net14 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp8 ncki CLK VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp11 cki ncki VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp15 net1 cki net6 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp7 net9 ncki net1 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp6 VDD net2 net9 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp12 net9 RN VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp18 VDD net1 net2 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp2 net2 ncki net8 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp3 net8 cki net11 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp10 net11 net4 VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp5 net4 RN VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp4 VDD net8 net4 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp1 Q net4 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* *       NGLibraryCreator, Development_version_64 - build 201405230510        *
* *                                                                            *
* ******************************************************************************
* 
* 
* Running on us20.nangate.us for user Jens C. Michelsen (jcm).
* Local time is now Wed, 28 May 2014, 12:50:45.
* Main process id is 20670.
*
********************************************************************************
*                                                                              *
* Cellname:   SDFFSNQ_X1.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us20.nangate.us for user Jens C. Michelsen (jcm)                  *
* at 12:50:45 on Wed, 28 May 2014.                                             *
*                                                                              *
********************************************************************************
.SUBCKT SDFFSNQ_X1 CLK D SE SI SN Q VDD VNW VPW VSS 
*.PININFO CLK:I D:I SE:I SI:I SN:I Q:O VDD:B VNW:B VPW:B VSS:B 
M_tn17 VSS SE net3 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn7 net13 SI VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn16 net5 net3 VSS VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn11 net_4 D net5 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn6 net13 SE net_4 VPW nfet W=0.168000U L=0.020000U nfin=4
M_tn10 VSS CLK ncki VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn13 cki ncki VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_tn15 net1 ncki net_4 VPW nfet W=0.168000U L=0.020000U nfin=4
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
M_tp17 VDD SE net3 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp16 net7 SI VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp13 net6 net3 net7 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp9 net14 D net6 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp14 VDD SE net14 VNW pfet W=0.168000U L=0.020000U nfin=4
M_tp8 VDD CLK ncki VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp11 cki ncki VDD VNW pfet W=0.248000U L=0.020000U nfin=6
M_tp15 net1 cki net6 VNW pfet W=0.168000U L=0.020000U nfin=4
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
* *        NGLibraryCreator, v2013.11-QR08-SP3_64 - build 201401301945         *
* *                                                                            *
* ******************************************************************************
* 
* 
* Cellname:   TBUF_X1.
.SUBCKT TBUF_X1 EN I Z VDD VNW VPW VSS 
*.PININFO EN:I I:I Z:O VDD:B VNW:B VPW:B VSS:B 

M_XX28 VDD EN NEN VNW pfet W=0.168000U L=0.020000U nfin=4
M_XX45 NI_P EN VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_XX39 NI_N NEN NI_P VNW pfet W=0.168000U L=0.020000U nfin=4
M_XX46 NI_P I VDD VNW pfet W=0.168000U L=0.020000U nfin=4
M_XX21 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5

M_XX27 VSS EN NEN VPW nfet W=0.128000U L=0.020000U nfin=3
M_XX44 VSS NEN NI_N VPW nfet W=0.128000U L=0.020000U nfin=3
M_XX36 NI_N EN NI_P VPW nfet W=0.128000U L=0.020000U nfin=3
M_XX43 NI_N I VSS VPW nfet W=0.128000U L=0.020000U nfin=3
M_XX22 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
.ENDS 

********************************************************************************
*
* END
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
* *        NGLibraryCreator, v2013.11-QR08-SP3_64 - build 201401301945         *
* *                                                                            *
* ******************************************************************************
* 
* 
* Cellname:   TBUF_X12.
.SUBCKT TBUF_X12 EN I Z VDD VNW VPW VSS 
*.PININFO EN:I I:I Z:O VDD:B VNW:B VPW:B VSS:B 

M_XX28 VDD EN NEN VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX45 NI_P EN VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX39 NI_N NEN NI_P VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_0 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_1 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_2 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_3 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_4 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_5 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_0 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_1 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_2 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_3 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_4 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_5 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_6 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_7 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_8 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_9 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_10 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_11 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5

M_XX27 VSS EN NEN VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX44 VSS NEN NI_N VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX36 NI_N EN NI_P VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_0 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_1 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_2 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_3 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_4 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_5 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_0 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_1 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_2 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_3 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_4 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_5 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_6 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_7 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_8 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_9 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_10 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_11 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
.ENDS 

********************************************************************************
*
* END
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
* *        NGLibraryCreator, v2013.11-QR08-SP3_64 - build 201401301945         *
* *                                                                            *
* ******************************************************************************
* 
* 
* Cellname:   TBUF_X16.
.SUBCKT TBUF_X16 EN I Z VDD VNW VPW VSS 
*.PININFO EN:I I:I Z:O VDD:B VNW:B VPW:B VSS:B 

M_XX28 VDD EN NEN VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX45 NI_P EN VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX39 NI_N NEN NI_P VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_0 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_1 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_2 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_3 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_4 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_5 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_6 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_7 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_0 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_1 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_2 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_3 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_4 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_5 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_6 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_7 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_8 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_9 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_10 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_11 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_12 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_13 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_14 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_15 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5

M_XX27 VSS EN NEN VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX44 VSS NEN NI_N VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX36 NI_N EN NI_P VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_0 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_1 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_2 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_3 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_4 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_5 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_6 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_7 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_0 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_1 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_2 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_3 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_4 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_5 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_6 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_7 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_8 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_9 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_10 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_11 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_12 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_13 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_14 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_15 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
.ENDS 

********************************************************************************
*
* END
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
* *        NGLibraryCreator, v2013.11-QR08-SP3_64 - build 201401301945         *
* *                                                                            *
* ******************************************************************************
* 
* 
* Cellname:   TBUF_X2.
.SUBCKT TBUF_X2 EN I Z VDD VNW VPW VSS 
*.PININFO EN:I I:I Z:O VDD:B VNW:B VPW:B VSS:B 

M_XX28 VDD EN NEN VNW pfet W=0.208000U L=0.020000UA nfin=5
M_XX45 NI_P EN VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX39 NI_N NEN NI_P VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX23 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5

M_XX27 VSS EN NEN VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX44 VSS NEN NI_N VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX36 NI_N EN NI_P VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX24 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
.ENDS 

********************************************************************************
*
* END
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
* *        NGLibraryCreator, v2013.11-QR08-SP3_64 - build 201401301945         *
* *                                                                            *
* ******************************************************************************
* 
* 
* Cellname:   TBUF_X4.
.SUBCKT TBUF_X4 EN I Z VDD VNW VPW VSS 
*.PININFO EN:I I:I Z:O VDD:B VNW:B VPW:B VSS:B 

M_XX28 VDD EN NEN VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX45 NI_P EN VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX39 NI_N NEN NI_P VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_0 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_1 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_0 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_1 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_2 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_3 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5

M_XX27 VSS EN NEN VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX44 VSS NEN NI_N VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX36 NI_N EN NI_P VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_0 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_1 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_0 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_1 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_2 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_3 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
.ENDS 

********************************************************************************
*
* END
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
* *        NGLibraryCreator, v2013.11-QR08-SP3_64 - build 201401301945         *
* *                                                                            *
* ******************************************************************************
* 
* 
* Cellname:   TBUF_X8.
.SUBCKT TBUF_X8 EN I Z VDD VNW VPW VSS 
*.PININFO EN:I I:I Z:O VDD:B VNW:B VPW:B VSS:B 

M_XX28 VDD EN NEN VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX45 NI_P EN VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX39 NI_N NEN NI_P VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_0 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_1 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_2 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX46_3 NI_P I VDD VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_0 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_1 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_2 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_3 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_4 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_5 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_6 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5
M_XX21_7 VDD NI_P Z VNW pfet W=0.208000U L=0.020000U nfin=5

M_XX27 VSS EN NEN VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX44 VSS NEN NI_N VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX36 NI_N EN NI_P VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_0 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_1 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_2 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX43_3 NI_N I VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_0 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_1 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_2 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_3 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_4 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_5 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_6 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
M_XX22_7 Z NI_N VSS VPW nfet W=0.208000U L=0.020000U nfin=5
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 16:40:24.
* Main process id is 9588.
*
********************************************************************************
*                                                                              *
* Cellname:   TIEH.                                                            *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 16:40:24 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT TIEH Z VDD VNW VPW VSS 
*.PININFO Z:O VDD:B VNW:B VPW:B VSS:B 
M_n_tran_1 A A VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_p_tran_2 Z A VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 16:40:24.
* Main process id is 9588.
*
********************************************************************************
*                                                                              *
* Cellname:   TIEL.                                                            *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 16:40:24 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT TIEL ZN VDD VNW VPW VSS 
*.PININFO ZN:O VDD:B VNW:B VPW:B VSS:B 
M_n_tran_1 ZN A VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_transistor_0 A A VDD VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Fri, 9 May 2014, 11:23:25.
* Main process id is 10870.
*
********************************************************************************
*                                                                              *
* Cellname:   XNOR2_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 11:23:25 on Fri, 9 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT XNOR2_X1 A1 A2 ZN VDD VNW VPW VSS 
*.PININFO A1:I A2:I ZN:O VDD:B VNW:B VPW:B VSS:B 
M_i_0 ZN x1 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 ZN x1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_2 VSS A1 x2 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_3 VSS A2 x2 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_4 net_0 A1 x2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 VDD A2 net_0 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_6 net_1 A1 x1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_7 VSS A2 net_1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_8 VSS x2 x1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_9 net_2 A1 x1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_10 net_2 A2 x1 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_11 VDD x2 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
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
* Local time is now Mon, 5 May 2014, 14:03:35.
* Main process id is 8286.
*
********************************************************************************
*                                                                              *
* Cellname:   XOR2_X1.                                                         *
*                                                                              *
* Technology: NCSU FreePDK 15nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on us19.nangate.us for user Jody Maick Matos (jmm)                   *
* at 14:03:35 on Mon, 5 May 2014.                                              *
*                                                                              *
********************************************************************************
.SUBCKT XOR2_X1 A1 A2 Z VDD VNW VPW VSS 
*.PININFO A1:I A2:I Z:O VDD:B VNW:B VPW:B VSS:B 
M_i_7 x1 A2 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_6 VSS A1 x1 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_2 Z x1 VSS VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_0 net_0 A1 Z VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_1 VSS A2 net_0 VPW nfet W=0.288000U L=0.020000U nfin=7
M_i_9 net_2 A2 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_8 x1 A1 net_2 VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_5 net_1 x1 VDD VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_3 net_1 A1 Z VNW pfet W=0.288000U L=0.020000U nfin=7
M_i_4 Z A2 net_1 VNW pfet W=0.288000U L=0.020000U nfin=7
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
