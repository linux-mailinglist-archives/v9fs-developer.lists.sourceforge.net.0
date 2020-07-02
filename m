Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 721A52117BF
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 Jul 2020 03:24:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jqnxv-0003JH-5N; Thu, 02 Jul 2020 01:24:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1jqnxq-0003IV-3u
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jul 2020 01:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2dR/fhaqAoXhenNWVILOb4UyWSfPVI67ngOSy5pNQs4=; b=cwMETpUDGuIvUKdypxsTtP7Ey5
 I032kR6WkEHKrLP+RaUXNUMhbvbUAiGy7KHf7fnME8gnYhadbxJ9RENbHMGlNGP+reU3ln9aMTpjw
 F3wo99lvF8S7Ttddjg7Q6fR1TqyBjNiMIsU0apV7fT1CYEShy5k3UqtaCKyAjmLbAREI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2dR/fhaqAoXhenNWVILOb4UyWSfPVI67ngOSy5pNQs4=; b=cFGAJWHdA4OCSPLB9MOxgrnSR8
 bO9sBpmdNinsNeLBZJLNl4U40W/SToQvUKYFZtDbnsQTUfJPSl1uJYb7n98m5NLoRfOBkA7pwMeNa
 jAkFttr/q4WYR0zxL2f3A3nPPZc71FU/wmE7bjVbc4O5NqkXpYrxeaa9PlgVJbhBJ1qo=;
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jqnxm-004Vm1-68
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jul 2020 01:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2dR/fhaqAoXhenNWVILOb4UyWSfPVI67ngOSy5pNQs4=;
 b=ETqQbuKLhFBe+bN+2mq/f39VwM6LpZzYZ8DpwfHtEeMdHtAtm50UuSdn/Mu1LQXOP6x4wZMpkmTgw07UEMkdZ9C11OVquYbF9TH8b/qVYcgFVS8pFCNs/v0pzI8vmkMlY8Rla0/qBTDMavlGE4VMnTGMueKU2G/zZPTy2jyB1r4=
Received: from DB6PR0501CA0023.eurprd05.prod.outlook.com (2603:10a6:4:8f::33)
 by VI1PR08MB2975.eurprd08.prod.outlook.com (2603:10a6:803:44::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.24; Thu, 2 Jul
 2020 01:09:57 +0000
Received: from DB5EUR03FT021.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:8f:cafe::18) by DB6PR0501CA0023.outlook.office365.com
 (2603:10a6:4:8f::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20 via Frontend
 Transport; Thu, 2 Jul 2020 01:09:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT021.mail.protection.outlook.com (10.152.20.238) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.20 via Frontend Transport; Thu, 2 Jul 2020 01:09:56 +0000
Received: ("Tessian outbound 114f46c34313:v62");
 Thu, 02 Jul 2020 01:09:56 +0000
X-CR-MTA-TID: 64aa7808
Received: from e36ba1de4db3.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 3A4618FB-DC20-4D38-A893-22E04BA5E67D.1; 
 Thu, 02 Jul 2020 01:09:51 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e36ba1de4db3.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 02 Jul 2020 01:09:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W72mm/18p7qmCrUFdM3eiVbgfF6Jo0cEt329i6gq6/15BqMM4N1GaeZsUhIJZ8PJ/mhE0sFDOT4fT0phbp9eHvu4A8ZpakFF94CG6eyZymBfVY7nbFRjF0fkrJxVOJFyJbFqyenJWiSZbGO4C+sb1ho5Fz3AJ1ERW3nVl4hme5bQ/zzBcZnpFjXNsVEx0zSsRJ0trumF4xgQJOgxeVZHj4WMpW0z7EBNZ/rolh06caCWdpav3HLAnz73Sr6bVDSrQQgmAi65v37iqfhtj2wpJLn2LE4lC7AlKbNpG62jYB7SGFxoHEZ/54OmsBjdXvKvRuWGmx7CuiPpZY9OPHvRxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2dR/fhaqAoXhenNWVILOb4UyWSfPVI67ngOSy5pNQs4=;
 b=CqsWbG9avDQlQlBt0ias0DN/2vB2Yz38aj60LK06L7WOfZYeiqaM1J/EuzP7xORTmTqhSc39kcJ5qR450UpuxkBEV9OsxjCrxzi5HC3SuOV0T6MY945JTzRfNF9iQ6ev0iaBNtbx2I01TinGsl0zTvvTHQt7qE1tZrR8iRh5jCTKsrCGgOZHXIkgQEUx3az5sQSI2yFmVsdEI37Uk8SByvvc7SHk+oMvQBxQoGfSXIxeJMKXRyfrpbj2awOSRhU0BZ9vhINspW2/B2ueXNbRC2ei5pwt/sQniX8X+bhX+vNZYqi2BXN/fGyILcVMI1Xk7K+meJ81F4VHMkJqiizlJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2dR/fhaqAoXhenNWVILOb4UyWSfPVI67ngOSy5pNQs4=;
 b=ETqQbuKLhFBe+bN+2mq/f39VwM6LpZzYZ8DpwfHtEeMdHtAtm50UuSdn/Mu1LQXOP6x4wZMpkmTgw07UEMkdZ9C11OVquYbF9TH8b/qVYcgFVS8pFCNs/v0pzI8vmkMlY8Rla0/qBTDMavlGE4VMnTGMueKU2G/zZPTy2jyB1r4=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2250.eurprd08.prod.outlook.com (2603:10a6:3:c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.20; Thu, 2 Jul
 2020 01:09:50 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a%6]) with mapi id 15.20.3153.024; Thu, 2 Jul 2020
 01:09:49 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH v2] 9p: retrieve fid from file when file instance exist.
