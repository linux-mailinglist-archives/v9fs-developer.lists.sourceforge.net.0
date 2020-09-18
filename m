Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B73E126F9E3
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Sep 2020 12:06:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJDHQ-0002NC-0e; Fri, 18 Sep 2020 10:06:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1kJDHO-0002N4-01
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 10:06:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dNokvzcnR02bTceMRVagVs1KvCyJdxCYzEiadoiH1Qs=; b=N/Xcz75toJ0R45eJUEqmdqbK0G
 jkyjsRQFcMbmZFzznxwVcrSPIUbukNHVKX37vyh1VJ4jxVzqtGcF1tnBd0lQBg9JcOi2ayXUp9/Gk
 f0L8fFJHcBMmKOdQPWhsMQ1LzQHEeFySLfRC1m6g2TewM4V/parlIeYWnuJBqcsoLsdE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dNokvzcnR02bTceMRVagVs1KvCyJdxCYzEiadoiH1Qs=; b=Howx/vr1sgIrnEUqcOYEygcNIt
 mgcEJRkC3fI5Znxo50+8gq3fgyDeoJGRyiKpFYBRz2fjIP4le3StieBgI4qB5R2mnCHh1m0vbrjv3
 USfTowyv2UE0O+HTLVFJbTo2iqe6wO6mvNxDVdzh6rmkk2Swms/NA+Y7jO/S5/GI0JmM=;
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJDH6-00E0z7-Mb
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 10:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNokvzcnR02bTceMRVagVs1KvCyJdxCYzEiadoiH1Qs=;
 b=2IIwgb3h2h2ctOttg3rVNMa8tnWr3UZnfYgrSg1gAlftA1CU33Pz/BLo9fOL/ysqYGSWTvbR91r/l4zAnFm/9/Q9s0BeSxlgClocNUU+gLdBsIKGEk6iTktsiu6W/bp07aQCOhi82w4YQaPhzKDEKtlehxjHbuj8GpT2xQfoMoA=
Received: from MR2P264CA0037.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500::25) by
 DB7PR08MB3867.eurprd08.prod.outlook.com (2603:10a6:10:7f::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.11; Fri, 18 Sep 2020 10:05:41 +0000
Received: from VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:500:0:cafe::34) by MR2P264CA0037.outlook.office365.com
 (2603:10a6:500::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.14 via Frontend
 Transport; Fri, 18 Sep 2020 10:05:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT056.mail.protection.outlook.com (10.152.19.28) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15 via Frontend Transport; Fri, 18 Sep 2020 10:05:41 +0000
Received: ("Tessian outbound 195a290eb161:v64");
 Fri, 18 Sep 2020 10:05:40 +0000
X-CR-MTA-TID: 64aa7808
Received: from f07f19517232.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 FC5C3833-7BAC-49CD-852B-A6D30CA0F7A3.1; 
 Fri, 18 Sep 2020 10:05:35 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f07f19517232.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 18 Sep 2020 10:05:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oPoye1PWIxAV55W4RuVbDFRyvXdrQUgjv45S5sDU7BzPGuRhi9tAYH5dxGjdd/rEJIsKfGrvlGdmQmqibGbeyElZ77c6oaJcLIMcYxVFkyRVTVHVdixvEvj9n+SIqp90rMwxDOHSyAliCBtyQu1ap6FNIVg30bWTp/2sEX6hR9IZYncR8XfvA0sFdsHGgTNJHN8wRaOsOdui+icjOz8nRPI/eQ+caQJ/dmn2iOSLPLaVFplkJC6aQchFNXZKA08uRUAxrYxBifWSHykuJpbBDYW8omE7EGA84cgxqNx5B+6MxJCTia1ipCw2UQZ/wSZ5HGw8VZVOxIvo+1EedGRKSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNokvzcnR02bTceMRVagVs1KvCyJdxCYzEiadoiH1Qs=;
 b=dKpkiHobmHLo6V6eeQOh/wzihUceeynSXDnDFdd/kQw6L3KcJuzr+0ciBCYRcsyiGf8Cxvx9cLkiVQfWBBydKjeJunQ0ILHeJNQRCaU8yZKhBxQjuYlJYBaKnQgt58wRKpbBdF++a22AsRRIUsBC0AE4Tz2uzESGKDc64ugmPQGsNhaDLpF4c47ZkgMPNmF5uoEjgBxEY5ER1vVt6HXFv9HA5LLkK/a26KXSdrEBX2JPzQ2yvcEXW1Knxsunsl0deeTdJ8tOOCiP0bY+s+12wbc1zBgSlPOdpCYLoroBjOCilwR1IxT4m/N0QCKTxBibZ0VJ/qUMSocG7j+XhXYlQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNokvzcnR02bTceMRVagVs1KvCyJdxCYzEiadoiH1Qs=;
 b=2IIwgb3h2h2ctOttg3rVNMa8tnWr3UZnfYgrSg1gAlftA1CU33Pz/BLo9fOL/ysqYGSWTvbR91r/l4zAnFm/9/Q9s0BeSxlgClocNUU+gLdBsIKGEk6iTktsiu6W/bp07aQCOhi82w4YQaPhzKDEKtlehxjHbuj8GpT2xQfoMoA=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2554.eurprd08.prod.outlook.com (2603:10a6:3:d7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Fri, 18 Sep
 2020 10:05:33 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00%5]) with mapi id 15.20.3391.011; Fri, 18 Sep 2020
 10:05:33 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH RFC 4/4] 9p: fix race issue in fid contention.
