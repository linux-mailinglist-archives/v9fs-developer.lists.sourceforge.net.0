Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 884212784F8
	for <lists+v9fs-developer@lfdr.de>; Fri, 25 Sep 2020 12:22:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kLkrl-0000qj-Vh; Fri, 25 Sep 2020 10:22:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1kLkrk-0000qJ-Hf
 for v9fs-developer@lists.sourceforge.net; Fri, 25 Sep 2020 10:22:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aIT+UH4551js9rNvH+Cc6NrmlrN2VYUh7YzoQPn7BEQ=; b=lxWdU1ww/3fsWoVDbowQVV4zNT
 pxDCA5tgvXWp6sVDG7EU23ztSvsFGw3B5D7HuEJOszIbPF48Uj5r3cCOqMtbwJUMuhkyRWHJ3xrCR
 I1r8Tuab/aN+5pGYTY4HVqMEFQ/ocRGT/iY+m534ABLWMaR+MP50bNfUFxumSwY3WqIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aIT+UH4551js9rNvH+Cc6NrmlrN2VYUh7YzoQPn7BEQ=; b=ZwcBHm1ExAaDKwz6qbLuXUdiYa
 BEcugvpRH5SpDFjPjuAndGa6H6OeCOO/vRJFwWg5v8BX2eKlIKWK3bomOSIT50T/haSNvrsZzc7Ut
 m+XoPTz3JkqcbzyJby8wuvm+Wz3tHlxg06jzq24NreDdd7WprEa4Eb4fEp+gBxGWNKJc=;
Received: from mail-eopbgr60079.outbound.protection.outlook.com ([40.107.6.79]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kLkrU-005LP0-OH
 for v9fs-developer@lists.sourceforge.net; Fri, 25 Sep 2020 10:22:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aIT+UH4551js9rNvH+Cc6NrmlrN2VYUh7YzoQPn7BEQ=;
 b=mCugp4xXbMcdla4aM3ZW4bD3W9JcpcJiH9MFCsCwi0JXRiI0sD6+eFsuflTb3yvGzuXKsGfTNEpMb4rdC/qEpww85QmUomT7Dtg6bs2+h/CM1QFbpgfU29aFx6ul692O7wzmG5M8iQNsNq1+Nn2rjsUwZc8hrG+0ElYfEP2Dl2Q=
Received: from AM6P194CA0094.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:8f::35)
 by AM6PR08MB3366.eurprd08.prod.outlook.com (2603:10a6:20b:47::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.22; Fri, 25 Sep
 2020 09:49:24 +0000
Received: from VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:8f:cafe::48) by AM6P194CA0094.outlook.office365.com
 (2603:10a6:209:8f::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.22 via Frontend
 Transport; Fri, 25 Sep 2020 09:49:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT019.mail.protection.outlook.com (10.152.18.153) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3412.21 via Frontend Transport; Fri, 25 Sep 2020 09:49:23 +0000
Received: ("Tessian outbound e8cdb8c6f386:v64");
 Fri, 25 Sep 2020 09:49:23 +0000
X-CR-MTA-TID: 64aa7808
Received: from 1c112df7a144.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 E9193443-D1C5-435F-8DBE-A5C5974C8B02.1; 
 Fri, 25 Sep 2020 09:49:18 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1c112df7a144.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 25 Sep 2020 09:49:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R70ZsDHlagoQ8UWHRC825xI0NZZQRJjpUFkFmoBoRjjv+ZhQ+2/rkxVce+kQGMGVtmJ3iLFkIfJ+36JVo3JDjdg+jDpp5Zaq/mvHzVz1hineS0Iu1c4H1QWNqNFjARrHANekEjkdivfuLAyyUw7rAxCgV0Zx2CoIV4LTWtEhdqgheP/GW0EvV+tG5DCwJTbi6Jta5DsSBPF6tumldQuk+dtitmOTZA9T9LhEj8c2Vr09sdTm9H2cTkBAe3JydpTKaNKoa1Oa1zUl7diHhXHWH6X58YU0wB98kIcOjE/S50+4SI3Rfe4UkCRLDBMca5rYP2i9y9dFqYrZJp+4OrJbUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aIT+UH4551js9rNvH+Cc6NrmlrN2VYUh7YzoQPn7BEQ=;
 b=C0oUjyk8biGEgxdbWH2vEG7rCddrg4QH3/qf1ll6ivnwuTytpeBye5kPFZfA5huEW6WQcU+9Tui1bQz2fnJip9HmDl+Q9EQsg1BbnIwjs/IHHQ5jhg/mzDk7ceB9xwXi3yv/L1buApae9tlSa/WniwrbPTern0JKT2HQa0ziydNKg2+qlNvwgNwVCA3lEDDJD1GqdUM2ooYruyGcHXjKbvUnGy7/I5uOU/2Hgfq/Qo8OfaeVzOITXqtpM930b7PKemxM4riFxeq8TmpaGycr6f82ZGaa9Cx9qZD30p3mnXAVOtjWUA6hy0O5bNkoiIrFIlCkuigkjwMkLsYwBjUvtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aIT+UH4551js9rNvH+Cc6NrmlrN2VYUh7YzoQPn7BEQ=;
 b=mCugp4xXbMcdla4aM3ZW4bD3W9JcpcJiH9MFCsCwi0JXRiI0sD6+eFsuflTb3yvGzuXKsGfTNEpMb4rdC/qEpww85QmUomT7Dtg6bs2+h/CM1QFbpgfU29aFx6ul692O7wzmG5M8iQNsNq1+Nn2rjsUwZc8hrG+0ElYfEP2Dl2Q=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2442.eurprd08.prod.outlook.com (2603:10a6:3:e1::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15; Fri, 25 Sep
 2020 09:49:16 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00%5]) with mapi id 15.20.3412.024; Fri, 25 Sep 2020
 09:49:16 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH RFC v2 4/4] 9p: fix race issue in fid contention.
