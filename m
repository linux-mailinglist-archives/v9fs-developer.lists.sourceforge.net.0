Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC9B268B6B
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 14:49:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHnvL-000430-Il; Mon, 14 Sep 2020 12:49:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1kHnvK-00042a-63
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 12:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q/QDiPqVLskhn0M3P1iXRnXZo+0i3kTRmqGAIlQowCI=; b=mCb6gJ1be9qUt6A/EUN5gn2jfx
 je1vQ3mQag5Y7qLR27Oi4hqQXDCcQQJDIRHMFljb4canzomNV2wcMIl8t5P4Q3MjbyCVcu6O0KLg3
 v3YbIAhCNn950QPk9GiJGkYaSRJ+eAWvFcOgRatqLKtkfLfWR4BFAGL/8t4TRNgjG8AA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q/QDiPqVLskhn0M3P1iXRnXZo+0i3kTRmqGAIlQowCI=; b=THIFnzA/uP2ev0ubESKyNvpSjr
 V/Cuvn8LAPvq0iVHCRX2GeN/oL+YezSzOdXSKfrLYe4JO9w34DUvAOdX9CvmjrelbHNoqfKekA6RZ
 4jzGJayI8wslKGZT+dbhDoVW9zFQs73rb8bwtMreOPawTniXv9VEXTI+UmTrhMzHCfM4=;
Received: from mail-eopbgr60041.outbound.protection.outlook.com ([40.107.6.41]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHnv9-008Ofa-Qx
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 12:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q/QDiPqVLskhn0M3P1iXRnXZo+0i3kTRmqGAIlQowCI=;
 b=0kPj0UlJ4esp8RlIoptMGgC/9X6u9YrZCo7aNVFHvNMvZsY1lVwzPXsZn2mqlB98EHhd97s3SUoxi56HMMSKTWd5w3E+suUpRiSEjIFaawq+k8TJdehLCz/zU4NpYj58Aekr8IG/Wlf65EKzqzWUc9UJljbBugtKav/I/2mfPAw=
Received: from DB8PR06CA0012.eurprd06.prod.outlook.com (2603:10a6:10:100::25)
 by VI1PR08MB3166.eurprd08.prod.outlook.com (2603:10a6:803:42::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Mon, 14 Sep
 2020 12:34:22 +0000
Received: from DB5EUR03FT013.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:100:cafe::1b) by DB8PR06CA0012.outlook.office365.com
 (2603:10a6:10:100::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend
 Transport; Mon, 14 Sep 2020 12:34:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT013.mail.protection.outlook.com (10.152.20.105) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.16 via Frontend Transport; Mon, 14 Sep 2020 12:34:21 +0000
Received: ("Tessian outbound 195a290eb161:v64");
 Mon, 14 Sep 2020 12:34:21 +0000
X-CR-MTA-TID: 64aa7808
Received: from a87934b0cf29.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 DF2797A0-17FA-477D-BA39-AA3C5950B1BD.1; 
 Mon, 14 Sep 2020 12:34:16 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a87934b0cf29.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 14 Sep 2020 12:34:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXSE6vx2wYTFejcTFeuzk/PG4B2lfXS43xBasUdAAPSfEw5aKDhC0n4L5wNXFh91QcqxA6OLrgdaEsbuvmUfJdRCAhVbHncfplwAFd8MAkjMz6LNcfIf6sFdFVHPZ+4GsIj3jQtnvCFPeIaU6pGQkXOcgpexOaD3GYyajTlYrdRRf+jwAazzoyWpmuWozoI/T/OSkj5bzVItQUkUYlJzXbOhdfYyVHh0SUhWi/crS9cbVtHJUwzF9p32lT44lRU95AoeUC9PuMmdpSz0uSyznjv0I1hE6m0RKGLN4Fc0G0EBcW0ccSKRFXMd8oioDDWUSFF+tDi81HeZL3PkBqTdfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q/QDiPqVLskhn0M3P1iXRnXZo+0i3kTRmqGAIlQowCI=;
 b=CgjDX3fSS6SV2vvOLHXqiEGqL7nm/9iuyRSuS5QQDr0hQxmraguvlq7+Gy9D7OUrXDIsmEsnx+o6MYILfbQzHt/BcT9/S1JtCFhpwSCEEmat58Z9DLDv4BzaA3B4itgTJD7H6NEe5f2Xqwf9W5HnfWjozIoBpyS5h2UK8niUkNM7X1ANklGOZJ5UNTkXaS/U/ov7bqpdH1yIh8rUzd2CPK3egxfKftgSkraEHipheA0qUxVDHjKq3Nwa7y5rQF6Edx9ROGFEg8LmYwZdTiXo6zcQGcgnHGeJnsI5+Pm7eKelzfAxMqbDLxEgtHyqUHrbpCgvuYfZs+yRBH/rqI6lSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q/QDiPqVLskhn0M3P1iXRnXZo+0i3kTRmqGAIlQowCI=;
 b=0kPj0UlJ4esp8RlIoptMGgC/9X6u9YrZCo7aNVFHvNMvZsY1lVwzPXsZn2mqlB98EHhd97s3SUoxi56HMMSKTWd5w3E+suUpRiSEjIFaawq+k8TJdehLCz/zU4NpYj58Aekr8IG/Wlf65EKzqzWUc9UJljbBugtKav/I/2mfPAw=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0801MB1977.eurprd08.prod.outlook.com (2603:10a6:3:4d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Mon, 14 Sep
 2020 12:34:15 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00%5]) with mapi id 15.20.3370.019; Mon, 14 Sep 2020
 12:34:15 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH RFC 4/4] 9p: fix race issue in fid contention.
