Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D76B8C63702
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Nov 2025 11:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y/hKZuYnQ/4df4toUV0nHKiNrBvKelwcwZRHN9N18RI=; b=DUy7nKBx2zzuG1VjvHoRgC1s1E
	na/jh2OnTvNiz/qKHZRd2porQd+aMdlNzSpyXzKqrby6SjOFn9Dyn0xK4TatX2fehcmckY1OAUtZr
	918fBzfl5GCe9nglyDBohkmqJEOLquTOvmH0mc9ud7NtKqy4nnHTvNrNrnSAOyi91Snk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1vKwCZ-0003tu-LV;
	Mon, 17 Nov 2025 10:11:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <freya.doria76@outlook.com>) id 1vKwCY-0003tm-Fw
 for v9fs-developer@lists.sourceforge.net;
 Mon, 17 Nov 2025 10:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V7f4ajqPFVToT6VnNsWj4NjsRICWMcSrMHrk7HpcLF4=; b=QZs7GrRGoYYAy+B02w/25FUJUG
 od3jmNGb+FOgwLeIbuVwaEmmAwkZrd87sT3UTqlfMnDJ6u+hZqq7vGAFp7WWF14C5+BHfiQi85ei/
 xdQOgLR68dg43jHQU06rHE2wJ32VbXD1PwhovV8Abfy2hjYs+hbJ2fSIadhfMsihMiSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=V7f4ajqPFVToT6VnNsWj4NjsRICWMcSrMHrk7HpcLF4=; b=B
 WSTAZNt2ZwrggWKh6JcdycQ5OVkA562oOqF91JmgvYorBVx5ssVkMCVgQ6T85GguiFgTK2d75LclK
 ceh18+CTxcdsNUn8y3Msgjq3otlZM+UGVHF6hRbc8SahnoB7J8qSTtXB+ZBO4TavmQQl3BfAY8qty
 v5uJP+t8nFjkzxZ0=;
Received: from mail-northeuropeazolkn19011078.outbound.protection.outlook.com
 ([52.103.32.78] helo=DU2PR03CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vKwCY-0002bt-46 for v9fs-developer@lists.sourceforge.net;
 Mon, 17 Nov 2025 10:11:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UEyZNcyWDobpaw6HQ45lsqBCrQ6YSH9TUfCe+0jnZQ/grQ6S1NzeQq9Di5oioQPnWi380zOG+fDPpIbP7PdPkohXDaKXvf/JGQfAHgCZMnB/iNPt93OYChfmVl8oy4cAS2f3bw5SxaYu8tfZJ1zfKm6ZixdGsHtlH7WAbCVxV2jM/Qu7UIEMVkGUWC4yk6c8fxT4hbgoq+NgxZuveVMGTuXcAq9ThSeha7AhV0QOTL9ShjuekSQkcfkSc4BPtuamLOSoN6zv7FtEByx0kqaKMEFHldglvqpVP4spGwmWrHWX6JiZeMEQtA5Ak2J+ZVzt2jJOMy5V1UFP6mWVKMnE7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V7f4ajqPFVToT6VnNsWj4NjsRICWMcSrMHrk7HpcLF4=;
 b=be2r6AXc83jaongmsG8KSwZ4iIB0eNgE01mLyUqJeuFAXFRF/UITLuS8/hQ19ORAUAiO2duyb3U/v6tCre29OOa2nOeh26B7LXQHAFX/Xai26kR5I9vSmWs2kcTXWrlmBwxlQasSVA+h1dM62UEw2BOp6dLdoEhh7AgSACSvpiImBboy4yAEoHqmO9OSShfZ4nHixnN7wRaywJAFU3OLzYYAOzNKrGt00LODR8kKmgkV1AnR9VKtILIIUD0YMFlP+CKtlAd3QWzAOsZli1Di6/Ov7UScg67R3Ea4qOnzxD8TE7kScVVfXhmuMe4CfKfH87NJNU0GrnSPaOk/0WKSgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V7f4ajqPFVToT6VnNsWj4NjsRICWMcSrMHrk7HpcLF4=;
 b=PbZGB1+mnngjB2NBhO60x5OJkdMuHF50JYv/q0e3/Z19U8vfRxjJhXYIVKqml4EPJdNjRQ2gqyJvzb2UElDD+3pb33a0yZe9R+itPGQSVzNOKuQTQndsboM7l9UmQBc2aoB99Z4nh/Em00jvstZR+8R5Qj89zOBT3PPIMETgI9aS6Lu0l/XW7sIDCVljmJm5vR5IRE4Pl4cOTw8+nyN1dGn4eKDrGuAG4NxoswNRqaYjX6WtMjrOIhr1EvhDoj449CTb0r4Hvm+9U0uTk0YrS1xO6fRFL0JSEqO8DvWFxBo3Sc9jDODIlL/fM/U8GAcQKLWEJYobdWrfCN61Jf5hDw==
Received: from DU0P195MB1626.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:3a6::7) by
 PR3P195MB0491.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:31::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.21; Mon, 17 Nov 2025 10:11:06 +0000