Thread-Index: AQHWinG9C+xn4SZNHU61ZAxGCD89xKluG5xQgAANXQCAAAfugA==
Date: Fri, 18 Sep 2020 10:05:33 +0000
Message-ID: <HE1PR0802MB25555E46ABF8C53798B4FE5FF43F0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <HE1PR0802MB255594D67D97733CFDFE777EF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <HE1PR0802MB25555E7AAFA66DA3FE025D0AF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200914083200.GA9259@nautica>
 <HE1PR0802MB255560720A13BD59C11DEA00F43F0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200918093440.GA1877@nautica>
In-Reply-To: <20200918093440.GA1877@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 860EA2A240D8554EBB79B667509C2B1E.0
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.113]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: cac308e9-1172-499e-2d75-08d85bba6662
x-ms-traffictypediagnostic: HE1PR0802MB2554:|DB7PR08MB3867:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB38675021A9EC8C8E07332BD2F43F0@DB7PR08MB3867.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Dz07nSu9xuCbUASJu3ds5kD0O0JeAccXX93femmLV7rUAgp9iUlJrIPrZLdQj4fObGaPypRggfvhCKdT5vIApRVd4bpzPZwvA22aiw1djvNDILmOpDjhMBC13xgO+yIY7mEOC0yqFqu47EF9GC/KDLyj6EW4bLMoBoEsb11O8/4w4FUUmyi3QGNli1IR3bdYOysy5XO6FrECSchCLAkJVmBJD7L29deRivhA1f5kimp17rvyPGSMqQxQI/grvIQc3ZVvCIX0BlWEBmduUIiUhuOq4LHtaz01gkBrlcd5mxN2hmyum+YEVxvFMs4jgAxJxw9jr6mbYj4EYl0+NPXYAwfCELHR3CLCuJfbSEXrafzz0CxoL+Vl+0pgTIxRf7/g
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(186003)(66476007)(7696005)(6916009)(66446008)(64756008)(53546011)(83380400001)(4326008)(66946007)(66556008)(6506007)(71200400001)(2906002)(76116006)(5660300002)(9686003)(52536014)(8936002)(8676002)(86362001)(316002)(55016002)(26005)(33656002)(478600001)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: p8uNiKTvOM690D6qXJ7XlKsE19OzsQBzwL/WrHCnn1jswX3LroubEn3iuwi48G99f6Htw8dqSugCi+j0mrqjDsUfYqOrVgdnPg4xEuXjqPhF3kDvldej+Z5xYF6jkSQfjpaKBJGsej8IoTktBw6+EauQ6ph5l3SWqV88mm4PC80qeUUsAo1sVSQT0iO3C6vaft58v8TSYVIC3uubvTobJHlTH6xKgW79KHHPjzLQdUlKBaNGZxOW4R73VQp0mgx2JAgdfVOE/izfjdCgTBrysNqolSEiwPFSQK6bwlKDJVtkFx6P2LwmbWqQTxgkbfbNpZ0wnVJW72ralUxx66un1owG0KBRNh1K8e9Vi5hIZMGhwMWyKRt3foaXRhV6PQFrhQVzfPDBabijVPj81kvU082G1kjxOdTSddXfht63fJDDOA20vnvvzVxQ5ANJSB/NlDV95ItODIhWZ2w84ekmNDvlpBWyIgN4506yv9jwkwu723rZzVVHueDnte95Ti9r2jlg73fG+rSIkYsugl/c7xTzI1JX0kV6rYsYZMXezu3+UPw9CFn4ynDyCvKScg7pk85IRR2+v0oSbOqfev4RgAu6ynlcovwtpkZTrUO3n4reU0w8RoWrK1+ndkm67RlAQELpdU8PZvvQj7qGODqj9g==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2554
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4c9ce3ec-27cc-4ed2-e143-08d85bba61d5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mnsXRUXhpaMk/bB5Ei26bmLfoiHMdwVaShSvIrLQ2ewK46/oo48VWuELzAyXDir51GURp5+cP+YIg4aoiXY45cWZTBMQIdqvHAqM6s/v/lS9w8z8yYKMGqvbgS2zCLhIN3N0CFgK3ORTMz/MtFWbn71CD9abMhSVP93vEiUaOthIB5Tbmibkw2qMxvN9KIo5X26QGr7hOrGBnSUzqRH2GamgB86n0tZaVJtv3v+WAB6159S9pe8F8qOxmUuCkioAhSOtPNKYLKbLiVDuigt7gDmWuoAxtvX/IUEtvfdX0iqQ1u6SYRuy33fzWwoupREU75sSrJGLew6W1gP9aQC0OHVUsaRRTvMf7eMC1tIUNvZb6DGCRKrd8pz+krIhgoRWqKXasHgHgmApCZDBt54pcQ==
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(376002)(136003)(396003)(346002)(39860400002)(46966005)(33656002)(52536014)(5660300002)(8676002)(478600001)(336012)(54906003)(8936002)(53546011)(26005)(7696005)(316002)(36906005)(186003)(4326008)(107886003)(70586007)(2906002)(70206006)(55016002)(9686003)(81166007)(82740400003)(82310400003)(47076004)(83380400001)(6862004)(86362001)(6506007)(356005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2020 10:05:41.1520 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cac308e9-1172-499e-2d75-08d85bba6662
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3867
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kJDH6-00E0z7-Mb
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



> -----Original Message-----
> From: Dominique Martinet <asmadeus@codewreck.org>
> Sent: Friday, September 18, 2020 5:35 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; v9fs-
> developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; Justin He
> <Justin.He@arm.com>; Greg Kurz <groug@kaod.org>
> Subject: Re: [PATCH RFC 4/4] 9p: fix race issue in fid contention.
>
> Jianyong Wu wrote on Fri, Sep 18, 2020:
> > If we move the counter decrease code into p9_client_clunk and put it
> > instead of fid_atomic_dec, we need delete fid off the inode where it
> > stores in p9_client_clunk.
> > But there is no way can we acquire the inode in p9_client_clunk. Do
> > you have any idea? I think introduce another parameter for
> > p9_client_clunk Is not graceful.
>
> You cannot write code about the inode in p9_client_clunk, the way the code
> is split fs/9p can refer to net/9p but not the other way around (module-wise,
> 9p can refer to 9pnet but 9pnet cannot refer to 9p or we would have cyclic
> dependencies)
>
> However I don't see what bothers you.
> v9fs_dir_release can remove the fid from the inode as it does currently and
> just clunk immediately afterwards.
>
>
> If another user of the fid had gotten the fid from the inode previously, it has
> a ref, so the fid will not be actually clunked then but it will be clunked later
> when it is done being used -- that is perfectly fine ?
>
> p9_client_clunk should not have to worry about anything in the vfs.
>
Yeah, I see. That's it.

Thanks
Jianyong
> --
> Dominique
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
