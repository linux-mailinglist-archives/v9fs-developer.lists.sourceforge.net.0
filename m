Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9738A2A77E5
	for <lists+v9fs-developer@lfdr.de>; Thu,  5 Nov 2020 08:20:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kaZZ4-0000YR-47; Thu, 05 Nov 2020 07:20:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1kaZYz-0000YH-TN
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Nov 2020 07:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9o3dosGdndAFHC2eyJH6rKlL+GChcGRd1P2nYQegn6o=; b=DDQxksjJrLseus6B8I1nRJvLZ8
 P3exIxBV+B/hgVqAxgMmkW+Ke2rb9/CSxO6HJueHneCyPzFnBfVy8odBxVGgGZEmjzF+bSJzMVJIP
 0/0QNAxKOFXbMJo3lXKm/n2F752ffJPNoslfMINkCwlHQeIygpXaH9fMp3E2Itvvm4yA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9o3dosGdndAFHC2eyJH6rKlL+GChcGRd1P2nYQegn6o=; b=T8zFGvLvW1egTbJ1rWdCniLNEM
 o8y/Jli0+ADaPUcZiJozDaligzFgU6w+JemkZKtt/JvteXDASOco85P1JLPzAoAAzw0Tq/ZHuOk+w
 Q2ViJ7wMSqP0Fq9o/j9/P1c/8ZpIVHj4zojubtlfYUYV976fc6Tgqwk6MBQXrmKYarGw=;
Received: from mail-vi1eur05on2052.outbound.protection.outlook.com
 ([40.107.21.52] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kaZYp-00247d-J2
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Nov 2020 07:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9o3dosGdndAFHC2eyJH6rKlL+GChcGRd1P2nYQegn6o=;
 b=QtK6FqaAbw/Bg7fylvYYg8JO7egixo6lft96JTM9TMXV3Q/5xoLAD8ydSk39ZRunB/BPUCxB6v50dOANwtQQhPo3sM4bVN9lR/ugZiOeIfPJ/eHFguhQ3MOKhpYHFX5r22Z/SGV08V/QflUY0V6C+2YeZ0mAJa9eYFaBVg60aDE=
Received: from AM5PR0101CA0013.eurprd01.prod.exchangelabs.com
 (2603:10a6:206:16::26) by AM0PR08MB5361.eurprd08.prod.outlook.com
 (2603:10a6:208:18d::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.27; Thu, 5 Nov
 2020 07:05:31 +0000
Received: from VE1EUR03FT040.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:206:16:cafe::6) by AM5PR0101CA0013.outlook.office365.com
 (2603:10a6:206:16::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.19 via Frontend
 Transport; Thu, 5 Nov 2020 07:05:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net; dmarc=pass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT040.mail.protection.outlook.com (10.152.18.210) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3520.15 via Frontend Transport; Thu, 5 Nov 2020 07:05:31 +0000
Received: ("Tessian outbound e6c55a0b9ba9:v64");
 Thu, 05 Nov 2020 07:05:30 +0000
X-CR-MTA-TID: 64aa7808
Received: from f545cf7d6ce4.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 38E20ED5-B40A-4C02-9CB7-35D9B1858DAF.1; 
 Thu, 05 Nov 2020 07:05:25 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f545cf7d6ce4.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 05 Nov 2020 07:05:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBPmeOKyUuf9yfc+sfmcLY1FYjCGbPhMzFU+pTiPCFI38AZvAfx6FPvvPL2qNT4aRe4clSoFb/qu/EB2mjCheekoT83G1FO0IisH0TvkpGvBZ5reNAaRCNZp3zGFoauizQ/gbVgDzMAqbx+sKzrnn5aQAj4MBuKv7Pon4C9Ylb2H/Rh4HgSDA3tqkWXr0xT+vq+e1zXtuzlT+hc3H1losLawyQFX63rYBZgYObz1XipW9zTe9sqS2NzL8o74uPXue6zj+xE8+oMImGyzVt/PAtzF0U9Aaj3qb7jU5KNBq4nZlYpq9/f7cboIK4OvukYswovDYSFu1hAlrmpbzcYTgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9o3dosGdndAFHC2eyJH6rKlL+GChcGRd1P2nYQegn6o=;
 b=Uviu1/w3jY5I2s+h9XoHk4YsIlg+0IRgA+CRN/bpKLXxBaX6e3bHD3ZAS4A3UOIU4V0EAbHOUmy47OeQoqDJTwo4PIg9KcGMrL9YGt8GODrJUNW09L/T37AOtcESTKyhzc5tL7mkWna+Ssck2uDtMhFiMxOPi74RDxRjjgx7ZEzRth76zBOcyM852AkObAQlanBS02n8xVB8on7LRyF//EPsKTrGw5I07am/T0iLcIf2h29c8eGUnFOov52DUHHJXL2xWyIUj/e4a0p7wpk4Ee+hQdhuoY2VKs7Id9KmTmor82Qq3vnb2MH52dzpAX/Ns4GRTbex8oWt06Fkw8Edtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9o3dosGdndAFHC2eyJH6rKlL+GChcGRd1P2nYQegn6o=;
 b=QtK6FqaAbw/Bg7fylvYYg8JO7egixo6lft96JTM9TMXV3Q/5xoLAD8ydSk39ZRunB/BPUCxB6v50dOANwtQQhPo3sM4bVN9lR/ugZiOeIfPJ/eHFguhQ3MOKhpYHFX5r22Z/SGV08V/QflUY0V6C+2YeZ0mAJa9eYFaBVg60aDE=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0801MB1977.eurprd08.prod.outlook.com (2603:10a6:3:4d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.30; Thu, 5 Nov
 2020 07:05:24 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9930:b22f:9e8c:8200]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9930:b22f:9e8c:8200%5]) with mapi id 15.20.3499.032; Thu, 5 Nov 2020
 07:05:23 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH RFC v2 4/4] 9p: fix race issue in fid contention.
