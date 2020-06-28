Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E0720C838
	for <lists+v9fs-developer@lfdr.de>; Sun, 28 Jun 2020 15:25:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jpXJB-0006ep-Vn; Sun, 28 Jun 2020 13:25:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1jpXJA-0006ee-RQ
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 13:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6iupa0qIeJha3akXpE9IMR3bJbXYJRW2ji9lDDAj8d4=; b=BBI3lH3hRl+o1Q8jETNc9kblgc
 l2yaFJjNY+jdJdX5/CQav4Ljba+DEwF6bjOrh0MHEBAIun7rR98FuRyJUTDmRgcTnV9ZrozRE7973
 Lx8HhawZpXrBXcwLZbk8Z7B+TWH0EFEGrW0zBLr3ZlDcsxrvHgeptXuterEI2ARZuBQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6iupa0qIeJha3akXpE9IMR3bJbXYJRW2ji9lDDAj8d4=; b=NRhe4vvdd45J/dD97VWnx/mE/m
 1UtANkkkIZEd2f08V9NsyRRI4mm1QkGKb9m5SJxnTUSmxViXsRtV7x7an8k+v8/PYVjtlw/SxK5jC
 FnA9eS2/1AO/VE1W5goFXvrw8f4nHEqbAYd7D+4G0Phob+1tT0k9DhoqcVgC2gFjCxzE=;
Received: from mail-vi1eur05on2053.outbound.protection.outlook.com
 ([40.107.21.53] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jpXJ5-000i8i-N5
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 13:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6iupa0qIeJha3akXpE9IMR3bJbXYJRW2ji9lDDAj8d4=;
 b=yWauA9ASrfcGB8q5n0pbnIphlnkpR60s/9XvJZ+YAPEBe3C7s8uF6+W1ulRjZ9T38+pUClmdGsLlmq2OGXkvPfwEEktNINQQEo+LaQct7mCWM+B9QJm9pRznBmOnVcCO7NbX2Ob0H2Yku15GnYwzxrOl6nXCJaeGMwNMMQbhWpE=
Received: from MRXP264CA0041.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:14::29)
 by VI1PR08MB3072.eurprd08.prod.outlook.com (2603:10a6:803:47::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Sun, 28 Jun
 2020 06:51:36 +0000
Received: from VE1EUR03FT061.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:500:14:cafe::68) by MRXP264CA0041.outlook.office365.com
 (2603:10a6:500:14::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.24 via Frontend
 Transport; Sun, 28 Jun 2020 06:51:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT061.mail.protection.outlook.com (10.152.19.220) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.20 via Frontend Transport; Sun, 28 Jun 2020 06:51:36 +0000
Received: ("Tessian outbound 4df70ead97c2:v60");
 Sun, 28 Jun 2020 06:51:35 +0000
X-CR-MTA-TID: 64aa7808
Received: from fe3982425053.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 703BE5BC-BF20-4D21-8EDF-039CEA9CA27C.1; 
 Sun, 28 Jun 2020 06:51:30 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id fe3982425053.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Sun, 28 Jun 2020 06:51:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D5WD/PHbPIoDkmv4iefiumuNFOijpdJDVmmXtlrX7PzwMABT7PRJQi0TlD2U01fJH9SEtf6M11NF/a/HYUw8/ck6FYxl1sodLtBZdoG3HYBxp2u2iMCDa9Wcr0qfM2EEIKFMzHon/cZNCAM8c2I0b5NGaeq/uIrHpBVgCfGCvljQ8rSBzwyKyXaRyuwPiW7kj6HvlXDA3m34U83MUzpX38c03MLG4AL1SBB64vBLOKUGoUgosisq0Lxvodwq8S9LE2mGUqYP+Sxf3y4yASxdFRTcwUj4zs4oOObuGOUIwGS8FbmJgF3T6sFKJhB7Ia8kSHOdRh7WB9nIUl+e12OLcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6iupa0qIeJha3akXpE9IMR3bJbXYJRW2ji9lDDAj8d4=;
 b=NBnc2QJcjcLaTbogeHc66QwBh7r/GBXGGOmwgrFxEXU+cbiW9HpmB6cYfFao3WQKfvNfNGGp7Uq30M/msVaYwoIcSG5dxcC4W/uXX95bs+/usb+utmd1qpQYubNhxe3pZfiZGJl5FLVUPrnou9GGezoPIKMeuhj1XqFWQfUQst+k7CzAEE62dA4dCXR9HaQPwiOJuXvIYXF0znbi13gVI8nQwbtOaFC6Vu0PqynLxFNLr/EOuBHidIL/R61OFOQh+VhaiWsCHRdXuwBJOkh6HvR0lulW151PptdceqF2WSeltSmrUq0i6Gsz34Yb7+lKBd3joYD/VnRTz7KOA1tB3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6iupa0qIeJha3akXpE9IMR3bJbXYJRW2ji9lDDAj8d4=;
 b=yWauA9ASrfcGB8q5n0pbnIphlnkpR60s/9XvJZ+YAPEBe3C7s8uF6+W1ulRjZ9T38+pUClmdGsLlmq2OGXkvPfwEEktNINQQEo+LaQct7mCWM+B9QJm9pRznBmOnVcCO7NbX2Ob0H2Yku15GnYwzxrOl6nXCJaeGMwNMMQbhWpE=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR08MB2924.eurprd08.prod.outlook.com (2603:10a6:7:33::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.23; Sun, 28 Jun
 2020 06:51:27 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a%6]) with mapi id 15.20.3131.026; Sun, 28 Jun 2020
 06:51:27 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [RFC PATCH 1/2] 9p: retrieve fid from file when file instance
 exist.
