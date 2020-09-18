Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A7626F8C6
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Sep 2020 10:57:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJCDK-0003an-Lg; Fri, 18 Sep 2020 08:57:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1kJCDH-0003aS-HC
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 08:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qP+PoG66LzGiz7Wl8fS4iASDir9Jj6CgFryZrQ9uIZo=; b=je8fW0OmNwOvTEbfOky+m/Hf5T
 YjR4IAssbUg26eP2WebKiksP5+aHASQlbUU3aTo5zclZ34VTB+4MFH5yRKqaZcl9QfyjXfX+Y3sVD
 qfFOdEmsXp3d+evGHoWKdKHL1JKprrRXNpYog1mZfDsw+EJ3C7GLmSdS6UAkGDLGYlLs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qP+PoG66LzGiz7Wl8fS4iASDir9Jj6CgFryZrQ9uIZo=; b=gnwju898AMrWC7Biv35NDNv4uC
 w3xaFw4EbOpBbx5usyH1QC2rWeNgWPk/wXmbOgX7EZLvKLfQE40oEU+QtKtoswmSghfCn5HCzZFV9
 cDCDzo/AxpyVP3SYDzJt/5nkzNC+WyZGtgNyqziaMdCQlaMk79EPcbSnHtdvGPuEyFeU=;
Received: from mail-eopbgr130084.outbound.protection.outlook.com
 ([40.107.13.84] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJCD5-00FFWy-TK
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 08:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qP+PoG66LzGiz7Wl8fS4iASDir9Jj6CgFryZrQ9uIZo=;
 b=2pe7s8DfXx0Koe4h497Stff6DrOHxGXRJoC3/BuHpuwSSrYjR9TVHXPaTA+7GT+O/6n7L5ht7Eu5AeGUu0nqrDJJkplxkwJaIGGBKvINxr4VQ1FTVo8ArOXSbg/GZBQxZF6ukKCkOW3SNetjzH2gVTEktQipnYcjDVtYoBBDx7U=
Received: from DB8PR04CA0009.eurprd04.prod.outlook.com (2603:10a6:10:110::19)
 by AM6PR08MB4166.eurprd08.prod.outlook.com (2603:10a6:20b:a6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Fri, 18 Sep
 2020 08:57:29 +0000
Received: from DB5EUR03FT029.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:110:cafe::36) by DB8PR04CA0009.outlook.office365.com
 (2603:10a6:10:110::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11 via Frontend
 Transport; Fri, 18 Sep 2020 08:57:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT029.mail.protection.outlook.com (10.152.20.131) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15 via Frontend Transport; Fri, 18 Sep 2020 08:57:29 +0000
Received: ("Tessian outbound e8cdb8c6f386:v64");
 Fri, 18 Sep 2020 08:57:29 +0000
X-CR-MTA-TID: 64aa7808
Received: from 5594c1cb8f2f.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D4E109D2-F4DE-4D04-95F2-1BA2CED578A0.1; 
 Fri, 18 Sep 2020 08:57:24 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5594c1cb8f2f.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 18 Sep 2020 08:57:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=goqWuVq7BRzYvXvw6uEFZn4SwUkgiiFpqjcCwlO4ouK4IbLoFx+9c3TrGPQ3QFqf4MeyX77Y6BX8+wvw+CBJFSUVBOskSJUqMGzIZ+OQ2cMCnGsqWc7hmi56rakHf8YkaERCJaXm3TabwOAbW2yWP6L3YGo3Lh1j4YI2SZbXmwc0zm3YsZsCKw3So1M2hGFohEkPIVe/hK8D5Ao+4RQXIy48qBr36x9urXGgLp1AosxSg1xjyabEaTa8atEA7CO4e5NgTgSw2tFoY86lzOGf456rk3Pe9qAf/wQqcNw4f8qZxRDtXIrzl2VJmOt5+yLx2S8QaLAq0H1EiwgE2uC8kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qP+PoG66LzGiz7Wl8fS4iASDir9Jj6CgFryZrQ9uIZo=;
 b=ofWAQWwzWzLau+rLVAxGQ1faN7jbGHXAUXIyJItXR2JeXesYAoG5jXcNqHl7MwW9WfoRdCWniNQMEJ2IZjLyyLr3oaew1BmuAbIzTpdLInu+W8u9JbmIFxuFV/6dhsqm9FjcVcycbOGQTtxcF0twEAp0obblgCuPfGEB2L3JWu2G61CpQyi7F7xzxrssPnqoK0WUIhzDjARdss/L7ZZSaHRT7gva+HF1M0JuSdl8ka0EOeA4GBfu1Y/QlOToghNNxEvO60nmzki9KjLU/S79VAXgBhYzKPqA5vJrHd7nKUCaSGjbYHy6QZr6bd2zIMMqiHq0EjlnLyMC+iFTtCTMiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qP+PoG66LzGiz7Wl8fS4iASDir9Jj6CgFryZrQ9uIZo=;
 b=2pe7s8DfXx0Koe4h497Stff6DrOHxGXRJoC3/BuHpuwSSrYjR9TVHXPaTA+7GT+O/6n7L5ht7Eu5AeGUu0nqrDJJkplxkwJaIGGBKvINxr4VQ1FTVo8ArOXSbg/GZBQxZF6ukKCkOW3SNetjzH2gVTEktQipnYcjDVtYoBBDx7U=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2443.eurprd08.prod.outlook.com (2603:10a6:3:d7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.14; Fri, 18 Sep
 2020 08:57:22 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00%5]) with mapi id 15.20.3391.011; Fri, 18 Sep 2020
 08:57:22 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH RFC 4/4] 9p: fix race issue in fid contention.
