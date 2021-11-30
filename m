Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC574462FB8
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 10:32:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrzVE-0007T4-Uc; Tue, 30 Nov 2021 09:32:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dan.carpenter@oracle.com>) id 1mrzVD-0007Ss-5A
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 09:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zvUWY1W/hzUXE5EXo4+Th3qkxYCr+15lr0d+oXBEcWc=; b=NUb4fGXK/gbgTQiLHT8BHC1oIm
 0f9uwi4TT+MuNpjf2FTQvXuKhnnqwWPRVvCpeNbgiLV408Cspz25CLRVWIF7bnkiJCqzvmBS1n7nV
 WedCDFNx7u5isZjJvfD4sXTB1aUze4wdqToeYqqQusu2MojImkKMUxEXvde0sxnnyS4w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zvUWY1W/hzUXE5EXo4+Th3qkxYCr+15lr0d+oXBEcWc=; b=HXZvhwFNSwkj7E+wiWrvbJy36W
 4iR0B4noDJYF1HyvVrngtQw9sEDHlsIEwnKxa9Rm5Qo3aqMhMBdYVZztzgGpZZRiUshydMGCeW4Y7
 Fz8zyY281Wv7hzQnJ/S8Liej4t/vFIMo4QQnlRVAtmm1XV6trdv+XyeTLwTrOL4wsQm8=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrzV6-0002e3-W8
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 09:32:43 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AU7UndS026597; 
 Tue, 30 Nov 2021 07:50:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=zvUWY1W/hzUXE5EXo4+Th3qkxYCr+15lr0d+oXBEcWc=;
 b=WjRjx63Cl5bfnXu/T+lR3+w+NFkMxYyXRTnaArI8FAkcqxdD/nWwQueUTEQKid/70LpU
 z/FeJERdliZSuKJ/epsuPvhM3fslLSB5HNGASdIVYAKfNlkknPm2vFOFW+YGokkRIvjr
 fjYKRvcCdgljnQxxLhaV63iuoHqWRVUKtQGR/xAy6UAC/jh1nyM7sE3TR3PLnx8C1XAL
 PnN4YqKYK8DQafzzQ6ScKDFXIExsrm5oxhA/tL54Jo0H3lKuLEKNRUZEXRvH9/NVgG52
 Z21AaVHvaQyzARyuOpd6SOXgPWB4DP+7Rs/2tcY1kZst3RxQ59OsvXxr40bX/Ga2Pvs+ pQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cmt8c73tk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Nov 2021 07:50:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AU7jgx8148765;
 Tue, 30 Nov 2021 07:50:21 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2175.outbound.protection.outlook.com [104.47.58.175])
 by aserp3020.oracle.com with ESMTP id 3cmmuphb61-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Nov 2021 07:50:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hfjzUW3j8WTiFkftur+lfLHEApdYAGYLK11NZUL4a7tWXZJRflCHaMVCU4YzSCOgqp0lOuTEyp7v2Aa31u9+lJRZBIsp18DCmlwBtmvY64yEUU4UxiCNmZea4CZAwtqrJzWHtsbknPEjEuc75B8lLq2h0K9QdK69/Z7tuHYjRGUoXquqCDlIp5ZQUiUquLcKf/xOEbTzHhBUeCzxFcH0bY4AZVvFZR+sazQaPIwrhasJipC2PyxuMDI3DZD73/LiFGWXGU91NHWnGwHlmSgWFK8r9rCTIo8W6jwmkJx9PNW1cgQFV6AHP+7POvPzHcye8Pk58gn3vVYUojrtgUXQDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zvUWY1W/hzUXE5EXo4+Th3qkxYCr+15lr0d+oXBEcWc=;
 b=HpJmo+L+o8heiz82+loT/moCzB/PIoGt2krgEhdChkxrHkCGBicvWAPZAOetC7UmSAItndoYsV2qUnbUbnsbWMEJO4p14ZW8WeLiPa/1c9OzJMkt+Y3cDvOJdSiXnZBlqC69kaLNDqFvX4GgRCOKP3KDpJh97hd4/OKE43kJ1bNLy53OyvxIluFcFsFIgdmlS05jgv2KVuZZ5bz0uiwGErQZ2Y4r4Lb9CzGuU9hXh5eaxLh0Y4t1pJxAMYUoPktmpGPjKqgX7nOSZ+PNBuRlTM289xKLT/kBgPRil6gRrt2ykMvzojzYzsUxKKFttjmJM1156PwQqy0O/dT6xBnd0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvUWY1W/hzUXE5EXo4+Th3qkxYCr+15lr0d+oXBEcWc=;
 b=ILXBXvGrN2FPLDvFVFXlPFe3/MM2yWqHTLnBz1/jWUtY5J6iQs5gDvhynrljSXCuI8lV/4McmClYziKdo6daBvQqps9D0l4kLreFj1Bh2BAH0CxT1PSS4pwHjpADQSvfFvaLIJhGUTma5cFei1kTbtu6AWb6hJwPCPgEKIZfpQY=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2367.namprd10.prod.outlook.com
 (2603:10b6:301:30::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.24; Tue, 30 Nov
 2021 07:50:19 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.024; Tue, 30 Nov 2021
 07:50:19 +0000
Date: Tue, 30 Nov 2021 10:49:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20211130074955.GR6514@kadam>
References: <000000000000a0d53f05d1c72a4c%40google.com>
 <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org>
Content-Disposition: inline
In-Reply-To: <YaTVWtjhm4+2FI33@codewreck.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0046.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::34)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JN2P275CA0046.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.20 via Frontend Transport; Tue, 30 Nov 2021 07:50:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c51147be-47e6-41e8-1fa6-08d9b3d60e14
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2367:
X-Microsoft-Antispam-PRVS: <MWHPR1001MB23672CC85A931696841D7F718E679@MWHPR1001MB2367.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GPeF0zarK29oR7W+GIJGWK7MY/w7/pxu62RYshJNs/Qfj5hlYHiEytu1Hl+G4VLfl6ifzzm2p0Dkje9TT9XAEspRJGCzA2jjPvlYmP6I4x7NXOl4ARDbnOOsWQzQ8VtKdgqekSosYYB/y3ScxqAgtIkuKNvkPbZ5a8QXEADzCMm+SANK6oLq8ffp2X4ow40rErq+2cF4pD0zKordJnSc0+gEA9Q4quFN+bZ/nM3FvEBp7W2FgRQ/EC06VFocKeEfyuePYeEYYuaejRj5XxQYOFpuu/hmHXYEsc7kyEsmrll6hVuJ1s4nesywtrbMf6HJdLYiPBahkH3Bofwpd4O3nds1N7Tqz7mqDgc3TSbP4SivmXvktUrYSyCiDpemWNYOC9/8oigo0ZpN2WNrVt8J3vjc9Zjoo8tYy6tXIFI122q54zko76qSm1tNfgoAtVi23fRedEANMc+qVaCFj9JbHp33APkD1r/QdhPNO7AURC9WLRU1QX9oAQU62l3omEXHqVjgNKka+nfYOqu2OAR/j93Fb8C1F1mryJ0KFhT2rLAaAmoG8e0myEcxokIHYvplYb+4fHNy6klymqqufLQnK8VWDNu4zUUiqHfkJ55aGNI0cU7Sg9O+zDLFkredyajdvusX+cY15muIQkCTA6haSrioQLqZKBDDWQb3BkCXjC7u6KZBOIUb6GXyDatlsn+WoiBbN64Z8kNerFY4iKZzjQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6916009)(44832011)(4326008)(5660300002)(33656002)(55016003)(186003)(6666004)(8936002)(508600001)(2906002)(54906003)(8676002)(6496006)(9686003)(4744005)(316002)(66946007)(66476007)(66556008)(956004)(83380400001)(33716001)(1076003)(86362001)(26005)(9576002)(38350700002)(52116002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kTcyEP5wpLq6NY/OA7tK0ctZfP0W7QY5gKWixOHxAxL9mXZgAKEh8IVpNn40?=
 =?us-ascii?Q?bHTIbhpzdm47CkC53AamuBem/hshXfhPE3YpX4ABOC/Wcb6JFOSTMf+btQAr?=
 =?us-ascii?Q?8ZOUTTLu0gKiNpe99LqQ8n2MFdGBzhRnk0pJcXcHJ2xGIo16qinuEYx8G7t6?=
 =?us-ascii?Q?B8yjSZGX+U54wWwgIL+iV6aWwMXpcoZqU2Chxp/Atxqq8Z6vL7IarlUE/1Qv?=
 =?us-ascii?Q?P24V2st1TIrV8KJu8ZVMwpwBvB4fIk9Df0ejZGFpga6T97X3wOwFonmv1vBd?=
 =?us-ascii?Q?Vc1AswQO7H9BOj5gH16CkeiG7GoAqMo6I938q5tPm0BOByXnH6xabNa+dmgd?=
 =?us-ascii?Q?6PuPj9/einmHuki7mbyiKbJCxht/HPL83S3DJxivqTLtwDZbi+L9svoj3S+6?=
 =?us-ascii?Q?AsCYpjdurKM4zpeXT38ftzPqfULF7GUYTAce2iqGnQ4Esr5Lix/RGDinD21U?=
 =?us-ascii?Q?S3FZ3ilkfzf2eqAgYNY1O6peaZdAHAQx/CzERb0trEdJXGg/PxFOY+RQYiAS?=
 =?us-ascii?Q?iqUYazXBscNaPhRPt01YhTHYUB2UbuFe3ChZZbivXM7kSSKLGw2oMKPIgm92?=
 =?us-ascii?Q?PCMJr5TlWdqErx6sfab4mIRjH+m/GOfeLc1/31yDIT0WfnFjkt44umf+Z2SL?=
 =?us-ascii?Q?eKSirjc6bTqPtE4jWSmLuyJG5zJVtaDZD03L23bIaoR+YSl4Hncl6Op3G7BK?=
 =?us-ascii?Q?1yjMFeFVzeeyqUv6TqK63yuSrKSSKXWk5SNTpiuNkWnPPp5mj8NvJ27987L4?=
 =?us-ascii?Q?kMaiV7z2uFJvRMgyBWlC08natXNuFDA3sOWtReJV+Wryv3gVTzdc7KbRkaiF?=
 =?us-ascii?Q?3Q0zxiDAXu03LjPyGFo60dX7EO4DH8GVEj5LV6myt8yRNQIC/qlRbCSial3V?=
 =?us-ascii?Q?c0ci1UDI35Xo+PlcR+Jjuz0RE64xvXS+fpCK1GCZeyJ9Xe95hRXRhAdtLuHw?=
 =?us-ascii?Q?eqHkL++8KhEO96xfO36Uy6p2t7JRCawqiisrXNpnuZzNpYSSLKodwlXd3NWZ?=
 =?us-ascii?Q?2RAzvPIVGp5QcgK/Xxj8q8UFvCWrcXyvpiErWB9OClEs4uJkXtVluhlK86Of?=
 =?us-ascii?Q?cYubvLwNOc/l9xhnULubRR/TB/aEjH8N1MU3GBWLPZXfBMznWScnTTp5TEX4?=
 =?us-ascii?Q?s5HFfd7WAsrMy0JhsqTC/88L5tpFxSnPkEAXMKaTD45/PPistEw3NpFnrhV7?=
 =?us-ascii?Q?u9HR2nLgzCOH+nAndn+i8cZxt+1oVkDioxEXxB5YMRsGHd/5Wr/kDaPnsoYj?=
 =?us-ascii?Q?D5vd6qGeez+Fh2jWpVtzaU8mPQbSu6yodz22WES9GpF7iWZIoZur7PBqoCB6?=
 =?us-ascii?Q?9VEHWBs8LFEGdyB+5CwNEJwBwenk+lWZcVvHfh4a1TEpL+kNBa7mr1pkvb6U?=
 =?us-ascii?Q?kjVaERcLUUa/nSsGcWXe2SfNjpj2/v2siecl71h3gz7tD8ExpucCgEmEYfgh?=
 =?us-ascii?Q?835YzPVU0iY0Ja1H9x0fZtpuxUBUr3pkavl7GxqBv0Y1o54IwfT9j6tE7ZfL?=
 =?us-ascii?Q?AKjX0G5PR1cguKRh8+fvB4eLncYfPclOrnBALBJc2C0Rs7+JVezgfzxwrpvF?=
 =?us-ascii?Q?yU3hrEE4Jda+EGtntDINtAciRUiSjuo8w7tXykqNac0QbcoPAMvHqECFyrjJ?=
 =?us-ascii?Q?3DQUOJnPYjj2U9uKVQl+uGHBcPK2sNgbAH7aFYI0Gy1W9kt0OBnJzR+4dQeY?=
 =?us-ascii?Q?AHLiU/DJO0301M3pA/AdGr0Mq7k=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c51147be-47e6-41e8-1fa6-08d9b3d60e14
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 07:50:19.2797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DirUf3SrMQNYyt9sYr81P1hQ5OMtlOP+xZhS/P4G+aA1SRS5p58EuroTwOh+XkeqXrOwkfmFlraz4gFtM1h6MB06dfN337UNqbqkdNwixqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2367
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10183
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111300044
X-Proofpoint-ORIG-GUID: ukhLcFBgO1yoZY39fClqIsYyQMomFQjD
X-Proofpoint-GUID: ukhLcFBgO1yoZY39fClqIsYyQMomFQjD
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet
 wrote: > Copying uninitialized value isn't a problem, and is usually faster
 than > checking before every copy, it's using uninitialized val [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1mrzV6-0002e3-W8
Subject: Re: [V9fs-developer] [PATCH] 9p: only copy valid iattrs in 9P2000.L
 setattr implementation
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, syzkaller-bugs@googlegroups.com,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 Christian Brauner <christian.brauner@ubuntu.com>, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet wrote:
> Copying uninitialized value isn't a problem, and is usually faster than
> checking before every copy, it's using uninitialized values later down
> the road that is bad.

These days more and more stuff like static analysis and UBSan (runtime
checker for syzkaller/syzbot) detects when we copy uninitialized values.
So even when the value is not used, just loading it can trigger a build
or runtime warning.

regards,
dan carpenter



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
