Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5AA268683
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 09:51:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHjGR-0002lq-SA; Mon, 14 Sep 2020 07:51:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1kHjGQ-0002lQ-10
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 07:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ffXOHBC1jIY8KhYI2PWZk4+g3zyN2pYaENWyAq7pe0=; b=A17YsF0QO3vqSLDR6r7r0oEutX
 uWkSUquadqYznUu/X2T5TKEjp8uM8jmYg7TL/WoLKQqizlLr3WzLzntW3gApbY2mlQ37QVGpcAw9n
 qHGkJQC1eFn2IHxv9EV+tuGjdpevU/Y21hoHZoBdXKjcWFXVFkldXrX75aY282VJJt1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ffXOHBC1jIY8KhYI2PWZk4+g3zyN2pYaENWyAq7pe0=; b=a0ucvz/qxcE6L46Mz5xyMyzYYy
 AIj9m2nlUjamNyPGFpMLhwm9v9PeTy1ZmH0jOyGVaFHyh4BODeFs05QcFGz3AoZrZFzr+16tDsGkI
 qeZh74L5a2tfGILtBvqwv3FlZdg9pChpYsAZEegGvjnvyncK+fLtZYcxijMO4HORn+2w=;
Received: from mail-eopbgr30078.outbound.protection.outlook.com ([40.107.3.78]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHjGF-008nEC-3U
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 07:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ffXOHBC1jIY8KhYI2PWZk4+g3zyN2pYaENWyAq7pe0=;
 b=CdFIb1U1dhjkSmxMPqBPA8J7JaXEBbj55ySIXuPoqmnbiYvt1Wi2fM8++D0gVEnz9UvurZj43Q5q9tjl47h7U7jbYAv6LqUpfyXHv22OWT5zHjGrtMEzHPDua5D5zNLVXS4izsOG4AzwJ5k6PW/CPXJcxghEk96fCkYL+IyoBcs=
Received: from AM6P195CA0080.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::21)
 by DB7PR08MB3451.eurprd08.prod.outlook.com (2603:10a6:10:49::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Mon, 14 Sep
 2020 07:50:43 +0000
Received: from AM5EUR03FT027.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:86:cafe::a2) by AM6P195CA0080.outlook.office365.com
 (2603:10a6:209:86::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend
 Transport; Mon, 14 Sep 2020 07:50:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT027.mail.protection.outlook.com (10.152.16.138) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.16 via Frontend Transport; Mon, 14 Sep 2020 07:50:43 +0000
Received: ("Tessian outbound 7161e0c2a082:v64");
 Mon, 14 Sep 2020 07:50:43 +0000
X-CR-MTA-TID: 64aa7808
Received: from ec64f431e5ed.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 BD63C22E-1840-446B-BAA4-D484EED929C4.1; 
 Mon, 14 Sep 2020 07:50:38 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ec64f431e5ed.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 14 Sep 2020 07:50:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n6rpuCbYObeO6Jey6oYGO58YbtKYakC39AHB4xYtKjS2gv8LEiWpmk2BHJs4dOjbrNZHGJsz2ISMOJ28MEst2yB/Mkq9GXQNomMdsggfTqV62OZ+w55pYSGy/slPNVw0ym2COgTvdawJuEbII3Gll0Nx5qdITuhAyh4qJ4ERUpCbwzdqoCBSQZSZ0dbWJEuDqA4s4eayeiAG2224BqrQjNJSNUKqkgLKUUQFNE0gkVMc6jmtSvuCCa9wrobHONGdANaK0ox/EGd1bLQISRQ7VhclepkbfRitukAHcar7re7PD8l6BpjWrOFXWQedsF5GWiBclKEev/FPYy0dUJTQyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ffXOHBC1jIY8KhYI2PWZk4+g3zyN2pYaENWyAq7pe0=;
 b=n/YcUe4mSNbryKNMgJySFEBI02t140YoalcMJKpseIxhb9/kaRxa+PPWVE6EqMJc2bYAy1VJzU/7tBqe4aFkz9gru/0fsNqIX+x68KOd7MEQNbkj9eLPyNYOrkNN7QKWE2MfM/3ni6SG+kqxcvTFVXc4wMGxDjct6QooHi5VTcDzRijMeLo0ePdaGOeahE06ZBWUqzTdBocSeBQx8dR4CYxL1D9QjQL1SKKNqfEl90N0VB+oBbg3mrASib0gJeOnVrVk1i3l4M6e2oS5yOV5RnzYmZe1vsJLBfRP3GjJdV2zRU/04TNqOGQVxCSvZXT8Ndu6PalT3Sgc0hqTGS1Y2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ffXOHBC1jIY8KhYI2PWZk4+g3zyN2pYaENWyAq7pe0=;
 b=CdFIb1U1dhjkSmxMPqBPA8J7JaXEBbj55ySIXuPoqmnbiYvt1Wi2fM8++D0gVEnz9UvurZj43Q5q9tjl47h7U7jbYAv6LqUpfyXHv22OWT5zHjGrtMEzHPDua5D5zNLVXS4izsOG4AzwJ5k6PW/CPXJcxghEk96fCkYL+IyoBcs=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0801MB2105.eurprd08.prod.outlook.com (2603:10a6:3:50::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Mon, 14 Sep
 2020 07:50:35 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00%5]) with mapi id 15.20.3370.019; Mon, 14 Sep 2020
 07:50:35 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [V9fs-developer] [PATCH RFC 4/4] 9p: fix race issue in fid
 contention.
