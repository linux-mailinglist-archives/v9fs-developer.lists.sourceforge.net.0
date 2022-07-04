Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 384E3564B3F
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 03:43:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8B76-0005Dq-0C; Mon, 04 Jul 2022 01:43:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o8B74-0005Dj-NI
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 01:42:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nS5uamsou0zUk5LgoTgLo0LF42b+KXux6Lknz0BOHs0=; b=SoVU4h3k+Ms02MVSDcC6kXQxXN
 cGmFa9YT4HtMfkugll+mAqvhsEbEXJu+v50ck2OwdbQw7CTStE1pnbi51G3yYJ5zc6/IV1uLqVUIA
 qURNhIdUd1C8JwRRy3nt/d/9Vf8d0umoPySbWCKQ8+aZ6dgdpTBahJ3qEnzwLauLpT04=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nS5uamsou0zUk5LgoTgLo0LF42b+KXux6Lknz0BOHs0=; b=NH2aXMZlQqMAi5YfaxGv/fNquh
 oxgUbN2RRonh/p9HXoQWp8c8LcI1Ip/dco9lA1srl5s7EzH5M2mDkCX9VB578kQ3KMm0c46wjht9p
 woPVMn8LSI6V6L/YDwXhJDUPzhf3gDlP+dEDZv/th794MMGKlGSpFvThmO6mN6Q26e3U=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8B73-0004OV-Gl
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 01:42:59 +0000
Received: by mail-qk1-f178.google.com with SMTP id z7so5905968qko.8
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 03 Jul 2022 18:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nS5uamsou0zUk5LgoTgLo0LF42b+KXux6Lknz0BOHs0=;
 b=luEURQNMwiOBULIg7zLXzx9UL1Eib0iIs2tI1Xj/ZDp9bTd2+2/Qk2x9UMesprDHtG
 sdpejqrpCv0Da8MF+CBU2G57xlK8OmGTP2ucHlU9Cz7W5JrTzfOUQ3FL6xTqZKoBZhu1
 rC52t0bcnx4tYgRq7QuHvNCjKrdC14Y97JRj5+XQO9FCYfRQQf3etX3PPFQIhzJhTkCr
 o263uGPmqqEI+eWjGlcGXMWRsDv2GuHr9pXrWVhw/ZzznRKkwn/enhkhBXRNPjena69v
 zHKA0JB+jcTo0G6WM8sVfUk7oom8Fwh0xCfLW6+F3IrGyIWHZb2PBV10XNvd/hoTwMZu
 5gPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nS5uamsou0zUk5LgoTgLo0LF42b+KXux6Lknz0BOHs0=;
 b=60deA06IzrqDLCXHm/+xXucNopcKpU/iAntHk3eq+PhBHqAaZIn/iyKEcnxN40zTEu
 lsLA9CYALCeA+/Ulbky4YRMa6Z/c2OpR45tN6n0graaEfRM8XCEPWBnm+cbmb15cIpC/
 KgdDTrVtARM9sKweyjn1RU/KrP2GFQtGlw8bVfvRMDY7eFK8qo0oJw50hrcUmAQNdPE9
 g0pc2AXHQFj8SuZSJAqTJd3YV3VfuZ1nHMSbIal0PeN4LSDsABmZiJyzk9bHapbqMUeu
 oy7FHc35+5OQWwl/SsVYVRWNb2/IMyGRsm6H1DmKqtk3CJo+MeHKWmAwgXxQXqc3PTwP
 j2Jg==
X-Gm-Message-State: AJIora9LIgFJMcjyl7mCYbj/QcHP6LbRrIXZufGMZ9Um7eFdIP+eAdVd
 PJ2XC2d+r1wIXfd9JCWzfQ==
X-Google-Smtp-Source: AGRyM1sEF+JETUblxucmbIMaLu0KUEt7eKYGBudlJhcfZB4kRcwcLgW+mBaRy+NaWqWUOc8ZHok7hg==
X-Received: by 2002:a05:620a:4256:b0:6ab:54c4:cf9 with SMTP id
 w22-20020a05620a425600b006ab54c40cf9mr18334257qko.234.1656898971669; 
 Sun, 03 Jul 2022 18:42:51 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 f6-20020a05622a104600b0031d283f4c4dsm9824198qte.60.2022.07.03.18.42.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jul 2022 18:42:50 -0700 (PDT)