Thread-Index: AQHWinG9C+xn4SZNHU61ZAxGCD89xKloDjvw
Date: Mon, 14 Sep 2020 12:34:15 +0000
Message-ID: <HE1PR0802MB2555512C87C5D662DCEEBDD1F4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <HE1PR0802MB255594D67D97733CFDFE777EF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <HE1PR0802MB25555E7AAFA66DA3FE025D0AF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200914083200.GA9259@nautica>
In-Reply-To: <20200914083200.GA9259@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: D87666DDAB57AA46A5FAB1855FE59006.0
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a815ae7f-a384-4ea3-aba6-08d858aa81d1
x-ms-traffictypediagnostic: HE1PR0801MB1977:|VI1PR08MB3166:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB316635C2ED5173C29DEC7E9FF4230@VI1PR08MB3166.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: UuFYhS6Iej87x2ULBQOSLswCFBjSV0zHhtAlKo7zqhZVHzuR6bPa5ziwJSloHpwcGBGe0v36uvZQ9xL7hbnw4WiqxCSgiSOvF5t0PQOiWP3OuUy0vecMWj7n5OCGg1GlFft8oq65R61oS5YzgdM1Lc9QHWHdzPLnzPWiuMIvUBLfWKUPfx5L0DAVZzvOKLEugkZ9cwm8acVF6538bKYg2mC9hQCSvSkIut90CrRZuj6/lhp/EoyGOVnIxFFBx1NyzyQ0orNHZo2cXO762I8sgcOl4LDy9d8ihCUuORyqef7B7yPCdvt6D33PBPybrMbXPy2P5QOuR4bXDVwxlMl1Jg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(366004)(396003)(376002)(136003)(5660300002)(55016002)(186003)(52536014)(66946007)(66556008)(26005)(64756008)(66476007)(66446008)(76116006)(478600001)(7696005)(6916009)(54906003)(6506007)(53546011)(4326008)(8676002)(8936002)(2906002)(33656002)(71200400001)(83380400001)(86362001)(316002)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: jA5b5PW+tdplcyPxlBi2tF7LeVaEkrxyzrrCNesNwxZKG8EK+A2wM2fhOmnT2qV6OWXBoFaEuqf+jsoiDQO8xod1PpsigUTg6QwRBH7wyfxGbQxJzG4PSXJjssJ6FNy0hceWjn3RZBJCfWehxr2NIy9xvki7yRH+6lZSJ+C4GU+T75bsLodHAEhl0+16Gs9Pg0KR4GqE2r4MKiU3OOMxLdg3d11NPWE6fgfLrzfIUGrzNHzHEgPiQt8Uf4SHl5ZKRdRhe3ee354TrikiaB2tZ4n6qqt4u+LEqrG8TqKlVdJ7uWjo+EBYMHKeBDRkN2nirBe0xL85q1+TIBgFz7ErccVsu3weP00yX7aTJPRrbQFP0DF9z4OsLgTQosHukuq2jRRUYMoVhzvgj6wds5y+pUvY5/RT3ZwmICZgmkRYqPAVVdiNCeITujMOxUtWj3eThr0ITfvJJ/iQc7KMmLPvWCg8uh8kHKeore9A2iwyi3L8I8UPvjcS/L4GUFd/tiq+bivotYsHYHwBGpx7c5uJVibZ4SYDGFJOsjn53xPC5cKFq0tYEOfdO+5wv8YnTSPmC7S63nb8aStYdk2YhkpaXFZtFtY+xFBlOwKk9MRg5ml8Eb3nzZIFdPhX/7eNn+N8WZfnZ9LGV3YEXFsqvf6RNw==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1977
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT013.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 473ecd10-b86c-4966-4660-08d858aa7dea
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l5Es2iph5NG6jBXrK4DYcCoBP/ZkNdle208p5rgyhRKsv9s0to+g5OcL4ubzTq2IR4DoWSK65O/Pv6UL8vs6b4qj4XklGyhVgFFHyXXPq2VnMIKT8LxDgl+2xElk8z3TsLXlqz2ufhpCb4Ii8cOG4w6Zlxr8LwxoI8YEr6xyMZFMHLJ/StikE4nGE83sHP8K6d0WjDOfYDg5Um3rVNAZ7DFbNcyX6tpVGkoBslW4shR886X3ADhYou3SMZ/YvUX7xYBqdCEZBMLFGYpm5s9sBV4WrcRSHeUuZKKWSNENs3CpcbfO58JPHZYx+Du6Zn/FRt6H/DqvoOaHPQKJf0ct+xdLjXjcjIFXQau+koOyTssKAoHREQirQGsyYbWNW2vEYxmk1DrszZB1ZayCdDEh4A==
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(376002)(396003)(136003)(346002)(39860400002)(46966005)(83380400001)(2906002)(86362001)(82740400003)(33656002)(356005)(316002)(9686003)(107886003)(82310400003)(336012)(81166007)(47076004)(26005)(478600001)(186003)(5660300002)(55016002)(70586007)(70206006)(6862004)(52536014)(8936002)(8676002)(6506007)(53546011)(7696005)(4326008)(54906003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2020 12:34:21.8541 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a815ae7f-a384-4ea3-aba6-08d858aa81d1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT013.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3166
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.41 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1kHnv9-008Ofa-Qx
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
Oh, maybe I just miss your point. It is ok to  put the fid_atomic_dec() into p9_client_clunk() and
Let the clunk replace the refcount dec.

> All these places take a fid to do some RPC already so it's not a problem to add
> a clunk and do one more; especially since the "clunk" will just be just a deref.
> For consistency I'd advocate for the kref API as we use that for requests
> already; it might be better to rename the clunk calls to p9_fid_put or
> something but I think that's more churn than it's worth....
>
Ok, I see.
>
> Is there anywhere you think cannot do that?
>
No.
> > This enum value is not functionally necessary, but I think it can
> > reduce the contention of fid, as there are really lots of scenarios
> > that fid from inode is not necessary.
>
> I really don't think it makes things slower if done correctly (e.g. no waiting as
> currently done but the last deref does the actual clunk), and would rather
> keep code simpler unless the difference is big (so would need to do an actual
> benchmark of both if you're convinced it helps) -- sorry.
>
Ok, fair enough.

> >> If possible put the patch first in the series so commits can be
> >> tested independently.
> >
> > Ah, this patch depends on the previous patches, how can I put it as
> > the first of the series?
>
> Basically build the logic in the first patch, then either apply the other three as
> close as they currently are as possible and add the missing refcalls in a new
> patch or incorporate the refcounting in them as well.
> It's fine if you keep it it last, that was just a greedy request on my part to be
> able to test async clunk more easily ; forget about it.

Ok, keep this in original state is easy for me.

Thanks
Jianyong
>
> --
> Dominique
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
