Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF20464605
	for <lists+v9fs-developer@lfdr.de>; Wed,  1 Dec 2021 05:39:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1msHOh-00035p-W2; Wed, 01 Dec 2021 04:39:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dan.carpenter@oracle.com>) id 1msHOg-00035e-1F
 for v9fs-developer@lists.sourceforge.net; Wed, 01 Dec 2021 04:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=odengeb4ApNj7uSG4ouloUUPx0bLRJuZDT8pIXNdc4g=; b=f/9XxcpemR+wXAJ81yKxgYp2vv
 lkGYW0YYmFGils49kUkRpNs1OxDPzEvOPSutzQLS1Yk5WBfjm0+SryZ1wyNXI7LAGQcMBqK2PhS03
 FXldtkmSaQzuazFemy3yXTwbybOd+GpyKOizRDxAKKGWW2uf8K7uOVLALIdUtOZs0rXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=odengeb4ApNj7uSG4ouloUUPx0bLRJuZDT8pIXNdc4g=; b=YCIvrhKyOatS13InXxMlJ970OE
 03q5r0s3YOwjvUrN4ziH1qSEgdVjU8/O1/+lt8orsw9nW+82r2k4dM8Yl7cuv6Sb0pEg6dBpAudr2
 wym1pJWL4UJMCJ/ZBh04vCDv2OmSaalQZsYreoUQDBtZmG3ZES83Qceva/jfZ0U5qGss=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msHOZ-0002uU-AA
 for v9fs-developer@lists.sourceforge.net; Wed, 01 Dec 2021 04:39:09 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1B13E6LM016572; 
 Wed, 1 Dec 2021 04:38:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=odengeb4ApNj7uSG4ouloUUPx0bLRJuZDT8pIXNdc4g=;
 b=QCJnEqXBCCC/S/rOfDpNLCLTcR6twGO4qkbn10a5534S/DS+KfhsWcPzXmqTSpHwnjw0
 HcdK6dNHTz+QPi8subpfTsFa2NOELLxl6p3eddZ6QUvHw6PE5jG8EZG9/LlMt1n7FGOn
 Y2FaFHpcHWTvMdZUHIvRzwcsFr5Yww5P+eT7Tz/3C/8xoYe3D1RDisXaXbPl0lrsyiSN
 ZmY3hIxvCfjTZDacjwPnEGtLU6F/diHn/BgsyE5IkDyn2/vVDmgWrkH9w/2aKk0cAglz
 F3Mr6i5V7VXOHVtOjMt3bFJt457LOQPafcbFnVCzWLm5uwyiNjXPWLD3vtpkADHQVSXN tw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cmu1wnn7j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Dec 2021 04:38:48 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1B14YMEE108032;
 Wed, 1 Dec 2021 04:38:47 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
 by userp3020.oracle.com with ESMTP id 3cke4r29ay-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Dec 2021 04:38:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bcG6law+WUeFdaGnAmV0iJX7SdwY2ooT0CkGxh88oZbsBHqYOe5F5KkuNfJbEa3osiFIhmek6BXBsVtL8UeE9u7zFlKd7amZyYyBLu+wQG9dmJPNJKSiBUN/WtjQjkq3yq/1YJOy+MUeUzADSEWTHhQnPKzce5qBV8D3qwAiXwjxicROIZciDPXtkboPu9BgiXhcwGe8Luw0RdcHqrXv2KAVROh147o2ERwZJFf2sUYMezGpy3TZY5IUiYlgBMOGpkX/qhwmGGW4vtB3gXLL8sjx3FBFwMMv2mXjbvvjlGlY4UTxIqM+Ox2fQPyKlq0/lg+KPb/Dw+uCqmxQo7B1Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=odengeb4ApNj7uSG4ouloUUPx0bLRJuZDT8pIXNdc4g=;
 b=MMtP8MsT8Br3QigFHsFpQrJPBWvAutnopvWw6tWkw4qKeic7bOokx9JjXRNKgys1g4VONbp+yDzSHsj9kD8b2myCDVziZ675gIgfAkqGbHvAQyxQuHMkWX3eu+zno8ihbllvfgWFU3oUkboeoTNLySeOdB3ci0szSpAUPE4XOhnxyr0ejhBgj4fezeSZuw8CPSJ1lwC1kRDt4lGsgssGYEG8bPV55HzfNqC1vDLzAfrrqFTsGaHbr+GxHYuk5SD7xLbXXKOpFo+UcaxBWUbsatMDIUAtStpWYRXQpddmgeasAZHps/db8IcyO/PpacnYGo2DBk30v6RmtYJJmiZhZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=odengeb4ApNj7uSG4ouloUUPx0bLRJuZDT8pIXNdc4g=;
 b=xRP+AWmqMrg9yitdOCUn+kmejdggE7Guip0011/3Q3juURZCXXAIrKGfk0nPybzJXuqTtc7EnhXrFxhad3RI4LGq5hUIHkzXrTJP76SyLBnMcXJywQE3hPlzt3M5hH799FxvDBm4KSvb61C80Gqj6irK5KWwmBiJwcFCJFBucTg=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1373.namprd10.prod.outlook.com
 (2603:10b6:300:20::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Wed, 1 Dec
 2021 04:38:45 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.024; Wed, 1 Dec 2021
 04:38:45 +0000
Date: Wed, 1 Dec 2021 07:38:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alexander Potapenko <glider@google.com>
Message-ID: <20211201043822.GA9522@kadam>
References: <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org> <20211130074955.GR6514@kadam>
 <CACT4Y+bqJZNXyG0x=HieW26WdAmAt=5o4M7NgCa_5UR-4jdN3w@mail.gmail.com>
 <20211130091101.GW18178@kadam>
 <CACT4Y+a2RN-q9os99Ms_T0nJLqaFo6u225PwCON7DqXTdEcj8g@mail.gmail.com>
 <20211130092310.GX18178@kadam>
 <CAG_fn=Vo=FABp-URfpfuCnW7fCzEvHM=1w5ygs7o0Xuw8qV1iQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAG_fn=Vo=FABp-URfpfuCnW7fCzEvHM=1w5ygs7o0Xuw8qV1iQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0041.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::29)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JN2P275CA0041.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.21 via Frontend Transport; Wed, 1 Dec 2021 04:38:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f08cec83-5a97-4056-72c8-08d9b4847575