Thread-Index: AQHWinG9C+xn4SZNHU61ZAxGCD89xKluG5xQ
Date: Fri, 18 Sep 2020 08:57:22 +0000
Message-ID: <HE1PR0802MB255560720A13BD59C11DEA00F43F0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <HE1PR0802MB255594D67D97733CFDFE777EF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <HE1PR0802MB25555E7AAFA66DA3FE025D0AF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200914083200.GA9259@nautica>
In-Reply-To: <20200914083200.GA9259@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: F223318B5B2BC14D81F6CD370B5A6DAD.0
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.113]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0f8deb19-1407-4e39-2e0e-08d85bb0df4a
x-ms-traffictypediagnostic: HE1PR0802MB2443:|AM6PR08MB4166:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB41663721B0270C37D4AB6E05F43F0@AM6PR08MB4166.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: ylQ/A7Z9M7yvoInY1m3aA1iV4NhYm6AHURwYccs/GxxxYAkVW/xt+9C//I9osFF7GlJFsEyWSgmMsMim2J4Vqm9GS533VFDr/iO/+vvOhlSrix3aQokhjkhjBtX5eVHT9dUQjDF4Y52DneOM4OmJ0rUT9LT3D5vWD1AGt+iW/UPKFwXUIc6WQMWyQW2AQRFlPoZo5tNjh5g7/DeEqSajRJcLLsjfiax13eh9hOg4552IO6ZoEBB/+XGBQJ+7S2AzbalBtJm0rdQJRwOBbOmlLvziQ4cwhmzGL/MlrAj2zNWj7+tl7YdTKwP8WeUCXoltcsW9aYCg3flZ5a0D5SY2Bw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(396003)(376002)(39860400002)(136003)(54906003)(33656002)(8936002)(26005)(6916009)(478600001)(66476007)(186003)(66446008)(64756008)(66556008)(66946007)(5660300002)(76116006)(52536014)(2906002)(71200400001)(9686003)(4326008)(316002)(55016002)(83380400001)(6506007)(53546011)(7696005)(8676002)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: AD0+7muDq6coMkaaDo3I5ZL8tkkuw68elYRR1Jyu5ZctI6PDb3eTWefqQCoSE0Hfl9F7jxHVuTCPABevyoXHrkATo2Q7X9bngVshvupNX0fmgOuYeBAX/y8GWAlhXVIOLIWq9IgUfyXk/UGomm388DJj5F7b/1VIKG92r9i/cYok+QNtN/5FXQsH+Q21EoFK813+vBj1ar2OLQkyh0vDnXj5HryobE+fU3ZdQHPx35visORaBsU6x+CnkmOTYfbQ7QnCwUnEzBwQEV06O1PgVIRrz3djfw26GfRB1qpsS+cSUXQFvtNbcitR3kwS6LXwORqAHPlYpdNuI5aQ55Vl9EmG4L5AV0Bj7fJpCBZsv/trt0MxVzYD97wln3QTETAoQHTgRW5NxBNOZUyf+pgu2pXVh6+Lf3WNlAnsl/bEs6v/tkCxxbGEgyGq11XnaNCzvdEf4rpMB7LOSyH9d6ZToUMlbns6Uga131h/7ra7Qcf12FDfK2n0e0km1EqyU3SU8yWSETX0eYlcK4Vu1zG358hYuFNdHIETMRDX2r1USjp1mJJzjlfV4awM4AUj/BsoK1tZnMVWZDuMkwpyfCqJrlZauRpXwhGfBhMEvHlVnRqZQ/k7GOmIMu67EMFiUdp/EgjAjWliYsSRBD3vu3w9iw==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2443
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 16052fd1-808d-4531-e7c3-08d85bb0db4e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4/dFTIC3kaerm0Jq2j0U05jsDSAoow2Q0HKEPdrcXy6jfbYtdlo3A8swEslAuhAkBv8wim7ck8cA1lzN8ipFytfu3Ahq73j3YwNq/o2MEEj8wgBZsRQJRwT5ITWu7Y8BKJ9su3jNANX2ewTDtqvLlx8VzBhMuegXVrmJ7pOicOqKWmtzP/tmsqBAU0gSHuW1pRRq5aTzPGvGP6RzdXmmiVqaiaj6BJYNpk7lofxBRuqJlUQxHYpsE/begMMWSaUjjMd2WJjmqe3aN9BgMEXKJcOhUEkv1Y7CbO9mVZj6Q947DxJrG2AfFhJXEZkFesvAnqaawQPFJf1YKgCoeHHELAiDh50swy/k96EhMwvgW066jpwg9jYpU3BcRh6MwssTO/dRJjNfVbK9XyKgp4PxM/S03RdPcTsh1JEhBti+Um0N3o0q9KCsTRAXYe3Hc3JX
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(346002)(376002)(136003)(46966005)(2906002)(9686003)(55016002)(70586007)(4326008)(6862004)(107886003)(70206006)(81166007)(86362001)(83380400001)(356005)(6506007)(82310400003)(82740400003)(47076004)(8676002)(336012)(52536014)(5660300002)(316002)(53546011)(26005)(186003)(8936002)(33656002)(478600001)(7696005)(54906003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2020 08:57:29.1377 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f8deb19-1407-4e39-2e0e-08d85bb0df4a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4166
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.13.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1kJCD5-00FFWy-TK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

> -----Original Message-----
> From: Dominique Martinet <asmadeus@codewreck.org>
> Sent: Monday, September 14, 2020 4:32 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; v9fs-
> developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; Justin He
> <Justin.He@arm.com>; Greg Kurz <groug@kaod.org>
> Subject: Re: [PATCH RFC 4/4] 9p: fix race issue in fid contention.
>
> Jianyong Wu wrote on Mon, Sep 14, 2020:
> > > Not having exceptions for that will also make the code around
> > > fid_atomic_dec much simpler: just have clunk do an atomic dec and
> > > only do the actual clunk if that hit zero, and we should be able to
> > > get rid of that helper?
> >
> > Sorry, I think always-one refcount  won't work at this point, as the
> > fid will be clunked only by file context itself not the every consumer
> > of every fid. We can't decrease the refcounter at just one static
> > point.
> > Am I wrong?
>
> I don't understand the "We can't decrease the refcounter at just one static
> point".
> Basically everywhere you added a fid_atomic_dec() will just need to be
> changed to clunk -- the basic rule of refcounting is that anywhere you take a
> ref you need to put it back.
>
> All these places take a fid to do some RPC already so it's not a problem to add
> a clunk and do one more; especially since the "clunk" will just be just a deref.
> For consistency I'd advocate for the kref API as we use that for requests
> already; it might be better to rename the clunk calls to p9_fid_put or
> something but I think that's more churn than it's worth....
>
If we move the counter decrease code into p9_client_clunk and put it instead of fid_atomic_dec, we need delete fid off the inode where it stores in p9_client_clunk.
But there is no way can we acquire the inode in p9_client_clunk. Do you have any idea? I think introduce another parameter for p9_client_clunk
Is not graceful.

Thanks
Jianyong Wu
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
