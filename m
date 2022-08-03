Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E02C7589192
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Aug 2022 19:37:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oJIJU-0006gZ-L4; Wed, 03 Aug 2022 17:37:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <care@geek-squadupdates41.co>) id 1oJIJT-0006gT-4Y
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Aug 2022 17:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hYYCONIN9B1CErYgqVMcdf7IpJ8nhHSMH9xx47smKlQ=; b=fuewExSP8w9dDZIJFgtwntqPeZ
 IjgoZNsN/bozzsaK5PgVyViHCThzeTbDEDEPXlRSBlWyMUy5a3K3wyMOswzdejrC2BKqCQhYnZhMv
 cjyFVmG8HWzQW3qDvGIiM1RZw2Z3GWABz7/8WTwZQnzGs3RNU8FPJxI3z2QSgE8dmkYo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hYYCONIN9B1CErYgqVMcdf7IpJ8nhHSMH9xx47smKlQ=; b=G
 P4ezQbI/RRajZQKnP7y0m0XeV9n3YKuvZoA21FqFoQOZGIzMmRzFysTxnEpgyTC0YHK0mwsoJCFEX
 ftm/qAjCes9t7fezovwYHNzHKNYoZFW0vESjKb5UzDmL/ngnk9dZB0MbPq/FkuUcdvCo3YtSsmC+p
 2Dbtgixpi6pq5TnY=;
Received: from mail-bmxind01on2094.outbound.protection.outlook.com
 ([40.107.239.94] helo=IND01-BMX-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oJIJP-002400-H0
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Aug 2022 17:37:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZGIBh6gFmzdiDnB1jj1a0RVrXsutg4Fo04hZhtuyFShea5YS7L5CbydKTMJVnoo6CqiKWP2YiE6DUe5WSAA3lTLsm8+tD5Y4Lkh1HkHPNHGZ8jvtFfh4okPsrRFEnL8t7duj2bcCcbSWGOVW2LnOPObsmMmz4pwQ0k6lVD5EqVyVmv27vunQrkh+W0u/OMPDYgeyXraHCb0iCiFO8VlXbhKXBICISTzuULIqfTfSKaGHnhzV7IsYrYN2JGjy2opkTIJAZU3VBKk1y8QW8sTNryitV4ziQtnsMCf7/fRNZzvrtYKD2OluZNWRno9IiNuPD/iFxk+U+v/oM0MYL0h5xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hYYCONIN9B1CErYgqVMcdf7IpJ8nhHSMH9xx47smKlQ=;
 b=WMFPc/s+4JxJ92Qp6ZROU1rWvH//Y4KfqP6TPAaysGimrRtoABdXmfRSRNKk5zAMLprvcO7CgG03wn5YrYsYVDW6Wb9xkQOVyi8rTjFbr1E3pyAt/HG2O3Jlhf2Gfn3Rxl9zoLj8McWgLV8mTP2mtIBkJpZ79VebmEhcXpTYSWODb/sgGh4xHEa3bynvaQ3OwmNUSOfTSnKDmSJATEYUDMZQQg1JLFucQ6wla0Iu05/jUrDnbILY31zkJss+zOUYODTOd1yp/O94ItoZyIlCdtdopREmH1GBnpjWBT3Gwz+4wxOdc2KlLsBRB7jSG4bNiUcdJh560Mqr7wOoZPM6Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=geek-squadupdates41.co; dmarc=pass action=none
 header.from=geek-squadupdates41.co; dkim=pass
 header.d=geek-squadupdates41.co; arc=none
Received: from MA0PR01MB7625.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:27::12)
 by PNYPR01MB8706.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:57::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Wed, 3 Aug
 2022 17:23:10 +0000
Received: from MA0PR01MB7625.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::8dfa:60d:4bd1:f820]) by MA0PR01MB7625.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::8dfa:60d:4bd1:f820%6]) with mapi id 15.20.5482.016; Wed, 3 Aug 2022
 17:23:10 +0000
