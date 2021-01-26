Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46931304260
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jan 2021 16:25:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4QDW-0004xL-CH; Tue, 26 Jan 2021 15:25:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <chuck.lever@oracle.com>) id 1l4QDV-0004x2-9H
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 15:25:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Ing7VDRfrcAJonR1cdmpWR+P8/J9mhYFni0AC5d/EQ=; b=dt46doIXYUHvYll+ZytYJ/f/80
 EpFvqU465cj8ZxpqXTbrpnPnUYTd8agNXp0Ack8jeY6c2kkWhfxRYxGHYxEyrSPpR3iFfPZNlH9Yy
 DKdcID5OxaYTYA+Cmvijpo/SMIFCAXFXchkOlPIxKvkcbNgTUm3vDALTLRsRKRry3TNk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Ing7VDRfrcAJonR1cdmpWR+P8/J9mhYFni0AC5d/EQ=; b=EK6j0X5C8pMT9IE+05C62wwFhU
 smoNxQgKNgVZcp3Klty9gXVD+/UgmM+ZxyrLQT8OnMWpE9Bhfl+HbxjqFVc6aaubBz8UeyThbTI7K
 Vrtn3nVIer7GBehCsTUoSbcoLttTpf76S95xOuTcu2Pa84ulo6HK6r1GzTaBjKF5bUAA=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l4QDR-00ANIL-Dk
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 15:25:17 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10QFOdtw032245;
 Tue, 26 Jan 2021 15:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=7Ing7VDRfrcAJonR1cdmpWR+P8/J9mhYFni0AC5d/EQ=;
 b=xcjP2kvZK/BtgCJ9Jaqr4/y/5Ed801beYgrby1EPkvRGEvL9oyIv/jAw1lrIzE5z30XW
 IPnAH66N0DK/ruYlyGCjcgxGCpiHfslEQgK22ln/yxYpsDYDadppL+VFBzu4cIjEPlZ3
 yQPQHgfpPA3o43qPwnz+ZHq9u52kkaVe4hg98N5E7eSugpsxTgyxq4wkGwBLoFDoaNU9
 HFPZsDydfL1/C51ues91MdI6s6hC8U0uVHrC2R++ICnwXf+VtBBuTEr5fwG0egvGqadq
 qtn8ohnnz7qR11jlP+56u+yawL4/ttByJ1CpmdDX77nC0WrtpS82H8tRcy0KWdbey9g8 tQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 368brkjg46-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 Jan 2021 15:24:39 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10QFKCMd172700;
 Tue, 26 Jan 2021 15:24:34 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
 by userp3030.oracle.com with ESMTP id 368wqwhsdg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 Jan 2021 15:24:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LVnBZeVH/Dd53On8c4Dp5B6TzXnGVrzXD1D9dhah7IBu3+s3uXhEPDKMA7KodyWaakXGgwrd03DRl+BiWjjmhweqwdCfpURiF4rk9IGkxd7FJWs441u9ST0Z2okj+qZTVVxQGh1OBYmbfRehv+lxNmvQYcEDVoWolUrdwnFMSH/tPeJ4KnSDltaQ61sX3MzFN7cx7FgWAUJ3nD7l0XN/FPRLI2FOaFpm+ZdIOXvzPKzj1O6crWym9yjz9xPpcpaCe5W5Iq8LGfWtEGzRzoaJ6S+8dLH3ji4Vgohe0P3S2AuRdSiRVHxUZpgU9gdPY+5AJbM0/Fv1z7tZ18UJcvoXbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Ing7VDRfrcAJonR1cdmpWR+P8/J9mhYFni0AC5d/EQ=;
 b=IAf9o5oZin/FiujCKpBxegpFqh7FjgVweWav8JbrHSLxsLKtJjx5uftJmEQKOjvUG6MSq3LeBhuv/eOcpyWJeB/skVFQI4Evl79aaVhVoJjyyqPFcj1CNDmKYlhJ8NVrtIJwXKAMzS1fr4Z2Hd2k88xa05uJV51hA6D9feMOtYmpaldy0DdMzyjIaWxK7YxLw/WO8SSm0NoxY1yfDySpYumMJXAhU5xY7rwAQcSChj9gAZ0kW+/MAgaMlxn1pleIM5ALE6MkfjqMvNzPZb/0q0uIJbQNbgwm+VCt22UMcdIYfNfloHZwji2XirzPHoBtEeqQXuT+pPLL4Qi6ThsLsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Ing7VDRfrcAJonR1cdmpWR+P8/J9mhYFni0AC5d/EQ=;
 b=PeYtJKKhHJr74I3C+uDvFTJtvMv6KKUETZBPS1FWpVzdcatipq9Abt/Q4N9P7pk8rFecZR1lc1vmTV0t8Y7/6ykMvq4RwfrXqkTMAoMR01Bmdx7X67Aw7o5/ElIZm3alPjSJ1ALH6P0BkW2OvLucX9GxGbr3Za9FFgQtYthC+B0=
