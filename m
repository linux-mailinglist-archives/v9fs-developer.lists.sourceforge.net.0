Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B27192688F7
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 12:07:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHlOC-00047J-0h; Mon, 14 Sep 2020 10:07:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1kHlOA-000475-Sp
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 10:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aJxkN1EirZvQd8NO8mdOn32GkSfrccGUzllgB/icNvc=; b=V9ahpJWerx0LIwC/WqCFZO7gXQ
 cN4C8RD1PZrNhJ9M978TGcoGU/Hr2orpXhHQCoxiOE2WFpCbfu4s4nzpyiSHdGi3iDyNSle6Y1i3C
 8lC+7I1HKck381vanNIySMcefr5voivgUGu4VOgtt1/9KJOppOPK3BMlPwMvQXgnhiiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aJxkN1EirZvQd8NO8mdOn32GkSfrccGUzllgB/icNvc=; b=c6m5rE1NZ4WyI6h/+c62+gXNYP
 XN5HD6HA9LEsvqph4N4rXQflo/Thq5crtpzgw9X+e7PG5t9CmbVXWcxxYIDs0RXanY+QEc4Q32dRM
 XNtoTSGrm7L+wt9rAHnyEiDyuhCv4wJ1I86Il3F6QZQpfvsWh+WsmQdCyL51PNedLirg=;