Thread-Index: AQHWkbOl16CkOw3tJ0mFRMvqqCi+c6m2eE8AgALmhqA=
Date: Thu, 5 Nov 2020 07:05:23 +0000
Message-ID: <HE1PR0802MB2555B7618328CA57EFE30789F4EE0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200923141146.90046-1-jianyong.wu@arm.com>
 <20200923141146.90046-5-jianyong.wu@arm.com> <20201103104116.GA19587@nautica>
In-Reply-To: <20201103104116.GA19587@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: E00F84D367DCCA4796D6C666C63973C7.0
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.113]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bca613b4-74ee-40f6-c985-08d881592ef9
x-ms-traffictypediagnostic: HE1PR0801MB1977:|AM0PR08MB5361:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB5361DE5FCAA061AA0FE0BDFEF4EE0@AM0PR08MB5361.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: uZaqOYwDCZrn9DEc2dT7aE6MzEkiM0YNa4En8uGGt/+S+hlz9SZMn/n5cN/MbX5KZoAcGaEUVpv9CzGckEP11rIDtSFwq7+/C8JXerbzUn72ZsCES3tnuOc+Yc/lueZTkaYbYg/r3CymEBBv8+mhpggGbIlpdENVgaJB3YwWI5pGLnnyDY8ew+d94scHwO1VbG+ODPdtD4RxOgMHNEGHNemCDpiWv5SGhRbKaMEsfltLoslBYuubSPc94nW3Ubgjv8byaEsh6laGZfPu7C3nqHPOzBWalKbwxOuUViuEY7k3Xo+q8C1g4ubK2eqtfucjfMH/8cwNWIKeB4AWyFagJw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(136003)(396003)(366004)(346002)(2906002)(86362001)(71200400001)(7696005)(26005)(52536014)(186003)(83380400001)(6506007)(53546011)(66946007)(66446008)(76116006)(66556008)(66476007)(64756008)(8936002)(9686003)(55016002)(6916009)(4326008)(5660300002)(478600001)(316002)(33656002)(8676002)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: E0NaKN+zs1G42paHcGn+hjFV+E/JaDrOLh0dZv0wARdQt/yMeF1Dd3ELEN2thumPZm4gX+2Wq0RrvyL7qKezEa85jwsV+OYbNXGxeaNpMuhNWfZAkF9YNZVbHD2S1VIwB36IIm3BCA7TJxhojQnT3lwskmcElNdmaH14f9rvr66URZCXUx+yuA5bZKcqvcf5NAlGxmjLg3MKU7H3DgN0kvBau1ytUGhnnueWkcWHLbZk9uxAH60NVwODscm/H7KqpT2i88QUEP417ntoRemgAPVahaRCFzIoUKbwLz81nRlhfdg6yPyG9gVmJDSicc+tDN6/xIWwML+RsotQ78NweDKqA01xZ4DtMxWABjFlBB51j0/yGcNCYJjzuEij6wc/sDIo2C10qZW+8CESbmp5zn18lE32KLv8+oX87C+cLpRYInVD3PTaknFRUJi+bNEnMBk9pPA9IaUCKMySOHe1UVKTiM4IqaOWiYfJ2Xjs/KPKuh3NCUQ/2RBLohn3lkx2cX6OuBshFFYiPBjMgkFqZ1/GjhsiEEb1OVV148IVez2nDWainQzQOCubLht3245ED/weuQfTlNk2UEyrC3Nr6witRLAy2YePGczft365Mx57zEUSoOoj7/K6r/a8jbK2oj/b8KuqgnqYu38+FNZohQ==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1977
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT040.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: d3af7a2a-b09d-4927-7ea0-08d881592a95
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8JhxYmiOVA4rqHFsPT+jBbtqiwYFDEQj/wcqjvq80s7SjJ33UXE4g/9BX9eAz/Ws4C/ZFT9knP/J63tcL/xOUbV/Gj9rWzB0/TLBdmJa58ENtKUVjoMtjmO09qBFnFxh1IHvzYJ7RJybQFvP2rzXxLjPX/9rF27aqcWrXzFL14oi/K7mJmGgJO+Lky7Ym9q4qyVxvyAn/SfKx01PhHE0wWV08rksBJQSe53/xnauD2m55sSxOFlUeecAUSFo4rHoV6r+++la3MlaC9/TBtMNo0xAq8L/PApeKyEwLpB2oqXg4b2V2iCyo85LTNopltlpgxy0he6Xa5f9w7hDJViiDJhZR0mUrvF5L7SVCGuA1J29myjiaGIFUSzgF1Los7+D8ONkgry4EH0u7MXvCfnsaA==
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(136003)(396003)(346002)(46966005)(70586007)(70206006)(82740400003)(8936002)(356005)(81166007)(8676002)(52536014)(47076004)(4326008)(33656002)(55016002)(478600001)(2906002)(7696005)(186003)(6862004)(54906003)(6506007)(82310400003)(9686003)(36906005)(336012)(26005)(5660300002)(316002)(86362001)(83380400001)(53546011);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2020 07:05:31.1710 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bca613b4-74ee-40f6-c985-08d881592ef9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT040.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5361
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.52 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1kaZYp-00247d-J2
Subject: Re: [V9fs-developer] [PATCH RFC v2 4/4] 9p: fix race issue in fid
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
 "ericvh@gmail.com" <ericvh@gmail.com>,
 "qemu_oss@crudebyte.com" <qemu_oss@crudebyte.com>,
 "groug@kaod.org" <groug@kaod.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

