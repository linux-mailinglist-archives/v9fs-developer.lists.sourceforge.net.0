Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E62C75B8B1
	for <lists+v9fs-developer@lfdr.de>; Thu, 20 Jul 2023 22:26:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qMaDv-0006aB-OO;
	Thu, 20 Jul 2023 20:26:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <emma.ferguson@expo-datasource.com>)
 id 1qMaDu-0006a4-Fk for v9fs-developer@lists.sourceforge.net;
 Thu, 20 Jul 2023 20:26:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4KaY00/egAHmLCow8fw+zE7nH/fwn2/5Iz4RiaWzRB8=; b=fjOJAcUemPpN+756D49lXf2wEX
 4AHOXjz//oDUQbF2qrkWkwTDyRD+CTQe8tssjaNry8mlyHtPXnPa+i+E8OFZxLuoObw583vuat0XY
 4wjRSqOd+mYmRjndNsOxH0njklBywG8KoGv/b4kWW/JqERCliVYdFk4zHoI1WFLk05xg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4KaY00/egAHmLCow8fw+zE7nH/fwn2/5Iz4RiaWzRB8=; b=O3J3I6ZRxvbrZSkAlvcXRXs+0e
 bIgUv+M11PHi1lBqpQ7luNH6MiRO+unGPRv9lY7YhW3CI15X4SJ39ptDvKyjrMuzvxhXw1wywXSHg
 AJNNC7tYqXAUlZ5mH1VFP8WgwQ/O9EvagJKzTQTYpNjWZQng6wTkQCu6WzQjRgL/8pLo=;
Received: from mail-maxind01on2101.outbound.protection.outlook.com
 ([40.107.222.101] helo=IND01-MAX-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMaDs-0004cg-Pt for v9fs-developer@lists.sourceforge.net;
 Thu, 20 Jul 2023 20:26:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YBADOS87Ugx/V4JpMkCQodzI5lM1oTnkJox3+G4v3MeQSa17wvNNZjHQoNRO+KWHAoBdsqH/5YRLOih4mnC22RLtz9jKYWe3ogNljmKpBDaWN4Hq0gLeec7VuSGAQ5KgBP3mqezj2+H2tmYBnASsV4Eii7JgqEFsxLgoFJPozD7S33NNJbzHIA6m4vrnSnxPGt0foH8FEJuWKV+3NgaFmBxd0nwzOw9CQq2i5wWOzQ3uPe/N8g9K8D30h+e1Z8+vb/lScUxIo0WJm5oWsEDzjeaWW6kYoEfYLEHnW2Yub3Q/4o0477k+oBIF4qDAONINpp/DBcri8C/z4jOhx/azFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4KaY00/egAHmLCow8fw+zE7nH/fwn2/5Iz4RiaWzRB8=;
 b=nT9st2ZZ+iLagvFtM6RaHZ+fwCAZ67kS8INF140wOTpE1Etn8A2O2ZtcuzgXJdwxNw0DvuZxD7GxdTeVS15zEiYdxFthZoc0ab4oqGBSNTUTZTTaXnGOICeRogh70jvr5mqqWMgy/q14Lk37AUXbh+rLwE01QuhsMw2SAhmsq/trWVKc+ptDKZCU0VlUN0sfuokV+Qdynm43YchSrL6Q8cfpnxRLIkve6kzCYogEE3YZkO93PHBG5xQ+3yr/TaoaU2Q3MVnAmVxlQxDyF5JTePKTiHUjzdLPhdKIEQzxO3BqbR3eUSHrc2ne3kHFWrJpUDrXgHX7wMVw0WHMK5tCMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=expo-datasource.com; dmarc=pass action=none
 header.from=expo-datasource.com; dkim=pass header.d=expo-datasource.com;
 arc=none
Received: from MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:5e::6)
 by PN0PR01MB6295.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:70::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Thu, 20 Jul
 2023 20:25:56 +0000
Received: from MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::390f:3fd6:1236:a818]) by MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::390f:3fd6:1236:a818%3]) with mapi id 15.20.6609.025; Thu, 20 Jul 2023
 20:25:56 +0000
