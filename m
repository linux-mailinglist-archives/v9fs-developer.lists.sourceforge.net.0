Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD78468364B
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 Jan 2023 20:20:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMwB8-0004Pt-Ou;
	Tue, 31 Jan 2023 19:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <simon.horman@corigine.com>) id 1pMwB7-0004Pn-2N
 for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 19:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SUcgDp9KlkYc1HlHw38vE4TY7VrDrj5QfGPjak3SpZI=; b=gBsgBTJIi/9fHO1FLA/GtyHfRX
 urtVuIDCV2De3SSYLOWDWPUbxF6f3+sYDR8c3oMAW/XCL4VZZKFY8lIN9uWjkhC4iK1jgo7ML8PoL
 i6o6l/xRSk9n9IpDyqAMaNsNtTl7gVUojIscxYP0nfKX1LSu5SOmh4coZN4BrpmdwIsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SUcgDp9KlkYc1HlHw38vE4TY7VrDrj5QfGPjak3SpZI=; b=FbJxwMq2EpkdMvupTY7mbRX0Yp
 JFVdIBUzDIwJzwzbinYvPpRbgekpZRNbnR2tfbqRns+gRxCSaYT8W5gUnTzloER6ymyqeY0BKbXQW
 SH/pD4LQbZ0oA8yL+HnQjPS1rld8IPC4MKFwnijnu0HSyLxHeAKQWVcjj/WWIwp1rm1k=;
Received: from mail-mw2nam10on2105.outbound.protection.outlook.com
 ([40.107.94.105] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pMwB4-0006nC-6b for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 19:20:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQVs3FeLy4LvMCDZ7Dq98h1pZHJCU2wlj8fDZFVV2y6dKLv7G68aXo6OqA0VLZbzfuaEBFpuzXZFPT2Fs6GWqLrCaq5nCAB9afgDZjmM8qDobTWYdn8rvIPKZyYzKEAhTvDgAsEx8htaWokCauJVwl+f5qd3MHdmKtZHwNESf4EBKqaa0b1AOA7vF1oXaTyfKwB1ojfmpE3FcZJ2dF08/RkFOrk84QFW0xqphBVfHtukEWB62kduLaqM8k61GJ2TEbkFIKUTT75WKQrNrvTeJr3Y/Lc/jzVf+F1B71hdn6Wz4L3XXeT2+QK1IokKn798AMKP7She8tjHcTfPk7D46Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUcgDp9KlkYc1HlHw38vE4TY7VrDrj5QfGPjak3SpZI=;
 b=nU/rTfxhWMbC3hTXf+M8+oUu95X33UgW29OGCpVy7cAENCwmMydMAr79DsQKZq3oeNSQpioO3Q1m27Avulrg2kw9HAdiCsHUxE6VL9sxLI+Jvi7WifTcnFa6fMo3+4WlLniF3C5kMmO81uefmMoE6fjVKM9I7ja/JeH6c1DEgtE6W6ZoXUoQhqtelu/wP26mKh5iuNrote0awwNzVUh1Bf8znmOHCJUXCSmAnEoFpiXMb6Z1VwTWq9L15BsN/aEbC9ujE2+GKCX2Gxi41KvwsWedfiL2PgMfWsoUZGo2I9MpcFhG701lewOnu+t/pmUQ4zU7Y4fJ5eh4Jnq+VCUVYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SUcgDp9KlkYc1HlHw38vE4TY7VrDrj5QfGPjak3SpZI=;
 b=GYkhmA9EGoM1A+tDw8ZwOJ7lsDQgM5e75BJbvpTYbJOABOlCOEOPzD1Kfnytstcl2V01SqB867uiAnnCzWWM0PLpIS6pTexlttNlRgg1RTcENipKfX9TH1Py46YYPcL8JFBb7t6owbrTzYOeqd6VtSHtgG+2bYFWU7wVP6zmD5E=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH7PR13MB5868.namprd13.prod.outlook.com (2603:10b6:510:15a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Tue, 31 Jan
 2023 18:48:57 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65%7]) with mapi id 15.20.6043.038; Tue, 31 Jan 2023
 18:48:57 +0000
Date: Tue, 31 Jan 2023 19:48:51 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Juergen Gross <jgross@suse.com>
Message-ID: <Y9lik890+4G4z6/Z@corigine.com>
References: <20230130113036.7087-1-jgross@suse.com>
 <20230130113036.7087-3-jgross@suse.com>