Received: from mail-vi1eur05on2073.outbound.protection.outlook.com
 ([40.107.21.73] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHlNv-008FqP-0M
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 10:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJxkN1EirZvQd8NO8mdOn32GkSfrccGUzllgB/icNvc=;
 b=7bUNFF1bIDEEWyRxXcb7Kg0DZSMZLTC70bCDBADFwB2/EAU+NWgxUkz8Y4NKuWZRozAYfI9I9myT+rP7bTSuAwgR3ZiCSsVtMexckJIBEo1Ol58jXPs83bQwcXQH47c+jn+/HJ1f50XlDbpfgrfy4gLqYMyJr5aJsBpPSREA7ys=
Received: from AM5PR04CA0017.eurprd04.prod.outlook.com (2603:10a6:206:1::30)
 by HE1PR0801MB2060.eurprd08.prod.outlook.com (2603:10a6:3:51::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Mon, 14 Sep
 2020 07:32:49 +0000
Received: from AM5EUR03FT011.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:206:1:cafe::5f) by AM5PR04CA0017.outlook.office365.com
 (2603:10a6:206:1::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend
 Transport; Mon, 14 Sep 2020 07:32:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT011.mail.protection.outlook.com (10.152.16.152) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.16 via Frontend Transport; Mon, 14 Sep 2020 07:32:49 +0000
Received: ("Tessian outbound 7161e0c2a082:v64");
 Mon, 14 Sep 2020 07:32:49 +0000
X-CR-MTA-TID: 64aa7808
Received: from edd6cf40f2a7.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 BA36377A-7A9D-4471-966C-4DE6F28E5218.1; 
 Mon, 14 Sep 2020 07:32:44 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id edd6cf40f2a7.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 14 Sep 2020 07:32:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jXfVXf2r+VPgPFCl3ZRfIVs71I74oBl7FbelX63/xZ/wwL9CcMIhlYSRGyipW2nFzE52TrOJc1svNwjoMVmqB6scYolcJmO+rxVzspZn3Z/JjKLiGglw6GzqjVRm8pe9kBBZW1zs697FOzkxzfm1NqtrBLPLNCN+Bg7GrdC0Jhur+ytl1MukUf8go9iWpy6Xi9HnS17fE9jdR97SGZmulbfQ/U8XdHDm/rE5CyWw1xGVqYf+QeYkcjT6ZfemMI30g9MH5RmcSALt0ny4v770qEUzSNgxcVC+YFo7LWI8RXzs8SB/2haKWvZPwEnh/ezW3b9QT5Gx0vG0t2XLLGG2Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJxkN1EirZvQd8NO8mdOn32GkSfrccGUzllgB/icNvc=;
 b=Gtb+JqJU/dKYqDapsVelczwDjeJH7SV2W6zEPrq1yyAEtyNq3iV+dcsJ1HsqO+MU85vSrXaDIYsLsBi+f1bCB/Cw0Z/2I1NR3HqhVekIgJBGA9snO7GaPeCvOpC3Z2whNtMuLG8ko/VpqehtxiqZs1QI6CdNT6Zy99jXCN2lVUE22oj8D4RYT6ImrYu/9R9Gl37lhGaIdS+Aog/zYtk1VwPaJKRNHZ9qY/EuON53Z/Wxt4sqZ+VOOoyOAFdKd0c7tt/lbbU4cdUQkuIgpZlIivrm5ECfuzyWQF5+Bo+04ynwsWykvboHhL7MWtNWZIM4sRx8lxOLXwLwS0VRy62eGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJxkN1EirZvQd8NO8mdOn32GkSfrccGUzllgB/icNvc=;
 b=7bUNFF1bIDEEWyRxXcb7Kg0DZSMZLTC70bCDBADFwB2/EAU+NWgxUkz8Y4NKuWZRozAYfI9I9myT+rP7bTSuAwgR3ZiCSsVtMexckJIBEo1Ol58jXPs83bQwcXQH47c+jn+/HJ1f50XlDbpfgrfy4gLqYMyJr5aJsBpPSREA7ys=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0801MB1980.eurprd08.prod.outlook.com (2603:10a6:3:4f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Mon, 14 Sep
 2020 07:32:41 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::74f7:5759:4e9e:6e00%5]) with mapi id 15.20.3370.019; Mon, 14 Sep 2020
 07:32:41 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Thread-Topic: [PATCH RFC 4/4] 9p: fix race issue in fid contention.
Thread-Index: AQHWikiH87ghgbrgBUG0aFcskfSv7KlnosKAgAAPCGA=
Date: Mon, 14 Sep 2020 07:32:41 +0000
Message-ID: <HE1PR0802MB25555E7AAFA66DA3FE025D0AF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914033754.29188-5-jianyong.wu@arm.com> <20200914055535.GA30672@nautica>
In-Reply-To: <20200914055535.GA30672@nautica>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 0FFA0596225AE3469DB2D82437014AFA.0
x-checkrecipientchecked: true
Authentication-Results-Original: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
x-originating-ip: [203.126.0.112]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fe349ffa-08d7-4245-89ab-08d8588061de
x-ms-traffictypediagnostic: HE1PR0801MB1980:|HE1PR0801MB2060:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0801MB206073781787FB2225BF8A43F4230@HE1PR0801MB2060.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Jb4MRRkUjjHo5fqEp1SkU/bBq+rMHNVHSwZmEEC4iXxUOANQIjjo6X/Y6W7jvzR1jw+1nRo09ap2a3dhcRmBb+zu1JKiqGVPlz4Ue7YSODoAF4V4LMJb4YkidoxAJ3F2SL4pDJG7+yizVSr074NuZfbBwK0McoFR3s0RsgwtVdQY03T8yP8Zmf0EtAnX5TXAUT5UTz7YmAKtyeoZkibLeQRWvB0IHg0nKG0DPPJSZhg8CBErspjW91xs6Z95AkHafs5euNQGEmK3orMhFU1sx1qiAK01a66qKIMRDyEgssIP81HPdJa971QEtVI4yNYQGPXl4Eyg3plBdbXpWIvzwZVWTpwFtgU0UlArkd5OB0Zo31c1QxKJSBpIKuuxezKSAMZS2IkpLTRdwVanJZwAmw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(376002)(346002)(39860400002)(366004)(66476007)(66556008)(64756008)(66446008)(26005)(5660300002)(7696005)(316002)(186003)(83380400001)(6506007)(53546011)(55016002)(8936002)(8676002)(478600001)(33656002)(6916009)(9686003)(86362001)(2906002)(4326008)(52536014)(54906003)(76116006)(966005)(71200400001)(66946007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: CMLYgc9+PPXMVvhLXQ6wiXcUbonfDg/BhVeWjlfvSbaKTcLct2GjrwEZcj5+bSCmq2Pxfz+oTt0+riGYT2wpS275FmCiBJaKIeXwt5HDMicx65nZCUNVEy33sYvNhEQmZgOKLFgPw4+/n5xY5mRKpQlHIzZJO2VWm+FE+r1nOfJ/Zn3duYNzheBFYDEZJRHdUtRwGChb0uKAMfzqQzeOAuhTWkhOrVQLkaoDrZU8DyzIYQaPc8UI0CtSdyjP1Ijlk6hlIw7bdJmKCB8jfskZ+AAWDG7jExOmryfJdgiFysd1gCn/5lQ7V1SeAk8Zo03o9PxHf/Mxl7mLLmdo3QhiE1hmJLV85X8oY9mub9MzlLUY5GkVmo7r3+rkjPRIH1TKUwZiL+zR/LvfnX3+SEJE5OGEuS4aQdfK4QjU6Fp+P0rkNqOOO5oToTT7CC+yfr1dHeK6zcu+bAVaznGWri9ME26IvpOCK3GhmNedwHriZt45KvCAlhnmyOX0B3euMvv64EuZyRRGcfdeNof8heBu03iKPohqfCgfK8QmWs+njsgXPzzo4wlfAp3iDj8zyLE7AjOKkMgxOeioPRPZi+03W39kuwyas+MrG/boFUr63+lRI/p7jaGY/nqDTtqLWK823pBkDFRePlTZb1RujYl5JA==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1980
Original-Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none; codewreck.org;
 dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT011.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 82b628c5-9579-4f44-48d7-08d858805d5e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0NxImXcojibONebwsWz0/UPNsgD/e/C04gqTUPREyAnWO9tOJNW6ElalVT546ZLNz5oXO+iqD6+hJ1Vfw9kAItcLkYCSXMuPfbpDrOeGjxhd23scRiQeT+9m54EEsJX9jzWhQM2nVJoLft8vCOrYYSF+ZEb6bz970qwZiEBvhlsHwqoWO/BYg0hrNLdERSpJC7QWt3e9WufeVz0SL54bCN0yTHh4YoSFxF93LzbQNAAL1hIGGjphsv2cRX+87PATvFxf233BrH125jDh8g6rLy+djPxgG3X+f7SA0hEewgHhoVvXa4hNVGwM6msxCDxAAplStsUEgeZi/XXYK+cbM3ne852EjtyhAt+CBEfi08/fOkRtiebEMpbHB6zNHulQUq9Y9UUA0HuwDPtnBc9J6AVGAgxbTgO7SI/wxfKBh+MAP65/mOXPspK+F8W82SJP6abfNXNcRO19aWerPTGBT6ZHfShwt+eunDPZKvE8Tqw=
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(39860400002)(396003)(46966005)(33656002)(4326008)(81166007)(356005)(26005)(6862004)(36906005)(478600001)(316002)(82310400003)(52536014)(5660300002)(47076004)(336012)(8676002)(82740400003)(2906002)(7696005)(70586007)(70206006)(54906003)(186003)(9686003)(53546011)(55016002)(86362001)(83380400001)(8936002)(6506007)(966005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2020 07:32:49.3357 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe349ffa-08d7-4245-89ab-08d8588061de
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT011.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2060
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ionkov.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 1.0 FORGED_SPF_HELO        No description available.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kHlNv-008FqP-0M
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
 "ericvh@gmail.com" <ericvh@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 Greg Kurz <gkurz@linux.vnet.ibm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgRG9taW5pcXVlLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IERv
bWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29kZXdyZWNrLm9yZz4NCj4gU2VudDogTW9uZGF5
LCBTZXB0ZW1iZXIgMTQsIDIwMjAgMTo1NiBQTQ0KPiBUbzogSmlhbnlvbmcgV3UgPEppYW55b25n
Lld1QGFybS5jb20+DQo+IENjOiBlcmljdmhAZ21haWwuY29tOyBsdWNob0Bpb25rb3YubmV0OyB2
OWZzLQ0KPiBkZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOyBKdXN0aW4gSGUNCj4gPEp1c3Rpbi5IZUBhcm0uY29tPjsgR3JlZyBLdXJ6
IDxna3VyekBsaW51eC52bmV0LmlibS5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggUkZDIDQv
NF0gOXA6IGZpeCByYWNlIGlzc3VlIGluIGZpZCBjb250ZW50aW9uLg0KPg0KPg0KPiBUaGFua3Mg
Zm9yIGhhdmluZyBhIGxvb2sgYSB0aGlzIQ0KPg0KPiBKaWFueW9uZyBXdSB3cm90ZSBvbiBNb24s
IFNlcCAxNCwgMjAyMDoNCj4gPiBFcmljJ3MgYW5kIEdyZWcncyBwYXRjaCBvZmZlciBhIG1lY2hh
bmlzbSB0byBmaXggb3Blbi11bmxpbmstZipzeXNjYWxsDQo+ID4gYnVnIGluIDlwLiBCdXQgdGhl
cmUgaXMgcmFjZSBpc3N1ZSBpbiBmaWQgY29tdGVudGlvbi4NCj4gPiBBcyBHcmVnJ3MgcGF0Y2gg
c3RvcmVzIGFsbCBvZiBmaWRzIGZyb20gb3BlbmVkIGZpbGVzIGludG8gYWNjb3JkaW5nDQo+ID4g
aW5vZGUsIHNvIGFsbCB0aGUgbG9va3VwIGZpZCBvcHMgY2FuIHJldHJpZXZlIGZpZCBmcm9tIGlu
b2RlDQo+ID4gcHJlZmVyZW50aWFsbHkuIEJ1dCB0aGVyZSBpcyBubyBtZWNoYW5pc20gdG8gaGFu
ZGxlIHRoZSBmaWQgY29tdGVudGlvbg0KPiA+IGlzc3VlLiBGb3IgZXhhbXBsZSwgdGhlcmUgYXJl
IHR3byB0aHJlYWRzIGdldCB0aGUgc2FtZSBmaWQgaW4gdGhlIHNhbWUNCj4gPiB0aW1lIGFuZCBv
bmUgb2YgdGhlbSBjbHVuayB0aGUgZmlkIGJlZm9yZSB0aGUgb3RoZXIgdGhyZWFkIHJlYWR5IHRv
DQo+ID4gZGlzY2FyZCB0aGUgZmlkLiBJbiB0aGlzIHNjZW5hcmlvLCBpdCB3aWxsIGxlYWQgdG8g
c29tZSBmYXRhbCBwcm9ibGVtcywgZXZlbg0KPiBrZXJuZWwgY29yZSBkdW1wLg0KPg0KPiBBaCwg
c28gdGhhdCdzIHdoYXQgdGhlIHByb2JsZW0gd2FzLiBHb29kIGpvYiBmaW5kaW5nIHRoZSBwcm9i
bGVtIQ0KPg0KVGhhbmtzISBWZXJ5IHBsZWFzdXJlLg0KPg0KPiA+IEkgaW50cm9kdWNlIGEgbWVj
aGFuaXNtIHRvIGZpeCB0aGlzIHJhY2UgaXNzdWUuIEEgY291bnRlciBmaWVsZA0KPiA+IGludHJv
ZHVjZWQgaW50byBwOV9maWQgc3RydWN0IHRvIHN0b3JlIHRoZSByZWZlcmVuY2UgY291bnRlciB0
byB0aGUNCj4gPiBmaWQuIFdoZW4gYSBmaWQgaXMgYWxsb2NhdGVkIGZyb20gdGhlIGlub2RlLCB0
aGUgY291bnRlciB3aWxsDQo+ID4gaW5jcmVhc2UsIGFuZCB3aWxsIGRlY3JlYXNlIGF0IHRoZSBl
bmQgb2YgaXRzIG9jY3VwYXRpb24uIEl0IGlzDQo+ID4gZ3VhcmFudGVlZCB0aGF0IHRoZSBmaWQg
d29uJ3QgYmUgY2x1bmtlZCBiZWZvcmUgdGhlIHJlZmVyZW5jZSBjb3VudGVyDQo+ID4gZ28gZG93
biB0byAwLCB0aGVuIHdlIGNhbiBhdm9pZCB0aGUgY2x1bmtlZCBmaWQgdG8gYmUgdXNlZC4NCj4g
PiBBcyB0aGVyZSBpcyBubyBuZWVkIHRvIHJldHJpZXZlIGZpZCBmcm9tIGlub2RlIGluIGFsbCBj
b25kaXRpb25zLCBhDQo+ID4gZW51bSB2YWx1ZSBkZW5vdGVzIHRoZSBzb3VyY2Ugb2YgdGhlIGZp
ZCBpcyBpbnRyb2R1Y2VkIHRvIDlwX2ZpZA0KPiA+IGVpdGhlci4gU28gd2UgY2FuIG9ubHkgaGFu
ZGxlIHRoZSByZWZlcmVuY2UgY291bnRlciBhcyB0byB0aGUgZmlkIG9idGFpbmVkDQo+IGZyb20g
aW5vZGUuDQo+DQo+IElmIHRoZXJlIGlzIG5vIGNvbnRlbnRpb24gdGhlbiBhbiBhbHdheXMtb25l
IHJlZmNvdW50IGFuZCBhbiBlbnVtIGFyZSB0aGUNCj4gc2FtZSB0aGluZy4NCj4gSSdkIHJhdGhl
ciBub3QgbWFrZSBhIGRpZmZlcmVuY2UgYnV0IG1ha2UgaXQgYSBmdWxsLWZsZWRnZWQgcmVmY291
bnQgdGhpbmc7IHRoZQ0KPiBlbnVtIGluIHRoZSBjb2RlIGludHJvZHVjZXMgcXVpdGUgYSBiaXQg
b2YgY29kZSBjaHVybiB0aGF0IGRvZXNuJ3Qgc3RyaWtlIG1lDQo+IGFzIHVzZWZ1bCAoYW5kIEkg
ZG9uJ3QgbGlrZSBpbnQgYXJndW1lbnRzIGxpa2UgdGhpcywgYnV0IGlmIHdlIGNhbiBqdXN0IGRv
IGF3YXkNCj4gd2l0aCBpdCB0aGVyZSdzIG5vIG5lZWQgdG8gYXJndWUgYWJvdXQgdGhhdCkNCj4N
Cj4gTm90IGhhdmluZyBleGNlcHRpb25zIGZvciB0aGF0IHdpbGwgYWxzbyBtYWtlIHRoZSBjb2Rl
IGFyb3VuZA0KPiBmaWRfYXRvbWljX2RlYyBtdWNoIHNpbXBsZXI6IGp1c3QgaGF2ZSBjbHVuayBk
byBhbiBhdG9taWMgZGVjIGFuZCBvbmx5IGRvDQo+IHRoZSBhY3R1YWwgY2x1bmsgaWYgdGhhdCBo
aXQgemVybywgYW5kIHdlIHNob3VsZCBiZSBhYmxlIHRvIGdldCByaWQgb2YgdGhhdA0KPiBoZWxw
ZXI/DQo+DQpTb3JyeSwgSSB0aGluayBhbHdheXMtb25lIHJlZmNvdW50ICB3b24ndCB3b3JrIGF0
IHRoaXMgcG9pbnQsIGFzIHRoZSBmaWQgd2lsbCBiZSBjbHVua2VkIG9ubHkgYnkNCkZpbGUgY29u
dGV4dCBpdHNlbGYgbm90IHRoZSBldmVyeSBjb25zdW1lciBvZiBldmVyeSBmaWQuIFdlIGNhbid0
IGRlY3JlYXNlIHRoZSByZWZjb3VudGVyIGF0IGp1c3Qgb25lDQpzdGF0aWMgcG9pbnQuIEFtIEkg
d3Jvbmc/DQpUaGlzIGVudW0gdmFsdWUgaXMgbm90IGZ1bmN0aW9uYWxseSBuZWNlc3NhcnksIGJ1
dCBJIHRoaW5rIGl0IGNhbiByZWR1Y2UgdGhlIGNvbnRlbnRpb24gb2YgZmlkLCBhcyB0aGVyZSBh
cmUNCnJlYWxseSBsb3RzIG9mIHNjZW5hcmlvcyB0aGF0IGZpZCBmcm9tIGlub2RlIGlzIG5vdCBu
ZWNlc3NhcnkuDQoNCj4NCj4gVGltaW5nIHdpc2UgaXQncyBhIGJpdCBhd2t3YXJkIGJ1dCBJIGp1
c3QgZHVnIG91dCB0aGUgYXN5bmMgY2x1bmsgbWVjaGFuaXNtIEkNCj4gd3JvdGUgdHdvIHllYXJz
IGFnbywgdGhhdCB3aWxsIGNvbmZsaWN0IHdpdGggdGhpcyBwYXRjaCBidXQgbWlnaHQgYWxzbyBo
ZWxwIGEgYml0DQo+IEkgZ3Vlc3M/DQo+IEkgc2hvdWxkIHByb2JhYmx5IGhhdmUgcmVwb3N0ZWQg
dGhlbS4uLg0KPg0KSW50ZXJlc3RpbmchDQoNCj4NCj4gU28gdG8gcmVjYXA6DQo+ICAtIExldCdz
IHRyeSBzb21lIG1vcmUgc3RyYWlnaHQtZm9yd2FyZCByZWZjb3VudGluZzogc2V0IHRvIDEgb24g
YWxsb2MsDQo+IGluY3JlbWVudCB3aGVuIGl0J3MgZm91bmQgaW4gZmlkLmMsIGRlY3JlbWVudCBp
biBjbHVuayBhbmQgb25seSBzZW5kIHRoZQ0KPiBhY3R1YWwgY2x1bmsgaWYgY291bnRlciBoaXQg
MA0KPg0KaXQgbWF5IG5vdCB3b3JrLCBJIHRoaW5rLg0KDQo+ICAtIElkZWFsbHkgYmFzZSB5b3Vy
c2VsZiBvZiBteSA5cC10ZXN0IGJyYW5jaCB0byBoYXZlIGFzeW5jIGNsdW5rOg0KPiBodHRwczov
L2dpdGh1Yi5jb20vbWFydGluZXRkL2xpbnV4L2NvbW1pdHMvOXAtdGVzdA0KPiBJJ3ZlIGJlZW4g
cHJvbWlzaW5nIHRvIHB1c2ggaXQgdG8gbmV4dCB0aGlzIHdlZWvihKIgZm9yIGEgY291cGxlIG9m
IHdlZWtzIGJ1dCBpZg0KPiBzb21ldGhpbmcgaXMgYmFzZWQgb24gaXQgSSB3b24ndCBiZSBhYmxl
IHRvIGRlbGF5IHRoaXMgbXVjaCBsb25nZXIsIGl0J2xsIGdldA0KPiBwdXNoZWQgdG8gNS4xMCBj
eWNsZSBhbnl3YXkuDQo+IChJJ2xsIHJlc2VuZCB0aGUgcGF0Y2hlcyB0byBiZSBjbGVhbikNCj4N
Cj4gIC0gKHBsZWFzZSwgbm8gcG9sbGluZyAxMG1zIHRoZW4gbGVha2luZyBzb21ldGhpbmchKQ0K
Pg0KWWVhaCwgaXQgd2lsbCBsZWFkIGZpZCB0byBsZWFrIHNvbWV0aW1lcywgdW5mb3J0dW5hdGVs
eSwgIEknbSBhZnJhaWQgdGhhdCB0aGUgQ1BVIG1heSBiZSBzdHVjayBoZXJlLiAgd2UNCm11c3Qg
d2FpdCBoZXJlICh2OWZzX2Rpcl9yZWxlYXNlKSBmb3IgdGhlIGNvdW50ZXIgZG93biB0byAwLCBh
cyB0aGlzIGlzIHRoZSBvbmx5IHBsYWNlIHRvIHJlbGVhc2UgdGhlIGZpZC4NClRoYXQncyB0aGUg
cHJvYmxlbS4NCg0KVGhhbmtzDQpKaWFueW9uZw0KPiBUaGFua3MsDQo+IC0tDQo+IERvbWluaXF1
ZQ0KSU1QT1JUQU5UIE5PVElDRTogVGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwgYW5kIGFueSBh
dHRhY2htZW50cyBhcmUgY29uZmlkZW50aWFsIGFuZCBtYXkgYWxzbyBiZSBwcml2aWxlZ2VkLiBJ
ZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2Ugbm90aWZ5IHRoZSBz
ZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRvIG5vdCBkaXNjbG9zZSB0aGUgY29udGVudHMgdG8gYW55
IG90aGVyIHBlcnNvbiwgdXNlIGl0IGZvciBhbnkgcHVycG9zZSwgb3Igc3RvcmUgb3IgY29weSB0
aGUgaW5mb3JtYXRpb24gaW4gYW55IG1lZGl1bS4gVGhhbmsgeW91Lg0KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
