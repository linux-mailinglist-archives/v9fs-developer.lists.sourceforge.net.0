Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8E3462F7B
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 10:24:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrzN1-0008IQ-6i; Tue, 30 Nov 2021 09:24:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dan.carpenter@oracle.com>) id 1mrzMt-0008I9-4E
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 09:24:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2saa155WdvXFyLbFAZZMncBiq3ZWXQ6Thg23HhtaIuA=; b=ad0BzS26kYyscbOSk3KlRgl0om
 vA3kC+RfXFcMHJ92ZR7klvBmsYFhdDTl3dPi5VSrtY+eddLWD5DEvkxETlwmBO60cPAIrvAoGRpZN
 etAIHR+jaP/TCXKAH3OvmlOfRcsBN00merNml1Gh5nj/LwhLRxOusC9kSjrqy4ucDcTU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2saa155WdvXFyLbFAZZMncBiq3ZWXQ6Thg23HhtaIuA=; b=OPOpm6KlS/YTazlDlyYnCjT+i7
 bGnWH+zGQTUt7Zx3nng3cOmWNOYer5uV233fVC86Oyb/oz12TzhGCtI45gYghhCu46sd+QzAEn6IB
 yfjmUKElXGrWtbxbiw+Qmy+QWLgcpUDrRdPmnZgUJBT2okidJVpdRYhQsUvEHkOGmOeg=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrzMi-0001vs-Fz
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 09:24:04 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AU8wMiK000953; 
 Tue, 30 Nov 2021 09:23:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=2saa155WdvXFyLbFAZZMncBiq3ZWXQ6Thg23HhtaIuA=;
 b=BXuAGjzdLEUfw/2gQUzZTjBRa7fUtnwAFLWO4yxUpHOqzfx0VjSb4Eby6whcdc1UqwTe
 5N3UCN/hRIK3lFBUZxCG02prhKhSRweFfcxtE+VocYQzjr3F96qXjHp216NEZpS3pil9
 WYqxOXC9/jDX4fpcfD2QEmW+MVhCxtiXlC2oYRqpPgTgnAxm3fzenjv1rT0FyEMS4352
 r+iAT1A5ACjxo4O0aHCryqpCE/U1o1IyDcTyiUzVLklC8YPZi2rxfcCfid9XQYKjwp5h
 q9q4/Cmsp8QWPnk+rZXfIYQzoUMZcWzshiUt+GVfXqVRH9g7d3KCaV2Lhtf7C7jNXDfo rw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cmrt80aq2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Nov 2021 09:23:42 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AU9Fm05070884;
 Tue, 30 Nov 2021 09:23:40 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2049.outbound.protection.outlook.com [104.47.51.49])
 by userp3030.oracle.com with ESMTP id 3ck9sy5fqh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Nov 2021 09:23:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyMPxOpiEOn42AlSCczVOa+NRPsKc+5Pg/XKdPVuPNnKonZIbxSZdv3nKWvbP3YJi3vRqYoUgnufOZ8G5D6hQq0+XoP4hcSKR0VZAyIi4fPdZLInp4ELLkOdBCEMB95ZCco5rMtk9WQEwMxJY+5TDuQWWxl6Za58dWO/a+2cWobzxTG3DIWObeppHg3QgyZRWH/7N3w/MftnfjvT1zerSl2TZQ8LDHZoFQ5vRtiPfUS6xzZEACxJKfnL3R/Hf8B0294JZRdebJ/bI/0bDHMpWs3Vj5bpNauIm6bazOdxtJY6MvchmkbbTXak/96tVyhj0pm9Nwes1tB83vTUMFZn/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2saa155WdvXFyLbFAZZMncBiq3ZWXQ6Thg23HhtaIuA=;
 b=UAiFfC07H54iA0xDeyayNLiFE6sWXTmBvDWkaBh3P+Ew1wBe2RJK4rcl8vcAb144QKbgKWiA9HPneFdlahPBei1Lt02LcJKU28mUYD5yRoW96UX2ANssHBGaS4mm+k+SB+azbpGGGzSevN35fC5lAdA1d9NwMvuJfxPIh2bi06omsxFnRU5DfnnW0TEJOK2Tkt3dDwI+WhM5Mfgv220fXD+KIfOELF9x4+N5HOl7edgJZX4teL5seOUt1zji/S8+82f+27J5WNQszwrCRWhc4vpxWcv1h83a9NKBGINHaHz2AvhEBQL0T3Ltu26hxQ0FwtNub1JAnt3RWDCjPnGbyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2saa155WdvXFyLbFAZZMncBiq3ZWXQ6Thg23HhtaIuA=;
 b=A0BNRdgt3Z7tU0EaIyYxD0asS8l3NmP5Lo55899NclP0a/5dsUbKNatv58Lb6a/LAvwOYOE931/ZUGq3QaCigPsU+fHSpGVdyP/HcfQMr/zzPUX5vy6KLCLP3gJiV5RvYA1B52CJdc8PeQWigFf8VQd5d4yylhXBWqAdwkcSWQU=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2096.namprd10.prod.outlook.com
 (2603:10b6:301:2c::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 09:23:38 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.024; Tue, 30 Nov 2021
 09:23:38 +0000
Date: Tue, 30 Nov 2021 12:23:10 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <20211130092310.GX18178@kadam>
References: <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org> <20211130074955.GR6514@kadam>
 <CACT4Y+bqJZNXyG0x=HieW26WdAmAt=5o4M7NgCa_5UR-4jdN3w@mail.gmail.com>
 <20211130091101.GW18178@kadam>
 <CACT4Y+a2RN-q9os99Ms_T0nJLqaFo6u225PwCON7DqXTdEcj8g@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CACT4Y+a2RN-q9os99Ms_T0nJLqaFo6u225PwCON7DqXTdEcj8g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0036.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::6)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JNAP275CA0036.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.20 via Frontend Transport; Tue, 30 Nov 2021 09:23:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f0c20df6-c494-4f94-b70a-08d9b3e31729
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2096:
X-Microsoft-Antispam-PRVS: <MWHPR1001MB209606F4D13BC2A84CAD7D8D8E679@MWHPR1001MB2096.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FuMCUtsRKGLUymwCCN62+8r0X2ootRfA2qfBZ3Kg/lWbrG2UvJvQXmc4uJqopTUxjrT4YgVdzWgRyS31FEmSqElDXNDdMzXayAPcxFMxijcoaI0B7AEs1v74BwdJ+GvKVp2iWV8TuAUlN7FT461v3QVG6WH7oEOnFtQDpLC7tb2L65OFnjiEyPp0IMTX5RaArzRVaxbnOqmXLe6YgkqrnSkdkMtT7VMJk+tEBn0fHP2OTgZ5sVCooF3woFdKcjYGXmWX07Su7YqE+dXwYNV2dTsTVi1ODW2QWuwOW3j2fXMmbGBqQOIkjvrtJbHYisacO4XY6SKi3C0sc5kYY36jsdBh+VdIr+TndZ5WACX9czTLwmO0iVq7jQQtfxtyZACTv+a+9/9MiDTdGrZQycS4DrnET8iTHuPBJix7LaesWkik2+L3sg0h6KrEmet0mRcgKt0eo5ANOimRHgj92J1ABERPHkpHrj6cbC9gdxTUDYwRf5aG3RZ9XshT26zs2LiW8uITlQHOFfj8pk3Z4c1Wrzft6+EOJZT1Rq+50/3m/Pen8D/Icc2cR6lVqIaJjO5wDA5niJK0mBc6tfrcPPEc2Uyku9IX4B70oaPFsunDCkJUa5dB0i8P4nIttvcNopZlJNOT3vWzMSUmHdKIS1O7itjBVCRZHRDKNsf6+337mB9+sZbzb32W8IGle4VHXpMB/Jwta93UTbmJiAZcE8H1Zw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(4744005)(8676002)(6666004)(55016003)(1076003)(83380400001)(2906002)(9576002)(66946007)(66556008)(52116002)(66476007)(44832011)(6916009)(508600001)(33656002)(6496006)(186003)(956004)(5660300002)(8936002)(9686003)(33716001)(38100700002)(38350700002)(4326008)(86362001)(54906003)(26005)(7416002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?smoHbv0tK8j7Ls+oWCpdPahL/O5PKoZWiNHl2LGjPxTRymT71H/r0f2I/GjQ?=
 =?us-ascii?Q?MjdXDTY7iYNcLRNz+V5Jd1b0eyS2VdCpSYUkumW2IGyzhJftj87lxCYwE7YK?=
 =?us-ascii?Q?Vgzzmu82BUy1lOtuI3qkkBnLjbeC3zDCVel3FQPkDIuJmda5iX8Pkh0PwHR1?=
 =?us-ascii?Q?W6FYoVPekbZstn4BSrtUNM0GnOyAZEmq/NTIzbEKU0EI6QqK43oukbBDg7W5?=
 =?us-ascii?Q?wQsM9+xQoCE+kLGZTLxF6WOMTDs+rTsk5Of2vHwuJVn5u7aguaWBX+Y4Va3J?=
 =?us-ascii?Q?XIHJb4PCTzTpceCTu73ZvBweJCGbITs/XOJU5ycpsKlsZs6OjRLaO9jfnAb3?=
 =?us-ascii?Q?YTrYFXoimU1uOs/NHGbCVbENC8Vjpzx+iNDF9arEzz57SRbHkYFW7RbMuuek?=
 =?us-ascii?Q?LEDqzeGBlLdm4jmpMs2FcXwDTazuXSCrHcrdLrGG3Pt7P94q4/eeYqiV34Sh?=
 =?us-ascii?Q?JJKes9C+TAjF7+QuD/3roU2aBnfEpn3Ov7Mwvbez/u3S7QhS+W+MCxLp1eNL?=
 =?us-ascii?Q?LKaica3L5wVsUkfKwk26ONJ1aiaa+uvcswJnwLpRn9ugtR4/EhHFOWbcdV01?=
 =?us-ascii?Q?uLTds34vqf7zX5vGORDgTbFB0LPfbvN2WfIjZzNclV5s7dAaFoNhTKQHXP5X?=
 =?us-ascii?Q?CWMVAeCOkSyPIaMzPBi1duTsPagnCVeKrYk8zJ8hsF9HybRNKn/C3u9xGwPY?=
 =?us-ascii?Q?AgpTC/M6fUZtosPOJMCgg+go6uCKF1IzaHu6BpXLQ+gJYxsNd8xwQrXi85BY?=
 =?us-ascii?Q?rzVSSB19qC19DBthC/xle0a5znK4KROxztHm1KrAg/rJ/MnQ1rHLJb5licRe?=
 =?us-ascii?Q?uo0m2GQvZ3HuMXTiQ47Rf1qgZNPnXsbO8iEOoYAcmOuBqtKYaTOJbFWWg1+i?=
 =?us-ascii?Q?6zmsuhL70ngJOm36U/ktfIxJ4MICT0fcwZalVzgtqcKq9WviX7jkD19M0i38?=
 =?us-ascii?Q?e+kMlkIqvVh9x01AtWJ4/i6vcRjywaLVo4u8lbL+ZyTs8VGou/SR7NKzWq7N?=
 =?us-ascii?Q?2qR6uXFkHziOPSMf5Nu0OgiRRDeEaeFNbk4Z6AvVm3YRqrKZoUc9wZc9i/Zw?=
 =?us-ascii?Q?hO+bjJa9pFXhoaM02K/19b8OOUpJDvU8yzHEoHEZz7s7DDu0SUdmpB7lqS9k?=
 =?us-ascii?Q?UakeueNkVQVbXss5i1hubMBsCJhdZd9btBMYisSat02D53ZtuRJNRtMV0vnr?=
 =?us-ascii?Q?nCT9dffrySwYIDW9QQ0FNwQekyMKgpgDwFpUH68yJo6srPGAkGa3B6MMitGr?=
 =?us-ascii?Q?vbCAVgvg2/9FAR+mha4t+NohjMpSdR3bh7AUmdvH8J7wgzE59Fc5v+cAQ3CO?=
 =?us-ascii?Q?WO6U4HOtLeGaIcGVTTSSHlt6RvtFVWSzJSVul8M5P/JqYpKloYqvoYatRKJC?=
 =?us-ascii?Q?uslXmLQZmaltNaTFlza/01J5pWSCkiNzIUphiX7/W2/QV27W3aic7Mw1HLBr?=
 =?us-ascii?Q?J4/aDxPQeN4sUhGZ9byj6aAWt3ihZs1qPJwg5SUuDY6DJCOCj9YhoQYOVTtu?=
 =?us-ascii?Q?1NXe/8+aByFc6Pw1nypchpv6z/OOxHe7Kwp23uL3HMg/QOaoJS+8RPOg18ji?=
 =?us-ascii?Q?R2SP6LZfJtbdpRslWg9FPlKHfScEFlpLBpNaE6y9ekUcqKppXSQfFQYZHalb?=
 =?us-ascii?Q?8T5VcX8aaWAl5NuSSph3yvut4/Oaz/V0pyEXG6UrXOcfIC4Vhk2pHXXRh307?=
 =?us-ascii?Q?wmNsWN9CsJFSE8RFO/Oa6UsYyWw=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0c20df6-c494-4f94-b70a-08d9b3e31729
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 09:23:38.1741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OOdUe/70JHyMC3gdM/156jKryA+K35vC4J8iH4M9kHz6sSfg/IZT5p9Kfzwww2BXtNwzw58BXKSZMg/HvkHWRHbX3iwq6W6mr8GXgYmzudQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2096
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10183
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 malwarescore=0
 spamscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111300053
X-Proofpoint-ORIG-GUID: WTBt0WNAo1rzNy2DgF9qTnOe6D-r_WRG
X-Proofpoint-GUID: WTBt0WNAo1rzNy2DgF9qTnOe6D-r_WRG
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 30, 2021 at 10:12:43AM +0100,
 Dmitry Vyukov wrote:
 > On Tue, 30 Nov 2021 at 10:11, Dan Carpenter <dan.carpenter@oracle.com>
 wrote: > > But say you call a function with an uninitialized var [...] 
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
X-Headers-End: 1mrzMi-0001vs-Fz
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

On Tue, Nov 30, 2021 at 10:12:43AM +0100, Dmitry Vyukov wrote:
> On Tue, 30 Nov 2021 at 10:11, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > But say you call a function with an uninitialized variable won't that
> > trigger a warning?  It used to.
> 
> It won't trigger a warning with KMSAN. It never did.
> 
> But you mentioned UBSan, maybe you mean some other checks. I don't
> remember UBSan checking for uninits...

I remember seeing reading this discussion a long time ago but I don't
remember the details at all...

Anyway, Smatch will warn if you pass unitialized variables to a function
regardless of whether they are used or not.  Everything else becomes too
complicated.  If it's really a fast path people will just have to live
with the warnings.  Passing uninitialized variables deliberately is rare
and I've only seen it happen once where it made sense.  The rest was
just fancy pants showing off how complicated you can write code for no
reason.

regards,
dan carpenter


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
