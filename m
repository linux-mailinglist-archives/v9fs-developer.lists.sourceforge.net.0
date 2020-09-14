Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D350268B1C
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 14:37:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHnjm-0003b0-2v; Mon, 14 Sep 2020 12:37:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1kHnjj-0003as-Tg
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 12:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wZtI4gGEUQodLM8adwp1pHaxZuRrdRvIcqpgoSxogp8=; b=AQoipff+c+6yY6YHc3glfFOUOt
 ZrU4kxPT/M4E+4VAd6Agdl/IIlF5d6QkRfTGAGb9AQ5UUN5vMaNBbjJexhEcSXnX3wx1m9TnaGwxr
 K0mqaKbrYEbg4aYVmf33H3MnNoXldRMQPolCA4eXmgD8+zRYT+M+X79UYWZ568K+9Nes=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wZtI4gGEUQodLM8adwp1pHaxZuRrdRvIcqpgoSxogp8=; b=ab+nWtrqG4mPTh9jmi/KTwm1eq
 RhQFOPwoBvg7bSpoFEwRFzezSy0jfXDkHTqK+IrgnsdSgeRP+7A63nb7quyDHOPJ+qXwYgfaQ+fDQ
 w9dgDla55ukAanmqvKHR8rHExbqaNm2zV41UXUReoIOZwuCh+UxuRjJ6JeF/svdBDasI=;
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHnjV-0098FT-3M
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 12:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wZtI4gGEUQodLM8adwp1pHaxZuRrdRvIcqpgoSxogp8=;
 b=ghl9jDTjbUXdDzf21IqkKii+vtc94SwQKveh2orGza5POvKowzVuSd+vcI/Ng6LDnPcoCNdPb+YSr8BQHDYy7VI8HZz3JV0vuwXiX557s33mOm6JL4FnjSY8HbBosyUu3koCJBH3a11ivj7CzqqjszsFwhA935dycadGsphyO7g=
Received: from DB6P18901CA0003.EURP189.PROD.OUTLOOK.COM (2603:10a6:4:16::13)
 by AM6PR08MB5094.eurprd08.prod.outlook.com (2603:10a6:20b:e4::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.17; Mon, 14 Sep
 2020 12:37:05 +0000
Received: from DB5EUR03FT060.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:16:cafe::ac) by DB6P18901CA0003.outlook.office365.com
 (2603:10a6:4:16::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend
 Transport; Mon, 14 Sep 2020 12:37:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT060.mail.protection.outlook.com (10.152.21.231) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.16 via Frontend Transport; Mon, 14 Sep 2020 12:37:05 +0000
Received: ("Tessian outbound 7a6fb63c1e64:v64");
 Mon, 14 Sep 2020 12:37:05 +0000
X-CR-MTA-TID: 64aa7808
Received: from 7600ebf3a290.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 98838119-9189-4D72-BA18-CCF434E02358.1; 
 Mon, 14 Sep 2020 12:37:00 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7600ebf3a290.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 14 Sep 2020 12:37:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9Dwf4Z/O3Tg0s+HS2lgLSo5vp6R1/7DbkywmL4WgIFU0rs4qRWJD6Zb4WEyPHYP8I0gFPewnbPj9TyH2FbDdnuMdHd4Kzoqp6uewm7e4S6MmQoRecKn+ADDoAo7s2Z2nRrsvKn29u5XDpDT5UWSfiakqLAifCJY+xOzqbDnr0Ti19iLIEeGq62sV5ELxzgOJHv2XhHNLFhXi2/5bFxTwIWhJbaIunnRgSicD+p4EnZ206CTnCsa1Mbtby5U7yLvmnM5+z1v3HYp23MfkqzAKKz7IX0PDHa3HuboY3hEPH27p4BRBNS6a6qnkEKkO5x2WP25ABqhxh866eJY44RZTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wZtI4gGEUQodLM8adwp1pHaxZuRrdRvIcqpgoSxogp8=;
 b=iBUfJhpyZMIUYTGaGrTQcinrLpjHL6IT65/BKpsuGcRwUEBUHLj3F2j0SsxgDIOLlCZXgcJsJWviJsXERQ6AL/XX2gF6vYPGbH4kOcVbnbgUpKJkexBHvsTdVmK3e04IjTH6GRDyPDF9DFAZs9wAKDY8Pr3dIr1eTRRIqbCjxOAY4wSoVBQIGmaN/fG/i3HhzG2K948wKD9HkhaFgs+z9ig/f+C13fVghCc5716ehER154ArfqqTTXcwfMmytld7MZ+xnF2faecrXeszgpPfWGg+yWUX2oxn+v+T4S7UTlA9czhz/PIpy+0hUoqZLz7yneOedUAGr1simyT1kEIuoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wZtI4gGEUQodLM8adwp1pHaxZuRrdRvIcqpgoSxogp8=;
 b=ghl9jDTjbUXdDzf21IqkKii+vtc94SwQKveh2orGza5POvKowzVuSd+vcI/Ng6LDnPcoCNdPb+YSr8BQHDYy7VI8HZz3JV0vuwXiX557s33mOm6JL4FnjSY8HbBosyUu3koCJBH3a11ivj7CzqqjszsFwhA935dycadGsphyO7g=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0801MB1977.eurprd08.prod.outlook.com (2603:10a6:3:4d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Mon, 14 Sep
 2020 12:36:58 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00%5]) with mapi id 15.20.3370.019; Mon, 14 Sep 2020
 12:36:58 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Greg Kurz <groug@kaod.org>