Thread-Index: AQHWT1C8uFH8AvHCck+eqX9WRLxleKjyjr6AgADqeMA=
Date: Thu, 2 Jul 2020 01:09:49 +0000
Message-ID: <HE1PR0802MB25552E53839BA81FB26210ABF46D0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200701023821.5387-1-jianyong.wu@arm.com>
 <20200701105927.GA20762@nautica>
In-Reply-To: <20200701105927.GA20762@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 9d9ee054-48a3-4fa6-a559-067cf0ac8ec3.1
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f7f835bc-91fe-4e8b-6cb7-08d81e24a288
x-ms-traffictypediagnostic: HE1PR0802MB2250:|VI1PR08MB2975:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB29756DCFF212C4F78F0EA205F46D0@VI1PR08MB2975.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0452022BE1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: mtnned0HZ84I2WSp/hFMECvKybAs181ravd7jn0Ok3r674UtIYPZa/jOPCE+3qHQiC7ON7ec1K3YFQHBE0OrCttnygCDmvmMMtAbRx8jaU+Q0ycvOkRbPS439mWMPieJl3woG9FsyH0jO1cl4f+t7XSqHtmuaq3PYgTqxk9MwW9iuLXqUU4a+AYC7QWgYhS6jSwkTUxAGEnpikDdy+GWozcWuPyje2H267qxM13LazifdrpTq9XFdBGaeiSx8hkllen0nU3H2RVYg1xUM26bPb+zqXotPwzVkWrgumAD/lhTwFCmN3LzBkx4iXmp0Zo3a9ARdqWDAUXQdWaF5tNbYA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(66946007)(52536014)(316002)(54906003)(55016002)(53546011)(33656002)(83380400001)(186003)(5660300002)(26005)(6506007)(66446008)(7696005)(76116006)(86362001)(71200400001)(6916009)(64756008)(66556008)(66476007)(8936002)(4326008)(2906002)(9686003)(8676002)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 7bJtbo2OS9XgpP3xZNCn+6LL+7ao1Tir0uOoQ6S5GBdqHBzm+oKXjXjipcwqfmKDAGUyVkauI+d4nnzOxrEZlt9m9/apxVMVI5PULhPgDDCbudSy83ZX56L18oi+iFQWMAHEFMxgqHSbZagQZds3C7OGjGmrI2xKWQgYFBi7+wNcI97tjt4Mi2WumRaRbZpBmaDTmRieEuqCanGQQJFCK6yLHSDPV37cg9gjm1j33ND/FWuG8arYm8tz5lyOrTVPnF3eIflDOwku+ITfxtXG/OE9KZrqaXrP2I/IaD4JfijAMVtUz7wT20Kdx0xdgD3p3CX1Z3j9dp7dbNXgWHj7iXkRwace7ZYfLqc9z9OGB2k0LLKqN0F+boCzKDZ7BeaP8CzNljkMeGdCRrgdUbK4PbAUKWEDsQ3UEnzBW+aS13eHAQhKZVlwlU4OfdSHqBmW3izDMJn01zxiBWchkBTZ4GkA6zmpYJ2P85dJAVOsjuU=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2250
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT021.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(376002)(346002)(39860400002)(136003)(46966005)(6862004)(186003)(82310400002)(478600001)(4326008)(2906002)(70206006)(6506007)(86362001)(53546011)(70586007)(336012)(47076004)(7696005)(82740400003)(33656002)(83380400001)(26005)(52536014)(54906003)(8936002)(81166007)(8676002)(356005)(55016002)(5660300002)(316002)(9686003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 664c5c5c-515f-4332-284b-08d81e249e7c
X-Forefront-PRVS: 0452022BE1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: olcGArOCSBQ3sAsSyhejlkOihioSyEigmGf3rbcw0T4uphbghAq2P8oOOzozxqznPZbQgRiRxY2Fy9ucNGvl9Vpyxyu0VV+ON/sMrEx4wTZChH1dAmfe2DETbHnT+D1ELxqukx0ZN64sHU5+J9gNgUA4C2RW9aSJeG50b0AO+xuTyifPdHrGjiGyWXqShh1Evv89qLSp2es3oD8JPdsIIKnyHYGdiR1IQxRnJTOYgEms4krroSL0CTesXju9pj2xCzpA+z5QV++IBr+auWqMd4ZG4AnGmzHxrh5cap2loK73ZGpA0AI1juL9+aL8BR/2uS2MP4KifeSH2LTihuo4jsOdse1kJtbtbv0G4Px4GrlZpXcTVCrV8JKpURS04/vRmdGh+kt++gtLRrYwrJi84Q==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2020 01:09:56.7360 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f7f835bc-91fe-4e8b-6cb7-08d81e24a288
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT021.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2975
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.73 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1jqnxm-004Vm1-68
Subject: Re: [V9fs-developer] [PATCH v2] 9p: retrieve fid from file when
 file instance exist.
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
> Sent: Wednesday, July 1, 2020 6:59 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; v9fs-
> developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; Steve
> Capper <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>
> Subject: Re: [PATCH v2] 9p: retrieve fid from file when file instance exist.
>
> Jianyong Wu wrote on Wed, Jul 01, 2020:
> > In the current setattr implementation in 9p, fid is always retrieved
> > from dentry no matter file instance exists or not. There may be some
> > info related to opened file instance dropped. so it's better to
> > retrieve fid from file instance if file instance is passed to setattr.
> >
> > for example:
> > fd=open("tmp", O_RDWR);
> > ftruncate(fd, 10);
> >
> > The file context related with fd will be lost as fid is always
> > retrieved from dentry, then the backend can't get the info of file
> > context. It is against the original intention of user and may lead to
> > bug.
>
> Thanks for the commit message - still feels a bit odd but at least correct
> enough for me :)
>
Thanks.

> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
> >  fs/9p/vfs_inode.c      | 6 +++++-
> >  fs/9p/vfs_inode_dotl.c | 6 +++++-
> >  2 files changed, 10 insertions(+), 2 deletions(-)
> >
> > diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c index
> > c9255d399917..b33574d347fa 100644
> > --- a/fs/9p/vfs_inode.c
> > +++ b/fs/9p/vfs_inode.c
> > @@ -1100,7 +1100,11 @@ static int v9fs_vfs_setattr(struct dentry
> > *dentry, struct iattr *iattr)
> >
> >  retval = -EPERM;
> >  v9ses = v9fs_dentry2v9ses(dentry);
> > -fid = v9fs_fid_lookup(dentry);
> > +if (iattr->ia_valid & ATTR_FILE) {
> > +fid = iattr->ia_file->private_data;
> > +WARN_ON(!fid);
>
> That would crash in 9p_client_wstat a few lines below with the current else ;
> so I'm not sure WARN_ON is appropriate with this code.
>
> the snippet I had suggested had v9fs_fid_lookup in a different if, not as a else
> statement to avoid this crash (and then warning is OK)
>
Yeah, should check fid before "v9fs_fid_lookup", how about

if (iattr->ia_valid & ATTR_FILE) {
                fid = iattr->ia_file->private_data;
                WARN_ON(!fid);
 }
If (!fid)
fid = v9fs_fid_lookup(dentry);
...

Thanks
Jianyong

> > +} else
> > +fid = v9fs_fid_lookup(dentry);
>
> --
> Dominique
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
