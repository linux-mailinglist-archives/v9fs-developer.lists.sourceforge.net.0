Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 913FA20C6CC
	for <lists+v9fs-developer@lfdr.de>; Sun, 28 Jun 2020 09:38:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jpRtD-0000Pc-Em; Sun, 28 Jun 2020 07:38:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1jpRtC-0000PV-MC
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 07:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VZ21TKRGPQd9arDyP6leqZVj5seRfZjtpGmsVWzoApE=; b=mH7eXSk9L2ChGwvd5DJhdF49Tk
 cLt2gdnwRM193U5294vHHBtXyokTzzvv49W8JvIll8kBest5XH3ImwYp99NJiEOt4ROqQ8KnvzOrE
 jnZuTUjMhUnXDuFGHF45s0pifZPyTDa6J1Eus/pAhjdpqlbhGQIQ4T/fWfhPCTXLhT6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VZ21TKRGPQd9arDyP6leqZVj5seRfZjtpGmsVWzoApE=; b=TrMmp5Us/FcNCxIWEtMPi19BKw
 CGQ4dMjqWdVAndD2/K+u2uG65J3UppqBOhvGXOXG7Lvfn9WIIJy6NWrVVl5xgFc8uTcyFYsVMS+lr
 goAvwk2bI2B0l1cdqA6bxOfPV2hXSLLx6D+JL4eNpxvX0DJGClLZ0dut1mZEmkLlcMeQ=;
Received: from mail-eopbgr80049.outbound.protection.outlook.com ([40.107.8.49]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jpRt8-003NXy-5k
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 07:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZ21TKRGPQd9arDyP6leqZVj5seRfZjtpGmsVWzoApE=;
 b=PiWfS6FbkQUPUib161834aVW5SOXhl6KaNyuns2+xmUte6QV+Be5WO7rV/hac60GfVWjvE4qXNZWL1XYI/0m8b0aPcB2Zuz4F/52ud9KRcbBrOgh2rC+LKsv0L7sRT2t73iaeOo4GiMm0+cZgV8WcEBFEmWG2AwxhWKHu0EA0oE=
Received: from AM6P192CA0016.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:83::29)
 by AM0PR08MB4321.eurprd08.prod.outlook.com (2603:10a6:208:137::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.25; Sun, 28 Jun
 2020 07:37:58 +0000
Received: from AM5EUR03FT038.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:83:cafe::d5) by AM6P192CA0016.outlook.office365.com
 (2603:10a6:209:83::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21 via Frontend
 Transport; Sun, 28 Jun 2020 07:37:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT038.mail.protection.outlook.com (10.152.17.118) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.20 via Frontend Transport; Sun, 28 Jun 2020 07:37:57 +0000
Received: ("Tessian outbound 1e00bf306733:v60");
 Sun, 28 Jun 2020 07:37:57 +0000
X-CR-MTA-TID: 64aa7808
Received: from d1261a2c0069.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 9E0C37DE-5DF2-4FC5-A687-C67B832FA256.1; 
 Sun, 28 Jun 2020 07:37:51 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d1261a2c0069.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Sun, 28 Jun 2020 07:37:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JxL+NUol42yZ+B3YZWwtigYS0yNwEF8ykI56YTQ19rFQTteYj7O/5xGw+Kh09OBMYrTNOlTyT/7NwqaVU4J1Qu5OkhOdtqKhk5+YATCy4NJoW1+3Fk08FnPrx9FHl7k2jkN2tPM8XwNUqgfl651FhtED/4MpqIOym81+iTC71AzeVzj7CM1reVMoVz65FRHxSz7YuT0UT7KYvhJ7/4+mGJMXDTyJUEN6CZzKFThpp3LRnD0h8yrArAYoEsfACSNovjXu7BVPw5OC5rIgvyaHJaTQYW3AE3lDhRvvZC4JpBE9dTh2d28LQx5O6n2vMFwvzbkGqomp/phUKsm7mqzNag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZ21TKRGPQd9arDyP6leqZVj5seRfZjtpGmsVWzoApE=;
 b=Eti/EEc8WvzKzlDWnVAsU6aUkiVPUFSYR5uUZAdTjAghOzjrdjWy/MOaDjUAK4l5of5+n3BQlu9nNDp5Tl7v0mX0b5wWin3/fNqR/XyNE3ozTwAIKttFSr/YWbkfIuoCFgO6yhEeT1qJeTtPLn9D9qKrZLnsvql49gm9TOGzzGhNq8JeF45hibuyPClpl4Y1DvLHvRyFc/T1v+y/XoBZcD2BD8VYdxvcN/4GGDLgJDsGHI52AGOzq1N369+y5v5ySUeKgAASqG7mnd48n0QKiBr0jAYbiI/RQf9dyJyU/PjS7T1PQOmf/5LFP9loxWF2Mjr0tn2XUyxjwLHDaqGdJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZ21TKRGPQd9arDyP6leqZVj5seRfZjtpGmsVWzoApE=;
 b=PiWfS6FbkQUPUib161834aVW5SOXhl6KaNyuns2+xmUte6QV+Be5WO7rV/hac60GfVWjvE4qXNZWL1XYI/0m8b0aPcB2Zuz4F/52ud9KRcbBrOgh2rC+LKsv0L7sRT2t73iaeOo4GiMm0+cZgV8WcEBFEmWG2AwxhWKHu0EA0oE=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2553.eurprd08.prod.outlook.com (2603:10a6:3:df::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Sun, 28 Jun
 2020 07:37:48 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a%6]) with mapi id 15.20.3131.026; Sun, 28 Jun 2020
 07:37:47 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [RFC PATCH 2/2] 9p: remove unused code in 9p