Thread-Topic: [V9fs-developer] [PATCH RFC 0/4] 9p: fix open-unlink-f*syscall
 bug
Thread-Index: AQHWikiCiYkSwNHtU02Gd4gLL8qNd6lnz4MAgABCvLA=
Date: Mon, 14 Sep 2020 12:36:57 +0000
Message-ID: <HE1PR0802MB2555979DFB8B63C067572EBAF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914103546.0f775bcd@bahia.lan>
In-Reply-To: <20200914103546.0f775bcd@bahia.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 4454E8913CE8D94FAF1B7A890EBC13FD.0
x-checkrecipientchecked: true
Authentication-Results-Original: kaod.org; dkim=none (message not signed)
 header.d=none;kaod.org; dmarc=none action=none header.from=arm.com;
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f6201beb-4a6e-40b0-9941-08d858aae329
x-ms-traffictypediagnostic: HE1PR0801MB1977:|AM6PR08MB5094:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB5094303ADFC8299E985CDB45F4230@AM6PR08MB5094.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: UuX9dBw0Cy0/eK/DLaytgEEKlkd94Rwu6o/aN48WDFQhqBsVvcsCOo53eNcXQkqt6ni0Wz9kBwXrjFxeLioTL4Fz+QDnzHDungty9q5xiJkg8I1Ac9EJ+gv1cOXbshwbM/n+h67lVecp9fJjKIQGUgom8b12xTJnQFOlezlOc4qji9ogoX9Rkyj66ikroA5vW/58qRNWzs5Jje8ymK+x79/wd3mjFYFoIGtBKuFNLUDYCoSFZa+v7iaCltXLKWW7QyH1iYcDGXSGQHG+S32KIBccLKlTW13slKpNqWf9zZO5bkcDLB28NVBcDhkNU84lcI42BHiaf7x3Tqlx+cflbg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(366004)(396003)(376002)(136003)(5660300002)(55016002)(186003)(52536014)(66946007)(66556008)(26005)(64756008)(66476007)(66446008)(76116006)(478600001)(7696005)(6916009)(54906003)(6506007)(53546011)(4326008)(8676002)(8936002)(2906002)(33656002)(71200400001)(83380400001)(86362001)(316002)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ITBX2SG5NXafAxP/6xrEzDiCwh57b07ExNgIbj1bZ3k+6zuQAp+t15bNr7bcgrqD/rM8/gEKFzWy4er7f9rDNqWkxTx1fK8Em7sBFJX9p4sUjwGNsMy2ZxZagWR4xShSmLqGALU+qCzzd6UHTF/jkvxXYglKoltIlNW2TIm0/mn1mxO71M+oVAFc0WlXaURhi1mZ+omN1OD6WWqgG3UMXmyq3SKnAWV+eY0qNUyrpOCG5Z5XJViaz0QoDfRVq1Cp5/PGly/mck9E+8qhaCfz5B1WLhkWnf067UvUenPZRmyWhH8EyMl2H2jxTEVrUftNEG6LwfhhPXyHmBbsF1TRoX+t/+JGt9MiIqed+cIw6xl/8BS1DM6xH+q7D4aJYBDw8Do4mdvHH4C1ZarYetPbEqhdRFDdSds23j+3i2fT1t0L8UcjLj0d9kxt45H9fH/M6QZx5PRguzfN4aWEuE76eGSKWanmUXjpM/3tngs2k3tANu6IrtpzmUFT+5SLSiLfb4NxqwKC4JGAh2UPxEndrRM46kiHt6N70m0c7j6z0x0s3XDx/v8hCuAaZcayUm/8CqZGgrBPbwxNm6S1c1WaFDAl7m1Rw/mRjljZyJFPKt0XCjstmXsoUL6JZ/lkaa3mDaDFPVlt77W2LrP6lgOigQ==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1977
Original-Authentication-Results: kaod.org; dkim=none (message not signed)
 header.d=none;kaod.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: be425da1-824b-4635-6a4a-08d858aadef7
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kVik0VQ7r4Gi4mTZQFKAqBL/tB8JFL3BWbI1GqXsMLYrtGWuLVonDMMbac5IZfig35fp6avpGxnAaQZkKeUIREViKccV0qhBy+sVauXvc4JvAf4oskFAVlUCGTk595mOaWjphsiAJy/uLokXYNe8lhazq35IIl19V+MgnISUH0foDA9AMSGOHg3xOT2Z3AY0Uoh8BeFs2fQU7XbWQA+pLMb3iMS5873qbLh2ecxPlP9m7pnET6vWWizQkPG/bRBzfSivN4K1ufvyPkQIkPO1psMN92xPYlDX9Oq7geaisauSLRLmjwiK94U3pjtYzJCEk2GgXZm5POLAn4vlhoOPq4bEB32z/gim6a9q7RfhyWcyhPnrlcnsgKwW0c7jQ0+vMdVQ+0TCKIx9nX9hO2/KhQ==
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39860400002)(376002)(396003)(46966005)(5660300002)(7696005)(70586007)(70206006)(53546011)(6506007)(336012)(26005)(186003)(86362001)(54906003)(33656002)(52536014)(47076004)(8936002)(2906002)(82310400003)(81166007)(82740400003)(8676002)(316002)(356005)(6862004)(107886003)(55016002)(83380400001)(9686003)(4326008)(478600001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2020 12:37:05.1704 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f6201beb-4a6e-40b0-9941-08d858aae329
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5094
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.72 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1kHnjV-0098FT-3M
Subject: Re: [V9fs-developer] [PATCH RFC 0/4] 9p: fix open-unlink-f*syscall
 bug
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
 Christian Schoenebeck <qemu_oss@crudebyte.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Greg Kurz <groug@kaod.org>
> Sent: Monday, September 14, 2020 4:36 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; asmadeus@codewreck.org; v9fs-
> developer@lists.sourceforge.net; Justin He <Justin.He@arm.com>; linux-
> kernel@vger.kernel.org; Christian Schoenebeck
> <qemu_oss@crudebyte.com>
> Subject: Re: [V9fs-developer] [PATCH RFC 0/4] 9p: fix open-unlink-f*syscall
> bug
>
> On Mon, 14 Sep 2020 11:37:50 +0800
> Jianyong Wu <jianyong.wu@arm.com> wrote:
>
> > open-unlink-f*syscall bug is a well-known bug in 9p, we try to fix the
> > bug in this patch set.
> > I take Eric's and Greg's patches which constiute the 1/4 - 3/4 of this
> > patch set as the main frame of the solution. In patch 4/4, I fix the
> > fid race issue exists in Greg's patch.
> >
>
> IIRC some patches were needed on the QEMU side as well... I'm spending
> less time on 9pfs in QEMU, so Cc'ing the new maintainer:
>
> Christian Schoenebeck <qemu_oss@crudebyte.com>
>
Ok, very kind of you.

Thanks
Jianyong
> > Eric Van Hensbergen (1):
> >   fs/9p: fix create-unlink-getattr idiom
> >
> > Greg Kurz (1):
> >   fs/9p: search open fids first
> >
> > Jianyong Wu (2):
> >   fs/9p: track open fids
> >   9p: fix race issue in fid contention.
> >
> >  fs/9p/fid.c             | 72 +++++++++++++++++++++++++++++++++++------
> >  fs/9p/fid.h             | 25 +++++++++++---
> >  fs/9p/vfs_dentry.c      |  2 +-
> >  fs/9p/vfs_dir.c         | 20 ++++++++++--
> >  fs/9p/vfs_file.c        |  3 +-
> >  fs/9p/vfs_inode.c       | 52 +++++++++++++++++++++--------
> >  fs/9p/vfs_inode_dotl.c  | 44 ++++++++++++++++---------
> >  fs/9p/vfs_super.c       |  7 ++--
> >  fs/9p/xattr.c           | 18 ++++++++---
> >  include/net/9p/client.h |  8 +++++
> >  net/9p/client.c         |  7 +++-
> >  11 files changed, 206 insertions(+), 52 deletions(-)
> >

IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