X-MS-TrafficTypeDiagnostic: MWHPR10MB1373:
X-Microsoft-Antispam-PRVS: <MWHPR10MB137321F11E21197A76E793F08E689@MWHPR10MB1373.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: flT3eiVvb981H0xTkHhfiIUBI43NIFlM9OQMidNQh+1ykKkeWAc2V0IjEWVLIwx/R7l01W8Jm4ipJx2QVBtL8hcOkT3Luj/UrEtdyojyEKjNPchZb06l+Zj5X2NOqRC7Y4Cdg3uRdOtivwjshjDPi1ST8mTnUh9y5E6xB/cbrYTzb0xjgxNECqrdobiC4Xn1oFQjN5W0rKcw8odKSItKK87VKr0ROOtxiEySKAkxXwOCL+BP8okXoJd0vTmWQcEFD2+15XFYcPwvHT2SHmC+cCarc593ByVhVL2g1fZlAxhUgpQ6en219caBT7qRAGSkosbbZWbxqYrCTVpwYaH/Zc+UMoU3kQPFiQnrqDMIEmkEF/gyOfsk/sTBsKB/kM69zN4mdxSNnuwKqbDYeGkqT+No3qG8yn/VhkTOgrRaP8qhzZ5EfjIWUmKeB1HiB5QIHFLejuhj34xvlzp2WPTCrn5gwmRwQup/bXZftjLzPtrz7n9zeHtYJiywHLLIYGfQpq98xoyQdjtCqh1+v7jbDc5jNl3SgTWwYJ8VsLFccOjrPu4Yiow8OjQsj4wV0aAR7/Fx4uMT/pqUqJ4fXLQyH3ctamN9gwmAIxpNC9rYVo/iyPHnI3CIHJZxipZVO8QEOs7BLzIuzhQNCpp1+Ip3zwAi5p54Ie3KzNI2+IgnVaMJMqVSlIPvBB3wL4YDN/XGn2DZHd65L/kZ6/URcAurCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(44832011)(316002)(2906002)(54906003)(7416002)(26005)(1076003)(8936002)(508600001)(956004)(9686003)(55016003)(6916009)(38100700002)(6496006)(6666004)(33656002)(66556008)(86362001)(38350700002)(5660300002)(66476007)(53546011)(52116002)(66946007)(83380400001)(186003)(9576002)(4326008)(33716001)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0YW9WoAvbXRprsNH/bacLrAjdVegM/jPXMjtWTPgkw2+2jf1YCiJLeO5D6jC?=
 =?us-ascii?Q?GRbbTNirgsrpSUjvqEkI1MoYSZzPLZPTwEY1SCNHDwicErslF0IYkEUy4Tle?=
 =?us-ascii?Q?kmQlUFQhGi4l/9HNrUAYgHsDqy7Bb8vx9xXCsSY5MzSe0cZ4dVzO7OmzdWNe?=
 =?us-ascii?Q?lpfhjQIvklJLMPFX6Gki2W25cWZzzzVUryIHyGy8IV10jVN4WivtcAnsXthJ?=
 =?us-ascii?Q?WIGwKp59E8YPHt8OIuf7Fwur96s1QcmkGr9AQR0ad8HMwgXf3Ip85PsWfYI0?=
 =?us-ascii?Q?K+2lrczT+kBpP7s6Xr+SfkqAH0bpzkE/S1ClQIqxbTQMOO0dmqLB5kHxtFhW?=
 =?us-ascii?Q?SfT4r7WcO14WvfwxugsgZ3GWwQKyIWmYXOPhQWMlkHpHx+mtYH7J95WtB+pu?=
 =?us-ascii?Q?WvjdX5wkm56d3ZiFUI6MUz0sYURwoVrfCwJacTM+j5OY9sP2bTusV0EUwux+?=
 =?us-ascii?Q?jLx7C5IMIEh/J7wPoItg3UQRYMhDc7iS5EMoK1+nrCqfuQmt1TEwkvfha2/L?=
 =?us-ascii?Q?4J5pS/WCAG3b8KMa35TvjTpKpRfjHw1ib2ASNeDPJ3ASJ2/ZMHEQJLhVLxTp?=
 =?us-ascii?Q?84QVs12gBNOV5f4gzdh795EZGI+6DXoZvst+IHF+HIAhdaNufY9ywFzg5Wq5?=
 =?us-ascii?Q?uhmYWWyR7oXPgjsA6UIA3l7qltuXub3eXvGeAakd0gYY/Zf3NsypBhPdz9Lf?=
 =?us-ascii?Q?2t61LjXz/JEyoOb6nBXsPzWbNehpInaaV2jKVHyPoLbfacFIKyqSrZ9pJuPC?=
 =?us-ascii?Q?ePeSm9yEp4FvZlVwVEUOob644d7lMfTpxcVBDH3zpjVvbXhcl+yc70eRvys0?=
 =?us-ascii?Q?LY5RkFhCb/HBz8k6Q+r0MLbJKhR3whoZv9/zL/2A/Z9GKhc9wMEzjtzXMsqa?=
 =?us-ascii?Q?0ltSAH5o0HfaRSCesgD2auPoe4voKboySONstHFB7ChEbF7z4a1Qt3X0uIYQ?=
 =?us-ascii?Q?ZT7E/M3sXxtutgYuAlh22RMhS6gXVkVxu77tXwgl3dDtI+UqhC7YZq3QUOwT?=
 =?us-ascii?Q?6ENZgqNNGq8M8IPMnqJaqkr00+oyGyJk4wSojJCBoKjBxlSddo/QrleJKbXA?=
 =?us-ascii?Q?GCJHpDVTs5HGYTcM6Bsj/oD4Ic4BFlZuntQiuWJNgSvLkMK+2sdR5bjCHgc8?=
 =?us-ascii?Q?gP9NHBOHZdmBlEGVLMfna8uZEWoGd0fNb8oQEFvHk4b0OMogQSa3DK9Tt/MQ?=
 =?us-ascii?Q?2VKFZRmXtk/j8A3X8KxF/pyHtuhg5Xw4r7g+ny6RbROr2H8tlA+fqwFszHtr?=
 =?us-ascii?Q?kuqVnghmzt06Bfh5Nh1gxx4LfOx9CCK45qTTsctVCcrIM5osF9C8Ud3vgseP?=
 =?us-ascii?Q?IfVJO+few+pHTxAkhon4dR5+m9D3TSiLgPVTvxBKQwDvwDuA7cBpqjj3ur6e?=
 =?us-ascii?Q?jdlcS2l3I7P8kHFVngR4ZtZOD6oQIUWmfLEbQ3C1k183ihXFVBuqzp/24dst?=
 =?us-ascii?Q?A2zbsBubIXRVJdXexNDE6MybdSw14FhhujxyNfSNtRdR2XL2oQaQKvFIJwGT?=
 =?us-ascii?Q?0by6l2CrJ1blhqZVYjt+7NaM4NAfR3fuh9QAb3cVwi+q1hdyOpLqAdpgvty3?=
 =?us-ascii?Q?qtmeF3tbGySsTbCK4B2KCnD6TaUp/3+wltgKA1Q+gSo8LCjQv1EkvhVK3dYc?=
 =?us-ascii?Q?HkMm4TJo3vWcHmAaHW82FK0VpPOmSxK/Ka/BYBDxUpeo5WFt99sgQ0wTC5j+?=
 =?us-ascii?Q?v6wVZOSDJz6pW/8BQJQRjzvQB8c=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f08cec83-5a97-4056-72c8-08d9b4847575
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 04:38:45.1418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: odumy/qSxrWIiCN0HeJ5HwrHuNSEIu52CM7jd6Uw8zz0BmHiUHv1bwprHbXxt7TQjOoLZg1+9m5Yez4rH7mDWS7lBJT/o81n006L3oX2b70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1373
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10184
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112010024
X-Proofpoint-GUID: GaNL81jtwWGBppWKHZMG__xn_RqtQ7iP
X-Proofpoint-ORIG-GUID: GaNL81jtwWGBppWKHZMG__xn_RqtQ7iP
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 30, 2021 at 04:37:01PM +0100,
 'Alexander Potapenko'
 via syzkaller-bugs wrote: > On Tue, Nov 30, 2021 at 10:23 AM Dan Carpenter
 <dan.carpenter@oracle.com> wrote: > > > > On Tue, Nov 30, 202 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1msHOZ-0002uU-AA
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
 Christian Brauner <christian.brauner@ubuntu.com>, stable@kernel.org,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Nov 30, 2021 at 04:37:01PM +0100, 'Alexander Potapenko' via syzkaller-bugs wrote:
> On Tue, Nov 30, 2021 at 10:23 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Tue, Nov 30, 2021 at 10:12:43AM +0100, Dmitry Vyukov wrote:
> > > On Tue, 30 Nov 2021 at 10:11, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > > But say you call a function with an uninitialized variable won't that
> > > > trigger a warning?  It used to.
> > >
> > > It won't trigger a warning with KMSAN. It never did.
> > >
> > > But you mentioned UBSan, maybe you mean some other checks. I don't
> > > remember UBSan checking for uninits...
> >
> > I remember seeing reading this discussion a long time ago but I don't
> > remember the details at all...
> >
> > Anyway, Smatch will warn if you pass unitialized variables to a function
> > regardless of whether they are used or not.  Everything else becomes too
> > complicated.  If it's really a fast path people will just have to live
> > with the warnings.  Passing uninitialized variables deliberately is rare
> > and I've only seen it happen once where it made sense.  The rest was
> > just fancy pants showing off how complicated you can write code for no
> > reason.
> 
> As far as I can tell, a lot of structs in the kernel get allocated by
> kmalloc() in one function and then passed to a different function

Yeah, that's fine.  What I'm talking about is a different thing.

	struct foo *p;
	size_t size;

	p = my_custom_alloc(dev, &size);
	if (!p)
		goto free;
	...

free:
	free_pointer(p, size);  <-- size is uninitialized, but it's not
				    used when p is NULL.

regards,
dan carpenter


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
