Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C7A21209C
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 Jul 2020 12:09:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jqw9Z-0001vm-Am; Thu, 02 Jul 2020 10:09:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1jqw9X-0001ve-V1
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jul 2020 10:09:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ApjUig0fzXuSfOTe/Py5sjuEq3+npILdfic0JE3DI8s=; b=jiTR49H/5gWU3MzeR1xFcWToSN
 VZAINd5cROR3HDLK9vl5FvWmvtxoT3FxoLyX4jCJB/pGxHQ/Ovl71YhqDkHPdj0j0fXhLeY0ynH7Z
 0X70y94UgrbTwSxYSdzk3c7YHMiajdwgJI4gl3639NmiTChDcPwM1h+8/icwNyYu6A1k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ApjUig0fzXuSfOTe/Py5sjuEq3+npILdfic0JE3DI8s=; b=BsM4XOWYeVadAC3hZromrfSa5B
 krsWr+U6gRQwfx98RyKX/jpHMO8ngkuem5S1kRujmxhE4DhF9SBHZ4J0dh0W+xep/4UBvq452Sont
 MsK5WAklh6GbpnwoFLGepcAErn6Yh+0oK6K4RgZQUVO1yzFnzdahWSTN1GPKfek229Cw=;
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jqw9U-00804o-UI
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jul 2020 10:09:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApjUig0fzXuSfOTe/Py5sjuEq3+npILdfic0JE3DI8s=;
 b=WXhXoS0bKl766OEyI/mjBaqem6Lw6tYXYnKEdq/dPDWlgGapORgdMbiLL6aCv3EXu8pMjyCFeUwsch3SHUKfJDUq3DMRg8N09WtAOioJMUCyV6PMilfOTdfd6RvyZxn9T1/anfzLvrxdSpOLwNFOQrK20jkMTaLbLC8nvh87uDY=
Received: from MR2P264CA0150.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:1::13) by
 AM6PR08MB3463.eurprd08.prod.outlook.com (2603:10a6:20b:42::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.20; Thu, 2 Jul 2020 09:54:49 +0000
Received: from VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:501:1:cafe::cb) by MR2P264CA0150.outlook.office365.com
 (2603:10a6:501:1::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20 via Frontend
 Transport; Thu, 2 Jul 2020 09:54:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT006.mail.protection.outlook.com (10.152.18.116) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.24 via Frontend Transport; Thu, 2 Jul 2020 09:54:49 +0000
Received: ("Tessian outbound 2dd9eeca983c:v62");
 Thu, 02 Jul 2020 09:54:48 +0000
X-CR-MTA-TID: 64aa7808
Received: from 0654fbda37fc.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7DE0C5B9-F757-4344-BB9B-DE37D3EF9287.1; 
 Thu, 02 Jul 2020 09:54:43 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0654fbda37fc.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 02 Jul 2020 09:54:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ATy2aqBmAk47YNQUQKvl/WU3m1dUwkdj+0YA7gCz6UaQaUAK20LCJrL7qx/+Z3LwUW41jDmvrfq9VkLKLp0ey6r4yBB0Ox/ivZzDH+BNQYD9TBwZTgQ3nKg/W5UUlHWDQxNYEVcN0sZ12l0FHLiVinGe02I9rBT7lOxRVUMs/nYmwj2yaYzip/8XvBWp1UWdgvzbyI4vmPZ4xPuDZG//w/silCw5debzFEjAQlq39n0Kcwo/LzLhuuUOzO5URMB6E0sx63Kc1bgKYCLaAdzPHXMWl2416GDQSTP3hhBd2sBRDmDAFVQF+3pe3X4/9vESFLcH8qsjvO3yLyucpf8iaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApjUig0fzXuSfOTe/Py5sjuEq3+npILdfic0JE3DI8s=;
 b=iFjNLe/l+98RjSqhYcfSJAsJEQ1rLld8agUXv1lU5YM1kgjB/98OohmOtvVjdlvu/7TQjr50PmqkTAlR4rccsAqNX8X+QY9BBGDmQCDIwO7M2oIFQ6eq+/YKfMRGmEyQXsqxdExF8d6nRB0pPqMFVIpEhIIj9NWP4YFJFom3vIt6tjkRxce609R+vQBiAgc5u3sHDbwOF1fPkYi/++sOSUoi07IiYJ4LdlKqYHRLG9UZK7gGj6Fbbsr/pWGl9EGtmRXpQhZTyy5kmCu6Yh72s7CMedaYyx1dRfEVdKndp7NIRpJ0T1fz6UpnUSzecaC2G0QgzdPO8F9OmSRbVHJVcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApjUig0fzXuSfOTe/Py5sjuEq3+npILdfic0JE3DI8s=;
 b=WXhXoS0bKl766OEyI/mjBaqem6Lw6tYXYnKEdq/dPDWlgGapORgdMbiLL6aCv3EXu8pMjyCFeUwsch3SHUKfJDUq3DMRg8N09WtAOioJMUCyV6PMilfOTdfd6RvyZxn9T1/anfzLvrxdSpOLwNFOQrK20jkMTaLbLC8nvh87uDY=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR08MB2826.eurprd08.prod.outlook.com (2603:10a6:7:31::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.25; Thu, 2 Jul
 2020 09:54:42 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a%6]) with mapi id 15.20.3153.027; Thu, 2 Jul 2020
 09:54:42 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH v2] 9p: retrieve fid from file when file instance exist.
