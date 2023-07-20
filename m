Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A4675B8B0
	for <lists+v9fs-developer@lfdr.de>; Thu, 20 Jul 2023 22:26:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qMaDt-0000IQ-Ds;
	Thu, 20 Jul 2023 20:26:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <emma.ferguson@expo-datasource.com>)
 id 1qMaDr-0000IK-V7 for v9fs-developer@lists.sourceforge.net;
 Thu, 20 Jul 2023 20:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DjqPW6O6ejOr2r0XHf+Pl/ipoQ38CWtq8wqvJkjmd08=; b=MjYk4Wh+oCxZzfBmkS6WQnE/Vw
 2fuA7X8JiJVxNG/pVd/cCf+8gFHr8pFJ7FtY6ur5gWrff8PGx7IWgxo5V3pLq+7Yv6CqF7DtSteFO
 Yrhnw1FEmFquCKoRSB9m0dal797ttjadlyqPPHYOdcEPiZILpjxwuJXNIpqDDfNuf1nE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DjqPW6O6ejOr2r0XHf+Pl/ipoQ38CWtq8wqvJkjmd08=; b=mfOtz2jOK4oy7WGpUhJ1NWU+Rj
 AvUuNRRfTHBxATp1zVct6CyjYFnQ54RuqOasZ4LwaZwOxnOXUDcvl2q58awrurUKfYQDYNHPQYEyM
 gtut7TMu1uFfyy8WFBgCWzjDHCZX+FiJUJILE7LqJnaWjzDlNJAaUzmTycZT/+KrPAQ4=;
Received: from mail-maxind01on2101.outbound.protection.outlook.com
 ([40.107.222.101] helo=IND01-MAX-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMaDr-0004cg-7f for v9fs-developer@lists.sourceforge.net;
 Thu, 20 Jul 2023 20:26:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lkmWHPXJ3Z2nNvme/rsP6Gl0vHOJv5447O+5a5GLGJFCCTQKQmWA2pLfxi981M4U46bEjR2IbOGDpEboE+ysOpcvMYtAyzA0I57HXriMJyqzBvc7h2BS49cYJ7uJYjyLvIDgsmVNjB68t+o14c96iaC8RlvUC1AuupPCMCZTZ5L7VfX07HsQ3k/U+BKhs3Few7BEh4BeiaBh09801NtsogTfHRxw/ErpPcrW7RF19myrgn6WwH5eUVkufHU47nZJV2buwic2k0WUbWt/ULFCIeZIOSuAisqQL5dPclMXdmjG/0VwMlaq2Vxa8iX6WUvb9zTwCsPnZXY+zSKoFrcz+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DjqPW6O6ejOr2r0XHf+Pl/ipoQ38CWtq8wqvJkjmd08=;
 b=eC+Jv0w+bmYLZyX8ZoaC1bNZve5gsNLfCjwEb94emNlGFS9H0km9MfoavMRFtpT5sLtqYvLEMEJGXDRc9XQoj6Si8iZkUVZNEzaVZvBRada0HTKcyuu7051bQsOxDHltgl+KOci3JrmBiEJedOjHtg0y2grAbM/3QsqvLYaJPZDVa/jPh6iCrKtUY3m3n91na/MUEsu+1+3lbEGvLp1Dcl2tAwwrctVl3YGtWvuQDcSk+U3J69zL59jmP+Vs/4SEN6eta/DPei1DCvHgWPR24GzyJyahAhl49cE1Z2Et5BsEuMDoa9j0IWeU6LwE1AF5YUpZthHmAxebLvox+XZGzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=expo-datasource.com; dmarc=pass action=none
 header.from=expo-datasource.com; dkim=pass header.d=expo-datasource.com;
 arc=none
Received: from MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:5e::6)
 by PN0PR01MB6295.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:70::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Thu, 20 Jul
 2023 20:25:55 +0000
Received: from MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::390f:3fd6:1236:a818]) by MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::390f:3fd6:1236:a818%3]) with mapi id 15.20.6609.025; Thu, 20 Jul 2023
 20:25:55 +0000