From: Emma Ferguson <emma.ferguson@expo-datasource.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Participants Data in - SIGGRAPH 2023 
Thread-Index: Adm6jvAnKEE15eN4TGCSqYXIaxEnJgAAWV2gAAAAD/AAAAAO4AAAAA6AAAAAD0AAAAAQcAAAABDQAAAADtAAAAAQAAAAAA7QAAAAEPAAAAAP8AAAAA8gAAAAEFAAAAAPsAAAABDgAAAAEBAAAAAQcAAAABDQAAAAETAAAAAR0AAAABDAAAAAESAAAAARwAAAABGAAAAAEBAAAAARcAAAABEQAAAAEdAAAAAQMAAAsE3QAAAAD5AAAAAP8AAAAA+wAAAAD+AAAAAQEAAAAA8QAAAAD0AALUYNYA==
Date: Thu, 20 Jul 2023 20:25:30 +0000
Message-ID: <MA0PR01MB6793D0ACA2FEE487C946C5F0AC3EA@MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM>
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
x-ms-office365-filtering-correlation-id: 8ec0a702-b443-4c1e-9569-08db895f85a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g8/25LanYlIAaxGWrdVQ3IrOqBrycMeEJ/D/SM+/xXKY8u3rlO7GnrjVzPKdcuJIUxuBvA3jb5T3T6XHKZY2mQNMoh1+F3Ywfzh1dCh+QEZvHFWofwml2qbOhbFuqPQRkUn8UPH7/mnie0WywDZ2B2Gi3IRRdnQQXVfurEuMx1QjrtKix67uykQVhzpke3mUFeYWnaa91DyVWDhMqkJT0fpVhRwjap3elLWZZdrateaDCxMFcGvxih68LJ5zDO5XKr7sDtwT8bfa2dnekdJTZ5r6y9cVGsI2CSr8olfRiRxy8v2r9A9bI+ScMLAPKtcG8MKRxJtNPWlapXCdDh8GSpcHJVCmy9rqttYNsFiysGRhguxGBQ2Ny2mgEo5dCOdoWjPHttAeWVJYrlsw/90YkNWg8M0vcg26j5D90EKrkEE/f+lA1vZ1XhGrTXs3g7DP2KaxCQ608ORmITx6gDIEJD0RKYMyhGba1opvWX8MWMP82gARuOW9hYLAp/1ZFVjt3Tsf/BmJOfkkw1mFn6gN6RDAWSfgkP4QrXwfPuZkvDgx/BzZS4/ynOzBDGmIWO/mTle2oeTt9VU3a/Zbj/WbBsHb3rabqZ6UA2Gl6U3rLxBpCMSeKpnn9pJF5Q3EXQ04
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199021)(33656002)(38070700005)(44832011)(2906002)(86362001)(55016003)(186003)(4743002)(83380400001)(26005)(6506007)(53546011)(122000001)(38100700002)(9686003)(478600001)(76116006)(7696005)(6666004)(66946007)(66556008)(64756008)(6916009)(316002)(66446008)(9326002)(45080400002)(66476007)(5660300002)(8936002)(52536014)(71200400001)(41300700001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ye4hOsgADS+We+jy65tygIzYLOgpSf65+3QHuDFRSttlJkvYwpF6Gojir8IX?=
 =?us-ascii?Q?FCLiXJuHK/zRyyF1v+/cyV1172tciODSvgKZQk6oZ+iSSOuk0vvcKaR/O8nv?=
 =?us-ascii?Q?hCuXk4tryD++W5YSwYQzq4hUGW6GMp7dm/tjaPC2RfBgryx+/0y/gg5xXuRV?=
 =?us-ascii?Q?hX1VOvDN/n/hPaFxbKvURLadvkRjFGC6lRcwOXgIQ0O6Jx3I6779KmPU7h9a?=
 =?us-ascii?Q?VqsAULtAYD4dYBsqftD9Ar2ZPjmCh09L/1stIKAj6GgVR4xGi83M8Y+B0pMh?=
 =?us-ascii?Q?/5wSSafMzv9e8VM7uy5Clzc2J8HkG8SnfrE9J+317cfnBN94bczs2ermW+iG?=
 =?us-ascii?Q?xhSgjiURF/TQ5ZuDb15gry2jXYwEnENmyGT2bOAVzo8vgkR3COfB+Gh6NTvW?=
 =?us-ascii?Q?D+8RaiUR/avxpyMbmCG4HeWJ+Z2mEN4gJU8XaIvmy0UtF18GqyBa134jIxKY?=
 =?us-ascii?Q?1uMw7V6sVy1c7nl2ZHznUvUyfENnXaKsz5qlTWzPSNufQviZkXOjWYg8UaEb?=
 =?us-ascii?Q?1kGdBS1yESzS69oifPQuUxcq5qMxOqF/BtBc2F91V5f71u8r/YB79XP5Irqv?=
 =?us-ascii?Q?4ywc7PeV6E6BWZaMIxKn3X19Gr7kLNFkDRD954Kwtml5VNCFzC/JcJYVVXDM?=
 =?us-ascii?Q?G2dyFt2Q0UCVkh0TcYdDJTYbBb9hWs0hGFhtmApj0bVyhjSYIB8RyzWW4Ta9?=
 =?us-ascii?Q?tDB5ZlNtyw7A1Ym56HpyYbAQvMfSnVPEUmeMU0vyffRwPqIA5KEzm6x1hHHi?=
 =?us-ascii?Q?dgd7wUOBSvRlL2FnYCc1V+7rBWaP0fKCA1n8e3E5/UhPv63vxbOLWbCwIZ2o?=
 =?us-ascii?Q?5VtlE+Kj4Ti3/BX2golJ1kWOYfrVmugQoP5fRuSjoVRzGQKdBrr3q+r+/E+t?=
 =?us-ascii?Q?qba7XoDuLIDUBzHQzMwJMacXHB1aw2qDnxcb6Otz2KDYqDJ6LwPRZWRa/Zvw?=
 =?us-ascii?Q?Zvhkiqgj4TfrBQxIljvg2TXcoQxLwYnTbSF28prJOptMIulwn1B47LFwht3I?=
 =?us-ascii?Q?JVmiGDQYU7UkrGnFYj95uMKc2RQEoZs89ITNkDyuBe7WzDv828hjOpmr++TU?=
 =?us-ascii?Q?DWMY7LecU2O6qTg5p7SmY/VG6AZL0FxyZTNXMLOauwFe4kiynYa6XPUtwJPo?=
 =?us-ascii?Q?BPn94yVQn/Q8VGMNm0MF2nmI8XLO5yEh/hyw8ywgaU8NL+tWWTLe+oJ4p7xG?=
 =?us-ascii?Q?GL7VS52sT1Rr5r5XmyMc/oLnamBgpVm47DTccKu8LGF4Z7nR1iMjH3rx87L4?=
 =?us-ascii?Q?B1wbLjNZvKN//OHoRK9uJ8n2CT6Lz1+3lSPx0WO/GzCe27DjiSfG+aGV5c6W?=
 =?us-ascii?Q?xS/4einyWDhS1vOZYGo0nDV4wcgY0Li/AebhLhuyVUp/XWC+2hR1vZW0OgS5?=
 =?us-ascii?Q?3JSuJaPjxG0QIk/PAkxV0qrFMd2GNKErbePKOYP5HwVQGapi3bPB3s3G6Ygl?=
 =?us-ascii?Q?chIrzIJw3rTp8+8q363UzG/JGXRcKjyEw/LB1Y655hM7tCvU8lTxS02z4Lkr?=
 =?us-ascii?Q?sDR+PQoKAVxGuwwK1NfyoOiPQCxclZmSSuhEp0fDZsgc6nGkn0MYF7SUgcqA?=
 =?us-ascii?Q?RnPe1289CCTPJE5S5LWVSiGWnNfp7SST6GHZWiuetj3rJOrMH8+TVhiZbdF8?=
 =?us-ascii?Q?hw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: expo-datasource.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0PR01MB6793.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ec0a702-b443-4c1e-9569-08db895f85a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 20:25:30.7283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: aa719fb3-4816-4495-91fa-36a992fe0492
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lOQCwmOyKhk9hxiPokTdJsqQAVz+Cs48GS3Q23+FnK80hvnBBDDE2hrrjJCaHyjC7m/0wuOQGtJDlEhUHQQVeIQJQrwn8ePc91wLdNS07U0o9yeTnS9wmy8b46n9LXv6
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
X-Headers-End: 1qMaDs-0004cg-Pt
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