Thread-Index: AQHWT1C8uFH8AvHCck+eqX9WRLxleKjyjr6AgADqeMCAAHS8gIAAIGIA
Date: Thu, 2 Jul 2020 09:54:41 +0000
Message-ID: <HE1PR0802MB2555BD29BC9B8528AA914998F46D0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200701023821.5387-1-jianyong.wu@arm.com>
 <20200701105927.GA20762@nautica>
 <HE1PR0802MB25552E53839BA81FB26210ABF46D0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200702075627.GA23996@nautica>
In-Reply-To: <20200702075627.GA23996@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: db08b96e-ff10-45b1-8455-9ec620d5c5d4.1
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 25255a09-7c5c-42a5-c806-08d81e6df574
x-ms-traffictypediagnostic: HE1PR08MB2826:|AM6PR08MB3463:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB3463E650E9ADE35F8217AD34F46D0@AM6PR08MB3463.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:6430;OLM:10000;
x-forefront-prvs: 0452022BE1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: sb26EiP8/PrtCK7J0UMziesl4Rnp1hWJVooOzWSjqNm4zDxPknsiigdVoS4jMBR8cKPtHSvKmZooKffzBAinkQQ0KISZoMKoqLGQ2VPaVsRkUwqOaKiFUqXpGEJyfDg3bB+uX5yEpB9aTaQovz30Zh2PkjRis3Qoo2xPXb7zP52s6+Uk7yVY+Tbn/E1nJSD+CY1jrfEI+m+AV4BWyZss4fSp6+RatGKGge2owTWi9oIbLBGe3SM93A2u+A2S9TJXg4AB2Juuz5KMqwWjTjpPCLSXdMsG8CDttV/V0XIsQsNlQkeV00kanNyZ8tXwg0t5
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(136003)(376002)(346002)(366004)(39860400002)(7696005)(76116006)(54906003)(8676002)(66946007)(9686003)(2906002)(55016002)(5660300002)(66476007)(66556008)(64756008)(66446008)(6916009)(52536014)(478600001)(316002)(4326008)(71200400001)(33656002)(86362001)(26005)(53546011)(6506007)(83380400001)(8936002)(186003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 5DrR+yh7cAM5+htNQP7hHtb0yCOE1IIMM7sR8GrRQh27lJi6yzT9JCLkAJ2u5kttdGapUeT28BGAxQe2u76Peb4gvQCOMq/wHO3frhwe1PvbQIzbH0UHokFurhJdmsPc8VqeA1P6q0mVl1ETyYIO2utKrf5v8vm64mwcJMWbVPdoMhDP/Bo1KHsQhapfgbwM2X3E3gLVkHT/yd3kg4dubABanh23B7OB207Zv7DCDvcmVZwVsheyjE/QBwwjSI2tXOd2Gjq+Y6p22rhDwrNWEaya3MkKCWsD6kuS9qEM0az6MKCEWDyaKVxrS6oith2ZYQh8/iZk4/RlGyZlyTyzkFn+OXEZ5A0H/kEkaVv+r3gDbPYXBhEONsuXpLHJW8sdvikTNEYXMeIHMy8d443izqhzH36g08F47Q0dkJ+jHU+Sa4QH6zTHUwzkqxvvU0+P76BUeKHUa9QK+RjinAhDbxNsRFooSGo78vfS67QLeJg=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR08MB2826
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(376002)(346002)(136003)(396003)(46966005)(7696005)(26005)(33656002)(2906002)(336012)(36906005)(81166007)(52536014)(82310400002)(6506007)(54906003)(47076004)(356005)(53546011)(83380400001)(70586007)(8936002)(6862004)(55016002)(82740400003)(478600001)(5660300002)(4326008)(186003)(9686003)(86362001)(316002)(8676002)(70206006);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 382b71ed-a7c8-4560-ebd6-08d81e6df148
X-Forefront-PRVS: 0452022BE1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CLX3KjRVMn5jEZUYJ0A6eGquAFAwPmTcL68b/qKBmXBQ42w5cE4vNw1dor7L+kLCSe0tre5wLs6s6TFB0hXT9YG526HflSGKdE1RfG3VsJ8Z+gohJUmtjK199fMHY33MtbaohFy7raY3YcCscX5GYf5S/BB4rNccv+z70bEF/7dvQ8MVgvzDrzFeP+X8X6o47CG3DxVEPPmJGgQkm1nsM27+PVl5Le/4M5NVPTnvGLwHv/mQ23OETcbKqRceNy7dqeicWr8Kthh6KEa4z444M44TPWrOlIPLG37lS6ZxRqM1IzgPVJ5u7a8uve/vikrSj41q4nTI9kLGMOYq4/yj5EX0mgBPJpSUll8u1SHgvAIl0RPE/um/J02Z9RCiA68ABl6dlgvRnm/yO5ePH6O5fg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2020 09:54:49.0125 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 25255a09-7c5c-42a5-c806-08d81e6df574
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3463
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.55 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1jqw9U-00804o-UI
Subject: Re: [V9fs-developer] [PATCH v2] 9p: retrieve fid from file when
 file instance exist.
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
> Sent: Thursday, July 2, 2020 3:56 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; v9fs-
> developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; Steve
> Capper <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>
> Subject: Re: [PATCH v2] 9p: retrieve fid from file when file instance exist.
>
> Jianyong Wu wrote on Thu, Jul 02, 2020:
> > Yeah, should check fid before "v9fs_fid_lookup", how about
> >
> > if (iattr->ia_valid & ATTR_FILE) {
> >                 fid = iattr->ia_file->private_data;
> >                 WARN_ON(!fid);
> >  }
> > If (!fid)
> > fid = v9fs_fid_lookup(dentry);
>
> Yes, that would be fine.
>
Ok, I will apply this change both in vfs_inode.c and vfs_inode_dotl.c next version.

Thanks
Jianyong

> --
> Dominique
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