Content-Disposition: inline
In-Reply-To: <20230130113036.7087-3-jgross@suse.com>
X-ClientProxiedBy: AM4P190CA0015.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:200:56::25) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH7PR13MB5868:EE_
X-MS-Office365-Filtering-Correlation-Id: bb93c1b1-3e0f-4562-a850-08db03bbcf1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uIvKSc1WpVgAgjrTIVMNv3QIOectieoR2KLpyWjyYniv52654lck6aBHFOUzxQtPXiZQznWLLwQfPV1U5/yHdcMK/HMdbGtyZW8jAYbRD7uW3nqatCxvOTS3DbDlz9QSZP1f8epbHF2LwYh3YCf1yw8rV1IkllEOqa5fZ8eZx3TB3Ty7dgdSpcJWkPKvTTIDafBBClEMRGNWxYydMlLMG+LSujMKyrXqRdyCb5bzS3fWR3ffRdHAvRtlwal/uBZauBekr4i2Dh+UraPtBlAQpA1Iaz26BCM9b5oUZfwuS7zfuxarcCwiuCJsQ+6CA0GhucStEcd0jiI3kxsNyfdHBqDnOqTV/xoHtEDCW0PnCuE+gxePTFQy7Zbcjl4N+7y92lPg1u92uoM2LYEPjijqu6o32NNjJJ3E2ojc0SL2JLZJ37XvNmfMwbfSMESGq/6vr68qp2h9bA3rExsZgN/3gd5Vy73M8nr/fGh9z7UHaYZrRdtatFi22doPZQpvj2M9dadnL/dMghg9v3mjyGC3td92eduIOVggR0Kzqhz/rChjrAvwd6xoilpy7xnR+KDLeyYdJYW5Zdx5EC7HbbiueED/vhWfQhHQqZ6M09u4x5g2Dq9VyglwlyGj/rIwvFPU9pvkxgVTARGMS/o9rPfMVp0RkY+r0dAjloESmp/kpKtPgmM72AsJiOhl0bH6qARmiuBhOZzSevn5ki4juzzLzHeSJWkTgxZJesVON8vNmCM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(366004)(39840400004)(376002)(396003)(136003)(346002)(451199018)(54906003)(316002)(8936002)(4326008)(8676002)(41300700001)(66946007)(6916009)(66476007)(38100700002)(36756003)(86362001)(66556008)(6506007)(6512007)(6486002)(186003)(44832011)(2906002)(7416002)(966005)(478600001)(2616005)(5660300002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FFaPLEzdJ7A/7d4xQuJG+8eA9pdEtoLmOha8vxcpbBseR726YMX+j3aKBhxQ?=
 =?us-ascii?Q?Rn95A91++RZe4l6GKptZqd4Em7awbJjy7FLv1Pq2zOe8SBLdjGwLWIi4aSE0?=
 =?us-ascii?Q?Kw1NGM8J7lsGdsZXYAAqB0hBXbITiNTb+kO46YXWPMXHKRaF1q8OBn93SITT?=
 =?us-ascii?Q?5Z3GOSHnnuIKEiOf3XQe+Zs/XPBjAnEd3s6y596EUYygIExiIn6OxDRIhYiX?=
 =?us-ascii?Q?4v/t0Toh0CA0CzDdbcKREMgXQuGQDYlBXhlCXuusngb7LmEEDSyAp0QpE493?=
 =?us-ascii?Q?9eUWdezHmrmaoNeeplw5Sos03tSuXtsdaWqAOgmqIdPwHoZp6rZD2JqC6SEe?=
 =?us-ascii?Q?osxsmiRUw0gXNHPce2SKbJEF+cn/Y+vdDU8g2L8etUzd4HjdLakIiQA0oeFq?=
 =?us-ascii?Q?8tDr3xnoi3T30kld8t7wlEb8c8nNA3oOOsUKL8tooAoWWNcAAMFdKp0apE6K?=
 =?us-ascii?Q?DZhJhBBJaO89uPRxXEGgwaSwRs9wGQzzyspVzYpYpDXEdV4bxYPVPgb7FcKN?=
 =?us-ascii?Q?UrQXxBGkVHWXNZu35d1ER6PrMRPEWTajbCTLGGqTy8QgI+O/W0b5OvUbDT++?=
 =?us-ascii?Q?5fgp7Om2ZLBMpDUvpaGcrIyRcqEcJv30ee/zPZT17KWy9WVaSB+FDJnNGvVE?=
 =?us-ascii?Q?5GoiLOb6lGCUVM0SclAlzyFbcKlASHSaOOE71vWNPdnMF0SAp7TDAtW+38v7?=
 =?us-ascii?Q?WXKxkWcFvd/b2OatEiTtVmac5t9MC9DzzfDZsRkCARXrPlqXmIW0EOMtwpS0?=
 =?us-ascii?Q?aJVVSbQqOtk4ztneW5TMnnOSgjuGksmWSm1LLnUHGy/VfkTSqtZs216Yr/xT?=
 =?us-ascii?Q?fxUEykhUgMwrSk05xoNju0MFDIzox+2ma/7QrA/yoTLdoFHHq7K8NYibWTuI?=
 =?us-ascii?Q?VFCtq4mv4gOY992mHsXNN7Y+aIJgygwpLrZj4/4M5rOvLjmQrJ+m57CB9QFk?=
 =?us-ascii?Q?Ev+P60BdBGeA+T13wuYz9jZ125OrB8cDiGNjtRzmjzpws8cRelM7ccgPyrtr?=
 =?us-ascii?Q?f344GYQ08Gf/L2U5ncG/pIXQ4lEW6gIROzWHz7LcP/rYo5nCJnFtqWR4f1zu?=
 =?us-ascii?Q?teLS3qi2DnOZa221mBBP49alUcUnesYFww5lbDpm1jonm/6MFwkNNpsfSTNo?=
 =?us-ascii?Q?/1qyRpFy73fjkbJ2Xc+QImDnppNMEDfnMdjLP03JH7MQI73dAVuAVkb2qAML?=
 =?us-ascii?Q?sJo/Uwa1Zf+uojlgBVwSg8IdDTNcOI/NdHGI3vBWIFutbq6XR4tx5jSjJCyh?=
 =?us-ascii?Q?81Mb+TwRA/SGgqfUUejiqQf0pVPoXPjlF8QSnSIN1BQe33rtA8cZTKOQjuyf?=
 =?us-ascii?Q?Ivf3RwdvyaXkKbmr92nkKhNx/Zud241YBrS+wwlkv81UUide3am6CYfmy7/l?=
 =?us-ascii?Q?SukSY1iJiGi9NS33PL1F+796aBXy/XKvQwDuMba4QU4+bShL+wftQhGt+TqC?=
 =?us-ascii?Q?mcr622fciBEGosXSgXemTiL/rJPtEYH7IyoQGYZH3ef4frIWY1KJQTV4m/7c?=
 =?us-ascii?Q?7sGzDZk2POnsj6KM9PvQGcZfq2s+XGKhOvHv5OA9vc1br3dVv8U5BCVSzE/8?=
 =?us-ascii?Q?LVhv8abi/tYYXzZ6ND7104uqebYYQlrh35UJCParT9oTHxJiuNYay3id2CsZ?=
 =?us-ascii?Q?nXN5F9bSKn35lt8eM4XRXwbtZ8SWXzObb9Rx78sGHi+FlXSsgQ6jbr0XUOvG?=
 =?us-ascii?Q?Cz6M+A=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb93c1b1-3e0f-4562-a850-08db03bbcf1c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 18:48:57.3772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZpheZB8boZE1FrAs0UlcsNaK/EVyd7gjigtGiuECyjC6pp5OwQZCmkSnoTCAWQmCTig+pg680p/u/znnJ9lKNAuKMdri5pcS8eabBG3m238=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB5868
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 30, 2023 at 12:30:36PM +0100,
 Juergen Gross wrote:
 > Today the connection sequence of the Xen 9pfs frontend doesn't match >
 the documented sequence. It can work reliably only for a PV 9pfs [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.105 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.105 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pMwB4-0006nC-6b
Subject: Re: [V9fs-developer] [PATCH 2/2] 9p/xen: fix connection sequence
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 30, 2023 at 12:30:36PM +0100, Juergen Gross wrote:
> Today the connection sequence of the Xen 9pfs frontend doesn't match
> the documented sequence. It can work reliably only for a PV 9pfs device
> having been added at boot time already, as the frontend is not waiting
> for the backend to have set its state to "XenbusStateInitWait" before
> reading the backend properties from Xenstore.
> 
> Fix that by following the documented sequence [1] (the documentation
> has a bug, so the reference is for the patch fixing that).
> 
> [1]: https://lore.kernel.org/xen-devel/20230130090937.31623-1-jgross@suse.com/T/#u
> 
> Fixes: 868eb122739a ("xen/9pfs: introduce Xen 9pfs transport driver")
> Signed-off-by: Juergen Gross <jgross@suse.com>

It's unclear if this series is targeted at 'net' or 'net-next'.
FWIIW, I feel I feel it would be more appropriate for the latter
as these do not feel like bug fixes: feel free to differ on that.

Regardless,

Reviewed-by: Simon Horman <simon.horman@corigine.com>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