From: Kent Overstreet <kent.overstreet@gmail.com>
To: linux-kernel@vger.kernel.org
Date: Sun,  3 Jul 2022 21:42:43 -0400
Message-Id: <20220704014243.153050-3-kent.overstreet@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220704014243.153050-1-kent.overstreet@gmail.com>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <20220704014243.153050-1-kent.overstreet@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Signed-off-by: Kent Overstreet Cc: Eric Van Hensbergen Cc:
 Latchesar Ionkov Cc: Dominique Martinet --- include/net/9p/9p.h | 6 ++++-
 include/net/9p/client.h | 5 +++- net/9p/client.c | 58 +++++ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.178 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o8B73-0004OV-Gl
Subject: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Signed-off-by: Kent Overstreet <kent.overstreet@gmail.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>
Cc: Dominique Martinet <asmadeus@codewreck.org>
---
 include/net/9p/9p.h     |  6 ++++-
 include/net/9p/client.h |  5 +++-
 net/9p/client.c         | 58 ++++++++++++++++++++++++++++++-----------
 net/9p/trans_rdma.c     |  2 +-
 4 files changed, 53 insertions(+), 18 deletions(-)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 24a509f559..c0d59b53c1 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -539,12 +539,16 @@ struct p9_rstatfs {
 struct p9_fcall {
 	u32 size;
 	u8 id;
+	enum p9_fcall_alloc {
+		P9_FCALL_KMEM_CACHE,
+		P9_FCALL_KMALLOC,
+		P9_FCALL_MEMPOOL,
+	} allocated;
 	u16 tag;
 
 	size_t offset;
 	size_t capacity;
 
-	struct kmem_cache *cache;
 	u8 *sdata;
 };
 
diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index cb78e0e333..6517ca36bf 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -9,6 +9,7 @@
 #ifndef NET_9P_CLIENT_H
 #define NET_9P_CLIENT_H
 
+#include <linux/mempool.h>
 #include <linux/utsname.h>
 #include <linux/idr.h>
 
@@ -106,6 +107,7 @@ struct p9_client {
 	enum p9_trans_status status;
 	void *trans;
 	struct kmem_cache *fcall_cache;
+	mempool_t pools[2];
 
 	union {
 		struct {
@@ -222,7 +224,8 @@ int p9_client_mkdir_dotl(struct p9_fid *fid, const char *name, int mode,
 				kgid_t gid, struct p9_qid *qid);
 int p9_client_lock_dotl(struct p9_fid *fid, struct p9_flock *flock, u8 *status);
 int p9_client_getlock_dotl(struct p9_fid *fid, struct p9_getlock *fl);
-void p9_fcall_fini(struct p9_fcall *fc);
+void p9_fcall_fini(struct p9_client *c, struct p9_fcall *fc,
+		   int fc_idx);
 struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag);
 
 static inline void p9_req_get(struct p9_req_t *r)
diff --git a/net/9p/client.c b/net/9p/client.c
index a36a40137c..82061c49cb 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -219,22 +219,34 @@ static int parse_opts(char *opts, struct p9_client *clnt)
 }
 
 static int p9_fcall_init(struct p9_client *c, struct p9_fcall *fc,
-			 int alloc_msize)
+			 int fc_idx, unsigned alloc_msize)
 {
+	WARN(alloc_msize > c->msize, "alloc_mize %u client msize %u",
+	     alloc_msize, c->msize);
+
 	if (likely(c->fcall_cache) && alloc_msize == c->msize) {
 		fc->sdata = kmem_cache_alloc(c->fcall_cache, GFP_NOFS);
-		fc->cache = c->fcall_cache;
+		fc->allocated = P9_FCALL_KMEM_CACHE;
 	} else {
 		fc->sdata = kmalloc(alloc_msize, GFP_NOFS);
-		fc->cache = NULL;
+		fc->allocated = P9_FCALL_KMALLOC;
 	}
-	if (!fc->sdata)
+
+	if (!fc->sdata >> alloc_msize > c->msize)
 		return -ENOMEM;
+
+	if (!fc->sdata) {
+		fc->sdata = mempool_alloc(&c->pools[fc_idx], GFP_NOFS);
+		fc->allocated = P9_FCALL_MEMPOOL;
+		alloc_msize = c->msize;
+	}
+
 	fc->capacity = alloc_msize;
 	return 0;
 }
 
-void p9_fcall_fini(struct p9_fcall *fc)
+void p9_fcall_fini(struct p9_client *c, struct p9_fcall *fc,
+		   int fc_idx)
 {
 	/* sdata can be NULL for interrupted requests in trans_rdma,
 	 * and kmem_cache_free does not do NULL-check for us
@@ -242,10 +254,17 @@ void p9_fcall_fini(struct p9_fcall *fc)
 	if (unlikely(!fc->sdata))
 		return;
 
-	if (fc->cache)
-		kmem_cache_free(fc->cache, fc->sdata);
-	else
+	switch (fc->allocated) {
+	case P9_FCALL_KMEM_CACHE:
+		kmem_cache_free(c->fcall_cache, fc->sdata);
+		break;
+	case P9_FCALL_KMALLOC:
 		kfree(fc->sdata);
+		break;
+	case P9_FCALL_MEMPOOL:
+		mempool_free(fc->sdata, &c->pools[fc_idx]);
+		break;
+	}
 }
 EXPORT_SYMBOL(p9_fcall_fini);
 
@@ -270,9 +289,9 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 	if (!req)
 		return ERR_PTR(-ENOMEM);
 
-	if (p9_fcall_init(c, &req->tc, alloc_msize))
+	if (p9_fcall_init(c, &req->tc, 0, alloc_msize))
 		goto free_req;
-	if (p9_fcall_init(c, &req->rc, alloc_msize))
+	if (p9_fcall_init(c, &req->rc, 1, alloc_msize))
 		goto free;
 
 	p9pdu_reset(&req->tc);
@@ -310,8 +329,8 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 	return req;
 
 free:
-	p9_fcall_fini(&req->tc);
-	p9_fcall_fini(&req->rc);
+	p9_fcall_fini(c, &req->tc, 0);
+	p9_fcall_fini(c, &req->rc, 1);
 free_req:
 	kmem_cache_free(p9_req_cache, req);
 	return ERR_PTR(-ENOMEM);
@@ -373,8 +392,8 @@ static int p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
 int p9_req_put(struct p9_client *c, struct p9_req_t *r)
 {
 	if (refcount_dec_and_test(&r->refcount)) {
-		p9_fcall_fini(&r->tc);
-		p9_fcall_fini(&r->rc);
+		p9_fcall_fini(c, &r->tc, 0);
+		p9_fcall_fini(c, &r->rc, 1);
 		kmem_cache_free(p9_req_cache, r);
 		return 1;
 	}
@@ -999,7 +1018,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	char *client_id;
 
 	err = 0;
-	clnt = kmalloc(sizeof(*clnt), GFP_KERNEL);
+	clnt = kzalloc(sizeof(*clnt), GFP_KERNEL);
 	if (!clnt)
 		return ERR_PTR(-ENOMEM);
 
@@ -1063,6 +1082,11 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 					   clnt->msize - (P9_HDRSZ + 4),
 					   NULL);
 
+	err =   mempool_init_kmalloc_pool(&clnt->pools[0], 4, clnt->msize) ?:
+		mempool_init_kmalloc_pool(&clnt->pools[1], 4, clnt->msize);
+	if (err)
+		goto close_trans;
+
 	return clnt;
 
 close_trans:
@@ -1070,6 +1094,8 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 put_trans:
 	v9fs_put_trans(clnt->trans_mod);
 free_client:
+	mempool_exit(&clnt->pools[1]);
+	mempool_exit(&clnt->pools[0]);
 	kfree(clnt);
 	return ERR_PTR(err);
 }
@@ -1094,6 +1120,8 @@ void p9_client_destroy(struct p9_client *clnt)
 
 	p9_tag_cleanup(clnt);
 
+	mempool_exit(&clnt->pools[1]);
+	mempool_exit(&clnt->pools[0]);
 	kmem_cache_destroy(clnt->fcall_cache);
 	kfree(clnt);
 }
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index d817d37452..99d878d70d 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -431,7 +431,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 	if (unlikely(atomic_read(&rdma->excess_rc) > 0)) {
 		if ((atomic_sub_return(1, &rdma->excess_rc) >= 0)) {
 			/* Got one! */
-			p9_fcall_fini(&req->rc);
+			p9_fcall_fini(client, &req->rc, 1);
 			req->rc.sdata = NULL;
 			goto dont_need_post_recv;
 		} else {
-- 
2.36.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
