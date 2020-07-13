Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E87A821D2C0
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 11:27:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1juukC-0002Im-Oq; Mon, 13 Jul 2020 09:27:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1juukB-0002If-Bo
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 09:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ktqyTXTQ8slB1nPqGv58oq5YK53EK1LDit7WFJXoLGE=; b=Qi4kgF4W+QkKO+DGlTH2lzShSM
 BxkkLWv/U9eyP/kmUPh0DwbWTuW7C0nOqD0m/cISjIuVp8njbBAZFj/U4IFxz9ylnhURlRGAt+3vo
 KPdSP1SXZAzoz2l60fPGScA7eacML83E5D3kjpR5y6k8Zflig83EOI20lNax1a7AKixQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ktqyTXTQ8slB1nPqGv58oq5YK53EK1LDit7WFJXoLGE=; b=KIvLxtnN6gPE8ic4zK1dwLE5L9
 RIiD0WUCsqmszYo24MGzpMnCjphMMYj+NNmrS9EeS3jWvrj4NvqnGGslkagaCHx4xQTONvPzJsy0S
 G+kWxsIE+nagqTP5oxORkePiI5mdVmqtKBiOuQ/WnZcytSE34cX6RpkPFY+IiP43z9wU=;
Received: from mail-eopbgr80083.outbound.protection.outlook.com ([40.107.8.83]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1juuk8-001Gll-78
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 09:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktqyTXTQ8slB1nPqGv58oq5YK53EK1LDit7WFJXoLGE=;
 b=eXOPx3UxjXiGI/wV4JOHl1HP9V1l743uvUSJO5s5Ca9J6yyxff5iKsXgUzj8yO9cryIzfyD62ft6KdemFlNEkzaMphAF2pA0fnnLgO9OIJPFavOBWh7q3uteXKX6OkoE3Q9uO1Vhd1aoyCvIqnHEa/5vUbAHCHtgUJFl0Z+nbaY=
Received: from DB8PR09CA0001.eurprd09.prod.outlook.com (2603:10a6:10:a0::14)
 by AM0PR08MB3073.eurprd08.prod.outlook.com (2603:10a6:208:65::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Mon, 13 Jul
 2020 09:27:15 +0000
Received: from DB5EUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:a0:cafe::77) by DB8PR09CA0001.outlook.office365.com
 (2603:10a6:10:a0::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20 via Frontend
 Transport; Mon, 13 Jul 2020 09:27:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT045.mail.protection.outlook.com (10.152.21.164) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.21 via Frontend Transport; Mon, 13 Jul 2020 09:27:15 +0000
Received: ("Tessian outbound 8f45de5545d6:v62");
 Mon, 13 Jul 2020 09:27:15 +0000
X-CR-MTA-TID: 64aa7808
Received: from ca9a6465f8ba.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 BE0D2469-719F-4932-8D30-0C64809EFF17.1; 
 Mon, 13 Jul 2020 09:27:10 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ca9a6465f8ba.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 13 Jul 2020 09:27:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kHtsIA53CcbFp6YvtXt7Ier3uynoQuljlFdA6m/tnDWZ3c9ZZJk/EP0pw29cXRvM50KkxWnriZOHjgsowzCYjk8GFBMVkOfkxHBmXrKG5HgF5xWutOskmjlp/MxuNyo0ZYq9LQwMn9pocaUl4cWfzGZ0NUIPDFXm67qcMMxctDOb4NE2Y2H+zEDJWi7GLdPpWedFYraqCI2++0r5zHLAKxt/JiHPYn6iNPGd8N0w3B10YP6iJ2cgvU9ZaRRmjw8726PF4AAQvAJZKRKs+DqYm0flZ/GKYpb6OeRbyRd7WoCNFG+gEovaURuNkHrCB3Oq30HELGhsK47C8DRKUhi9KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktqyTXTQ8slB1nPqGv58oq5YK53EK1LDit7WFJXoLGE=;
 b=j+96OX3TJCb5DtvQrslf9mH/1otpqH3+h52DRL6GkfIDLN3GRyW5k4q5xqr3acAd/jVhvZ59FkMuLO1y0dwhlmdHqs0fZl0PNi/iuGnh3+c2plPmJ499fmXxlJaIlT0T69cJTn1BLrNWqiK9LeAnIDF2DJ285C5pc1lNfbNe54gU+xEpLeJtZDz2UYL5UFWpGkRVZIbgipEyhL+1k3gXK2j4YH8BzabnTVEdLYNNODYyTRRKwtdU/s3kBjtmhGWd058bIDX0z38xsxmXSvtuWIYchnr3F4dfRToA6Zkdf+9qHjcLc+G34QUJSJHAyXVB/KyPCwCJWYw904I/fV7Sfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktqyTXTQ8slB1nPqGv58oq5YK53EK1LDit7WFJXoLGE=;
 b=eXOPx3UxjXiGI/wV4JOHl1HP9V1l743uvUSJO5s5Ca9J6yyxff5iKsXgUzj8yO9cryIzfyD62ft6KdemFlNEkzaMphAF2pA0fnnLgO9OIJPFavOBWh7q3uteXKX6OkoE3Q9uO1Vhd1aoyCvIqnHEa/5vUbAHCHtgUJFl0Z+nbaY=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2154.eurprd08.prod.outlook.com (2603:10a6:3:c1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Mon, 13 Jul
 2020 09:27:08 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a%6]) with mapi id 15.20.3174.025; Mon, 13 Jul 2020
 09:27:07 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH v4] 9p: retrieve fid from file when file instance exist.