Thread-Index: AQHWTPDA0ysky3vK30iFs4N2skTYSKjtkMQAgAADTjA=
Date: Sun, 28 Jun 2020 06:51:26 +0000
Message-ID: <HE1PR0802MB25556829FCB3A4171E3BDE9DF4910@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200628020608.36512-1-jianyong.wu@arm.com>
 <20200628020608.36512-2-jianyong.wu@arm.com> <20200628062824.GB13335@nautica>
In-Reply-To: <20200628062824.GB13335@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 626c3eae-8639-4272-9e11-ac92210f1d89.1
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 412816b4-21b0-48d7-0041-08d81b2fb38f
x-ms-traffictypediagnostic: HE1PR08MB2924:|VI1PR08MB3072:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB3072178717E270F3F5B08907F4910@VI1PR08MB3072.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0448A97BF2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 5waxWEiW0Jsbp1BhEpUSiC9A3dAgouJ7drOi4HgVW+2Hhbot7hi2JUZ8KbAgeySWTO4c5t8WRZFkZ6qi3GTlhYz9tFA4DiZo2TP9c3v3Kz1Olmg8UwhHdnFk/mChhN5EMJZNzWUhmKLonoUfdduVCd/rGimZHfuXcDyQC1TSTP4BXlmF5ONTGWUd/7B2/B5KBQfyFC/yRBf8aAGUcYFjJxfEE/hlz4wMiOh6YfgQ+9EeLAHXVQz4qfcPmvPPcOBPA0z8W5m14kf9Ucr8O11HtABmsSzxSSIU2Ltk+P/2yGMIi00Ehp27y6Bm5sN7UQUeyo5SGjOd1WAUty5jIE5fx5xw0mHZtmW5Ahgb2/dg7xMR8vGXp2G/YTznuKiBt5XS
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(366004)(346002)(376002)(396003)(39850400004)(52536014)(53546011)(6506007)(7696005)(478600001)(8676002)(71200400001)(5660300002)(6916009)(2906002)(4326008)(8936002)(26005)(55016002)(66476007)(64756008)(66946007)(186003)(83380400001)(76116006)(66556008)(9686003)(54906003)(316002)(33656002)(66446008)(86362001)(396324004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4STfhXn2cm7lZ8RfS6JpQethdbIbGvwFXZtSSlo2Gf36K+k69Z/gNyDmoTp63vMh7MehOefe/x53d2Zykou+IjbqaW6PWTAmD41Yhil5jIAYuvdY0aJD7hJw1+USMI9Y4AHq7eGbCL0tJ28za/DmeIZM1evKbv2UIBLRdnhsXJjo8fp9qEVBUggUvF+YUy618RLBVAdCaglRVh/R1haJcI9iUhpSJH7cHoxx3k5NmHtLuIyEetxYLxJosIzo9TWiCQgVFAWKQU9KIFT1amH7SSmBFxX26XeTgBVU5Q2PieYRuHTwT1hB7bbjO4DhM0O4FxFI4l4vFPUFPJCRo3qYJRXftY2zIYrisINsyZZEPntKgLzXZwrWbKo4lKMix6hPhDIjIYro3ljzuNbrr5skYTm8b1vjMTd0ITZeYwJ3qYElSX9OwmPCN5hBWGZng8KdG6D3db8Y2TtbC1WUboa9Koi3aClNgqF1D6OSMsxk7XA=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR08MB2924
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(39850400004)(396003)(46966005)(81166007)(478600001)(356005)(83380400001)(7696005)(336012)(6862004)(82310400002)(9686003)(55016002)(26005)(82740400003)(52536014)(47076004)(33656002)(186003)(5660300002)(86362001)(6506007)(2906002)(8676002)(70586007)(53546011)(8936002)(70206006)(36906005)(316002)(54906003)(4326008)(396324004);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d6266758-6dd6-4864-5807-08d81b2fae0c
X-Forefront-PRVS: 0448A97BF2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MAa0c1B9jYvg3phZeB5iokX7ZYIUj1pcXZZD1flWVqtVxANSnjnT4ecl5alR6chSi4ASg1+A0m5w/XlgZur7hf4PZTmwuywSvRLoKTg4w3JORCrybJPW0LgwORnuEXyRRlPov0t5JS1OzgLxEL+TnsmWf+eY/RDp3oa/JR07YVO0rH+Rg8eBimuyORtGwxgUCBCmBmw/o4HHon2RJ2V1Iw4T9RPzc44eF5Kkb3O9aBQHP4zCerg0dx+QFP2bpNCIrhYykZN4JGPbzpDpV+nn+tYoLYOsZUPQ4KldHZ1VQMlIZSEz9R4UPK7Hj/M3y/K8L0pqBwLI/qjOv4bK/7E1ARyukM8Kaja1F3WuqI8yue7O4vb9m0TgiSEFQJDUyOGYpEt20SXZ+JX9Qn7Q8N/EWjDvG1mIS3uRmL0TX/F1QGM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2020 06:51:36.1711 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 412816b4-21b0-48d7-0041-08d81b2fb38f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3072
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.53 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jpXJ5-000i8i-N5
Subject: Re: [V9fs-developer] [RFC PATCH 1/2] 9p: retrieve fid from file
 when file instance exist.
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
Cc: "lucho@ionkov.net" <lucho@ionkov.net>, Justin He <Justin.He@arm.com>,
 Wei Chen <Wei.Chen@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 "ericvh@gmail.com" <ericvh@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kaly Xin <Kaly.Xin@arm.com>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

> -----Original Message-----
> From: Dominique Martinet <asmadeus@codewreck.org>
> Sent: Sunday, June 28, 2020 2:28 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; v9fs-
> developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; Steve
> Capper <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>
> Subject: Re: [RFC PATCH 1/2] 9p: retrieve fid from file when file instance
> exist.
>
> Jianyong Wu wrote on Sun, Jun 28, 2020:
> > In the current setattr implementation in 9p, fid will always retrieved
> > from dentry no matter file instance exist or not when setattr. There
> > will be some info related to open file instance dropped. so it's
> > better to retrieve fid from file instance if file instance is passed to setattr.
> >
> > for example:
> > fd=open("tmp", O_RDWR);
> > ftruncate(fd, 10);
> >
> > the file context related with fd info will lost as fid will always be
> > retrieved from dentry, then the backend can't get the info of file context.
> > it is against the original intention of user and may lead to bug.
>
> I agree on principle, this makes more sense to use the file's fid.
>
Thanks!

> Just a comment below, but while I'm up in commit message I'll also be
> annoying with it -- please try to fix grammar mistakes for next
> patches/version (mostly missing some 'be' for future passive form; but I don't
> understand why you use future at all and some passive forms could probably
> be made active to simplify... Anyway we're not here to discuss English
> grammar but words missing out is sloppy and that gives a bad impression for
> no good reason)
>
Sorry to my poor English and thanks to point out the grammar mistakes,  I'll fix it.

> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
> >  fs/9p/vfs_inode.c      | 5 ++++-
> >  fs/9p/vfs_inode_dotl.c | 5 ++++-
> >  2 files changed, 8 insertions(+), 2 deletions(-)
> >
> > diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c index
> > c9255d399917..010869389523 100644
> > --- a/fs/9p/vfs_inode.c
> > +++ b/fs/9p/vfs_inode.c
> > @@ -1100,7 +1100,10 @@ static int v9fs_vfs_setattr(struct dentry
> > *dentry, struct iattr *iattr)
> >
> >  retval = -EPERM;
> >  v9ses = v9fs_dentry2v9ses(dentry);
> > -fid = v9fs_fid_lookup(dentry);
> > +if (iattr->ia_valid & ATTR_FILE)
> > +fid = iattr->ia_file->private_data;
>
> hmm, normally setattr cannot happen on a file that hasn't been opened so
> private_data should always be set, but it doesn't cost much to play safe and
> check? e.g. something like this is more conservative:
>
> struct p9_fid *fid = NULL;
> ...
> if (iattr->ia_valid & ATTR_FILE) {
> fid = iattr->ia_file->private_data;
> WARN_ON(!fid);
> }
> if (!fid)
> fid = v9fs_fid_lookup(dentry);
>
>
>
> What do you think?
>
Thanks, I think it's better. I'll take it.

Thanks
Jianyong

> --
> Dominique
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