Good News!
I'm happy to see that you have time to pick this up again. All the changes are OK for me.

Thanks
Jianyong

> -----Original Message-----
> From: Dominique Martinet <asmadeus@codewreck.org>
> Sent: Tuesday, November 3, 2020 6:41 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; qemu_oss@crudebyte.com;
> groug@kaod.org; v9fs-developer@lists.sourceforge.net; linux-
> kernel@vger.kernel.org; Justin He <Justin.He@arm.com>
> Subject: Re: [PATCH RFC v2 4/4] 9p: fix race issue in fid contention.
>
> Jianyong,
>
> Jianyong Wu wrote on Wed, Sep 23, 2020:
> > Eric's and Greg's patch offer a mechanism to fix open-unlink-f*syscall
> > bug in 9p. But there is race issue in fid comtention.
> > As Greg's patch stores all of fids from opened files into according
> > inode, so all the lookup fid ops can retrieve fid from inode
> > preferentially. But there is no mechanism to handle the fid comtention
> > issue. For example, there are two threads get the same fid in the same
> > time and one of them clunk the fid before the other thread ready to
> > discard the fid. In this scenario, it will lead to some fatal problems, even
> kernel core dump.
> >
> > I introduce a mechanism to fix this race issue. A counter field
> > introduced into p9_fid struct to store the reference counter to the
> > fid. When a fid is allocated from the inode or dentry, the counter
> > will increase, and will decrease at the end of its occupation. It is
> > guaranteed that the fid won't be clunked before the reference counter
> > go down to 0, then we can avoid the clunked fid to be used.
> >
> > tests:
> > race issue test from the old test case:
> > for file in {01..50}; do touch f.${file}; done seq 1 1000 | xargs -n 1
> > -P 50 -I{} cat f.* > /dev/null
> >
> > open-unlink-f*syscall test:
> > I have tested for f*syscall include: ftruncate fstat fchown fchmod faccessat.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
>
> Ok so I've finally taken some time to test -- sorry for the delay.
> I didn't bother with qemu but the use-after-close f* calls work with nfs-
> ganesha and it doesn't introduce any obvious regression with the current
> qemu either, so this is good for me.
>
> Greg, Christian - from what I understood (in private, hopefully I'm allowed to
> repeat!), he won't be able to contribute to qemu because of company
> policies and I'm unlikely to take the time either right now.
> I don't think it's a problem to continue as is though, we can land linux kernel
> support (it's still useful for non-qemu servers) and if someone is interested
> later on they'll just need to finish that bit.
>
>
> I'm not seeing any obvious problem now so I'll take these patches in -next
> within the next few days, with this extra patch on top that basically applies
> the requests I had:
>  - removing the extra atomic_set in fs/9p/fid.c
>  - convert from atomic to refcount API (overflow checks)
>  - rename a no-composant walk to clone_fid()
>
> I'll just run some more instrumented tests first to check we're not leaking
> anything but so far I haven't found any problem.
>
> If you noticed anything else please speak up.
> Thanks for taking the time to finish this! :)
> ---
>  fs/9p/fid.c             | 10 ++++------
>  fs/9p/fid.h             |  2 +-
>  include/net/9p/client.h |  2 +-
>  net/9p/client.c         |  4 ++--
>  4 files changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/fs/9p/fid.c b/fs/9p/fid.c
> index 89643dabcdae..50118ec72a92 100644
> --- a/fs/9p/fid.c
> +++ b/fs/9p/fid.c
> @@ -28,7 +28,6 @@
>
>  static inline void __add_fid(struct dentry *dentry, struct p9_fid *fid)  {
> -atomic_set(&fid->count, 1);
>  hlist_add_head(&fid->dlist, (struct hlist_head *)&dentry-
> >d_fsdata);  }
>
> @@ -62,7 +61,7 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode
> *inode, kuid_t uid)
>  }
>  }
>  if (ret && !IS_ERR(ret))
> -atomic_inc(&ret->count);
> +refcount_inc(&ret->count);
>  spin_unlock(&inode->i_lock);
>  return ret;
>  }
> @@ -77,7 +76,6 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode
> *inode, kuid_t uid)  void v9fs_open_fid_add(struct inode *inode, struct
> p9_fid *fid)  {
>  spin_lock(&inode->i_lock);
> -atomic_set(&fid->count, 1);
>  hlist_add_head(&fid->ilist, (struct hlist_head *)&inode->i_private);
>  spin_unlock(&inode->i_lock);
>  }
> @@ -110,7 +108,7 @@ static struct p9_fid *v9fs_fid_find(struct dentry
> *dentry, kuid_t uid, int any)
>  hlist_for_each_entry(fid, h, dlist) {
>  if (any || uid_eq(fid->uid, uid)) {
>  ret = fid;
> -atomic_inc(&ret->count);
> +refcount_inc(&ret->count);
>  break;
>  }
>  }
> @@ -201,7 +199,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> dentry *dentry,
>  }
>  /* If we are root ourself just return that */
>  if (dentry->d_sb->s_root == dentry) {
> -atomic_inc(&fid->count);
> +refcount_inc(&fid->count);
>  return fid;
>  }
>  /*
> @@ -250,7 +248,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
> dentry *dentry,
>  fid = ERR_PTR(-ENOENT);
>  } else {
>  __add_fid(dentry, fid);
> -atomic_inc(&fid->count);
> +refcount_inc(&fid->count);
>  spin_unlock(&dentry->d_lock);
>  }
>  }
> diff --git a/fs/9p/fid.h b/fs/9p/fid.h
> index 1fed96546728..f7f33509e169 100644
> --- a/fs/9p/fid.h
> +++ b/fs/9p/fid.h
> @@ -28,7 +28,7 @@ static inline struct p9_fid *v9fs_fid_clone(struct dentry
> *dentry)
>  if (!fid || IS_ERR(fid))
>  return fid;
>
> -nfid = p9_client_walk(fid, 0, NULL, 1);
> +nfid = clone_fid(fid);
>  p9_client_clunk(fid);
>  return nfid;
>  }
> diff --git a/include/net/9p/client.h b/include/net/9p/client.h index
> 58ed9bd306bd..e1c308d8d288 100644
> --- a/include/net/9p/client.h
> +++ b/include/net/9p/client.h
> @@ -149,7 +149,7 @@ enum fid_source {
>  struct p9_fid {
>  struct p9_client *clnt;
>  u32 fid;
> -atomic_t count;
> +refcount_t count;
>  int mode;
>  struct p9_qid qid;
>  u32 iounit;
> diff --git a/net/9p/client.c b/net/9p/client.c index
> a6c8a915e0d8..ba4910138c5b 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -901,7 +901,7 @@ static struct p9_fid *p9_fid_create(struct p9_client
> *clnt)
>  fid->clnt = clnt;
>  fid->rdir = NULL;
>  fid->fid = 0;
> -atomic_set(&fid->count, 1);
> +refcount_set(&fid->count, 1);
>
>  idr_preload(GFP_KERNEL);
>  spin_lock_irq(&clnt->lock);
> @@ -1466,7 +1466,7 @@ int p9_client_clunk(struct p9_fid *fid)
>  dump_stack();
>  return 0;
>  }
> -if (!atomic_dec_and_test(&fid->count))
> +if (!refcount_dec_and_test(&fid->count))
>  return 0;
>
>  again:

IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
