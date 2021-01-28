Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C66A3074CD
	for <lists+v9fs-developer@lfdr.de>; Thu, 28 Jan 2021 12:29:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l55UD-00025f-Og; Thu, 28 Jan 2021 11:29:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wanghai38@huawei.com>) id 1l55UC-00025O-DT
 for v9fs-developer@lists.sourceforge.net; Thu, 28 Jan 2021 11:29:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0J8yonFInhZHz75oT5XjPZjA0qkN5zi4OoPXSqV8oEc=; b=QDdAHX2r52s0I2GgoD5GDPDt6B
 PfDLyjuI4k7Z0iL3t30vsD+YxCoTF5N8X3guMplxs3iwsky9S0ep6eGuiWXliA1bM7eQSoy3IVuWY
 96WEpuMnLK2rt0U0JovCx1La7hg31FxH5OovL2xkXYOpBLS7LPgQjQ9KpsTiw53Y1S3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0J8yonFInhZHz75oT5XjPZjA0qkN5zi4OoPXSqV8oEc=; b=B
 u3nJ93G3398vSLOCteN/zjgJCwa1jOUZgjilqU/t1GUTwkpRtIFvW1DTAh5Hz9n7x1+SYy8/PRSIo
 ODtMycs+nrcUIr13fUQeHCvuQoyjEHcbdWLMHv/7amwm0anXAqd9y3PNMM9n6bL0CmGG25MlYt3nP
 ZDrIYX71gusu+fV0=;
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l55Tx-00EhiS-Qj
 for v9fs-developer@lists.sourceforge.net; Thu, 28 Jan 2021 11:29:16 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DRJ8n6DgtzlBxV;
 Thu, 28 Jan 2021 19:27:05 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.498.0; Thu, 28 Jan 2021
 19:28:33 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <torvalds@linux-foundation.org>, <cl@linux.com>, <penberg@kernel.org>,
 <rientjes@google.com>, <iamjoonsoo.kim@lge.com>, <akpm@linux-foundation.org>, 
 <vbabka@suse.cz>
Date: Thu, 28 Jan 2021 19:32:50 +0800
Message-ID: <20210128113250.60078-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l55Tx-00EhiS-Qj
Subject: [V9fs-developer] [PATCH] Revert "mm/slub: fix a memory leak in
 sysfs_slab_add()"
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, syzbot+d0bd96b4696c1ef67991@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This reverts commit dde3c6b72a16c2db826f54b2d49bdea26c3534a2.

syzbot report a double-free bug. The following case can cause this bug.
 - mm/slab_common.c: create_cache(): if the __kmem_cache_create()
fails, it does:

	out_free_cache:
		kmem_cache_free(kmem_cache, s);

 - but __kmem_cache_create() - at least for slub() - will have done

	sysfs_slab_add(s)
		-> sysfs_create_group() .. fails ..
		-> kobject_del(&s->kobj); .. which frees s ...

We can't remove the kmem_cache_free() in create_cache(), because
other error cases of __kmem_cache_create() do not free this.

So, revert the commit dde3c6b72a16 ("mm/slub: fix a memory leak in
sysfs_slab_add()") to fix this.

Reported-by: syzbot+d0bd96b4696c1ef67991@syzkaller.appspotmail.com
Fixes: dde3c6b72a16 ("mm/slub: fix a memory leak in sysfs_slab_add()")
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 mm/slub.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/mm/slub.c b/mm/slub.c
index 69742ab9a21d..7ecbbbe5bc0c 100644
--- a/mm/slub.c
+++ b/mm/slub.c
@@ -5625,10 +5625,8 @@ static int sysfs_slab_add(struct kmem_cache *s)
 
 	s->kobj.kset = kset;
 	err = kobject_init_and_add(&s->kobj, &slab_ktype, NULL, "%s", name);
-	if (err) {
-		kobject_put(&s->kobj);
+	if (err)
 		goto out;
-	}
 
 	err = sysfs_create_group(&s->kobj, &slab_attr_group);
 	if (err)
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
