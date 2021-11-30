Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 052DD463189
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 11:49:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ms0ho-0004J6-4g; Tue, 30 Nov 2021 10:49:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dan.carpenter@oracle.com>) id 1ms0hm-0004IM-Bv
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 10:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=icqv6YN/mJwOe+yI31ivIpw2m3C26YRfqxD4uenQWo8=; b=YoVOamksp42IlxtHShXOE0L9Tq
 anSpKwCzndxVnpoRsnm79LoQFhBAmm2BiexrMb8JuAG0nOnvhd+b1EoH4AE8JLbovuNlnrs9I92cV
 Z6zXeew3p/HtUknBN7GTVfveChGyc27BCbobFTUq+oQ+SBCkmaHWAmgBmzhncW66U1Rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=icqv6YN/mJwOe+yI31ivIpw2m3C26YRfqxD4uenQWo8=; b=gI53unzN5w9EB+M3sX220G63s2
 hdo6NHBOpvmWmpzgKliTkpcu2LeDrm3kYbbEivEXp01rDOvOGlztPqpPOGNXrqUaQj2riOHb1uL9c
 AypVazZIR6eDxd00kZON8iB4fK3xYKzhk3bO+5yjWUNz0Bo97FgLtrVwrRwHc20fITXI=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ms0hb-0000cu-6F
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 10:49:47 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AU89cT2020991; 
 Tue, 30 Nov 2021 09:11:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=icqv6YN/mJwOe+yI31ivIpw2m3C26YRfqxD4uenQWo8=;
 b=gScrilnkdD9EqJHoZE/umNcgd4Jc55wxnUsV1vDMx8XQmuXiy9iLVeuNgGpENeT0WT3a
 zKDj2WZ3UlQDe9G2LYgaIwEpWCd+kVf6/x81DxepniY1JW8IPX9nHxszxakQ2RaSAgHI
 RZ8i5S53imFi6hS9nLnZvDrGJnd/6M6gGB+P+03qXQlcWk+an8HiBE4m0LK9DSw43DzJ
 9oVCD61N/LgXsQ/lPE0K3WTtDGcRge5ITvixn/IHq43rRxS4ukouiFqDH3S75u4aPH8I
 ouphJw8JMw/GCuSH1Ci1RPkjgEtZOhKoSK5va7aBbSWwts6ujqLn1r+L4ygpimUbqwmW qw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cmvmwqq7f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Nov 2021 09:11:27 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AU95iJK061299;
 Tue, 30 Nov 2021 09:11:26 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2049.outbound.protection.outlook.com [104.47.74.49])
 by aserp3020.oracle.com with ESMTP id 3cmmupmguq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Nov 2021 09:11:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cArMd+YM36UXtHDjJvFomeH0F388IsNkJGfjtvn1Wgdwxby/0Ge1S19Uj9ciQRTpouL6nm+ynYG+x6U15UBE5zj6k1pBuVhQInnEgyshC+3ya6CN0Re4rB+lBycDoyKSDot7JdhajiXX1ZnAcPVrMiA/ATaq6v90XdoY+S/rpVUfPcwLW62LBeAlsgj5Q8EQ09jvguuVfzMUYFa0F/cMDw7r5VkbwuWE5pXJZrmti0K+qf4VzmA7qxw3xbCuqWiM4rEBN5DXGEpuENIy/c8+ZYaIX3C0uT8OQ2/s0rKQgQfMVlg7PtCZaWSCWKcQGodKAGnWN05mwkuH69OgxgDhBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=icqv6YN/mJwOe+yI31ivIpw2m3C26YRfqxD4uenQWo8=;
 b=QzgUsGIyqJ7v9OW2e4cStCfqtH3zwIBK++iPeKWLTfLDfrn1TF153OH4BoN3sKzH8aSoHGw86Bqw9A466gP7bCj6Z0KaqGCgWmOHxzIizIj8IWN2w0yxYLf6aFhgdsAN6vooR/PcobX4GIymc+R6pD2qTVq0vRQKO9eoVMa5u74CQY+7C7HOCjGp1EVOhTuppP6Hh8fUEwU1ir3+dRYL7CMMNgrsb2P94UZs38Ck5VbrshN54H52AY/NQoCiBb85CU4HBg30LWyEHocObIFliHW63KdmUBBDa53UumoqNKSumXAH+zK/Jwe1MyepTktZdZ/iPhh76UlHFhgt1pA4lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=icqv6YN/mJwOe+yI31ivIpw2m3C26YRfqxD4uenQWo8=;
 b=BdiKDOyuvpN1Of2XAY4uxG91Ma/do9jmIoWC5tu/IttlgSUj41BBMHWdXukTexqOoKzGrXWr16HngyBSYuU5kijSsUlO3GIarH13sWU6QMikECB+8mO1z73n9W2Ai4eVnvt0E6E9JYRdcLrzQRBIZ5KsVDYOA78i0a5fRYa2eus=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2400.namprd10.prod.outlook.com
 (2603:10b6:301:33::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 09:11:24 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.024; Tue, 30 Nov 2021
 09:11:24 +0000
Date: Tue, 30 Nov 2021 12:11:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <20211130091101.GW18178@kadam>
References: <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org> <20211130074955.GR6514@kadam>
 <CACT4Y+bqJZNXyG0x=HieW26WdAmAt=5o4M7NgCa_5UR-4jdN3w@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CACT4Y+bqJZNXyG0x=HieW26WdAmAt=5o4M7NgCa_5UR-4jdN3w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0048.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::36)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JN2P275CA0048.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.20 via Frontend Transport; Tue, 30 Nov 2021 09:11:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7dd63bf1-1ecc-4752-700d-08d9b3e1620b
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2400:
X-Microsoft-Antispam-PRVS: <MWHPR1001MB240038F05F01BF7BEB07C28E8E679@MWHPR1001MB2400.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n1ZXyQkYtmFf7DnxHm9GstQaSYycJcDHnr1Psmf5V0l8zKMnTpCeinW5+KH6cA0Sh/wIkkPmmQo64DOrypQD5kqNBuRNJ/0Ke//H1+Sk7RDGqbMy64FlPEY6AxjxzlCqyanlflOWqu+HOy6Hof1R2xS9kiWZevH6M+8sYOFAeqPZwkBBwZJTqeD/BHZQvVN32FEAIo/HhZjd4OEakhrCBFyoPxhkmP7dL+sb+9Yb2qp8oK4uOT+VED6TfJlge809nXAWVcjv+dQfknWLPtiFtI6gHIPgktGAAc3yM+XuB8Ok5P5fO3k9jJ4pvkR0x+NAxIrOS/v/Q9XpJfGl6kRqEWf/tDMZ4/GjeBwrqWh1jam8Z8IQyg+/Q51ArecZvGezhasykS1L6FzPBq0hQVnCB9Bay0U5xP+QglLqbLHO/CSYWznGgai20DVCsf5vJo1jsVQBQrvcKo9Mwt2hhYv6lbsP/pW/e4STWgAOAl6ep5eJ46Vb6wRUrzPRULX54s4aqUdTloAKl1rc/By+l8GiOaJu10W1TMRI7KSZaWYMA50oSAxgcK7RfoFDwaXeUjglux2/HVAcD23JNiJSlmIKqqF+vdBUM87mD6PlYvffYC+P7qDFEm+gLHkm+JRX55APVOJdsIfWRoLNGAyeEcrvBPz+flxto6U6HwON3x6SutZdc7X07SCTKxFkIaMpP3BMQnbunLkPIIF2TqJqvZB6sw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(956004)(4326008)(44832011)(66476007)(508600001)(54906003)(26005)(66946007)(38350700002)(52116002)(1076003)(6666004)(55016003)(86362001)(9576002)(186003)(7416002)(6916009)(66556008)(8676002)(33716001)(8936002)(2906002)(5660300002)(316002)(33656002)(6496006)(9686003)(38100700002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9BskC2BJ1L7GDOSxSzrgFUQvNKr8uO8Q0fE4Q+nhgpSKMkJkTaa6t62LH24b?=
 =?us-ascii?Q?ngWTBlsCbhirpQYvd8QjFZiWbhqAmUguuGlX5mt574Xj+aI5k7sFM3LqpJBb?=
 =?us-ascii?Q?xEE/aPRCpWPiS6E+M8Yr2umazzD78O/7DApvn970n6aHu4efQCKj1UFeBvbz?=
 =?us-ascii?Q?R7pyZF+RIITuoNi3pyui5N1Ob2YuwG/tYvoTGfhqIU7RqDKgB4Q4btu9+Xir?=
 =?us-ascii?Q?G2uNTbRAtt6Omvt1uHEoYB/X5wb87WfQarIauz6Lwp7sOEufDBFR3TL6cLqT?=
 =?us-ascii?Q?RQSMYr91wucMSzXzxD9LcJfCjBJhRvm/1iXxPHybmMdIZNO7CnudjrJQrhVb?=
 =?us-ascii?Q?tkgMoenVxbHEpSW0l7NKkakoGPJiF5lAU7Q3MD9//1R94f8ZpEQaVigKZAoy?=
 =?us-ascii?Q?cEuLY8oSnRuZ3XvChKQlbvMIVYQ9tQnv/vArd5Grl8mwoLA8N95kU6ykrMCl?=
 =?us-ascii?Q?O/j2Cq8rw0Lg0IM0JC/dFZ1Yv1effphlMdEx9nWR6gEKNBQWdROhzeAG/IsO?=
 =?us-ascii?Q?JL+IXBpaygFK7uX5PfJOU6ZahdRhKzNR9rA2xkd/KnT0cZMKLBNSchz8YIVE?=
 =?us-ascii?Q?cfIi6DloNYUw3YGvCs7st9MO8zXEJWPievuNnj3l4df6MRrlyf8O0dykZtNV?=
 =?us-ascii?Q?aSaGTqoDpl644iK+8JflewoMSnyPjKT0jQzGC8QMWp0p1cCYn/JCW0o0Oq2U?=
 =?us-ascii?Q?j22i8QI8YJbOh+UuM3yI4ZD45uWvXNpcWi1fx1eLIEEt1qb6HrvSkxVuc39I?=
 =?us-ascii?Q?RIHDaJS0jebCrE25oEAf221mTM2I4YCaFyFSL4Hg9wdQk1P7c3SgpVbciJcT?=
 =?us-ascii?Q?dPCBrkf50/H4KkgocSHygCaRcPmKeBNWUobvn788H4J3MRMKfU+qHX2Fe+il?=
 =?us-ascii?Q?MD3hzGZoaxPGo3v88Pejs+aPO1Mf1QQtI4fYc4tk78jxbbiDgENAid6fX6+j?=
 =?us-ascii?Q?t8ukbWSL0MAiXWy9QpsTzRcwjo1HN1iqJZj2Bcn1JXu25OYF83UI2o3R+FZO?=
 =?us-ascii?Q?Ytzxvw3v5zNoBv30oncW/Ki0+TxoTMa5pzA4cJ8QMKiv3NZAUptAUdRMrhMh?=
 =?us-ascii?Q?XWgFr+/2/okhXlH1bCs1H/aU6NehueNFS45Hylcq+1dasxdi886pX2IJT1Dn?=
 =?us-ascii?Q?2vBw2uUOgHcEFo8KgmFB/eiJAtyq9Qx+n+1PH3B5jGn1dE6piAq+pHvKJACL?=
 =?us-ascii?Q?nNPmx5hnt/VyOxLllU4d9141WBpxxUXL+AkC4sSqb7NMsR5LAC5mUhmHjmv7?=
 =?us-ascii?Q?gauLf5hznechDMwd74Zz3eGKDqsj/Nn+BUSxbdg37pCdsFOz3evGMYViW4Na?=
 =?us-ascii?Q?m8xNcdzkVupG2yQc1vBlpnpwZNdqgyqUvihXbim6FuFe8YJxBiv5X1qQfE1g?=
 =?us-ascii?Q?a2XO17b0sKALYtJoLGCX+yRk8g3K0t6vQogyoM0iPfWSSLhOMDgK/VlTVH/1?=
 =?us-ascii?Q?EwRsxNG2Xvjz8fD5wpQ7sT8oXhv/a788DbDFNZ5YHjQlij4FaiuwV5bPAWpU?=
 =?us-ascii?Q?hIeGO4jCf+QJTotNDZQ0ZfiJx4L8kLVuHW32keBaLRecU6ULyJFd3QpxMtqU?=
 =?us-ascii?Q?P+LGjGLgXkKJItMuWNzoe210oW0MAFRSDvOeDbXBz13r0C69eP7k8GK4PUAc?=
 =?us-ascii?Q?FSw1YeM88LDO8vjON4dB410fW7OcLd10BzwX14nwl5fKFkkqWGIr1Mpw4fY+?=
 =?us-ascii?Q?tS8qbXoEEYryTAFDa5F8XbpDXrY=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dd63bf1-1ecc-4752-700d-08d9b3e1620b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 09:11:24.4815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c9IRsJxo0qWl99FOMzKNGTwUPHLSA+IAMvR/LZtHw72rBOrCUmx5aYoprkR5b8LI8a/VdJHAzYP3G/Dn6w6bNGDADEEEKXTNusEQfsVijTQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2400
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10183
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111300052
X-Proofpoint-ORIG-GUID: X5Pus6WyUJtm8jD7JwJTGL4iirSRSASq
X-Proofpoint-GUID: X5Pus6WyUJtm8jD7JwJTGL4iirSRSASq
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 30, 2021 at 09:11:33AM +0100,
 Dmitry Vyukov wrote:
 > On Tue, 30 Nov 2021 at 08:50, Dan Carpenter <dan.carpenter@oracle.com>
 wrote: > > > > On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominiq [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ms0hb-0000cu-6F
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

On Tue, Nov 30, 2021 at 09:11:33AM +0100, Dmitry Vyukov wrote:
> On Tue, 30 Nov 2021 at 08:50, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet wrote:
> > > Copying uninitialized value isn't a problem, and is usually faster than
> > > checking before every copy, it's using uninitialized values later down
> > > the road that is bad.
> >
> > These days more and more stuff like static analysis and UBSan (runtime
> > checker for syzkaller/syzbot) detects when we copy uninitialized values.
> > So even when the value is not used, just loading it can trigger a build
> > or runtime warning.
> 
> KMSAN won't report loads of unint data (don't know about static analysis).
> It was a design requirement for MSan. People do it a lot. Even use
> units in competitions and then discard. KMSAN only reports the final
> uses of unints (or derived data), if any.

But say you call a function with an uninitialized variable won't that
trigger a warning?  It used to.

regards,
dan carpenter



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