Received: from DU0P195MB1626.EURP195.PROD.OUTLOOK.COM
 ([fe80::a90d:995d:dcbb:14f9]) by DU0P195MB1626.EURP195.PROD.OUTLOOK.COM
 ([fe80::a90d:995d:dcbb:14f9%7]) with mapi id 15.20.9320.013; Mon, 17 Nov 2025
 10:11:06 +0000
From: Freya Doria <freya.doria76@outlook.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Keen to Hear from You 
Thread-Index: AdxXqaw9tgmAUx54Q6aSvvSf3JKZeQ==
Date: Mon, 17 Nov 2025 10:11:06 +0000
Message-ID: <DU0P195MB1626DB0F458719F959F22A2AEBC9A@DU0P195MB1626.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0P195MB1626:EE_|PR3P195MB0491:EE_
x-ms-office365-filtering-correlation-id: 6829670b-ac93-4e21-ed99-08de25c19f90
x-microsoft-antispam: BCL:0;
 ARA:14566002|13091999003|15080799012|8062599012|8060799015|10092599007|19110799012|39105399006|461199028|31061999003|40105399003|440099028|3412199025|102099032|19111999003;
x-microsoft-antispam-message-info: =?us-ascii?Q?I3+47mIhpJ3enuo9+ERcpZX1migKGBBiDFYH3hs0rUb/B+69sG+0yS5JWGTb?=
 =?us-ascii?Q?ErpIMiWCX/4MYTOuufg7CkAZOfsG4Bhxp8o2wI4chRYEvqfm1IX6+EKj7yP1?=
 =?us-ascii?Q?tzbDVdNcDZKwgsBsqhRrzp3ydFTtrmJDc+E4Y3H01AhSdRx4mMDC3RC4Ifdw?=
 =?us-ascii?Q?c42goM4qabuZpdjG2ADdXEgzzJsDr0fUEXH1lZygOyZrLxkh3wc/5Sn7WFL5?=
 =?us-ascii?Q?UN80NmpgwaOy8a2sDQpsWYj2kKC7n8HGQwJpMBU1hL4opJwkQebauk8/d1Em?=
 =?us-ascii?Q?CGMRjZg6stkBGRj36ZUIx8rpwKSTho+SGNd+fVxCkODUdMv4e879dGFtNAQs?=
 =?us-ascii?Q?IR7ZHSYGwG7693VOLH8xcbwSgU8ZXLUlzPb3c1a9Bpq/GmHBw3kNN8FvbtcK?=
 =?us-ascii?Q?WogKC5gls8CKz4fnR028Ug1WS8gJPGa3RtW9maGWJBX+sdP8nRgkcfnawryv?=
 =?us-ascii?Q?TCq7jxdjYBSkCmXwFCbZHYE3gLU7nT32w5z49lv1PvavdUEwooWMLoRlHkUU?=
 =?us-ascii?Q?zxa1lMVmEUv2oOMLamz0PVwvJoOWiJESHANierwam0zY96LmCeiPyWzJrPYj?=
 =?us-ascii?Q?2BgEvSwimzTPSKnP2WDkSJwb83ZzXYojhDFlW4H5noi+7ELhmisoMtuDSUwY?=
 =?us-ascii?Q?MUNsDTnuUhWRQgGNgo8ScSa4WwKKuaqUyB4kluoddVK2jEB6RvfOqSMOoLRi?=
 =?us-ascii?Q?lOCZfIxMmGyFGfqlWR9R6OYjEQSTK4j85wCTvigyB/LMoFXi6EZxxw/wz0c7?=
 =?us-ascii?Q?/QYxNne0n+tG5cvYpeBeXH9LxbUOpdm6+0XA7gWKP7xMBz4wc9/yQvGGLFMC?=
 =?us-ascii?Q?+o+i+lby2kEs0BqzloiCERqZn2fkuCUpft+Ockjwo6Q165VhXVSvv5PhQMmQ?=
 =?us-ascii?Q?86VhfvVqORMbQgALgUKuLw/NrelEH7hB0d+qpCj/CcRcH5qwX39uqA3jWo15?=
 =?us-ascii?Q?8T1lKpP2hnkvR0tYXO9+UZxtIcrkrI+vTp6srF0lzVfhd2l2Rh32OMbER1xl?=
 =?us-ascii?Q?i4tREwZCV/fK+3COp6/tJj9Ej3TUD9mHZi9diAhv1eoGQECh+gBDkOI3RpG7?=
 =?us-ascii?Q?qwKrOsdvxb5aPPeYrcBYnm87NwzDZ4TeNfR6xI1/aTmA/Khhz5vywukR3CYk?=
 =?us-ascii?Q?o7GSPZ1AqOtw6gK6rQwWjkOKkrUjbV9pAmbb/UxU37TabXmK38Dmrip3gFy1?=
 =?us-ascii?Q?kAUB5KShygwkoCeI3EShg2iLiq6yYvP4VyolOy6DQp3AZxuYsH99Y+yJUgQA?=
 =?us-ascii?Q?BfBV56OLzOCMM54VIByXFk7ZniU6AzM3EpOMszmR3A=3D=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J84szvh8Rdn8VDF8EoV2H3ZeFbV/F8q6NuCaRddtyajMeLAGTNaR1WgwLJ9a?=
 =?us-ascii?Q?rcDsbM40Zz3kdZUn35VPT8iftqgoybNCRr0Sj+bZ9Gj2mFBQscBSBaVG96nz?=
 =?us-ascii?Q?dAaGdwRcop+cn7Qj3ephl1/aORIJZh1He0DAIcjpxsfQnrdAr0utvvOb7JMk?=
 =?us-ascii?Q?6EZ6i9X7x3bBjqVxKxCsm5iIpqBh86Vs5g2o3sE3dDe3B8X1p4JA4qmDrKMk?=
 =?us-ascii?Q?xjjS6JXqyDCPvoI3UbCdJDkmYpsgk7WFfa2FVfqK0RxJ/qd+l5ybdyhqPTr/?=
 =?us-ascii?Q?u78Z+qG8buby+fkSmx6+CkpIX2bCdxhLqEKaemHJAmojo71xFHh+kjrLaPw1?=
 =?us-ascii?Q?8AKzLIhQ+tT9bqdP7tI1cHxiCjp+vAPzXRMgETQ8yTSKkkZTOHRs2jM5ToFu?=
 =?us-ascii?Q?OTRk46QeBJ/2SMJD9rw5LlHgELB0VrPpWIJ6qlTN2V5rHQXRmJfrc0Jmr67E?=
 =?us-ascii?Q?ggovr33GUs/wVgvIvgLKoiMkJzizHpL8039Qvpaq3E8k7jI9XQRXA6IxCzQt?=
 =?us-ascii?Q?ooWqYVCYalFZwx2H2XkSRrZC0FjuIME/ESm6qRX47ViVdQWHPKrSXrJFCsjC?=
 =?us-ascii?Q?NxYlu9vibbiGlQrMeCOG+HyYzeB82hvBTui/mkjwvqMeifP76Ncx7roHGpJP?=
 =?us-ascii?Q?d45FhWEOtpS12YJZsKCsuE4v2x5YNLLOJUsDwnxKCV43iLOrEguSw0tqHAzp?=
 =?us-ascii?Q?knUl2sN6Ba3DYyNHgIgJGs0SBK6eyRCEdUNpu4gPEXA/fR1bQIoiRo88pHgM?=
 =?us-ascii?Q?yqNZrP2NtR3Utn9S+UY6MP9uWH4dmZsHaRdrjggA/ZWas/dh4SunmNWKq+kI?=
 =?us-ascii?Q?LreTlNze2ElN00WFvJcbOVubMBzgA6dtNWIAIp6pwZojofffStOOQfnnBl1R?=
 =?us-ascii?Q?a6J3PCf6efPwLoP6H6U2kMJLoH7nfjSF5iWeWSKtY3pJ9xupQoE8WhQt1iPq?=
 =?us-ascii?Q?24MmATyRQsXe67xjwmPeCCu6tceDLhGdlhI1Wo/1F55ep99zD7zbsIOBhe8p?=
 =?us-ascii?Q?0Tw0B2BJpcqhU13pmCjQz+f3CRR3U3t6zFwdfb1DkKI8VS0d2BSGHP0x0pTW?=
 =?us-ascii?Q?T9cqcWdqel7b0K+EPMgxhcYKGXUn/7r/jpRQNecD+QKkvTt2G8FnDm9B6Wxj?=
 =?us-ascii?Q?gQ2TImpy0EhgcXomLq4k/MWPA9DobWoWwlU4i877O4CHkK6ZxfyvF2vqBP7b?=
 =?us-ascii?Q?Rx219XyS2H1WZ4+/8FDxs9phVEuRO0xgwf9seDYkFRmGAtYLlf7jLIfm73M?=
 =?us-ascii?Q?=3D?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0P195MB1626.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6829670b-ac93-4e21-ed99-08de25c19f90
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 10:11:06.8768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P195MB0491
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greetings Vfsdeveloper, I hope this message finds you well.
 A friend of mine is giving away her late husband's Yamaha piano to an
 instrument
 lover. This instrument holds profound sentimental value for her, and she'd
 love for [...] 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [freya.doria76(at)outlook.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [freya.doria76(at)outlook.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 GB_FREEMAIL_DISPTO     Disposition-Notification-To/From or
 Disposition-Notification-To/body contain different freemails
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.103.32.78 listed in wl.mailspike.net]
X-Headers-End: 1vKwCY-0002bt-46
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Keen to Hear from You
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

Greetings Vfsdeveloper,

I hope this message finds you well. A friend of mine is giving away her late husband's Yamaha piano to an instrument lover. This instrument holds profound sentimental value for her, and she'd love for it to find a new home with someone who will cherish it as much as her late husband did.

If you or anyone you know might be interested, she'd be happy to share more details.

I'd be grateful for any thoughts or connections you might have.

Best wishes,
Freya

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
