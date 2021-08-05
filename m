Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C8D3E1E83
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Aug 2021 00:16:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mBles-000418-Ri; Thu, 05 Aug 2021 22:16:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <trondmy@hammerspace.com>) id 1mBlep-00040y-Dr
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 22:16:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xcvEYF+LFtaCxU+KgrO90klDZQsSutuClZu0qa9GA5E=; b=WaGI6fgdnV+xhZhcWr8kDBHFUI
 SwIhJyvLBtP+9ZV0H+RovTLjJq7Wp9DPhZkgRhv6mdgsSk0NnCCFgM8qhWUbATquhQ523eu88hT8T
 IJlOYH+HU/CawSkaJiRpW0eyB6/agNMuFngaDFANPfOaYsrG4ygOCWQsfIIJK5J93vL4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xcvEYF+LFtaCxU+KgrO90klDZQsSutuClZu0qa9GA5E=; b=C1ZrSgJYhxqy98d2zF0QVC0VUh
 Bjz5YJSyxGpO2pLaV7RSM5bNZmPe/asRpaItDsden0Yp/BfTFCHD9kDu0EI3jmX9EGMgSXtxKExdw
 6bmg5HzEc0Png0PjliCTolYvN58jIMGZ4BaVtVUqR89gBYsV0aG/y342ZMSC0msZ1Zok=;