From: Emma Ferguson <emma.ferguson@expo-datasource.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Participants Data in - SIGGRAPH 2023 
Thread-Index: Adm6jvAnKEE15eN4TGCSqYXIaxEnJgAAWV2gAAAAD/AAAAAO4AAAAA6AAAAAD0AAAAAQcAAAABDQAAAADtAAAAAQAAAAAA7QAAAAEPAAAAAP8AAAAA8gAAAAEFAAAAAPsAAAABDgAAAAEBAAAAAQcAAAABDQAAAAETAAAAAR0AAAABDAAAAAESAAAAARwAAAABGAAAAAEBAAAAARcAAAABEQAAAAEdAAAAAQMAAAsE3QAAAAD5AAAAAP8AAAAA+wAAAAD+AAAAAQEAAAAA8QAAAAD0AALUXeoA==
Date: Thu, 20 Jul 2023 20:25:29 +0000
Message-ID: <MA0PR01MB67936D1ECD064CD0391A15A6AC3EA@MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM>
References: <MA0PR01MB67931B7948450A3978A68CEFAC39A@MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA0PR01MB67931B7948450A3978A68CEFAC39A@MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=expo-datasource.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0PR01MB6793:EE_|PN0PR01MB6295:EE_
x-ms-office365-filtering-correlation-id: afe789a7-2f89-4c3a-135d-08db895f855c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: khmqCuqJP3BhQEC1RT69U8PVfYH/3cPnxx8QawVddT1ylzGLi/YjTGrMmtXW5qTWUiaIjA9habDSUbK826IxBFf93OXJWNVUKDAx2LmFhN+dfPA4kqVAqsiQ8KJuMO5lDI0L+Q87KiZDCYfC2TtDBVzZcqNJ7kZ32tBXKQ2obnzWVW+y3hutYU+QCyXQEL5JrCtsZsaCajM43Fe16fnRP3lyz3jVR6k/sKc2Mi4FWG1IlXBYHwBadxGyElA3ZALcKJMPRXgof9NC+QUthfv0OoRdaukWDCeEB6+cc4lniKioQPZ4MEj/pMOcATpSp6wWR5mEGE+8JWIkZbIFHk18zDHmYvTMybyJ2zt+9nZKq1U5+e2F4KaFQdY2Z2uz06FTJ4OlpBupUk0s//r5N9hPB8KDVkhq8i+yqodYS0+yVQEn+NpHakgxySz0p/JaT0xmiIxe04OdfVFK17ITK3xdDdF8pkOUDJuxu4elI9wji3adJN777mRrCRbmRbtKitZgq0QMKMs334xfPdiKbI67/89P37TObTSAtwS/zDogPuydHsYcOq1pFPq7qOxeNvk8TILCIAgOyFFlHg2z9uOy+JRU0TxSR7co07o7jcFuHeTwk9y70bDyO4U+h+wud5mb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199021)(33656002)(38070700005)(44832011)(2906002)(86362001)(55016003)(186003)(4743002)(83380400001)(26005)(6506007)(53546011)(122000001)(38100700002)(9686003)(478600001)(76116006)(7696005)(6666004)(66946007)(66556008)(64756008)(6916009)(316002)(66446008)(9326002)(45080400002)(66476007)(5660300002)(8936002)(52536014)(71200400001)(41300700001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CGgq9lWfcHFLYeZtuGB81r9CQyDohCQmpjzZZ9+L7R6Vxd0rOItZ6YRPjJwK?=
 =?us-ascii?Q?0nQxljq9muv7HUcAXPOLWNGABFPYJplPRWgFAc6rOPSDwStc61NaNNUxWlEt?=
 =?us-ascii?Q?I1NfA9JJ1uzgTOZRCDdaWgYuFNNrGJc48/ErasDV4LHgO75GwdJbXwBp4wdo?=
 =?us-ascii?Q?HN58/AF9dVgnqJmtthzi/KWIW8+ELogxGgML7GYE43285rUZSa3XK8ipO9aN?=
 =?us-ascii?Q?xnMmqYfKHqdQiFn1Bo2NWEO+bPK5HOiCGI+zUp8mdxRv78CAErmCHR3SXqUo?=
 =?us-ascii?Q?dreYT0V6zdlGoGmhGCehUwruiaLEFccPCM6HF+1u85sqY6NHZpZV/jKpAYkV?=
 =?us-ascii?Q?e0agI+UiTIV3Bl/zv1CbGDUjFjizSmepB3DEwqdKvJfGDkTp6KEXT9PpCYbg?=
 =?us-ascii?Q?jb9G5z7WfGx4ESqyJF9wSAwg+/kM9/wPHh7RbrAGxE8UrqrmwktqgQy0jyxn?=
 =?us-ascii?Q?BWdf4KpVwTK4Zp7WZTPp8LK+GTL+hEhMEEwqJfgosUhM1mAxQaUip0L+1uhW?=
 =?us-ascii?Q?hSp2//n4VyJ+wyhSdzPz0n9kdBhYs1Ia0z9xQFPn5XAoMW6Wk3XG2MKOUHiQ?=
 =?us-ascii?Q?TF4Jc3P0dP8A8ha7tgWyQNmFnie9YHRy8KaPA5wZr0E4uMNuYwixilWzRTGz?=
 =?us-ascii?Q?o3tngZXAGFzkcu6358O5vJhoe5+yKN3IdADC3URVYzJOguBZ/6hhoJyMO/IK?=
 =?us-ascii?Q?4YQRRLnaTavpT1bBF8w8ZaXOeM6neTVRndPZNXLe0FsPEIMWJHE0rjr8Qoti?=
 =?us-ascii?Q?5vmxY0Yf/Bm4kUEV1D6pwJ4AM6rx1gg3CwV58OcSt5zx6bDQOxfxY0bFFQsw?=
 =?us-ascii?Q?kciHGViGGO/u+dqFLO++yUhEtshXPrg3t9l0IhxmOqANGpGNTxpMz9qvbNXt?=
 =?us-ascii?Q?aNZsGkwW9TBT5JN2v3ViPEujLZ5iIcBg4igP4wT4hN2vlNwT4wdOn9tc3NIq?=
 =?us-ascii?Q?auM4PzNiLuf4cnTv+pCBxXYLtNMYiJ8qvXKIjFMqqidLehpGT5MO183XHI+C?=
 =?us-ascii?Q?PJppopoSp/sgAxpufsBz1UOGkDbkceP8J1J7ZeLKFVapdGlU+ZUcQmV/ypKm?=
 =?us-ascii?Q?FvCRmau7ux/NAiSPeFtqTgakPzF2eznfOef3oz7RIPDLsHle0VQO6XQkTk5A?=
 =?us-ascii?Q?csPZwK+4s7fDLdw+y4dwtWKNgc5/1JTBIMmJDvgTpz6CXVOK3HlpwYuIraIQ?=
 =?us-ascii?Q?B7EhWFyVG3/K1qbv2IBvpva4LD1xq3w81bTsi1U+txo0wqazw2KYID32w4B/?=
 =?us-ascii?Q?DIxp1pr3mBTfHr0rG45YjfZeJu3MvZX5Tw+x5kOre/ov73ZV19UrTdeAzZU1?=
 =?us-ascii?Q?6AO7fLN6oPqo0GmcO3FdTOZSYACdwjAFu2Z1HiLjbZZTkesq0VgfRi/WVMtq?=
 =?us-ascii?Q?HwloBEbHi9rOhFhgI6zCbBc5BSQ8ZAHBoJryqZHQIIzaRM85k9O3EYmiC5jR?=
 =?us-ascii?Q?dTMVJLqTE0edJTo/oQazcdcYWVpK2vby/JBTNcjxnQm8WYnV/iHahOMlFG/i?=
 =?us-ascii?Q?43ZnGv1Ezf3MDFYJxi9qiR3fef4CC6eQnV9KVJGivfhfkrU8Qq7bvjDJPsm8?=
 =?us-ascii?Q?QnrlVtD3UT1uqpe6V3MWTa6hG/mlV5kFsoEtZMQPWYv+SsmEFF7DiWiSIZdi?=
 =?us-ascii?Q?zg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: expo-datasource.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: afe789a7-2f89-4c3a-135d-08db895f855c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 20:25:29.5302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: aa719fb3-4816-4495-91fa-36a992fe0492
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NMzJg3pbJG+GseYygA4bZBKW51E4yYFG9fws016RB12AVucW4tpl0hA0ei1O5Pm1WxZUcWO5NaTue38kVhzseeTM6AKUKDrfF7Xqgmm9DOjNvQygKE+pxsT6HuP6QyQb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0PR01MB6295
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I sincerely hope you received and read my earlier email.
 Please respond "Send Estimate Details" if interested Best Regards Emma 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.222.101 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.222.101 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-Headers-End: 1qMaDr-0004cg-7f
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Participants Data in - SIGGRAPH 2023
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



Hi,

I sincerely hope you received and read my earlier email.

Please respond "Send Estimate Details" if interested
Best Regards
Emma

From: Emma Ferguson
Sent: Wednesday, July 19, 2023 6:50 PM
To: v9fs-developer@lists.sourceforge.net
Subject: Participants Data in - SIGGRAPH 2023

HI-Nice to meet you!!

Are you curious to access the Attendees Contact list of "SIGGRAPH 2023" ?

Visitors Profile :- Aerospace & Defense, Automotive, Broadcasting, Consulting, Construction, Consumer Products, Education, Electronics, Energy & Utilities, Events, Experiential Design, Film/Entertainment, Games, Hardware, Healthcare, Marketing & Advertising, Mobile/Telecommunications, Software, Themed Entertainment, Web Interfaces & Technologies.

List include :- First Name, Last name, Company Name, Job Title, Phone Number, Email Address, Company Website, LinkedIn Profile etc...,

If you are interested I'm happy to send over "Counts and Cost" Details.

Best Regards,
Emma Ferguson - Global Marketing Team

If you do not wish to receive future emails from us, please reply as 'leave out'




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
