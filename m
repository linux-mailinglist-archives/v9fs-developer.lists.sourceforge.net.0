Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C33F56344A1
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 20:33:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxZ1Y-0004H4-FO;
	Tue, 22 Nov 2022 19:33:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <e0edec84b1c80119ae937ce854b4f5f6dbe2d08c@lizzy.crudebyte.com>)
 id 1oxZ1X-0004Gy-4m for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 19:33:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RO9sw++pfIwBQdkuVrGjUBNV/KCLhBvtU55dRc8P7k8=; b=MOTTNFiLsZKbfqekVyDl6j9cNc
 gmhQ6s0jkO5bq+qdx+7sHd77BsL4NyGJlnk0rCH+/NAkQxmozDXZAo4nEU0ZiicDYQWLfMhNeFnGn
 VBG42idILKC1QWW1pB7OVYas61to4XXexuZGn4fE89SIRzavYOBxISihOu/6575aQreM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RO9sw++pfIwBQdkuVrGjUBNV/KCLhBvtU55dRc8P7k8=; b=mYhtG93vzDq681dRksDAdxleoI
 t95qAR6gcSsNcLU8vQMe4+7B57jRGtIR5NDf6Qz62sVEl1bLlMjADGudvqfQhkSyxp3hT/EwUkeHW
 usVICG1INjqTWngVq9RCI/Lw8dpJNaGKVNGyDNuqwBjrjoETLhQsD95yz2zxSOV62bfI=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxZ1W-00ClXg-5P for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 19:33:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=RO9sw++pfIwBQdkuVrGjUBNV/KCLhBvtU55dRc8P7k8=; b=SEDZw
 uJPp3QAdKV2/6R69RAmA2HRkixKOkz0+jR19ECNUXvqsSL6i2E3aamX7XldA0sdG46uR2X5/ehEdV
 eZoeBcw145ak0lHUN9vdkr0oB5QkX4p8D7oRju6wZUzxBN6IBxbJ6CQ6gZ48uHwEBPCIz8djTg/eT
 ELv1xOnFQ3GYraTqq9xrSu0gh/R9NSCK6kSbP/rDdQMKQ3gVg96O9EKv98wD2ZMflzzkTOwMBBCpB
 kx7pPsWvXKnTgNTXMzwM3paxurtqMkJdEtLQ5Z7368M2rpuxNyCCKT2qkj2R4DTy2rc2POpetL+O+
 8S1+NAtLQ45UHlmK2taD/jO2NWV3Q==;
Message-Id: <e0edec84b1c80119ae937ce854b4f5f6dbe2d08c.1669144861.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1669144861.git.linux_oss@crudebyte.com>
References: <cover.1669144861.git.linux_oss@crudebyte.com>
Date: Tue, 22 Nov 2022 20:20:29 +0100
To: Dominique Martinet <asmadeus@codewreck.org>,
 Stefano Stabellini <sstabellini@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Since commit 60ece0833b6c ("net/9p: allocate appropriate
 reduced
 message buffers") it is no longer appropriate to check server's response
 size against msize. Check against the previously allocated buf [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1oxZ1W-00ClXg-5P
Subject: [V9fs-developer] [PATCH v2 2/2] net/9p: fix response size check in
 p9_check_errors()
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Since commit 60ece0833b6c ("net/9p: allocate appropriate reduced message
buffers") it is no longer appropriate to check server's response size
against msize. Check against the previously allocated buffer capacity
instead.

- Omit this size check entirely for zero-copy messages, as those always
  allocate 4k (P9_ZC_HDR_SZ) linear buffers which are not used for actual
  payload and can be much bigger than 4k.

- Replace p9_debug() by pr_err() to make sure this message is always
  printed in case this error is triggered.

- Add 9p message type to error message to ease investigation.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Tested-by: Stefano Stabellini <sstabellini@kernel.org>
Reported-by: kernel test robot <lkp@intel.com>
---
 net/9p/client.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index c7935e392812..0ff25c2157ab 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -514,10 +514,9 @@ static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
 	int ecode;
 
 	err = p9_parse_header(&req->rc, NULL, &type, NULL, 0);
-	if (req->rc.size >= c->msize) {
-		p9_debug(P9_DEBUG_ERROR,
-			 "requested packet size too big: %d\n",
-			 req->rc.size);
+	if (req->rc.size > req->rc.capacity && !req->rc.zc) {
+		pr_err("requested packet size too big: %d does not fit %zu (type=%d)\n",
+		       req->rc.size, req->rc.capacity, req->rc.id);
 		return -EIO;
 	}
 	/* dump the response from server
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