From: Order Status <care@geek-squadupdates41.co>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Your service renewal #GS03-RENEW-10715565
Thread-Index: AQHYp12m3ThAxF9uWE2BVR46ndrM6Q==
Date: Wed, 3 Aug 2022 17:22:47 +0000
Message-ID: <4a75ef24-b515-8873-d8cc-b4bc3eaa51b1@geek-squadupdates41.co>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=geek-squadupdates41.co;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa980a21-6d44-4eaf-f747-08da7574d6d3
x-ms-traffictypediagnostic: PNYPR01MB8706:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gTl+oqv8PqQ0CZcWkwXqaZjlt7Uc/YFRsRb8qEfL0Kg23LoFLecBfFGU9AYG2hlX1zEA/0yDOq1zKzVw5zZ9F/k0mejNBZrBlIft9Kqh5eMa4NBUuAeUXUC9vEXHm1zh8WfZI78uq/UooWQwTjsGZRgPBoFCpsbNgXtmgpEvJWdF/ZWz0pb6k3WL7pdgXvMpigt4G9xN2Lfoe7toyif8AmYBtCBiqt45z4+/Db9njMl4vaP4q8MITPdxTJrqVhxWbIyZ2QnaPiPZO51iBgdKhOjzRKikUxOPQD/5nyoAnWURM5UJAw3AEqZEn0Io+bWyL0TBCyhsa6BO0r3xpOjsRWjFc5kym/Rv3R17F5sOQuakU5uDaCdU0zaYUJAOLjKP22H7jnm8ie8QKSEQnHmwBek3ZOfcPrWOJedxFuhM9T+DeEz1aRrfWYgy5hyN+kBbgCtvBbjLR7LxR3vheFK0l8+0EfzthQqUJBBRSjdFOLXbv3UOSxgyFE9holklC8SuxsUqa6TQ9ZhH1TUe55KM96JRQTCoUhkGBklG5oSDNWdxdn5vHi2rgLLNqUhurd8nPedUDw9YWGs+j07HXj+w9WC+HRYiXEEcX25o2wVL6G1Dx6pNyx3Yj5hQ5hjL+c7iNjwfXn/upS3ZKqIoU/K4Oz6PbCe+hMW/8nmllBUrUs3I0lO0jJZEgKCENFxxSiawowR3Gdd4LVbpH09K4U+8IpYX+zpLLDKmLA35oqY4kEipURheoGhN7AY5DKPbAUJyVTmG2gQ06la5yHtqr9qbQiBnAB6Ff9n2O/R7lKHCljCCeHB+WVXcroZkSgOKAq6R
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA0PR01MB7625.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230016)(39850400004)(34096005)(39510400003)(346002)(136003)(376002)(366004)(396003)(448600002)(91956017)(38610400001)(71200400001)(586005)(6486002)(6916009)(2906002)(5660300002)(76116006)(66476007)(64756008)(8676002)(66446008)(66946007)(4744005)(66556008)(8936002)(19626265004)(38070700005)(38100700002)(122000001)(31686004)(6506007)(83380400001)(6512007)(26005)(41300700001)(6666004)(186003)(86362001)(31696002)(36756003)(2616005)(40140700001)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekxqMXJMcEJrT1dMenNRQkxaeGxzb08rRXNpZ29tSUVCdFhObFBMdHUrNklz?=
 =?utf-8?B?NDliRHFFRlYrcXYyMC80aTFYTlJFa282QWNlNEFRK3d4MUQ1TjdlWXdWRUh4?=
 =?utf-8?B?YUlNZjhYblI4SXFQT3ZHNi93YUlFTWhQK09wdlIyRGNUNmFERlFFNGIvODds?=
 =?utf-8?B?cTg1Z25qU20wdFh0dkQ3bVFhSTFIem5Ed05IZ0h4aWtUcml4YStoaDZ6TGJT?=
 =?utf-8?B?Vk82OUUzZ2tDSlkyQW9LQWYxZUorQ0NsRFZIL1hsMkNaWEZWTStmT0ZjcU1u?=
 =?utf-8?B?REdESXVxSEVEeFNNQWxGaWxUUWpwN3JzRHpQb2ZaVkF6NWNiVFBGekxKbEQv?=
 =?utf-8?B?SkZKWVUvYy9NRWRYSDZwUlpKVmRDMlFLUlJiV0ZTNnJUaHJyUFViNC9SZDhM?=
 =?utf-8?B?UTRrODIvVmxGaHc2VjUrMTFwT0gyM200cDhHWVZzNzdVbUZ3Y0lzQTBjdHVi?=
 =?utf-8?B?OWpEZjBRUGZtU2x1UHhlM1J4SmlpR2UzZ1YzQkRUcHJLY0pMR2hYL0NZVzZq?=
 =?utf-8?B?V1lta3AyRnN1Y0M4V1ZkUFVjaURCWXUyMjFIOFdGL0IxMG5iaXJYMzZRaHEz?=
 =?utf-8?B?OS90R0hvUzB3d05QcVYwNEJ2ZVBhZVNjV2REZVo1cE0wbk52WWY1ZnU3QlBM?=
 =?utf-8?B?Y2UrMSt5M3FRUU1qUzI0c21OaTU3bzlqZklBNlFaNnQxMmljUXczekJ4K2hC?=
 =?utf-8?B?aVVya3FDZ0lTK0FjRVdSZE0rcEpzT3VzYmpiZWdUM1Q3Z3JkQlExQzZwTGlO?=
 =?utf-8?B?V1dsOXpTRm8xT0NlTDlOMjBmMWluQmg4OStPUjdSc3E2WGVpYUVEdFQxYXh1?=
 =?utf-8?B?eEFmQTIvbDZ1N2RXeG1LMFcvNUlZRU15UjJya0prRkpMZDRaYkdvT1dPdEVp?=
 =?utf-8?B?VW9uUXVyaTJQSlJXeVl6U1V2ZVk1dzFtY2RnVGZudmlqK3l6eGpFUnBzU3Ru?=
 =?utf-8?B?RTNyOVE3Tm9ISXdaUGZmZExkbUNwZmJXWjNJNG1FTmljamdtaDNxNTk0WSth?=
 =?utf-8?B?bkgzN0VCc0U3Nm1WTU0xUGdoN29NSHZuTlZLOE1xcmY2d2tMdTQ2Z0lVMDVx?=
 =?utf-8?B?TXowM0pPaDFDR2toaUdiQTZRTXlqcnk0ZWVZRHNlejlaeXp6cWF0bEYxWmtv?=
 =?utf-8?B?ang4NTBSTklteW5xOStHRUdiZWdQOUpmQ3UzTHA0Znl6ZUMxMmwvVFJiWnRR?=
 =?utf-8?B?N0RLbTd0K2dOaHNFUlJnVVZRc016Q0pXcDVIK0JETlZTVllzb0VhYXhDWmtY?=
 =?utf-8?B?bG9jZDdUd1lsb003U0Y5OVFLWlB5cXV2anVnRVFYSlBJQ3FScis0ekI5NDBq?=
 =?utf-8?B?cnBUenF3NzkvS3JvaVFTVnhBSDI5NVFVZVFJWWE3SENjS0NOWHVUTTlQam1H?=
 =?utf-8?B?bWQxcE1lTmxuL29sMnRxSWFmMWp6bXNVWnFJOS9oNUpEUmxlZnUzTENsek1F?=
 =?utf-8?B?dUp6VHdUYkR1cXBWeUNUdU55NTdtZUlGNmF4Z1JpUjdYb09xVGd6QVFlNTNY?=
 =?utf-8?B?RkgrWTJjc0RBb3FsY1EwSzNhcTNSMXFCc1lBL1QrQk1UR0F4aU1DWE83VGZo?=
 =?utf-8?B?WVZSSnROWDVEMjBLc1NGZUtDdWtpdDVSR2xaVmhROXpWVGVaUXFEdDVtSDJr?=
 =?utf-8?B?c3JLbEoyb0E2RFNYN3pFZnA5TjBoMXM1MEVxQklVNVI1a2Z0MFh1VzBjaVNq?=
 =?utf-8?B?TmxvTG9pQ05XOFVwT1FROHBtU1ZXSU1UM1VtMkxxUWNDZHVUWHJVNDJ4anZP?=
 =?utf-8?B?alBNcDY3emhRREFNMFRWbkZLbEFVcWlvUnZWK2JDdGRQSG0ySkw2UFRnUEhO?=
 =?utf-8?B?Y2RDU3c0czN0OWVaUkc2bVp5WENUcG5TVWhDNURwclBIM3pWa2tNVFVrRkF1?=
 =?utf-8?B?K3Q4THpmS3JhcHdMOUhFUis2VmFieGY3cGRPdWhDUTVFV1ROMXNpOEFyK1dY?=
 =?utf-8?B?VjdIQ0tSYkp3Sm4wV2pNOEpYZlZ1aHRuN0R0Tm0va3FtcmdBTmM3czNmR2l1?=
 =?utf-8?B?UzgzSWh0cjJrcDFRaFVub05oVFYxZU1jVCtESWFwbVZnanFMdGJGMHpMNW1k?=
 =?utf-8?B?bEREaUtGbE1kT2NvNzdoTFpDSTdGeXhEaEJMc2w1WW9qbHU2alQ3bjYyQ1pl?=
 =?utf-8?Q?+8/8/WxQlrngMY5fLctUZwf7D?=