Received: from SJ0PR10MB4688.namprd10.prod.outlook.com (2603:10b6:a03:2db::24)
 by BYAPR10MB2870.namprd10.prod.outlook.com (2603:10b6:a03:8d::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Tue, 26 Jan
 2021 15:24:32 +0000
Received: from SJ0PR10MB4688.namprd10.prod.outlook.com
 ([fe80::6da8:6d28:b83:702b]) by SJ0PR10MB4688.namprd10.prod.outlook.com
 ([fe80::6da8:6d28:b83:702b%4]) with mapi id 15.20.3784.019; Tue, 26 Jan 2021
 15:24:32 +0000
From: Chuck Lever <chuck.lever@oracle.com>
To: Matthew Wilcox <willy@infradead.org>, David Howells <dhowells@redhat.com>, 
 Dave Wysochanski <dwysocha@redhat.com>
Thread-Topic: [PATCH 32/32] NFS: Convert readpage to readahead and use
 netfs_readahead for fscache
Thread-Index: AQHW82MzEY7Udq3xF0mVxFQYNQk01w==
Date: Tue, 26 Jan 2021 15:24:31 +0000
Message-ID: <D6C85B77-17CA-4BA6-9C2C-C63A8AF613AB@oracle.com>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
 <161161064956.2537118.3354798147866150631.stgit@warthog.procyon.org.uk>
 <20210126013611.GI308988@casper.infradead.org>
In-Reply-To: <20210126013611.GI308988@casper.infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: infradead.org; dkim=none (message not signed)
 header.d=none;infradead.org; dmarc=none action=none header.from=oracle.com;
x-originating-ip: [68.61.232.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04f828bb-8954-4996-f5ac-08d8c20e7afb
x-ms-traffictypediagnostic: BYAPR10MB2870:
x-microsoft-antispam-prvs: <BYAPR10MB2870DEB5FD262BCF64E6EE2193BC9@BYAPR10MB2870.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6IhxpFKT2Muz2ZfUadsZPZr9bomlmXz8UbO/XOzhlZaxeEsyAlklY9dbdxDmAoStKxXs9THlZqP7nUiJyvZbKN4t5pp5YSZmMXgg2gfLzWVq0eaDiOXPW5Ei3jrk7YbicY1z4GyomqaMXoz1Xn5EjybFo8ZVnvyHEmxLfg9OGhdM+4vaq5EfjDT5j5jT2MZSZqWSLxRGBrKZDNZcmww5HyPEqptQMm8jMZ9O52hKRTFHADb1Tb9B+M2dsl5o3t9HxutN3lwuBMFIwdqYgOQqkgMO8DjsSqXmvwdr2l/Sl/Vn56e39915fSoDMf5AuisLU2MIb4uw9ArTFDCopCXjL8fVQu1oB8fZCOTWXyaBcjw3aDx/G2OIzfID5LGV8uhnfb5FlIAgiAvKQ8rhofrUSxln4H6yqC2M5mr5vOjNSjh6odgaMBCN+ObD0fN82O4FItMbXXZMMrXyVQfUo7/sB0fJ0Vn+Tzuog+elveBVeWzCUBn/DpISVjNfRsflFnz3L+hjyYGI7mYSIL1IeIdPcHEJVhcB8T8uLSdqtLnynVMAuv2B+2vPMj88zV544ZG331+Z7pKkQGatHkR0zyyhnA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR10MB4688.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(376002)(136003)(396003)(346002)(7416002)(66946007)(33656002)(2616005)(6512007)(91956017)(76116006)(5660300002)(8676002)(186003)(4326008)(8936002)(2906002)(66556008)(54906003)(64756008)(478600001)(44832011)(66476007)(66446008)(110136005)(36756003)(86362001)(316002)(6506007)(53546011)(83380400001)(6486002)(26005)(71200400001)(45980500001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?2C447poday5LjZJ/hFasOfwgDPkszhHhM6yTMIW7AHY7XsPQlW5Eo43r8sye?=
 =?us-ascii?Q?G8PvQ1EhofkmczOhLNqtyOot7Dk3xElj79l15k1wa5wlI6CEPApRxEq9cIxq?=
 =?us-ascii?Q?3Mi7bbPcOIhtyuu9l4O6/tCWcvBeo8GJ7C/b38/icKvr5yZv/IrqAJ2QVIy9?=
 =?us-ascii?Q?WmxlaftK+4kYxQrWAQnTNc8tXdGfGk2QT30Bx1HuZl1NdmBm2fFpoM9AGyTv?=
 =?us-ascii?Q?hD8vbRHtfFH4k7WBDDXZltdIdyvUZcZvG9PTgx9SKrxaM6C9GAv8BwLmrHso?=
 =?us-ascii?Q?lPXiHFOeHJwsZh8kCg0DyUyZF9EcX1H2CM0aUi8VovPCncBXbACLd0balOuP?=
 =?us-ascii?Q?ds0ADAue2ougxnz1gG5ir9wXIfYYrup6Rse42e17KdTmW4cyNU6rc/8KDU61?=
 =?us-ascii?Q?olY5aGzVjt1YVjU72PyjbZTz0mnIGT94CKlKrRwSbNUfSiWgqP98/Fw67xsc?=
 =?us-ascii?Q?lRjgxQ0fBSrtr/evOM2Wp25xSH/OyQ8vOYroVhU7owFQXuwULfySukMn8iKK?=
 =?us-ascii?Q?dl1hUwZPfMy061Li9rMUOHVDMxMT0NAD7EfsjY7vyJDRNnMdq3l0tAgxmc6R?=
 =?us-ascii?Q?QLSj3+vPchDCRL8WG9tCQ5Z4bGhVQ0iir22PrQua3EvxCwRvTbLu7IiuUQnv?=
 =?us-ascii?Q?PBfNoRFr02vy3yDUE53NH50+uR202bqWO+HMpzVXa7qgcDZlhMsG1hLhG2AV?=
 =?us-ascii?Q?lA6CAfT/hrd0JROfMA1c89Q//csmu98c3IxJ1l0L0xIhba33rZQH5Rzmw2t6?=
 =?us-ascii?Q?6DgUsOnZ+Apz0KSR44wHuHcCWIGHtJGNEp8wciw+AFBUcnC0NdVyMp4t1PIM?=
 =?us-ascii?Q?35vNAq/l/5ZY2g6+Z/FjzQ/c/pGZKF0uIt6SrrDsTE/0KusSvfc/JsRTKuWA?=
 =?us-ascii?Q?AiCSEwGkYaRa8wxOnGMGn0ParRLncAbHSZD2ZJk/xBXTjC+qowhzt24WC+3G?=
 =?us-ascii?Q?Mh1CNh9gd1Rh90nFQXE0nvebe24D8l21j74vGWQ0Idsqqb3YXhscoTsOd8HH?=
 =?us-ascii?Q?DTxeWFOc3HW3/d6YIiu8uKg1NaeWiI7wwS7qUAUP+RAgVbkvR/OwRO14A/LZ?=
 =?us-ascii?Q?vx36xwW7PEpOuWJBF+WhAx5RB6I7Lw=3D=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <DCC33538A9AE0E4E84CB4C014FB5E2A8@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4688.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04f828bb-8954-4996-f5ac-08d8c20e7afb
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2021 15:24:31.9657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oxUQfISdZn4Unci5ovLH412F+URCEp//5xGN6xRm2luk+WGfznX5C66iWC+RCO/UGh8VULsiK/HED4AvIj7ngw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2870
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9876
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 phishscore=0
 adultscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101260084
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9876
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999
 lowpriorityscore=0 spamscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101260084
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l4QDR-00ANIL-Dk
Subject: Re: [V9fs-developer] [PATCH 32/32] NFS: Convert readpage to
 readahead and use netfs_readahead for fscache
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
Cc: CIFS <linux-cifs@vger.kernel.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 Steve French <sfrench@samba.org>, linux-cachefs <linux-cachefs@redhat.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



> On Jan 25, 2021, at 8:36 PM, Matthew Wilcox <willy@infradead.org> wrote:
> 
> 
> For Subject: s/readpage/readpages/
> 
> On Mon, Jan 25, 2021 at 09:37:29PM +0000, David Howells wrote:
>> +int __nfs_readahead_from_fscache(struct nfs_readdesc *desc,
>> +				 struct readahead_control *rac)
> 
> I thought you wanted it called ractl instead of rac?  That's what I've
> been using in new code.
> 
>> -	dfprintk(FSCACHE, "NFS: nfs_getpages_from_fscache (0x%p/%u/0x%p)\n",
>> -		 nfs_i_fscache(inode), npages, inode);
>> +	dfprintk(FSCACHE, "NFS: nfs_readahead_from_fscache (0x%p/0x%p)\n",
>> +		 nfs_i_fscache(inode), inode);
> 
> We do have readahead_count() if this is useful information to be logging.

As a sidebar, the Linux NFS community is transitioning to tracepoints.
It would be helpful (but not completely necessary) to use tracepoints
in new code instead of printk.


>> +static inline int nfs_readahead_from_fscache(struct nfs_readdesc *desc,
>> +					     struct readahead_control *rac)
>> {
>> -	if (NFS_I(inode)->fscache)
>> -		return __nfs_readpages_from_fscache(ctx, inode, mapping, pages,
>> -						    nr_pages);
>> +	if (NFS_I(rac->mapping->host)->fscache)
>> +		return __nfs_readahead_from_fscache(desc, rac);
>> 	return -ENOBUFS;
>> }
> 
> Not entirely sure that it's worth having the two functions separated any more.
> 
>> 	/* attempt to read as many of the pages as possible from the cache
>> 	 * - this returns -ENOBUFS immediately if the cookie is negative
>> 	 */
>> -	ret = nfs_readpages_from_fscache(desc.ctx, inode, mapping,
>> -					 pages, &nr_pages);
>> +	ret = nfs_readahead_from_fscache(&desc, rac);
>> 	if (ret == 0)
>> 		goto read_complete; /* all pages were read */
>> 
>> 	nfs_pageio_init_read(&desc.pgio, inode, false,
>> 			     &nfs_async_read_completion_ops);
>> 
>> -	ret = read_cache_pages(mapping, pages, readpage_async_filler, &desc);
>> +	while ((page = readahead_page(rac))) {
>> +		ret = readpage_async_filler(&desc, page);
>> +		put_page(page);
>> +	}
> 
> I thought with the new API we didn't need to do this kind of thing
> any more?  ie no matter whether fscache is configured in or not, it'll
> submit the I/Os.

--
Chuck Lever





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
