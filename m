Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F2A227D35
	for <lists+v9fs-developer@lfdr.de>; Tue, 21 Jul 2020 12:38:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jxpfV-0002d0-3A; Tue, 21 Jul 2020 10:38:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1jxpfR-0002cp-FU
 for v9fs-developer@lists.sourceforge.net; Tue, 21 Jul 2020 10:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ai0ey2mHfLjQfUqBOluMkvMKLAwoke6W22MKuXHDOYU=; b=PFBqrq0x4HZWVg45y24T0JrPxw
 DRauO15PCHRvMD9UTYirOlGKMFovtv7h/femSX389x/qrmjIilABJtlkomFzgefXFzNMOaGXyKRVH
 FREcO1wWpfPlXKekNNO6Ga1Oq/K2C9P7gB/4Bm55752bur0EUsWEA/jvNCdn10oVxBgM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ai0ey2mHfLjQfUqBOluMkvMKLAwoke6W22MKuXHDOYU=; b=EacQ4Z2jhowkgvpusd/hzEzYcO
 yugymPlGf21+8QyJHgLzmWHpAhWkIv48lGgNS6spVskutu7O9Gduhnzb02IYtadlCJfHK2S6RMq8l
 +jMCSO+k/Kgs67gvkNrgM1/dwR1KNr/ICXZeA+GhLO8o0Ba/eABv02aTIQsC/9ScL3yo=;
