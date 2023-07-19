Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9A575A2D0
	for <lists+v9fs-developer@lfdr.de>; Thu, 20 Jul 2023 01:25:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qMGXz-0006wm-AN;
	Wed, 19 Jul 2023 23:25:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <emma.ferguson@expo-datasource.com>)
 id 1qMGXx-0006wf-LD for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Jul 2023 23:25:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vCc1XlvRKUj46VZYIM6tWUlzbHHRoU0CyM7pMOr5+ic=; b=QkIy2E3uI+jt78P53W6iGSIKqJ
 6Kjxo2IBqXGwjfv1S98Ajpwe5tHyji7SnrvPx3xjMa2Uf1aodxePdFxj1jXNaghZvhbTDyMgGI+0K
 Xb/OGLDD11fy4TTXj17UlMDAVSFZcQI9vyDOh/kEHj0uxX60rzMrddAH3rdLY0izEPSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vCc1XlvRKUj46VZYIM6tWUlzbHHRoU0CyM7pMOr5+ic=; b=N
 8CtwGA35lS9UkOkaVbf/wjvPqiRewrY8+sZEnmj1InkDpfAukyeFvOvzriPT+zr0Rb1b7Uk2f3PD9
 4WGLYRZz8LQmZ715fRyfRvBJC0TpZpGA6ejsHhC4dxlrwbcupL4c31R70UIzEAuSI3FVhyJ68wmE5
 Sm6RLm2Y6j4yuO+E=;
Received: from mail-bmxind01on2102.outbound.protection.outlook.com
 ([40.107.239.102] helo=IND01-BMX-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMGXx-0006Y4-Qi for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Jul 2023 23:25:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kjj+7uEeMVIZmNq36dB0vXHag+8yG27yRHto53cEwW0gDKxi5TeQDRpmWCRX7rH88Q2AmT6m6fQvtvyVlS09xK4gmFAYj6p5u2/TCov7VUK3GdInxzqxYqmuMcya9azDcg9iziaFpzeESnGknQh3HFu+jJvQPCvH5gdtegG/ssNOmMc6+dLbVhR+EkJxVHuwhhBbg6HOpVrM6OV8yaXt9uhJOf0T95U9FPW4RXE5Af0Lg7QB+gNZ5DsDJG2ICGp8R2CHAYublft6pL1XKloHJehtH3LkbeDr2Bk7cWb+MYKM4j1Y6VMqWqQaXuhUTea6a+CdWqmuyoLQE/I0n7abjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vCc1XlvRKUj46VZYIM6tWUlzbHHRoU0CyM7pMOr5+ic=;
 b=QH8+kLCIfVQZRqbvZJGx2+gJadSqdeQ1l0VNVhf4725yvF/nIs4+P+rSw74yVy1uC6iBHsR/mGZR2KwLwNkrcBlHJ2BMg2JP0sCeLtEgvyP/rZphUPFrerRV7uTCd6hwLJpKEaBny1077qJg21M7MAxtp8qlK1CzRbklCmba4NGg7Z/26zfgmSBNbwC9QOR26xbmKgVvFbeOZ4BQPzGrtiXp34s0mweYHd/DHuyFRkfUjEBZC6TtkZm6IGfPWOUapbgewRotGAmH2XV1QreTs6wjkteqWSoa3uj/1DyAphbEBpe/CzQFVXNAVUxDjp41QCYvFPXYADNdr2Wt6B+mUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=expo-datasource.com; dmarc=pass action=none
 header.from=expo-datasource.com; dkim=pass header.d=expo-datasource.com;
 arc=none
Received: from MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:5e::6)
 by PN0PR01MB8908.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:11d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Wed, 19 Jul
 2023 22:50:16 +0000
