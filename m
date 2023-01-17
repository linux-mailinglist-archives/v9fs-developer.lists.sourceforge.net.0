Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 332F266DFB8
	for <lists+v9fs-developer@lfdr.de>; Tue, 17 Jan 2023 14:58:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pHmTV-0003ba-Tp;
	Tue, 17 Jan 2023 13:58:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <alexander.shishkin@linux.intel.com>)
 id 1pHmTT-0003aj-4N for v9fs-developer@lists.sourceforge.net;
 Tue, 17 Jan 2023 13:58:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZPaohvOOdAHG8KI6ou7E4gNScuNBKBQl8tEE51T1U6Y=; b=g0rRXrcO8du1wjvffkiNAitgmH
 v55mV0pZLMU7MSBpxBb7k0AeHPi4qXFQ5ZtNcgc7N6tOy7nrCex0fPy/PZTm7bT1wurOeR04rr/PN
 11CmYRRwQ77+ta+iBry7EmLjj4sgKPI61p19JGkIy0LsvS3aTOnTqIw6oY24yjYvoPWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZPaohvOOdAHG8KI6ou7E4gNScuNBKBQl8tEE51T1U6Y=; b=NgBKDZrAjPh3Kjfh2YjZOGdzvb
 VhyxHgfNlKxH/uuFz/4J3UwCmwCtg9+/MF81k0aMBK7EeIvcClVv8Q3UqsPWR9SojVZQWWVR29jwX
 GiHUJG0jcwGzfOe7StdjaVtlmrjp4pSGFdD7/TrlE/GW0mYzKoTjwEJJBqxoH03hB1+A=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pHmTQ-006tgQ-En for v9fs-developer@lists.sourceforge.net;
 Tue, 17 Jan 2023 13:58:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673963880; x=1705499880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sxuJo/zRDbJxR1+wSfnvotIe3aCGZK7LX2LrZ/xj7YY=;
 b=YafxPzuMA40b7fQrORoY9H8QUBd/K247C4oBE+wL6Vjok1/AxP4QuwZj
 xM3SjrQcVuWlJanau7Y0pYm1f6CH4pw8QtGpK8G6N81mx6ikwg6VzkwLP
 59ggK7OJRsZJDktDFMWKv/NnJgzLlbN14uo522GpYtl0Npd+5aXFcLqxj
 LIeXRIlXAiNjys17CYm7v6czW8xrqH6MndswJ+ePeMNemG1pRHtoZQ23A
 /QY2G9begwmgLE33PoUu7ubgjKgo0n+0G5lqOINiA9AJMhacEhYbsp2Ye
 J5QUJDH4cnSMPll58/AjmacFGcXHmVFOxNxYt8pIxWVLuGvWhBKdhn/Q6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="389197735"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="389197735"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 05:57:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="722666870"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="722666870"
Received: from black.fi.intel.com (HELO black.fi.intel.com.) ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jan 2023 05:57:51 -0800
From: Alexander Shishkin <alexander.shishkin@linux.intel.com>
To: mst@redhat.com,
	jasowang@redhat.com
Date: Tue, 17 Jan 2023 15:57:58 +0200
Message-Id: <20230117135800.39184-4-alexander.shishkin@linux.intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230117135800.39184-1-alexander.shishkin@linux.intel.com>
References: <20230117135800.39184-1-alexander.shishkin@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Andi Kleen <ak@linux.intel.com> tag_len is read as a
 u16 from the untrusted host. It could overflow in the memory allocation,
 which would lead to a too small buffer. Some later loops use it when extended
 to 32bit, so they could overflow the too small buffer. 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pHmTQ-006tgQ-En
Subject: [V9fs-developer] [PATCH 3/5] virtio 9p: Fix an overflow
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Andi Kleen <ak@linux.intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 virtualization@lists.linux-foundation.org,
 Eric Van Hensbergen <ericvh@gmail.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Andi Kleen <ak@linux.intel.com>

tag_len is read as a u16 from the untrusted host. It could overflow
in the memory allocation, which would lead to a too small buffer.

Some later loops use it when extended to 32bit, so they could overflow
the too small buffer.

Make sure to do the arithmetic for the buffer size in 32bit to avoid
wrapping.

Signed-off-by: Andi Kleen <ak@linux.intel.com>
Signed-off-by: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>
Cc: Dominique Martinet <asmadeus@codewreck.org>
Cc: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net
---
 net/9p/trans_virtio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 3c27ffb781e3..a78e4d80e5ba 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -629,7 +629,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 		err = -EINVAL;
 		goto out_free_vq;
 	}
-	tag = kzalloc(tag_len + 1, GFP_KERNEL);
+	tag = kzalloc((u32)tag_len + 1, GFP_KERNEL);
 	if (!tag) {
 		err = -ENOMEM;
 		goto out_free_vq;
-- 
2.39.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