Thread-Index: AQHWTPDBydmju/A/WUKh1sO640Qlb6jthqUAgAAQlGA=
Date: Sun, 28 Jun 2020 07:37:47 +0000
Message-ID: <HE1PR0802MB255555FEE31EBF85981A2AC4F4910@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200628020608.36512-1-jianyong.wu@arm.com>
 <20200628020608.36512-3-jianyong.wu@arm.com> <20200628055210.GA13335@nautica>
In-Reply-To: <20200628055210.GA13335@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: d0a580d3-a78f-4211-a31f-be1436c9e5ac.1
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ceada77c-f847-4c08-c905-08d81b362d5b
x-ms-traffictypediagnostic: HE1PR0802MB2553:|AM0PR08MB4321:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB43213AD31708329317A12938F4910@AM0PR08MB4321.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:9508;
x-forefront-prvs: 0448A97BF2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: kFBYeIKi2zfO9u6fMYm+CmNagX/dDOegj50rHsApPaW+EjtuCfmBNLVPJEGUcxplcCkl2704q4aXfd5/3m+a2KnWYBF/8TszTuQCzL1ZuNjGL6D3QAdNmc/reAAThnQop79Uu/jht/a6BiEu3H5IrTa4cT2Yxy1Vfbx4ZWIgsNBzEaYImA5PPN48oaVEJJnoMu5CqfRZdwNlykerehKnqnZKxSb6v5tQLoPq/WXeQ29Qnb0fNjCPYzj7RzJaH9zQCbes4EAPcmQPujRot/hMEbqQ8HrU8uF2NFVY8FpaQO+atwUEMP6zQQq2bLfnSoYVDs332VYIfV3x/IyiQjRaJg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(396003)(346002)(39850400004)(136003)(366004)(4326008)(316002)(86362001)(7696005)(52536014)(5660300002)(6506007)(53546011)(478600001)(55016002)(66946007)(71200400001)(66446008)(64756008)(66556008)(66476007)(6916009)(76116006)(8676002)(26005)(33656002)(186003)(9686003)(83380400001)(2906002)(8936002)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: z5/Q6oz7+3HMMMqiZbuYftaTSIJ4u/et06amFuAdvlQFbARf340NQQkDA9I9Hq/qoj2H5DIgWhtg0qVoJwvELsDm8CGpHtzePdgexKkJdGTu04j4old87Wl05E7aOoFL86gHz9APwS6XbK7yuhMpenrUDrjmd/mkSf9OBPUarC+cdStjPGCR9HbT27XEa23YF1FZRU/WWvSbj+LhK7fgyjxiEhGhJ6W7VwU0f+qhygljzRI1GlpUeip++gTjMfNFYi6yOvpGw49QW1IOWDMdIzLW5C99Y7wtcRuWw2oXV7XRq9HTfymB5BRkJQPQj0p0Rzw5Rh5t7rYHa0eb6qnKvB6vwlkZ9RwL31h9B9XUDhI5zFWag4QSD+UbRn0x5sikbASxlgRwzvDt++Gust+Tk3W5SS598OceWkwyfD+gBZtyIx0sSzjmUoqSs8glrG1taSLz3qkTWWxtv7xUzyiOg1iv+wzGFPHZ9O38LPqN+iQ=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2553
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(346002)(39850400004)(376002)(396003)(46966005)(70206006)(81166007)(54906003)(4326008)(186003)(47076004)(26005)(70586007)(36906005)(83380400001)(86362001)(316002)(478600001)(356005)(6506007)(53546011)(8936002)(33656002)(82740400003)(6862004)(82310400002)(2906002)(7696005)(5660300002)(52536014)(336012)(9686003)(55016002)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5f2284b9-7b82-4df6-e0c6-08d81b362796
X-Forefront-PRVS: 0448A97BF2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mDex/pad36rdNDV9ULRgN5GbLWWXzRZ0wvtx25B3pLcrSNDzq6y1EWerR0Dl+rDMRw3ezYBsUx2QPsv7+fNdY2apoL1giOz+OWD47f74+ZsddP5Jyj3mQHCI/Xx5Xd23j3DoQlrZLi5YXJdaOeJLxUOvYbZT61zGES75xh8kuNgc1uLRWh0qf/QhC5uxGuWPjcblKovqA81dnGt/iAC+cI0zTntcOIz/hBhiCiiGk0ZqAmG0a5Kmtp6vG32RqE2PA0QIM/o3RmF5pBMXTY3j4cyNpHXzVyVGRFAriY6VfesE132QRpV4chu+AkJXPyIPvJADDlnQJddxWX00dVUwdcBBUhGFXEC/AFoV5NA5Bnv0GhKoG5XOPjBqzA8out08/fl794EAehbJpsJJd/et6w==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2020 07:37:57.5529 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ceada77c-f847-4c08-c905-08d81b362d5b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4321
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.49 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jpRt8-003NXy-5k
Subject: Re: [V9fs-developer] [RFC PATCH 2/2] 9p: remove unused code in 9p
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
> Sent: Sunday, June 28, 2020 1:52 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; v9fs-
> developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; Steve
> Capper <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>
> Subject: Re: [RFC PATCH 2/2] 9p: remove unused code in 9p
>
> Jianyong Wu wrote on Sun, Jun 28, 2020:
> > These code has been commented out since 2007 and lied in kernel since
> > then. it's time to remove thest no used code.
>
> Good point, happy to take this - please resend without RFC separately (the
> two commits aren't related) after fixing the commit message (lie/lay is
> complicated and I'm not sure what should be used there but lied definitely
> isn't correct, the qualification doesn't really matter though so probably
> simpler to remove; and 'thest no used code' does not
> parse)
>
Thanks, I think "lay" is right. I will fix it and resend.

Thanks
Jianyong

> --
> Dominique
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