Received: from mail-bn7nam10on2121.outbound.protection.outlook.com
 ([40.107.92.121] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mBlei-00DquF-4P
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 22:16:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YU+8Ez7inl2niJbVnyBqdlqez+pcDaVgVvaXyumm1jWaVXIzcRyDYtCaQFbVlZKvhuJUIUwr4bYL9gZizEMOO5v3tFbOpzsvHbt/EG2b9RZWxXNvUHT+YOusXx8yl+3tcy2uhuywQtFasgdbJ2liWiziGycpz0kJkehMN0XYLIScKs78134dGQkl4bF5Pu3BoDxgjnSoxg7qq575KdcxbFGu2b10CmBIXo3qGBeq1c4fsyiEZzJwEJNcgbqx0RZ5oDAETmoBEnGLW2Td04/DR0CfZL01mOy5Za9Ks6p85SfgurM2f/Sw4le7swWLhtRtPVdouhD7UqrfB+Y/tzxbtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xcvEYF+LFtaCxU+KgrO90klDZQsSutuClZu0qa9GA5E=;
 b=kv0PBpy+lywE26x+cAYzhKjwcJdwJmTFOxnP/yuab61hCflqEnTSzBij/U4upKLXzMRXAKpGt5QRvxMEflHMf119fyyo58wmD1jYECrtD/PLL5o0OAEIUStJaW7HZcQml8uVonN2PMQh+sWu8kmFIMg2xr9KtprDkz8bZa0iLTcKvJk9xI46gzrx/xK7KatNaVioHIfpYgy/CJUh89mE1a8DEgsWGvUQ6TetbKCMRl5LF33S3YMA8mHuozLCMCUFMrHh+0ied3TdNlstm3D7IkTdcwQnMydrp9ytPKrBM+aSgVzKj7vU+j4StQvSmq5XNlxHGVCKp/8cznTT0aD6ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hammerspace.com; dmarc=pass action=none
 header.from=hammerspace.com; dkim=pass header.d=hammerspace.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hammerspace.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xcvEYF+LFtaCxU+KgrO90klDZQsSutuClZu0qa9GA5E=;
 b=NyABwiXm074c3HJ3EwuEbzgQFR+0DyAvhWBtSsd0IabQoT/XINh2TV9//RrYSObH2yh8bs6XsVzbmejVD6p7o+mQfjx8hF6lVz19bKzw9CuSem3AcCUZD7EP3wXljWRPm5SDNuhzFVFFNQS4Al8NHrBdfVHab0HomAMY393YsdI=
Received: from DM8PR13MB5079.namprd13.prod.outlook.com (2603:10b6:8:22::9) by
 DM6PR13MB2587.namprd13.prod.outlook.com (2603:10b6:5:136::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.5; Thu, 5 Aug 2021 17:43:11 +0000
Received: from DM8PR13MB5079.namprd13.prod.outlook.com
 ([fe80::9925:b22d:a3ca:1ff0]) by DM8PR13MB5079.namprd13.prod.outlook.com
 ([fe80::9925:b22d:a3ca:1ff0%8]) with mapi id 15.20.4415.007; Thu, 5 Aug 2021
 17:43:09 +0000
From: Trond Myklebust <trondmy@hammerspace.com>
To: "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "dhowells@redhat.com" <dhowells@redhat.com>
Thread-Topic: Canvassing for network filesystem write size vs page size
Thread-Index: AQHXihf6hOJE9a6TVUqeuJkvzGR9DKtlKgiAgAAEfAA=
Date: Thu, 5 Aug 2021 17:43:09 +0000
Message-ID: <0211d015a215b3d343bfbaad838179c41a1289c5.camel@hammerspace.com>
References: <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
 <CAHk-=wjyEk9EuYgE3nBnRCRd_AmRYVOGACEjt0X33QnORd5-ig@mail.gmail.com>
In-Reply-To: <CAHk-=wjyEk9EuYgE3nBnRCRd_AmRYVOGACEjt0X33QnORd5-ig@mail.gmail.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux-foundation.org; dkim=none (message not signed)
 header.d=none;linux-foundation.org; dmarc=none action=none
 header.from=hammerspace.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c059a2b4-935e-45d3-7d5c-08d958387d90
x-ms-traffictypediagnostic: DM6PR13MB2587:
x-microsoft-antispam-prvs: <DM6PR13MB2587E9A923097C370557D08BB8F29@DM6PR13MB2587.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hhJLbU1LmvOD36x9I1N7c9qJlsLCO+4N6/DGtE/y2OmsuZx4w9W67a96VcfKC9x/uQfVUtavT0zqiljnnDE1ng52mn2KqhnS/m7vFo+td/q0+OoZgwnQXAmobQcbcJ3uEknniSc+3D2T7ZXnUkumCffMBNFolWRht7D6QgNCYvwvdn0MOkCNfoYViJz8HzJmtEj1JaUa6TlMu24ipr5agOPxL79lt9zAPDEAAU1g10gIxJc9KnxWdj2+A0Oc00yJYDjaLO7dX5Jm2yInaiZpmcsqxs7j9ZCxEPQi2cYdhLw9m7bDPo/WC8MEQk/6a3Q4M6H/s4HCGa1iNZRx8oxnyVJidZyxeInp/XhFbMqjTKPW4/AVQdXYwz0tjOqbSlXwgiuejT7nCsF2AFycZVGZcCQV7sjvLF6/GzLnMcCh+craoF7ymoqVJ04QoqLAaxCaZS4KVZ0UOiLjb66mJb//NDVPjqVM1AIZ2dv/f1Ghf2dp2OhoA+KzBsMeRcRUzveIrXArZnQ8XWSIv6sF6TU4H5+83Tw3eEImzC48NGvQvU0B08SxsAPtJ3fcpaFGfMbwIVXMgcaRMikKQ5zYAe8UAPrKBV2Wi160GqKsqKDoih2d/fz6AT9ZwMTWudOk9IUh0A+JfIXtXf7Zj9OY8qH3JVllg+zkeg7rCsu8TbQKsDuGMG+lJ0koL1KdPBsBIl1ZMMZd0Obqq7JUzl/shoJqcw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR13MB5079.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(136003)(376002)(39830400003)(366004)(83380400001)(26005)(2616005)(71200400001)(5660300002)(4326008)(122000001)(38100700002)(316002)(36756003)(86362001)(2906002)(186003)(7416002)(110136005)(66556008)(91956017)(76116006)(66946007)(8676002)(6506007)(6486002)(54906003)(8936002)(53546011)(64756008)(66446008)(66476007)(38070700005)(478600001)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXl0WkdkTitFWktpNGlOSTJDRlV6Qm1YRUhBOVdsVWhhVUJBL1lnNlF0VHBO?=
 =?utf-8?B?NUpJdXFVYm1UcTR3cHpjUmg1elpWaVZNUDJjZmpmVVlqNUs0L3p3VGxwekhr?=
 =?utf-8?B?WmRQck1VQmtmSFVLTGhJTVh4enI0Q1k5ZEtScXBXTFdiUDRERlU2RGhDNjky?=
 =?utf-8?B?bEFkZDh3cldOalZIYzBuMDUvSzlsNUVGS3BvZy9tN1FBMWJtTkx5T2JMRExQ?=
 =?utf-8?B?WkFEYzBRUlBSZ1JaQjZpR3RLVmpzeW1XMkFEc1NPUWZPL0t1cjMrUXVvQkdr?=
 =?utf-8?B?ZEZ5N0lQY2lxRXBiWnZtRFBYWXBpMHVGTUdQSUZzOStXMEtYRXkwUnBWZGYr?=
 =?utf-8?B?aEVSOEYyWDBkTzdodmVSSWw4TVNrSVZQb0g2bFlxTGNTeHVUN1R5dkUwY1N1?=
 =?utf-8?B?Qk5vY0ZDQkg5UDQyWHJzK1NHcjBoalkvU2hTc3pkZjhlSWFlSy9tRVVFS3A3?=
 =?utf-8?B?OGxDcitMc3Q4MUhsVzVBdC84U2lYT3kwd0s5Ny8zck1KWWVEMUZ5K2dTeDRW?=
 =?utf-8?B?eWxqQXZFVG8rREFJakxNOTBOVUZKNGxlWWhzUXlNdmVtbkdZcTJOK01pc01w?=
 =?utf-8?B?dmZyMzZKeTc1RkN5ZklUTHR6dkY2Um1nSy9qSm9uaGF2cXc1UkRpYUp5ck14?=
 =?utf-8?B?KzRwYlRiSGpiWHArQzA2SisxMEM5d1BNVjMxMS9TYys3YUxvWDBaNWFTc21v?=
 =?utf-8?B?UXMrY0J3dzhPNllVK2Q4NHd4TVF6NlR5T1RTSVJRMGxVeFJpT28zdko3bXRB?=
 =?utf-8?B?Um14cE5IWDdPbTc0YmkweDhhLzNUNXNYSGZWRnBBK1MwNmJFN3ZaK2xmUHNJ?=
 =?utf-8?B?YmNHek1aMTZlRWdDTTYrSVNuMlZ2S3hkL0w1Unl0ZUJnYjJkeFNjaElPQkZ4?=
 =?utf-8?B?ZUU3OGpncTM5dXZJdzlkRDF4MENJZkdMV1RyVE0wZ3VhRGZtcHBubGM4aDMy?=
 =?utf-8?B?dzhqbDlPczNtak5JV1Nua3lZNXZGVkI1Y25PcjgwbXc5Y2FRdzV6Z0RsN3VT?=
 =?utf-8?B?aWV0RXh3YkhpZVJQSDFBcDVnVWNkWTZJMGZJK1pKRTExMU54Zm0rZ2lBVFRn?=
 =?utf-8?B?RHVjNFBIamxvQzFsczdVZmpHRzM3aWVmRW5xSDdmbW1iM2hYR2NXVGYvd3NX?=
 =?utf-8?B?OVBTRGxEZzNibUdCNG5OcmtOSVZXc2VLR0JHQzFYTHRWU3ZTQVhBbm5RU0p3?=
 =?utf-8?B?UnQxZC8xVnE0bjdOTVZiVmc4WSt0UUxHR3VSa2JHblU0TXEzM1gzN09aWCtI?=
 =?utf-8?B?RUxWRitvaFNpenlmR0Q4WjlyWDNtcDRvVTBjUFNOaW1zQ2JEQ1dTQzRDVHBW?=
 =?utf-8?B?SjZadE9OQnlvbkRRZmpTcXVOZjdsYzFKYXpSUktYa2NRMytKRHp1cnZ0TmJY?=
 =?utf-8?B?aldnLzNEOXdqT3liRWxTNnVNejFVdUN5dStpUGJpSURST3V3T0ZsekQybk4x?=
 =?utf-8?B?b0ZLY1BrR09LcWpPeTVLak1USHJqTEp3TjgraElBSVN5a0pIRCtSK0R2UW9U?=
 =?utf-8?B?SWtBcDVEeVp6b3VteUFHdVZxWmF4QzBaL2dyUmhObi94NDd0SkYwWmNtcGt4?=
 =?utf-8?B?NHVHWUhWdnVBQksvVUZBWWtPYVQxRGxMdEkwWnU4MUFWb3RDTUQzY2U5dlNY?=
 =?utf-8?B?WTZUQlFoVFpCdm9Ec3hjV3Z3MlJEc000NFJmaE9UQU9EbHcweG1kMkVFSnlD?=
 =?utf-8?B?NzhLSlkvWUNzemF0SGNjZ1JGL25Qc0x4QnlsZ1BKTmdKLzhUdG54R2QyWnVK?=
 =?utf-8?Q?CIwBaq0kgbHrgcxgTYl1ORKPo/bAfaLu2B3K2//?=
x-ms-exchange-transport-forked: True
Content-ID: <3A876B5C48B7204BA119B27766ED960F@namprd13.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: hammerspace.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR13MB5079.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c059a2b4-935e-45d3-7d5c-08d958387d90
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 17:43:09.5907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0d4fed5c-3a70-46fe-9430-ece41741f59e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ZrRqt1XZfI7KssT+eRIfBJ3XPC2DbGV37fMWHrcHvtTzKLc+9L7YS9dHWmyGsO+NT3m6S52NJq0gcK1etuPZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB2587
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hammerspace.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.121 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.92.121 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mBlei-00DquF-4P
Subject: Re: [V9fs-developer] Canvassing for network filesystem write size
 vs page size
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
Cc: "nspmangalore@gmail.com" <nspmangalore@gmail.com>,
 "linux-cifs@vger.kernel.org" <linux-cifs@vger.kernel.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 "jlayton@redhat.com" <jlayton@redhat.com>,
 "miklos@szeredi.hu" <miklos@szeredi.hu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "sfrench@samba.org" <sfrench@samba.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-cachefs@redhat.com" <linux-cachefs@redhat.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 "anna.schumaker@netapp.com" <anna.schumaker@netapp.com>,
 "devel@lists.orangefs.org" <devel@lists.orangefs.org>,
 "hubcap@omnibond.com" <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2021-08-05 at 10:27 -0700, Linus Torvalds wrote:
> On Thu, Aug 5, 2021 at 9:36 AM David Howells <dhowells@redhat.com>
> wrote:
> > 
> > Some network filesystems, however, currently keep track of which
> > byte ranges
> > are modified within a dirty page (AFS does; NFS seems to also) and
> > only write
> > out the modified data.
> 
> NFS definitely does. I haven't used NFS in two decades, but I worked
> on some of the code (read: I made nfs use the page cache both for
> reading and writing) back in my Transmeta days, because NFSv2 was the
> default filesystem setup back then.
> 
> See fs/nfs/write.c, although I have to admit that I don't recognize
> that code any more.
> 
> It's fairly important to be able to do streaming writes without
> having
> to read the old contents for some loads. And read-modify-write cycles
> are death for performance, so you really want to coalesce writes
> until
> you have the whole page.
> 
> That said, I suspect it's also *very* filesystem-specific, to the
> point where it might not be worth trying to do in some generic
> manner.
> 
> In particular, NFS had things like interesting credential issues, so
> if you have multiple concurrent writers that used different 'struct
> file *' to write to the file, you can't just mix the writes. You have
> to sync the writes from one writer before you start the writes for
> the
> next one, because one might succeed and the other not.
> 
> So you can't just treat it as some random "page cache with dirty byte
> extents". You really have to be careful about credentials, timeouts,
> etc, and the pending writes have to keep a fair amount of state
> around.
> 
> At least that was the case two decades ago.
> 
> [ goes off and looks. See "nfs_write_begin()" and friends in
> fs/nfs/file.c for some of the examples of these things, althjough it
> looks like the code is less aggressive about avoding the
> read-modify-write case than I thought I remembered, and only does it
> for write-only opens ]
> 

All correct, however there is also the issue that even if we have done
a read-modify-write, we can't always extend the write to cover the
entire page.

If you look at nfs_can_extend_write(), you'll note that we don't extend
the page data if the file is range locked, if the attributes have not
been revalidated, or if the page cache contents are suspected to be
invalid for some other reason.

-- 
Trond Myklebust
Linux NFS client maintainer, Hammerspace
trond.myklebust@hammerspace.com



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
