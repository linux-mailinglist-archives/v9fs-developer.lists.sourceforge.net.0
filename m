Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FFA2255AC
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Jul 2020 03:58:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jxL4e-0007Fk-Ly; Mon, 20 Jul 2020 01:58:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jianyong.Wu@arm.com>) id 1jxL4d-0007Fd-6o
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V9BFC4xJuAlX4Waxqb7o7wc46kurHXUjxeTr7UmEChc=; b=PvPYrlf/yWLxvzlpfLtGOhvOVB
 wSspseZVRO0SxoQYnFFr4TFUtozeG9lrY4BwNtOFMSlgwWMNyzRZurBIsRteohyUqdmx4drGyaXaH
 1u0216HLH5S0hTsW0QLkZ+hNw70q1nrGcxu4F33OhuSKO6BoYzBKGq9mfikPLFfqEAWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V9BFC4xJuAlX4Waxqb7o7wc46kurHXUjxeTr7UmEChc=; b=K3JrBTuDXL4XdPD+5/PV4jBGhX
 uY8Ryh+B4iozB596j2y0lAq5va7Jqq7DeXVolcNhPwqtZ2L1WsDTv/PBirFZzuoTuY6FMOa8HxIeD
 YszLJZ6tZuPP3oB29Kh19tmMbrozmJ6wFqlu2K0vjDukddiLjL+69gNRGevw4EFlJ2eU=;
Received: from mail-vi1eur05on2044.outbound.protection.outlook.com
 ([40.107.21.44] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxL4a-009KyK-7D
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9BFC4xJuAlX4Waxqb7o7wc46kurHXUjxeTr7UmEChc=;
 b=nHA6WeLTPvRpw5wlTz1GnC3Ha/TBbjTwOH2DH4BS3lvxRw3bulvuyRFovo8zOd/DsmGKiKM9+GVd8cE4Tqi3UfwaWc3ntHKeq4ax5B+Auyb2UbJDY0xG9KPubLotySohKy+ubRI7X+CSUz85k7zMmurNdXo+JsPzqd50CphGvjc=
Received: from AM6P194CA0023.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:90::36)
 by DB6PR08MB2855.eurprd08.prod.outlook.com (2603:10a6:6:24::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.23; Mon, 20 Jul
 2020 01:58:24 +0000
Received: from AM5EUR03FT027.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:90:cafe::8f) by AM6P194CA0023.outlook.office365.com
 (2603:10a6:209:90::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18 via Frontend
 Transport; Mon, 20 Jul 2020 01:58:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.sourceforge.net; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.sourceforge.net;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT027.mail.protection.outlook.com (10.152.16.138) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.18 via Frontend Transport; Mon, 20 Jul 2020 01:58:23 +0000
Received: ("Tessian outbound 73b502bf693a:v62");
 Mon, 20 Jul 2020 01:58:23 +0000
X-CR-MTA-TID: 64aa7808
Received: from 05b5a9fcac0b.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7ACBDA53-51AC-4CDF-8185-F88725E0F3E6.1; 
 Mon, 20 Jul 2020 01:58:18 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 05b5a9fcac0b.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 20 Jul 2020 01:58:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kIl3TqdvVi1WMqyNjjOBf3EgurIKPR4x+GYDO9V9k7Y6UbDqNSywe/oJvPMu/8BxxWofRANe7gnoTpuz4M0/5DUGoDcJdcyAzkeE8BUpNkr423MXVk1Z3pKF5R2btkCupXb0IwRUQ2gDPxtOWrB9k2BC2MIrV5mUstP2COsEbRKpSt32HVe14fqE+MfQC9MZ6WPVIy3Dmv7x70j4mghJ40EbknoDZsfpEHRz+CdCgU4279esvM9j/rRgCr/9HuyfGEuX9G8tSJvChZUFAmDVSbadqZktu0ERxP03mFAMGoXWjX3qT2wIpgEthz/eOA4e4MovM6ODquH/5cBVoup5dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9BFC4xJuAlX4Waxqb7o7wc46kurHXUjxeTr7UmEChc=;
 b=kK63gwRNVTkUMfd4sjbRiZE7lgDwzRgUiO5/M20z7s+HYTmIpUOh2tk1wzp63i+1yD7+OnwnGdby5p2fxczK1I896qgAJMrHB5T1lrg+4L4FhpabgB4p6+sAqakkB+7pUXDEH/Y5pqcE9CNSGbI5wuvQPHd6fIcraqzdUBCO/BvEsp7haPBOCpOlN9PsMkx8cprR+43XY8Ha0ZAZ2V7pK5Klz3jhIjXzNj0kgJa9jr0JOWeP1/cZ5mcIzFcDdL9WxZ5ozDTlCQlCS5yceTyFeora2AX1Iv/kbzKUSsNGJH2t2pWyuqRqGhmz/0SkYEhaBv3XlekevPutYxBIVHk/ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9BFC4xJuAlX4Waxqb7o7wc46kurHXUjxeTr7UmEChc=;
 b=nHA6WeLTPvRpw5wlTz1GnC3Ha/TBbjTwOH2DH4BS3lvxRw3bulvuyRFovo8zOd/DsmGKiKM9+GVd8cE4Tqi3UfwaWc3ntHKeq4ax5B+Auyb2UbJDY0xG9KPubLotySohKy+ubRI7X+CSUz85k7zMmurNdXo+JsPzqd50CphGvjc=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2444.eurprd08.prod.outlook.com (2603:10a6:3:df::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.24; Mon, 20 Jul
 2020 01:58:16 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::9:c111:edc1:d65a%6]) with mapi id 15.20.3195.025; Mon, 20 Jul 2020
 01:58:16 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Thread-Topic: [RFC PATCH 0/2] vfs:9p: fix open-unlink-fstat bug