Thread-Index: AQHWikiH87ghgbrgBUG0aFcskfSv7KlnosKAgAAKGYCAABMHsA==
Date: Mon, 14 Sep 2020 07:50:34 +0000
Message-ID: <HE1PR0802MB255594D67D97733CFDFE777EF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914033754.29188-5-jianyong.wu@arm.com> <20200914055535.GA30672@nautica>
 <20200914063143.GA19326@nautica>
In-Reply-To: <20200914063143.GA19326@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: C3ABD42A3D035545A41592098F5451BB.0
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.112]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 296f5208-1391-4134-0540-08d85882e23e
x-ms-traffictypediagnostic: HE1PR0801MB2105:|DB7PR08MB3451:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB345117F37C86922C9718F8C5F4230@DB7PR08MB3451.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: x2pIYW+5jeu0FdSofYNClucT1h4bbHXS8622R0BulSdc7XftoQ6ardU/y0S1yQe6+6QBrwsuxcAwg+tYZsJiFEKuoUTx5q5MhfCQExh6blsE7QOT4jA6X2vrurQA5cmg8FWNPTv3sCrx/bA0JubSiMuupllQzzZX67kmoiC95M8nF9hdQYb+zRUPr8jOBFY4yK6+jWQp+Sie6s/DtldyAxgzgu653UeT8Irq/zjO1/RitZRUIsFQtYxVFfETLjfaoNI8Z49GLi+rAqYI6nsimhlpARjDLN+aQGyng2iPq6CuLMkYzlm/1nM5zf/OyNKcDmCInxR0wG5yz8Vk9GD0pH5h9KjV20FcMWVf/mjHyZty0vCYYpYln85gtVcS9nRcZW3lwX/tiJYXW86pQHNUVQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(346002)(376002)(396003)(39860400002)(9686003)(66446008)(6916009)(8676002)(186003)(26005)(7696005)(54906003)(2906002)(71200400001)(4326008)(5660300002)(86362001)(76116006)(6506007)(33656002)(478600001)(64756008)(53546011)(52536014)(55016002)(83380400001)(66476007)(8936002)(966005)(316002)(66946007)(66556008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: hYmMfNjY+QAX6dqgNXTHwhrrIEyGwa6WPG7nR0tAiMKQzC23CA0dzn2dtL2jkvAr8Fgsj8soNR0di1qAHSc5sfV5eVBzNrH9UosYdsqAMkF/2enxM4sSy4qANbytI3DMgahzt7B3NsJ3OWI0AoL0Om6X8lf2dmCyL2N83a8KxZXKPgjfjWw1U7SoIbw8X86GXbyI10lFRttjWDXcmKTgS7AoYB/jxtYLoG4VB7q+8JPvfVP8NFtJv6XdGlUrMt9twtTAd84SI4Cw33vZaSezIovqPLEII/OWIa+UiD5wlYEmQAYQ3cn73P9baIvTggXstZOAOQ2CJ0B0nt0xeSjc98G787nqTvtd30VYvIOrJuIpyMiqce4vu7Q1es5CMTE6Zbfwb5CBLpa5FmgerqWCCES6t8GXwdaF4lJ+NMKi7Fn9oVGadQJzqgqmwTPPepsQ1Dr6YrsEaRU84kqGP/kZJK9jM/bVBiyz+kCK+x+NB9Wh5aA8faM2d01tFGj4IVvdNcCfN7xU+C1PAuRf1eDDIBeN+JIuzW5WcK1ah8pZNZyq4p3wVkc/P4X2+d+Ous6X8HwXsPXn7xCdwy4bMymH6pCcy55JJsbAV9nm7vdS8WK7hNGqM22y9UrBSyscIzu6PIoRKRaP7J8rX+0o4f24Lw==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2105
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT027.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6ccd1aff-63f2-493c-5217-08d85882dd1b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lHjX9ZGMOCkHV5wcDZ81xPhl4hf50HpyKKwnr6MSBY0KPc6MjLeLAprOvXTc6/uS/twIJ4xxOBWaA+q6N6Z5T1mAw8WMtSYMVwKIR8GGyvhxbdRW8A1b7ZU8nmoOI0ehbgVbso8z+Uhih2rwrib14rItImxvoHsF+F0lkTAFaEjMY8SC3+fpfu+sPPHVu+gqgHBND+vylKVIPxJHxjDxPccxW4HRelaROemY5ZZM2eDUgUiL2ZVlGN47KxbCPDcar4CTfYGHz9sEx79CrMbH48ADmz4SCj3W0YbrkvyqS+mhpUrmr+f2EbP9jWu4CGNph1KF1b+SNTChalqlGjjgndFCepk4u2c3jPf3UFOaHRv/NGwvls2gTxiiyrm5H+HI7vSBU8JGb2WRHrDxZ+nLhmmwv51eWZim7Frl42AkvA7X2otVFmSE/X2qNOF738SRBGBQIz6YooykCXGVIj6/2GvUL3qWedHUg+tpHf8d4OI=
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(396003)(376002)(39860400002)(346002)(136003)(46966005)(70206006)(55016002)(83380400001)(81166007)(356005)(8936002)(316002)(336012)(36906005)(966005)(9686003)(82740400003)(7696005)(26005)(186003)(54906003)(6862004)(2906002)(8676002)(33656002)(70586007)(478600001)(6506007)(53546011)(107886003)(47076004)(86362001)(5660300002)(52536014)(4326008)(82310400003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2020 07:50:43.7073 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 296f5208-1391-4134-0540-08d85882e23e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT027.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3451
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ionkov.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1kHjGF-008nEC-3U
Subject: Re: [V9fs-developer] [PATCH RFC 4/4] 9p: fix race issue in fid
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
 "ericvh@gmail.com" <ericvh@gmail.com>, Greg Kurz <groug@kaod.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgRG9taW5pcXVlLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IERv
bWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29kZXdyZWNrLm9yZz4NCj4gU2VudDogTW9uZGF5
LCBTZXB0ZW1iZXIgMTQsIDIwMjAgMjozMiBQTQ0KPiBUbzogSmlhbnlvbmcgV3UgPEppYW55b25n
Lld1QGFybS5jb20+DQo+IENjOiBsdWNob0Bpb25rb3YubmV0OyBKdXN0aW4gSGUgPEp1c3Rpbi5I
ZUBhcm0uY29tPjsgZXJpY3ZoQGdtYWlsLmNvbTsNCj4gbGludXgta2VybmVsQHZnZXIua2VybmVs
Lm9yZzsgdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OyBHcmVnDQo+IEt1cnog
PGdyb3VnQGthb2Qub3JnPg0KPiBTdWJqZWN0OiBSZTogW1Y5ZnMtZGV2ZWxvcGVyXSBbUEFUQ0gg
UkZDIDQvNF0gOXA6IGZpeCByYWNlIGlzc3VlIGluIGZpZA0KPiBjb250ZW50aW9uLg0KPg0KPiBE
b21pbmlxdWUgTWFydGluZXQgd3JvdGUgb24gTW9uLCBTZXAgMTQsIDIwMjA6DQo+ID4gSmlhbnlv
bmcgV3Ugd3JvdGUgb24gTW9uLCBTZXAgMTQsIDIwMjA6DQo+ID4gIC0gSWRlYWxseSBiYXNlIHlv
dXJzZWxmIG9mIG15IDlwLXRlc3QgYnJhbmNoIHRvIGhhdmUgYXN5bmMgY2x1bms6DQo+ID4gaHR0
cHM6Ly9naXRodWIuY29tL21hcnRpbmV0ZC9saW51eC9jb21taXRzLzlwLXRlc3QNCj4gPiBJJ3Zl
IGJlZW4gcHJvbWlzaW5nIHRvIHB1c2ggaXQgdG8gbmV4dCB0aGlzIHdlZWvihKIgZm9yIGEgY291
cGxlIG9mDQo+ID4gd2Vla3MgYnV0IGlmIHNvbWV0aGluZyBpcyBiYXNlZCBvbiBpdCBJIHdvbid0
IGJlIGFibGUgdG8gZGVsYXkgdGhpcw0KPiA+IG11Y2ggbG9uZ2VyLCBpdCdsbCBnZXQgcHVzaGVk
IHRvIDUuMTAgY3ljbGUgYW55d2F5Lg0KPiA+IChJJ2xsIHJlc2VuZCB0aGUgcGF0Y2hlcyB0byBi
ZSBjbGVhbikNCj4gPg0KPiA+PiB0ZXN0czoNCj4gPj4gcmFjZSBpc3N1ZSB0ZXN0IGZyb20gdGhl
IG9sZCB0ZXN0IGNhc2U6DQo+ID4+IGZvciBmaWxlIGluIHswMS4uNTB9OyBkbyB0b3VjaCBmLiR7
ZmlsZX07IGRvbmUgc2VxIDEgMTAwMCB8IHhhcmdzIC1uDQo+ID4+IDEgLVAgNTAgLUl7fSBjYXQg
Zi4qID4gL2Rldi9udWxsDQo+DQo+IGhtcGYsIHNvIHRoYXQgbWFkZSBtZSBpbnNpc3QgYSBiaXQg
b24gdGhpcyB0ZXN0IG9uIG15IHBhdGNoIGFuZCBJIHNlZSBhDQo+IHByb2JsZW0gd2l0aCB0aGF0
IGFzIHdlbGwuIFRoZSBtZSBmcm9tIGEgZmV3IHllYXJzIGFnbyB3YXMgZ29vZCENCj4NCj4gV2l0
aCB0aGF0IHNhaWQgSSdsbCB3YW50IHRvIHdvcmsgYSBiaXQgbW9yZSBvbiB0aGlzLCBzbyBmZWVs
IGZyZWUgdG8gYmFzZSBvZmYNCj4gbWFzdGVyIGFuZCBJJ2xsIGRlYWwgd2l0aCByZWJhc2UgaWYg
cmVxdWlyZWQuDQo+DQo+IFBhcnQgb2YgbWUgdGhpbmtzIGl0J3MgdGhlIHNhbWUgYnVnIHRoYXQg
d2lsbCBiZSBmaXhlZCB3aXRoIHJlZmNvdW50aW5nIGFuZCBJDQo+IGp1c3QgbWFkZSBpdCBlYXNp
ZXIgdG8gaGl0LCBidXQgSSdtIGhvbmVzdGx5IHVuc3VyZSBhdCB0aGlzIHBvaW50IGFuZCB0ZXN0
aW5nDQo+IHdvdWxkIGJhc2ljYWxseSBtZWFuIEkganVzdCBjb2RlIHdoYXQgSSBhc2tlZCB5b3Ug
dG8uLi4NCj4NCj4gV2VsbCwgbGV0IG1lIGtub3cgaWYgeW91IHdhbnQgbWUgdG8gZG8gdGhlIHJl
ZmNvdW50aW5nLCBidXQgSSdkIHJhdGhlciBsZXQgeW91DQo+IGZpbmlzaCB3aGF0IHlvdSBzdGFy
dGVkLg0KDQpUaGFua3MsIEknbSBoYXBweSB0byB3b3JrIHRoaXMuDQo+SWYgcG9zc2libGUgcHV0
IHRoZSBwYXRjaCBmaXJzdCBpbiB0aGUgc2VyaWVzIHNvIGNvbW1pdHMNCj4gY2FuIGJlIHRlc3Rl
ZCBpbmRlcGVuZGVudGx5Lg0KDQpBaCwgdGhpcyBwYXRjaCBkZXBlbmRzIG9uIHRoZSBwcmV2aW91
cyBwYXRjaGVzLCBob3cgY2FuIEkgcHV0IGl0IGFzIHRoZSBmaXJzdCBvZiB0aGUgc2VyaWVzPw0K
DQpUaGFua3MNCkppYW55b25nDQoNCj4gVGhhbmtzLA0KPiAtLQ0KPiBEb21pbmlxdWUNCklNUE9S
VEFOVCBOT1RJQ0U6IFRoZSBjb250ZW50cyBvZiB0aGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVu
dHMgYXJlIGNvbmZpZGVudGlhbCBhbmQgbWF5IGFsc28gYmUgcHJpdmlsZWdlZC4gSWYgeW91IGFy
ZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGlt
bWVkaWF0ZWx5IGFuZCBkbyBub3QgZGlzY2xvc2UgdGhlIGNvbnRlbnRzIHRvIGFueSBvdGhlciBw
ZXJzb24sIHVzZSBpdCBmb3IgYW55IHB1cnBvc2UsIG9yIHN0b3JlIG9yIGNvcHkgdGhlIGluZm9y
bWF0aW9uIGluIGFueSBtZWRpdW0uIFRoYW5rIHlvdS4NCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlm
cy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