Thread-Index: AQHWVqNFh0jRTickF0iry5ExQ23IOakAp7MAgASadZA=
Date: Mon, 13 Jul 2020 09:27:07 +0000
Message-ID: <HE1PR0802MB2555EB19FCA15EB3B14F50BAF4600@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200710101548.10108-1-jianyong.wu@arm.com>
 <20200710110850.GB17924@nautica>
In-Reply-To: <20200710110850.GB17924@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: ed950a98-65a4-48ea-b8a2-67be0068ed30.1
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 59d0f02c-1352-4372-af51-08d8270eee4c
x-ms-traffictypediagnostic: HE1PR0802MB2154:|AM0PR08MB3073:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB30739E4ABBB5C750963C6B3DF4600@AM0PR08MB3073.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: sWixdSRwC2vlRWP3n9KXJ36OC0BupltgW56xYa7moOqg4IuMyzEXUfUt7gygJqib7LJLBb7QHPoKsDH0yf79SMPDGC9Y97050kRZP6H292Biip4duPu5QxN5jyXpKjhXS7/qRwo4/Nckb3FejetdsooRcL4Wb9dOvKiAkHXQOcVrtmwp/A25uzG3OGcuHDFQmQegUaTepNaUF5lJRWWkLwGbT6l2Kt3tXr5GEIJ7vmtjFyD41PxCh5Zzq0kXov+oCBebE/G7axCzFO8FLhgXAgKx1Y4aFaYYWWJKvS7kI2Vyt7QKewZsiSVvWUBe/1rPQqmOF3Q76cCgPsZSzA9bEA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(396003)(346002)(136003)(376002)(366004)(8936002)(54906003)(66556008)(66946007)(66476007)(66446008)(64756008)(86362001)(316002)(5660300002)(8676002)(6916009)(83380400001)(55016002)(71200400001)(9686003)(76116006)(26005)(7696005)(33656002)(6506007)(2906002)(52536014)(4326008)(53546011)(478600001)(186003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 7vVg3S1GIjzDIkpmSs0ABzDsCg+byRHRkYjL1rwXgteixAVIi0Wz4fBx+6WgLrhxo92sF+wYidYJXjQvQU87ZKHp2SPJKRHhqp4i2UM28uvJ5oPNyKi1hlJBHJ3KilaOei87P2zzsbqxJLhfay0fZ7pli3pE5ZRvUfjHwJSBzjimGas24PIRmvp6RAehzZ7zum2yOhz5axVOc/mRPQwABgm+WNlRwr6Yv2bmwgCV59J30J/elC+W0upVD1LK4dBEIv38YNSOuV71xz+1fCvavUBD5HnRwDlyWL234PKfDF0O7Qf4cNDoJYhCm7CTpjoNlsvnjpLrkpVR4pBfUDub2/FTQDrf7gN/47YAqxrh6qVypqfcNWMRCao7N23nTHQ20jXI7QMF9cyV9xpiL15YtUAd1Gp+gXeG0VZcUzMQpcuCHiKt+PjujHZmF5J0LH3fNaaA5EZ9cnI5ah2Zq6H3gzk8koSgUdbBjcihqd4ceGs=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2154
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT045.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(136003)(39860400002)(396003)(376002)(46966005)(81166007)(54906003)(9686003)(47076004)(8936002)(316002)(5660300002)(7696005)(336012)(186003)(33656002)(356005)(6862004)(26005)(2906002)(53546011)(6506007)(83380400001)(82310400002)(52536014)(82740400003)(70206006)(86362001)(55016002)(4326008)(8676002)(478600001)(70586007);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6c653939-e617-41d4-a0c6-08d8270ee9e0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ihlU2DurIUOy/rVnN3/ettiwnrr851ryu+s1ptmdS7qNy1U+U6hf7wr76bFsT+U0yyxixf89I9Kb4IY2a6JbF37WEn1G5xpdOMsHlKs/gKEnwPWooRVzUV+JCPuHwQYpehKL6WwfBy3gzcQdkJDf45eFAsd9de8tB30VNFXFrBkqDp67IdW06cXc6WgunY3C2C4KkOUnruRhv/U2Y/qZBwEEU/J3dlJHD/kGDbmV5M28BhrogkUeIlLYBOpkUB/Lto0eV1Iszjuj+2JpRtzrIGT1POFvBX4ybmz1mJOQ9OcDgJIPjmzvK2iS2TKy9h9aEpRDYDtf4DS2q+w3oQxiiK3Qv5X/GjFejISV2zP/VZTszH32YihZcsXf4eN1LEt6gC0j4NtXwYwrjFZOMcSMXQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2020 09:27:15.3883 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 59d0f02c-1352-4372-af51-08d8270eee4c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT045.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3073
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.83 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1juuk8-001Gll-78
Subject: Re: [V9fs-developer] [PATCH v4] 9p: retrieve fid from file when
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



> -----Original Message-----
> From: Dominique Martinet <asmadeus@codewreck.org>
> Sent: Friday, July 10, 2020 7:09 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; lucho@ionkov.net; v9fs-
> developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; Steve
> Capper <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>
> Subject: Re: [PATCH v4] 9p: retrieve fid from file when file instance exist.
>
> Jianyong Wu wrote on Fri, Jul 10, 2020:
> > In the current setattr implementation in 9p, fid is always retrieved
> > from dentry no matter file instance exists or not. If so, there may be
> > some info related to opened file instance dropped. So it's better to
> > retrieve fid from file instance when it is passed to setattr.
> >
> > for example:
> > fd=open("tmp", O_RDWR);
> > ftruncate(fd, 10);
> >
> > The file context related with the fd will be lost as fid is always
> > retrieved from dentry, then the backend can't get the info of file
> > context. It is against the original intention of user and may lead to
> > bug.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
>
>
> For next time, you can add arbitrary comments (e.g. describe briefly
> differences from previous versions) after the --- line.
>
> For others, this inits fid to NULL in both functions; thanks for picking it up I'll
> refresh the patch.
>
Ok,

Thanks
Jianyong
> --
> Dominique
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