Thread-Index: AQHWXjefI/dFRQ8uiE2cxP7P59J4UakPtFYAgAABSbA=
Date: Mon, 20 Jul 2020 01:58:15 +0000
Message-ID: <HE1PR0802MB2555B33805E71BB78BBDACB3F47B0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200720014622.37364-1-jianyong.wu@arm.com>
 <20200720015212.GN2786714@ZenIV.linux.org.uk>
In-Reply-To: <20200720015212.GN2786714@ZenIV.linux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 3ecd2357-a1a4-4fca-acdd-4c802624a37e.0
x-checkrecipientchecked: true
Authentication-Results-Original: zeniv.linux.org.uk; dkim=none (message not
 signed) header.d=none;zeniv.linux.org.uk; dmarc=none action=none
 header.from=arm.com;
x-originating-ip: [203.126.0.112]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 41a779eb-7655-4e3a-08a7-08d82c506285
x-ms-traffictypediagnostic: HE1PR0802MB2444:|DB6PR08MB2855:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR08MB2855F5EC8BDFE2AACB20A37FF47B0@DB6PR08MB2855.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: /nGjWYa36Yty4WRE4ChlMLMChJASNrs/Pa0MSISt8sxJAtNE4QWT3sf2m3C4uPsZGoK0BgXwBRkArEfGAKZcnoLghBd3PAkIyqTygmxIkKEg0r8KFwMJHLII8GECR8MCuclWfqLofWjENq9alN2zO+56xT3ZObEvM/t9EGHvE5VianyZfQmgcpvf8mcfzGvDQtMYv8fclQ/FhBPSuFEdnRuXjNGqVyvidPEyu449tkkOp2TXhgjshGGZneaPs+d4V2+q/1OqIOuPxessfLDANWz7NzcdJSEdu3xQbFUWtQdCnRR7NtqSA9+yfJxhy5jUpoQkonLN7p+j0rlqIXmQvA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(346002)(366004)(396003)(376002)(39850400004)(86362001)(2906002)(5660300002)(316002)(76116006)(66446008)(66556008)(66476007)(64756008)(52536014)(33656002)(26005)(54906003)(478600001)(6916009)(186003)(8676002)(53546011)(6506007)(8936002)(7696005)(66946007)(71200400001)(83380400001)(9686003)(4326008)(55016002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: jVdMuD9Xdo+vfpZwl1Ti2BLUcjEBZnu/qAmrfxubjpN+y+Gs+4f8sQLQNnXw11jwC2TolPGz8PPL3o6O/CFYQJsArnfboFhTVlhm+2fzl5E4jyNhw/pwdy80vdSbiuXJIqmlbNxEzdDaNuWkxcUDwXUDM7eHSQZrKWimb7J8S8kAFgi7lU68agbmM9xZaxRFjV9fY2pIT0cv/RXlq9UhA3LHZzsBxDldgJB3iISgEPdjN3lHNZPngHrgQ43YglskvMi+gOx22hwUXnOa5UrC4BkoavZoZM3OA3f8OCe3PapMHtERBoapjziybrf1N6u/5V0I3dqpi6/8Yq8T/KHUllMl+6bLS8NHmZ+sswS6Ti9MwFrrysMhIKYsEiZRGyDmu/QRrVMoRBlhOZ7C/0hzWu7oQKPQscpM1nHVR79EtLc03eo5LkjYsly3E2UCGp8uzP2ymQVhYzXIoAHwCTd1PrLktANkJL8xdf5RHIM8SaY=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2444
Original-Authentication-Results: zeniv.linux.org.uk;
 dkim=none (message not signed)
 header.d=none; zeniv.linux.org.uk; dmarc=none action=none header.from=arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT027.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(39850400004)(346002)(396003)(376002)(46966005)(6862004)(82740400003)(47076004)(52536014)(82310400002)(5660300002)(83380400001)(54906003)(86362001)(316002)(81166007)(36906005)(9686003)(4326008)(356005)(8936002)(8676002)(70206006)(2906002)(478600001)(55016002)(26005)(33656002)(70586007)(53546011)(186003)(6506007)(7696005)(336012);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: f906d934-436f-424c-a748-08d82c505e3f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M9R4ZyGimUhKjjsIPmi5pK5RMwq+Cq2J4U8zVyrXOg+rfv8k+g1qI2lbtS6c/qyCthhZnrkJqesFJtv5eZ64WyyEwjZo4OUxfTVUisQuVpHIBiyBQKUP1zR3tn/AAQF0kYj8B5ledy17363T5qzkfcJGlAPCWhrYi/4L0pdz1cP//sfy0B1cpIA1R5SYy2Tv21QNdvAodSBikpM1S53d4hZn48dz+sq734vJYZmi40C1ob7/Ie+fGL7qWPrlZdEUe9vBsr/dM2ayL/rKvibB86q3/sRx74HcQgksT3TQbi6HLO9oe79wZvnV9p/TKu7MhzKLIxgqnBGxYnuqzQovx4Yb2LI4wY/NHccfTNCug5DMey0uuqo+8s6O21YCyW+BE00iOwO9kPyMbnucVkj7ZQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2020 01:58:23.4266 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 41a779eb-7655-4e3a-08a7-08d82c506285
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT027.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2855
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.44 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1jxL4a-009KyK-7D
Subject: Re: [V9fs-developer] [RFC PATCH 0/2] vfs:9p: fix open-unlink-fstat
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
 Wei Chen <Wei.Chen@arm.com>, "ericvh@gmail.com" <ericvh@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dhowells@redhat.com" <dhowells@redhat.com>, Kaly Xin <Kaly.Xin@arm.com>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Al Viro <viro@ftp.linux.org.uk> On Behalf Of Al Viro
> Sent: Monday, July 20, 2020 9:52 AM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: ericvh@gmail.com; hch@lst.de; dhowells@redhat.com;
> lucho@ionkov.net; asmadeus@codewreck.org; v9fs-
> developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; Kaly Xin
> <Kaly.Xin@arm.com>; Justin He <Justin.He@arm.com>; Wei Chen
> <Wei.Chen@arm.com>
> Subject: Re: [RFC PATCH 0/2] vfs:9p: fix open-unlink-fstat bug
>
> On Mon, Jul 20, 2020 at 09:46:20AM +0800, Jianyong Wu wrote:
> > how to reproduce:
> > in 9p guest:
> >
> > struct stat *statbuf;
> > int fd;
> >
> > fd = open("tmp", O_RDWR);
> > unlink("tmp");
> > fstat(fd, statbuf);
> >
> > fstat will fail as "tmp" in 9p server side has been removed. 9p server
> > can't retrieve the file context as the guest has not passed it down.
> > so we should pass the file info down in 9p guest in getattr op.
> > it need add a new file member in "struct kstat" as "struct istat" does.
>
> Er... what struct istat?
Oh, sorry, I make mistake here. it's "struct iattr" Not "istat".

Thanks
Jianyong
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