Received: from mail-vi1eur05on2066.outbound.protection.outlook.com
 ([40.107.21.66] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxpfO-00ExmZ-3o
 for v9fs-developer@lists.sourceforge.net; Tue, 21 Jul 2020 10:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ai0ey2mHfLjQfUqBOluMkvMKLAwoke6W22MKuXHDOYU=;
 b=igf4iLXwjAHXkgyTwVkNdV8ypcf26UYmESybooSB/UhFp8XJLztPvYazHLeYmIeDIw0Iaoa7yU4H9odaf5sA0fFiHyo08YIewFicbvX2gZo/nQZcbccgyT41z6EYUXMdjCIgrCvjH3q9t6rn68kiFCzLkmiP3yK5THEBOj2lzx4=
Received: from AM6PR0202CA0045.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::22) by HE1PR0801MB1836.eurprd08.prod.outlook.com
 (2603:10a6:3:89::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18; Tue, 21 Jul
 2020 10:03:32 +0000
Received: from AM5EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:3a:cafe::77) by AM6PR0202CA0045.outlook.office365.com
 (2603:10a6:20b:3a::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18 via Frontend
 Transport; Tue, 21 Jul 2020 10:03:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT056.mail.protection.outlook.com (10.152.17.224) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.18 via Frontend Transport; Tue, 21 Jul 2020 10:03:32 +0000
Received: ("Tessian outbound 7de93d801f24:v62");
 Tue, 21 Jul 2020 10:03:31 +0000
X-CR-MTA-TID: 64aa7808
Received: from ea91dfd565cb.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6FF2EB22-C626-4A05-A06D-817920D350B2.1; 
 Tue, 21 Jul 2020 10:03:26 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ea91dfd565cb.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 21 Jul 2020 10:03:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VsQfnNkY5/ZD0BEtfUkIVAt511x/F/BfjfazSo22zkrDBLa7kSQu2RNLDZprw1IC2fIZy0RZFI1lKX/rlMSHdIm4VjCbd3oJCbaBVU8Eq7YOouZziR/gxlhZh2Gu4MZzEdyGlJX8HKvKRaF0SvLpjt/X2Z/wBM2Va9k1t44ku20PUjsgi9oF/JWVbmTf5iUo8THytS8dMnF7qmp0+coStdxleHT0/vE8heIw6C9/p7zbhEFlv0GBmNM9vIWZG0dt7YKkLBJHOp2w7EUxTXfN6yL3aiOHK0/EpVmUBX8AOUD7+/yeDyZadknLkYvO8fDjTtdvTSrBeOLmh9kJRVin5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ai0ey2mHfLjQfUqBOluMkvMKLAwoke6W22MKuXHDOYU=;
 b=H0BvvWWORVFCUFbRMWIdU1mjJXVv14XHlhzVYR6CpXQKl8W8z+9dMz/QEnvRkIG+BilktCKHYnNzG1lgirUu0x7ej6g1DRIE4Z10BscR9hBMBblth8XzBjS6Sl68xzU1i0yprdQrDE5Onjdt80ABCnsaboP0gXlq54VSOrYb05qIMn4bGa0w87DUYiJaL0/Glj7UVbnmyEzkpCpO1TFA/rUTU88azIMPhTY36glUzF+lph6+o1UnXqUqzux8p5GOCHWkGKjvVtv+840yrz4b3GxgeXLGya9/utRr+20Rf1BRxR2zuA75oJNBEH6ETIKIx+BuPk9lfZKbu6hvWrIX4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ai0ey2mHfLjQfUqBOluMkvMKLAwoke6W22MKuXHDOYU=;
 b=igf4iLXwjAHXkgyTwVkNdV8ypcf26UYmESybooSB/UhFp8XJLztPvYazHLeYmIeDIw0Iaoa7yU4H9odaf5sA0fFiHyo08YIewFicbvX2gZo/nQZcbccgyT41z6EYUXMdjCIgrCvjH3q9t6rn68kiFCzLkmiP3yK5THEBOj2lzx4=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0801MB1833.eurprd08.prod.outlook.com (2603:10a6:3:80::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Tue, 21 Jul
 2020 10:03:24 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a%6]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 10:03:24 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [RFC PATCH 1/2] vfs: pass file down when getattr to avoid losing
 info.
Thread-Index: AQHWXjeiNMxBqXo7yk2X9SbcHqU0bakQjqwAgAE4FHA=
Date: Tue, 21 Jul 2020 10:03:23 +0000
Message-ID: <HE1PR0802MB2555AA0A535543B214155BE7F4780@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200720014622.37364-1-jianyong.wu@arm.com>
 <20200720014622.37364-2-jianyong.wu@arm.com> <20200720145340.GA13275@nautica>
In-Reply-To: <20200720145340.GA13275@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 690fd59d-d198-432f-baef-9141a2033527.1
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.113]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c34484ff-2893-45de-3ac7-08d82d5d531d
x-ms-traffictypediagnostic: HE1PR0801MB1833:|HE1PR0801MB1836:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0801MB18366F6750CFFCC02A454462F4780@HE1PR0801MB1836.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 3xtN0brkvolQZCtBkC4SKfoVvX2KkrxpBUZ9aRcMUgrdfvjfdHZlFAVpM7AYwOmxej20efX3NEadMeI+uXJI7QrGFhufoIfFZiWcJSGgCExWHOYBuXIqdDVuP+HrCky34fjVDH9udlfxXRIuMqDZW2wChv5zAXGq8xjhGoTOTU1T85ESxsvafduGMPkkkfUxUbSr0+0CyAmPwFZgvz23DvQqxd+zEgvveVGGWU24ou8MkBI27P26RraH1oelBJC4rR4VZSqkTt0dcx+YLWij84LvLl2329GIF3IXneLWk2bJ6Y0orLs6TVfqHx+SOzEjyMY43tsgkwQmVM4cqEU4XKKSIw+W43Ljp5kV1n86Gc/GzGdO19zYiM4sQv3/lOp8eODoYY+2J4ChYd0yTfDpig==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(346002)(366004)(136003)(376002)(396003)(8936002)(966005)(2906002)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(71200400001)(83380400001)(8676002)(6916009)(7696005)(316002)(54906003)(5660300002)(33656002)(55016002)(53546011)(6506007)(9686003)(478600001)(52536014)(86362001)(186003)(26005)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: fvioaT89p7hh7QLSOUSvW0wPh8oD1YKlet6tCDPc2BA5e+NfmWIGt2utj93zyHG4Pe056q0nZCIwxIT3AZmErCIlclqOD3frX4c7p9+V1Zee3xIzlJWKxd38pifUmQXOytrnWmTA0PgDIV5v/zyMyFQTIJAY9uxslwlXGsvFwFeQiATwqmdKm48Qb8+w+G+RQPmeEIabVN3sjMHZXVxNqdR+2i6oh4zCAUKMHFdp5GzF5fK5wirYCBAEqmeIUMzL+TgJ/N33u7AdfTrZw+KefHy4D2wXFbDF6JRr+4Cc8IB+Ip0FCPXs6SoMZq7pMInA530K8d8Y76qmSQvOQPt0/KMjkp6RoaZTi2Un1MKIa6nNX+IcyZ4slupUI3FgUAZXVlrV3W/5OEIzILK8ccTamrN/xcp8MhLaLFDNaBaKv8tZX6+D/YYX0dlUkAWUayrP4gl9QGUx44tAvXdSgsy28hwFrLz8gXfFnmvsG0ZOLvE=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1833
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(346002)(39860400002)(376002)(396003)(46966005)(53546011)(6506007)(8676002)(186003)(54906003)(26005)(70586007)(70206006)(7696005)(966005)(478600001)(82740400003)(83380400001)(4326008)(47076004)(81166007)(356005)(82310400002)(2906002)(6862004)(36906005)(316002)(8936002)(55016002)(86362001)(336012)(52536014)(5660300002)(9686003)(33656002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 12df63be-d024-46cc-2363-08d82d5d4e5e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ij+Q7hm4jtUwG9VKoJYwofGz59+xqH+hT5sYek04Ih1w9Vb84MMTdkwhBIv+UBPRJ1wTs4ZlxtVe/UmZ4OjMex44GEmqtsWJp06fhFaJwDIJ7IukSQeKNtGxTxPMw0KQLcgDIVlS0S8r0vk9WibVDG2GeenfT3LQLUs1/8kGbIvgrnqJAsIuJAwjcbEO8XRCFlTnFeLwP2vwmWZLXYQXoF/npSd9ceD73lcEMNCGorh8ZukyOyewf+vwJKfPACJpMp2s3sRVqIsAuZhgdOE1bLf0lpozk28bUCRAeOfJtM4cPVD4xnXErI6A82rqs9z74lC5/YEbVT50bpg0SzsY2kogtX2EG64L3QzoT5jDTkp81AdxEoksFxqbAusczuWTfCni4pIl2ckNHgxMk635ZyQ04/w1rWfJVItP2j8u20UvlCtpoiBgQ8np+bxHShs98+9VLAsbdZySjXOfiEHwBpczUzxmC6t4NL6Ju4xsM60=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2020 10:03:32.1988 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c34484ff-2893-45de-3ac7-08d82d5d531d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1836
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.66 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxpfO-00ExmZ-3o
Subject: Re: [V9fs-developer] [RFC PATCH 1/2] vfs: pass file down when
 getattr to avoid losing info.
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
 Wei Chen <Wei.Chen@arm.com>, "ericvh@gmail.com" <ericvh@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dhowells@redhat.com" <dhowells@redhat.com>, Kaly Xin <Kaly.Xin@arm.com>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Dominique Martinet <asmadeus@codewreck.org>
> Sent: Monday, July 20, 2020 10:54 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; hch@lst.de; dhowells@redhat.com;
> lucho@ionkov.net; v9fs-developer@lists.sourceforge.net; linux-
> kernel@vger.kernel.org; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>
> Subject: Re: [RFC PATCH 1/2] vfs: pass file down when getattr to avoid losing
> info.
>
> Jianyong Wu wrote on Mon, Jul 20, 2020:
> > Currently, getting attribute for a file represented by fd is always by
> > inode or path which may lead to bug for a certain network file system.
> > Adding file struct into struct kstat and assigning file for it in
> > vfs_statx_fd can avoid this issue. This change refers to struct istat.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
> >  fs/stat.c            | 1 +
> >  include/linux/stat.h | 6 ++++++
> >  2 files changed, 7 insertions(+)
> >
> > diff --git a/fs/stat.c b/fs/stat.c
> > index 44f8ad346db4..0dee5487f6d6 100644
> > --- a/fs/stat.c
> > +++ b/fs/stat.c
> > @@ -147,6 +147,7 @@ int vfs_statx_fd(unsigned int fd, struct kstat *stat,
> >  return -EINVAL;
> >
> >  f = fdget_raw(fd);
> > +stat->filp = f.file;
> >  if (f.file) {
> >  error = vfs_getattr(&f.file->f_path, stat,
> >      request_mask, query_flags);
> > diff --git a/include/linux/stat.h b/include/linux/stat.h index
> > 56614af83d4a..4755c528d49a 100644
> > --- a/include/linux/stat.h
> > +++ b/include/linux/stat.h
> > @@ -48,6 +48,12 @@ struct kstat {
> >  struct timespec64 btime;/* File creation time
> */
> >  u64blocks;
> >  u64mnt_id;
> > +
> > +/*
> > + * Not an attribute, but an auxiliary info for filesystems wanting to
> > + * implement an fstat() like method.
> > + */
> > +struct file*filp;
>
> Just, no ; don't touch this, it isn't likely to get accepted ever.
> file operations should all have a filp around already, we need to fix this in our
> code.
>
Ok, but I think it may not be an easy job to fix it inside 9p.

> (also missing quite a few Cc if you ever want to touch these bits, at least
> linux-fsdevel@)
> thanks. Should have added them.
>
>
> FWIW the problem has been discussed a few times previously.
>
> I'd appreciate if you could take over from Eric and Greg's old series that
> intended to fix that:
> https://lore.kernel.org/lkml/146659832556.15781.17414806975641516683.
> stgit@bahia.lan/
>
> it introduced a race somewhere, but the idea looked good at the time so it's
> worth looking into.

Thanks, I will look into it to find some ideas. if I can get the solution, I will be back.

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