Received: from MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::390f:3fd6:1236:a818]) by MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::390f:3fd6:1236:a818%3]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 22:50:15 +0000
From: Emma Ferguson <emma.ferguson@expo-datasource.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Participants Data in - SIGGRAPH 2023 
Thread-Index: Adm6jvAnKEE15eN4TGCSqYXIaxEnJgAAWV2gAAAAD/AAAAAO4AAAAA6AAAAAD0AAAAAQcAAAABDQAAAADtAAAAAQAAAAAA7QAAAAEPAAAAAP8AAAAA8gAAAAEFAAAAAPsAAAABDgAAAAEBAAAAAQcAAAABDQAAAAETAAAAAR0AAAABDAAAAAESAAAAARwAAAABGAAAAAEBAAAAARcAAAABEQAAAAEdAAAAAQMAAAsE3QAAAAD5AAAAAP8AAAAA+wAAAAD+AAAAAQEAAAAA8QAAAAD0A=
Date: Wed, 19 Jul 2023 22:50:15 +0000
Message-ID: <MA0PR01MB67931B7948450A3978A68CEFAC39A@MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=expo-datasource.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0PR01MB6793:EE_|PN0PR01MB8908:EE_
x-ms-office365-filtering-correlation-id: 85981832-4d6d-4a93-9eb5-08db88aa84f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CiB2V9imT6Yoo/ElOH85lrDeoDL4wWfmq7atnufA86u+WVCOhudJS+GeAxn3NE7/++qJnkhBIPxPER42okbk87j5F3rs5Y/uG0fU+hPWibTVt2Hr90LvObYX2veNY0q3y8O6quJp8FQgqG+GS5Vnrd6T4beBxb0XxPC92vYMvb2/2OZBda13WYgzkfNIHe0g523Wl5e+3hU9YtefGtKJm3kLMSO3Xk/s3k94mQV3RxqslSpSnuIzUbQRRBNSWQ2H53CPMv28Z9JOai3wUYUJ6G1Ob+jVDfohU92+nHUBoAF4kHJrqgZS+wGggDwV+1tCroljiYfeBROL13lRhyeWgA1g2hbChgxf4OE5R6T2wogyXzdqjlEBCEQTlSrYrCBXjUMUP6q+VULvzQ5DidYLqtGgiVZfS1GwTFeobkFOU8lBy3dpSArF+o2uF3NIaDrK1q1S5dloucr2Tq93WaRtPlVyRZ6PP8WOfD84cQ0WAiHUH6OzvHJPCtlQqZOG6fwuUrwR6+V97bGdtNSF59chejJNgFeoNze38qyWmdShkdfTQ2wer5w/RHfIKtT27DrHFZK9Ot3VSilfjxdUxlcuzGiCkqfpOxOYJaQSoHtsR9A46tg3084+lbgmfaKzMbAs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(136003)(396003)(366004)(451199021)(83380400001)(478600001)(71200400001)(45080400002)(186003)(4743002)(26005)(6506007)(55016003)(9686003)(33656002)(8936002)(66476007)(66556008)(66446008)(64756008)(41300700001)(8676002)(316002)(2906002)(6916009)(4744005)(7696005)(86362001)(76116006)(38100700002)(52536014)(66946007)(38070700005)(44832011)(5660300002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aPsWdsi5qzK3YfUGqmtaM4vNYDZfWAuHuecAQ+PrajNglk6ytnEcRBWvGgS7?=
 =?us-ascii?Q?C/bZ137gx/eyxa/oEnrizWTcWamSCRw/y20S+AGSN7zzwfeFPNsGH8oNV+jC?=
 =?us-ascii?Q?Lm5wVsO0P6l11aM1Gtmkz/5dcWxPZeeO1cJlCCL5SBntOsrpNOrHHoJrtoCW?=
 =?us-ascii?Q?DBS12jKe7G+F9T4GB8krYT1AIVqZif7uH/jo/AKemRc9K1b2WfYn4cXGhQq4?=
 =?us-ascii?Q?z6WBAmGmYTu9pRAUD3B8EpMXz4rDb7WgADidRxLjRkdgGM3ZuFJAg9e6Y4n2?=
 =?us-ascii?Q?NN+vp9TulofNBe5YyIIwcxrgm+GH+Pi9qyOlUewAf6UHvc9rZX9njRQaxeXl?=
 =?us-ascii?Q?yo0Ip5kVjLo/RgOzGfii/kjpFU0V+MfyZAMaS+J1VlNpMeSoRvhK4AirkBto?=
 =?us-ascii?Q?w2aX/usuDdiOtjFhsHh7kydCtoRZ5JLfgFfHq0CakfzkR+4GVCDBrQia6CG2?=
 =?us-ascii?Q?hz+1Ajt+XOisW0/Ac8LvIwakuR3ezElTEVQIb75IMk8PNVUB8K+ntzdMVHr0?=
 =?us-ascii?Q?S7LvsStUftGLaRBNsmup93HidpVTfK8+rdiDTCI42GENdz7US/jArsosTi0q?=
 =?us-ascii?Q?FkSMvUWFn3uKlWAUJ4sgSAULjfHiG/zDVVVa2NIWZUdupRAP/btGkNqjlS4y?=
 =?us-ascii?Q?qKekp0z7WfUBYbzMkeWGiMwDRiojub+1dqSxhrEvMqrQG9M4rbfzjYJnfxam?=
 =?us-ascii?Q?DiXhbDCSQwLfFz5P5jcG1QJwQkMHoHGtRBaAugFbayxox1qLuVjYr5WAOx2F?=
 =?us-ascii?Q?SA6ceBp2DowOMR280+06aAgAYbaXqqUqqB5jmy/AMvlKWGziCpoNBzrIiSh5?=
 =?us-ascii?Q?sO/VlbQmps7JTr3WeXKIsROOJOg3n5sLWk1UiUkjQMfPUi9oPwlwBKuBWqkP?=
 =?us-ascii?Q?5WSvavXKFkLt3WL0+mZIdow7yWJ7IIcwCycr3azp7W71fz7MHosvx0fP2owo?=
 =?us-ascii?Q?+AartOeQ8T2DbMDB8MoPQ6zimddGlBhb8VuPfnwLRqwkX7wXOWtJuyZvOIzT?=
 =?us-ascii?Q?NIGIBPnxsQAH3rCOBssXNMH6wUgFx8ZSMQBG0vs2gCWMjJS6VgX5bYoGK8P3?=
 =?us-ascii?Q?nOQX5qXUczynSfTjcecfpIzO3JWvN0IkRL3xs47az4JBGAM2XdKn0o2fpIhk?=
 =?us-ascii?Q?MwCHx1kutISivMG+2ccictuBFJ7LHNVl0MWYHSQ7mWsqDJQrCM7j/FSou71F?=
 =?us-ascii?Q?RyenZ6l8Znl9f/ZgrNDd/o735gOYdI/fKeVjtg6IItg7W2lH0UUMPaKle7MS?=
 =?us-ascii?Q?QeOIBoooNYwVLlc0c05gubEiIpOlEjsfJKfC11/CJhi2XRBxMCOpge7yKfSA?=
 =?us-ascii?Q?BmwUp8jzj6tgLWMlJi34X6XFoIzkk9nuuthyFgsQtFLzfRfljjP94zgN2E+Y?=
 =?us-ascii?Q?Hh7L6h65xIVZ0RDdD95UHnntJlF28Lk6H3Z8KgWVV6HjswbJalYCnDWOe4iJ?=
 =?us-ascii?Q?RIAiYHVO/nGAp2joD+La6fCHseLDTUB0GaRloS99yaTvDjFyg5aWyC8HA8Bc?=
 =?us-ascii?Q?/MJxG4Bh4wFDu9L0NNt/+wgZ+j75QLwXo1Vw2hYb1xHdBl1+NAmhcmB7c37C?=
 =?us-ascii?Q?zglJbkyh8L30Fs4ywBanMqY5sz2PNr6hBMrIp07QoIKzi7rvxQR8oWG0Uc8T?=
 =?us-ascii?Q?wQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: expo-datasource.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 85981832-4d6d-4a93-9eb5-08db88aa84f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2023 22:50:15.9483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: aa719fb3-4816-4495-91fa-36a992fe0492
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hvhbn8bE5zA7MF/OaBXLq0/Q2sV1MROSdeNWYwl/3/8jUP+8gA9THzY8wia3DswYP/bOJo0MSH2E/qLYKfPFkzLJj0yHb3lC5WiM236wwNdkKpqJf5N1adrkLTCzZ9dL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0PR01MB8908
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: HI-Nice to meet you!! Are you curious to access the Attendees
 Contact list of "SIGGRAPH 2023" ? Visitors Profile :- Aerospace & Defense,
 Automotive, Broadcasting, Consulting, Construction, Consumer Products,
 Education, 
 Electronics, Energy & Utilities, Events, Experiential Design, Film/Entertainm
 [...] Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.239.102 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.239.102 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-Headers-End: 1qMGXx-0006Y4-Qi
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Participants Data in - SIGGRAPH 2023
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