Thread-Index: AQHWkbOl16CkOw3tJ0mFRMvqqCi+c6l2Ti+AgAEYjZCAACaGgIABj8cA
Date: Fri, 25 Sep 2020 09:49:16 +0000
Message-ID: <HE1PR0802MB2555E0C2D665BB3F1069843CF4360@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200923141146.90046-1-jianyong.wu@arm.com>
 <20200923141146.90046-5-jianyong.wu@arm.com> <20200923144953.GA1685@nautica>
 <HE1PR0802MB25556D1AAF1336F4EE3CA8DBF4390@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200924095153.GA10446@nautica>
In-Reply-To: <20200924095153.GA10446@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: AD5C2CC460E52A45A5F46E8276B186DA.0
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fdbba0fa-d0be-4a35-ac2b-08d8613848a7
x-ms-traffictypediagnostic: HE1PR0802MB2442:|AM6PR08MB3366:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB3366AAF3BC7EDDEEB1386551F4360@AM6PR08MB3366.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Wghpd+EZWBPnJG6KEdZChGUfe8LK12UhGhB3+jRuiGrd7mbAYezj3g1gvysPhkPFlIHOwiThv90FU5BdTK01pzEcHrcoaeRJMRrzN7ni7Q+OnDbq+vbEV/ydf5qyK5rgUFJCaNOWQST4sHKUO75QkMjGGAKq2KvzSrd9d4iyKWVCVwFK//m87fGyaDRNyKgciwKTgigKn79TXdM9izAIuG39GTM4VGFsqLoHKR1bUGrMGybvNLZ2PxReY3mSgpNDa1M7PcsHGLeyhWn3F3K/e1evsGDkTjrltBzfQE6dDg0EYSEfpTccrzmsUjxNv4chZ1mVlvHmqXgPaVkeYnb22XEz9oKdSZOQZwmYLSVt6AEXsjV4Oo6dyJaAu9eUxLuwGoCNuW3hu7iFHEtrHICwpEA3sd9lOZkHYLY1z1im+R28QdMwWHM6B+WuoDCpxlevWGltKwAmYERUr9+IW7XAdQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(39850400004)(366004)(376002)(346002)(6916009)(26005)(478600001)(55016002)(9686003)(53546011)(64756008)(66446008)(7696005)(6506007)(5660300002)(86362001)(66556008)(76116006)(186003)(8676002)(8936002)(66946007)(33656002)(52536014)(71200400001)(4326008)(83380400001)(966005)(316002)(2906002)(66476007)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ntLP5Mq6do8gvUV9zZsTjUeTztuOhKnsfsAolEb56up2Jb3PnKCUeu23Uj+lUMABJbXi57tMPpIbQg3bpqaT0hX8YOzCHbKkZLTER9llLEa6bOsukL0h2g5WLsj0Ts20DZKFUvXt8Jnqo5hoKrBT8AjDwWnq/Scb/qn8je8RY70VQVYV1ehW2pJn9ehWS85RW3yb5aSe4msTEooxmHlMwFGZqTL0HBrvfo4X7pLcx/IMu2UHLofNJGbvp8jH2V50/Ft7e4avdchskleKf4aOmyRWPalSSCCUm9Cd+GlYu40qFk9DnV505h3bvIm8x/MmJO5N5+K+35vZEF/TexdhcjLthlGkarzMuIz1O9yUGz4im4zwTBj1AftcUkdbLpqPXc6qUjCzUwbzVJDvMEuu5PgPrqNMpSoF6uFi2U7KCmGZlNskS7RgGzbXfVD5QkboQQyxY2YZG/i7nJcfdDI+0dzxEkCmLJMtHiX588KRWM1UXCY2oA9MMD0pASggoOvFN5AiSbbfXdcRDLxAHC0elNCK55PMa+ehRajYRnvVsgeMYrOiRuhMLgjtkRfvex16a9Plk5tL05onV4CihCoBvD+pnK4c5AMZ52Qk/IXbnF/gcAimAp728Y2yi920brkjIGj5KGkmSk+WergqfxgSvQ==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2442
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 219bebf5-38c3-425e-55d5-08d86138447a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S9Si/Jv9J7tnKQLErxUf9+HaD3GGlCAQR1Q/jw4l3ZVWC7OwHACkV2kC1hsLz9SQtt5GekAy3fAGQr0K5n3IVXfhc5ExJ5DLtqKBhysM/99xW4FK1G6nXyIcMTvqm8pA68xY7kouVV450wjK803TG328RpzMEFJ8M42Uir0k9WxS+lun5K/c7eP3Tiafrwu8nqnFkGBYLtri2iAakMjw8lGWaPnLnzK4kkI7624rurm/JUrN/IJsUpBPXI5GD+yQGYUXaSlguLOeX9LAy2GSnJ8YyaEYaHS5qqZdhYS6bnIXSdDeJHF/l0RI8aYr3qKtyVR2dJPH4TNlTwghtt9C8qhgZcBDyf95YDWtzaI5cdH5qsPWcXwDE4TGH5lwGMJFbWPueamsxk7+gHWmAXhjpv3TgzBoLvA6zjHnA4FZWlUkvfufZeZ9IzkJpZN35/5BPfz0eTBwpDCyXQPszsv7Je1qWg6kZCFnMeGRS18tu1K8hBVGTQCyhQOsgszAziurJTlOL/Ink75DDKOgqmyDHA==
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(39850400004)(346002)(396003)(136003)(376002)(46966005)(9686003)(82740400003)(36906005)(55016002)(6862004)(70586007)(70206006)(86362001)(4326008)(316002)(8936002)(8676002)(54906003)(7696005)(33656002)(5660300002)(47076004)(82310400003)(81166007)(356005)(2906002)(52536014)(186003)(966005)(53546011)(6506007)(336012)(26005)(83380400001)(478600001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2020 09:49:23.6456 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fdbba0fa-d0be-4a35-ac2b-08d8613848a7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3366
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kLkrU-005LP0-OH
Subject: Re: [V9fs-developer] [PATCH RFC v2 4/4] 9p: fix race issue in fid
 contention.
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
 "ericvh@gmail.com" <ericvh@gmail.com>,
 "qemu_oss@crudebyte.com" <qemu_oss@crudebyte.com>,
 "groug@kaod.org" <groug@kaod.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgRG9taW5pcXVlLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IERv
bWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29kZXdyZWNrLm9yZz4NCj4gU2VudDogVGh1cnNk
YXksIFNlcHRlbWJlciAyNCwgMjAyMCA1OjUyIFBNDQo+IFRvOiBKaWFueW9uZyBXdSA8Smlhbnlv
bmcuV3VAYXJtLmNvbT4NCj4gQ2M6IGVyaWN2aEBnbWFpbC5jb207IGx1Y2hvQGlvbmtvdi5uZXQ7
IHFlbXVfb3NzQGNydWRlYnl0ZS5jb207DQo+IGdyb3VnQGthb2Qub3JnOyB2OWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ7IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3Jn
OyBKdXN0aW4gSGUgPEp1c3Rpbi5IZUBhcm0uY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFJG
QyB2MiA0LzRdIDlwOiBmaXggcmFjZSBpc3N1ZSBpbiBmaWQgY29udGVudGlvbi4NCj4NCj4gSmlh
bnlvbmcgV3Ugd3JvdGUgb24gVGh1LCBTZXAgMjQsIDIwMjA6DQo+ID4gPiBKaWFueW9uZyBXdSB3
cm90ZSBvbiBXZWQsIFNlcCAyMywgMjAyMDoNCj4gPiA+ID4gb3Blbi11bmxpbmstZipzeXNjYWxs
IHRlc3Q6DQo+ID4gPiA+IEkgaGF2ZSB0ZXN0ZWQgZm9yIGYqc3lzY2FsbCBpbmNsdWRlOiBmdHJ1
bmNhdGUgZnN0YXQgZmNob3duIGZjaG1vZA0KPiBmYWNjZXNzYXQuDQo+ID4gPg0KPiA+ID4gR2l2
ZW4gdGhlIG90aGVyIHRocmVhZCwgd2hhdCBkaWQgeW91IHRlc3QgdGhpcyB3aXRoPw0KPiA+DQo+
ID4gRXIsIEkganVzdCB1c2UgR3JlZydzIHFlbXUgb2YgaHR0cHM6Ly9naXRodWIuY29tL2drdXJ6
L3FlbXUuZ2l0Og0KPiA+IDlwLWF0dHItZml4ZXMuIEkgc2hvdWxkIGhhdmUgcmVmZXJlbmNlZCBp
dCBpbiBjb21taXQgbWVzc2FnZS4NCj4NCj4gT2suIFRoYXQgYnJhbmNoIGlzIGZhaXJseSBvbGQg
KGJhc2VkIG9uIHByZS0yLjcuMCBjb2RlKSwgc28gd2lsbCBuZWVkIHNvbWUNCj4gd29yayBhcyB3
ZWxsLg0KPiBJdCBkb2Vzbid0IGxvb2sgbGlrZSBhbnlvbmUgaGFzIHRpbWUgdG8gcmVmcmVzaCB0
aGUgcGF0Y2hlcyBmcm9tIHdoYXQgSSBqdXN0DQo+IGhhdmUgcmVhZCBzbyBpdCBtaWdodCBmYWxs
IG9uIHlvdSBhcyB3ZWxsLi4uDQo+DQo+IChJIHNlZSBHcmVnIGp1c3QgbWFkZSB0aGUgc2FtZSBw
b2ludCwgdG9vayBhIGJpdCB0b28gbG9uZyB0byB3cml0ZSB0aGlzIG1haWwgOykpDQo+DQo+ID4g
PiBTaW5jZSBxZW11IGRvZXNuJ3Qgd29yayBhcHBhcmVudGx5IGRvIHlvdSBoYXZlIGEgaW4taG91
c2Ugc2VydmVyIGF0DQo+ID4gPiBhcm0gSSBjb3VsZCB0ZXN0Pw0KPiA+ID4gKEknbGwgdHJ5IHdp
dGggZ2FuZXNoYSBvdGhlcndpc2UsIGl0IGtlZXBzIGZpbGVzIG9wZW4gc28gaXQgc2hvdWxkDQo+
ID4gPiB3b3JrIEkgdGhpbmsuLi4pDQo+ID4NCj4gPiBZZWFoLCBJIHRlc3QgdGhpcyBvbiBteSBh
cm0gc2VydmVyLiBCdXQgYXMgdGhlc2UgY29kZXMgYXJlIGFyY2gtZnJlZSwgd2UgY2FuDQo+IHRl
c3QgaXQgaW4gd2hhdGV2ZXIgYSBtYWNoaW5lLg0KPiA+IChhbHNvIHRoZSBzZXJ2ZXIgaW4gYXJt
IGNhbid0IGJlIGFjY2Vzc2VkIGJ5IG91dGVyIHNwYWNlLCBzbyBzb3JyeSkNCj4gPiBCdXQgSSB0
aGluayB0aGF0IHRoaXMgdGVzdCBhcmUgZmFyIGZyb20gc2VyaW91cyBhbmQgY29tcGxldGUuDQo+
DQo+IFllcyBJIG1lYW50IGFybS1zcGVjaWZpYyBjb2RlLCBub3QgaW5mcmFzdHJ1Y3R1cmUuIFRo
aXMgaXMgZmluZSBJJ2xsIGRvIG1vcmUgdGVzdHMNCj4gaGVyZS4NCj4NClllYWguDQo+ID4gPiA+
ICthdG9taWNfc2V0KCZmaWQtPmNvdW50LCAxKTsNCj4gPiA+DQo+ID4gPiBJIGtpbmQgb2YgbGlr
ZSB0aGUgcmVmY291bnQgQVBJIGJlY2F1ZXNlIGl0IGhhcyBzb21lIGV4dHJhIG92ZXJmbG93DQo+
ID4gPiBjaGVja3M7IGJ1dCBpdCByZXF1aXJlcyBhIGJpdCBtb3JlIHdvcmsgYXJvdW5kIGNsdW5r
IChpbnN0ZWFkIG9mDQo+ID4gPiBiYWlsaW5nIG91dCBlYXJseSBpZiBjb3VudGVyIGhpdHMgMCwg
eW91IG5lZWQgdG8gaGF2ZSBpdCBjYWxsIGENCj4gPiA+IHNlcGFyYXRlIGZ1bmN0aW9uIGluIGNh
c2UgaXQgZG9lcykNCj4gPiA+DQo+ID4gPiBUaGF0J3MgbW9zdGx5IGVzdGhldGljcyB0aG91Z2gg
SSdtIG5vdCBnb2luZyB0byBmdXNzIG92ZXIgdGhhdC4NCj4gPg0KPiA+IFNvcnJ5LCBJJ20gbm90
IHN1cmUgd2hhdCdzIHRoZSBjb250ZXh0IG9mIHRoaXMgbGluZSwgZG9lcyB0aGlzIGxpbmUNCj4g
PiBsaWUgaW4gIl9fYWRkX2ZpZOKAnS4gSSdtIG5vdCBzdXJlIGFib3V0IHdoeSBpdCBkbyBoYXJt
IHRvIGNsdW5rPw0KPg0KPiBJdCdzIG5vdCBhYm91dCBjbHVuaywgaXQncyBhYm91dCBhdG9taWNf
c2V0L2luYy9kZWMgdnMuIHJlZmNvdW50X3NldC9pbmMvZGVjIC0tDQo+IGJlY2F1c2UgcmVmY291
bnQgaGFzIG92ZXJmbG93IGNoZWNrcy4NCj4NCj4gSSd2ZSBqdXN0IG5vdGljZWQgcmVmY291bnRf
ZGVjX2FuZF90ZXN0IHRoYXQgY291bGQgYmUgdXNlZCBhcyBhIGRyb3AtaW4NCj4gcmVwbGFjZW1l
bnQsIHNvIGl0IHdvdWxkIGJlIGdvb2Qgb3QgdXBkYXRlLg0KPg0KT0suDQo+ID4NCj4gPiA+ID4g
QEAgLTc0LDYgKzc3LDcgQEAgc3RhdGljIHN0cnVjdCBwOV9maWQgKnY5ZnNfZmlkX2ZpbmRfaW5v
ZGUoc3RydWN0DQo+ID4gPiA+IGlub2RlICppbm9kZSwga3VpZF90IHVpZCkgIHZvaWQgdjlmc19v
cGVuX2ZpZF9hZGQoc3RydWN0IGlub2RlDQo+ID4gPiA+ICppbm9kZSwgc3RydWN0IHA5X2ZpZCAq
ZmlkKSAgeyAgc3Bpbl9sb2NrKCZpbm9kZS0+aV9sb2NrKTsNCj4gPiA+ID4gK2F0b21pY19zZXQo
JmZpZC0+Y291bnQsIDEpOw0KPiA+ID4NCj4gPiA+IEhtLCB0aGF0IHNob3VsZCBiZSBkb25lIGF0
IGZpZCBjcmVhdGlvbiB0aW1lIGluIG5ldC85cC9jbGllbnQuYw0KPiBwOV9maWRfY3JlYXRlIDsN
Cj4gPiA+IG5vID8NCj4gPiA+ICh5b3UgZG8gaXQgdGhlcmUgYWxyZWFkeSwgSSBkb24ndCBzZWUg
d2hhdCByZXNldGluZyBjb3VudCBoZXJlIGJyaW5ncw0KPiBleGNlcHQNCj4gPiA+IGNvbmZ1c2lv
bikNCj4gPg0KPiA+IEkgcHV0IHRoaXMgY291bnRlciBzZXQgb3AgYmVmb3JlIHRoZSBmaWRzIGFy
ZSBhZGRlZCB0byBobGlzdC4gU28gSSBjYW4NCj4gPiBtYWtlIHN1cmUgdGhlIGNvdW50ZXIgdmFs
dWUgaXMgMSBiZWZvcmUgZmlkcyBhcmUgdXNlZC4gSXQncyByZWR1bmRhbnQNCj4gPiBjb2RlLiBJ
IGNhbiByZW1vdmUgaXQgaW4gYm90aCAiX19hZGRfZmlkIiBhbmQgInY5ZnNfb3Blbl9maWRfYWRk
IiwgYnV0DQo+DQo+IEknbSBub3Qgc3VyZSB3aGF0IHlvdSdyZSB0cnlpbmcgdG8gZG8uDQo+IFRo
ZXJlIGFyZSB0d28gd2F5cyB0byBoYW5kbGUgaW5zZXJ0aW5nIHRvIGEgbGlzdCBhcyBmYXIgYXMg
cmVmY291bnRpbmcNCj4gZ29lczoNCj4gIC0gY29uc2lkZXIgeW91IGFkZCBhIG5ldyByZWZlcmVu
Y2UgdGhhdCB3aWxsIGJlIHJlbW92ZWQgd2hlbiB0aGUgZmlkIGlzDQo+IHJlbW92ZWQgZnJvbSB0
aGUgbGlzdCA7IGluIHRoYXQgY2FzZSB5b3Ugc2hvdWxkIGluY3JlbWVudCB0aGUgY291bnRlcg0K
PiBhbmQgY2x1bmsgdGhlIGZpZCBhcyB1c3VhbCB3aG5lIHlvdSdyZSBkb25lIHVzaW5nIGl0IGlu
IHdoYXRldmVyIGNhbGxzDQo+IF9fYWRkX2ZpZCBhbmQgdjlmc19vcGVuX2ZpZF9hZGQNCj4gIC0g
b3IgY29uc2lkZXIgaXQgYW4gb3duZXJzaGlwIHRyYW5zZmVyOyB0aGVuIGRvbid0IGluY3JlbWVu
dCByZWZjb3VudCwNCj4gYnV0IHlvdSBtdXN0IGFsc28gbmV2ZXIgdXNlIHRoZSBmaWQgZXZlciBh
Z2FpbiBhZnRlciBpbiB0aGUgc2FtZSB0aHJlYWQNCj4gKGJlY2F1c2UgYW5vdGhlciB0aHJlYWQg
Y291bGQgZnJlZSB0aGUgbGlzdCBhbmQgY2x1bmspIDsgc28gaWYgeW91IHN0aWxsDQo+IG5lZWQg
dG8gdXNlIHRoZSBmaWQgYWZ0ZXIgYWRkaW5nIHRvIHRoZSBsaXN0IHRoZSBmaXJzdCBvcHRpb24g
aXMgYmV0dGVyLg0KPg0KPiBJJ20gbm90IHN1cmUgYSBmaWQgY291bGQgYmUgYWRkZWQgdG8gYm90
aCBsaXN0IGluIHNvbWUgdXNhZ2UgcGF0dGVybnMNCj4gYnV0IGlmIHRoYXQgaXMgdGhlIGNhc2Ug
cmVzZXRpbmcgdGhlIGNvdW50IHRvIDEgaXMgbW9zdCBkZWZpbml0ZWx5IGFuDQo+IGVycm9yLCBh
cyBib3RoIHdvdWxkIHdhbnQgdG8gYmUgYWJsZSB0byBkZWNyZW1lbnQgb25jZS4NCj4NCj4gPiB3
ZSBtdXN0IHRha2UgY2FyZSBvZiBpdCB0aGF0IG5vIGNsdW5rIGlzIGNhbGxlZCBiZXR3ZWVuIGZp
ZHMgYXJlDQo+ID4gY3JlYXRlZCBhbmQgYWRkZWQgdG8gaGxpc3QuIEJvdGggYXJlIGdvb2QgZm9y
IG1lLg0KPg0KPiBub3RlIGZvciB0aGlzIHBvaW50IHRoYXQgaWYgdGhlIGZpZCBpcyBub3QgaW4g
YW55IGxpc3QgaXQgY2Fubm90IGJlDQo+IGFjY2Vzc2VkIGJ5IGFub3RoZXIgdGhyZWFkIGFuZCB0
aHVzIGNhbm5vdCBiZSByYWNlZCBvbiBjbHVuay4NCj4NCj4NCkZpbmUsIEkgd2lsbCByZW1vdmUg
dGhlICJzZXQiIG9wLg0KPg0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZnMvOXAvZmlkLmggYi9mcy85
cC9maWQuaCBpbmRleA0KPiA+ID4gPiBkZmExMWRmMDI4MTguLjFmZWQ5NjU0NjcyOCAxMDA2NDQN
Cj4gPiA+ID4gLS0tIGEvZnMvOXAvZmlkLmgNCj4gPiA+ID4gKysrIGIvZnMvOXAvZmlkLmgNCj4g
PiA+ID4gQEAgLTIyLDYgKzIyLDE0IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IHA5X2ZpZCAqY2xv
bmVfZmlkKHN0cnVjdA0KPiA+ID4gPiBwOV9maWQgKmZpZCkgIH0gIHN0YXRpYyBpbmxpbmUgc3Ry
dWN0IHA5X2ZpZCAqdjlmc19maWRfY2xvbmUoc3RydWN0DQo+ID4gPiA+IGRlbnRyeSAqZGVudHJ5
KSAgew0KPiA+ID4gPiAtcmV0dXJuIGNsb25lX2ZpZCh2OWZzX2ZpZF9sb29rdXAoZGVudHJ5KSk7
DQo+ID4gPiA+ICtzdHJ1Y3QgcDlfZmlkICpmaWQsICpuZmlkOw0KPiA+ID4gPiArDQo+ID4gPiA+
ICtmaWQgPSB2OWZzX2ZpZF9sb29rdXAoZGVudHJ5KTsNCj4gPiA+ID4gK2lmICghZmlkIHx8IElT
X0VSUihmaWQpKQ0KPiA+ID4gPiArcmV0dXJuIGZpZDsNCj4gPiA+ID4gKw0KPiA+ID4gPiArbmZp
ZCA9IHA5X2NsaWVudF93YWxrKGZpZCwgMCwgTlVMTCwgMSk7DQo+ID4gPg0KPiA+ID4gSSB0aGlu
ayB5b3UgY2xvbmVfZmlkKCkgaGVyZSBpcyBzbGlnaHRseSBlYXNpZXIgdG8gdW5kZXJzdGFuZDsg
ZXZlcnlvbmUNCj4gZG9lc24ndA0KPiA+ID4ga25vdyB0aGF0IGEgd2FsayB3aXRoIG5vIGNvbXBv
bmVudCBpcyBhIGNsb25lLg0KPiA+ID4gVGhlIGNvbXBpbGVyIHdpbGwgb3B0aW1pemUgdGhhdCBJ
U19FUlIoZmlkKSBpcyBjaGVja2VkIHR3aWNlLCBpdCdzIGZpbmUuDQo+ID4gPg0KPiA+IEVyLCBJ
IHJld3JpdGUgaXQgYmVjYXVzZSBJIG11c3QgYWNxdWlyZSB0aGUgaW50ZXJtZWRpYSBmaWQgZnJv
bQ0KPiA+IHY5ZnNfZmlkX2xvb2t1cCBhbmQgY2x1bmsgaXQuDQo+DQo+IEkgYWdyZWUgd2UgbmVl
ZCB0byBleHBhbmQgY2xvbmVfZmlkKGxvb2t1cCgpKSBwYXR0ZXJucywgdGhpcyBpcyBnb29kLg0K
PiBJJ20ganVzdCBzYXlpbmcgY2xvbmVfZmlkKCkgaXMgZWFzaWVyIHRvIHVuZGVyc3RhbmQgdGhh
bg0KPiBwOV9jbGllbnRfd2FsaygpIHdpdGggbm8gY29tcG9uZW50Lg0KPg0KPiAoc28gdGhpcyBp
cyBhIG9uZS1mb3Itb25lIHJlcGxhY2VtZW50KQ0KPg0KWWVhaCwgdGhpcyBjaGFuZ2UgbWFrZXMg
aXQgbW9yZSBwZWxsdWNpZC4NCg0KPg0KPiA+ID4gT3ZlcmFsbCBsb29rcyBnb29kIHRvIG1lLg0K
PiA+ID4gSSdkIG5lZWQgdG8gc3BlbmQgc29tZSB0aW1lIGNoZWNraW5nIHRoZSBhY3R1YWwgY291
bnRpbmcgcGFydCAmDQo+IGhhbW1lcmluZw0KPiA+ID4gdGhlIGZzIGEgYml0IHRoZW4gY29uZmly
bWluZyBubyBmaWQgZ290IGZvcmdvdHRlbiAodGhlcmUncyBhIHByX2luZm8gYXQNCj4gdW1vdW50
DQo+ID4gPiB0aW1lKSBidXQgSSdtIGhhcHB5IHdpdGggdGhpcyA7IHRoYW5rcyENCj4gPg0KPiA+
IFllYWgsIGl0J3MgYSB0ZWRpb3VzIGpvYiB0byBkbyB0aGF0LiBBbHNvIHdlIG5lZWQgdG8gZmlu
ZCBhIHJlbGlhYmxlIHRlc3Qgc3VpdC4NCj4gVGhlbiB3ZSBjYW4gY2hlY2sNCj4gPiB0aGlzIHBh
dGNoIGJvdGggZnJvbSBjb2RlIGFuZCB0ZXN0Lg0KPg0KPiBJIHVzZSBhIHN1YnNldCBvZiB4ZnN0
ZXN0cyBwbHVzIHNvbWUgaGFuZC1jcmFmdGVkIHRlc3RzIG1vc3Qgb2Ygd2hpY2gNCj4gY2FuIGJl
IGZvdW5kIGluIGh0dHBzOi8vZ2l0aHViLmNvbS9waGRlbmllbC9zaWdtdW5kIChJIG5vIGxvbmdl
ciB1c2UgaXQNCj4gdGhvdWdoKQ0KPg0KPiBJJ20gc3VyZSBzb21lIHhmc3Rlc3RzIGFsc28gZG8g
b3Blbi11bmxpbmstd2hhdGV2ZXIgdGVzdHMsIGp1c3QgbmVlZCB0bw0KPiBmaW5kIHdoaWNoIDpQ
DQo+DQpGaW5lLg0KDQpUaGFua3MNCkppYW55b25nDQoNCj4gLS0NCj4gRG9taW5pcXVlDQpJTVBP
UlRBTlQgTk9USUNFOiBUaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1l
bnRzIGFyZSBjb25maWRlbnRpYWwgYW5kIG1heSBhbHNvIGJlIHByaXZpbGVnZWQuIElmIHlvdSBh
cmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRlciBp
bW1lZGlhdGVseSBhbmQgZG8gbm90IGRpc2Nsb3NlIHRoZSBjb250ZW50cyB0byBhbnkgb3RoZXIg
cGVyc29uLCB1c2UgaXQgZm9yIGFueSBwdXJwb3NlLCBvciBzdG9yZSBvciBjb3B5IHRoZSBpbmZv
cm1hdGlvbiBpbiBhbnkgbWVkaXVtLiBUaGFuayB5b3UuDQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
