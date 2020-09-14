Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CB22687C7
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 11:01:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHkMT-0001r5-Kk; Mon, 14 Sep 2020 09:01:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1kHkMS-0001qw-6o
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 09:01:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LWgU1jZ8PSvSLkKeOUXjaR7nKa6gytTYv2DNxld+poE=; b=dtaWSAccSEIkMuxCtfjQhET8Tu
 ognRlYwRiOGOBegCbn8JLOXjZmv5z1NVvgrQmQ0HBHklhzYLHA55lwez4cD8fhmHZPMnM9Pv2uLmQ
 pwZYMbEe+ph+uJxOD8FRkIYZx7rMHuTiivMJJo+feP8TphDif1vCYF2YTBTILroYixfs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LWgU1jZ8PSvSLkKeOUXjaR7nKa6gytTYv2DNxld+poE=; b=dh3myt9tDT/nDUnqWMjpP1uC1e
 qlTZmsodBBhG4SFIiHQbnOyQzHzsz2BOSH4aEWXZLzCf+8HU8W2czOAoKOeUbPfObUsqyn/UsfbfZ
 PJ9D4qK8R1MWYN25nhfK8B8SLd7tE21LfUGqJxttoImjMBsHSQVbKDu1FcSdRmQ54PCU=;
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHkMK-008C2S-Ol
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 09:01:20 +0000
Received: from mxplan5.mail.ovh.net (unknown [10.109.143.134])
 by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 68299614D66C;
 Mon, 14 Sep 2020 10:35:49 +0200 (CEST)
Received: from kaod.org (37.59.142.101) by DAG8EX1.mxp5.local (172.16.2.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 14 Sep
 2020 10:35:47 +0200
Authentication-Results: garm.ovh; auth=pass
 (GARM-101G00438ece552-2604-404d-8aff-070da96458dd,
 33559CD024D4F69900824C14C2AC4808F9346AFD) smtp.auth=groug@kaod.org
Date: Mon, 14 Sep 2020 10:35:46 +0200
From: Greg Kurz <groug@kaod.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200914103546.0f775bcd@bahia.lan>
In-Reply-To: <20200914033754.29188-1-jianyong.wu@arm.com>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG9EX2.mxp5.local (172.16.2.82) To DAG8EX1.mxp5.local
 (172.16.2.71)
X-Ovh-Tracer-GUID: a4adab61-5db0-417d-bdd6-ca742aabf020
X-Ovh-Tracer-Id: 3126905517296294252
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeiiedgtdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtgfhisehtjeertdertddvnecuhfhrohhmpefirhgvghcumfhurhiiuceoghhrohhugheskhgrohgurdhorhhgqeenucggtffrrghtthgvrhhnpeefuddtieejjeevheekieeltefgleetkeetheettdeifeffvefhffelffdtfeeljeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnhehrdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepghhrohhugheskhgrohgurdhorhhgpdhrtghpthhtohepqhgvmhhupghoshhssegtrhhuuggvsgihthgvrdgtohhm
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [79.137.123.220 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [79.137.123.220 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHkMK-008C2S-Ol
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Christian Schoenebeck <qemu_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 14 Sep 2020 11:37:50 +0800
Jianyong Wu <jianyong.wu@arm.com> wrote:

> open-unlink-f*syscall bug is a well-known bug in 9p, we try to fix the bug
> in this patch set.
> I take Eric's and Greg's patches which constiute the 1/4 - 3/4 of this patch
> set as the main frame of the solution. In patch 4/4, I fix the fid race issue
> exists in Greg's patch.
> 

IIRC some patches were needed on the QEMU side as well... I'm spending
less time on 9pfs in QEMU, so Cc'ing the new maintainer:

Christian Schoenebeck <qemu_oss@crudebyte.com>

> Eric Van Hensbergen (1):
>   fs/9p: fix create-unlink-getattr idiom
> 
> Greg Kurz (1):
>   fs/9p: search open fids first
> 
> Jianyong Wu (2):
>   fs/9p: track open fids
>   9p: fix race issue in fid contention.
> 
>  fs/9p/fid.c             | 72 +++++++++++++++++++++++++++++++++++------
>  fs/9p/fid.h             | 25 +++++++++++---
>  fs/9p/vfs_dentry.c      |  2 +-
>  fs/9p/vfs_dir.c         | 20 ++++++++++--
>  fs/9p/vfs_file.c        |  3 +-
>  fs/9p/vfs_inode.c       | 52 +++++++++++++++++++++--------
>  fs/9p/vfs_inode_dotl.c  | 44 ++++++++++++++++---------
>  fs/9p/vfs_super.c       |  7 ++--
>  fs/9p/xattr.c           | 18 ++++++++---
>  include/net/9p/client.h |  8 +++++
>  net/9p/client.c         |  7 +++-
>  11 files changed, 206 insertions(+), 52 deletions(-)
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