MIME-Version: 1.0
X-OriginatorOrg: geek-squadupdates41.co
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0PR01MB7625.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: fa980a21-6d44-4eaf-f747-08da7574d6d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2022 17:22:47.5459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1af29bda-d362-4e19-aa30-7f2c5c65cb2d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: etJ5BsfHJegrWIv7980LKWAMSk0Gu8TX9dTAEKUPQHaZ8o5haZNwgGAX+TOLYy6/hLl6yQmr+KL3saqs/s399Sol+vKgzszxwofXeG53RTk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PNYPR01MB8706
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  [GSS] Welcome to G Squad Hi, 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.239.94 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.239.94 listed in list.dnswl.org]
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-Headers-End: 1oJIJP-002400-H0
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your service renewal #GS03-RENEW-10715565
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


[GSS]

Welcome to G Squad

Hi,

Thanks for renewing your G Squad Subscription. Now you can set up G Squad on your computer, phone, tablet, and more to start enjoying online freedom.

Support Center: +1 (805) 250-0772

Your account details
Email address
v9fs-developer@lists.sourceforge.net<mailto:v9fs-developer@lists.sourceforge.net>

Plan
1 year

Price
384.59 USD
Save 35% with the 03 year plan

Payment method
Card

Your subscription will expire
August 3, 2023

PLAN ID
GS03-RENEW-10715565

Upgrade


        Need help? Reach Support Center
unsubscribe
Support Center  Privacy Policy

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
