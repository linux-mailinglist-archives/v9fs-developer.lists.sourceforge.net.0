Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6E157603F
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Jul 2022 13:27:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCJTr-0006pl-Dr; Fri, 15 Jul 2022 11:27:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oCJTp-0006oz-CU
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 11:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mILgqUO26eqTSreQ0SQtoeOfDRu9Sz1ylEU3McvwTJ0=; b=LmWkV4ThqiTJPnceSbJnQ74VQ+
 NKAtSqQnsGfjRA4ZQ0R6aTL2YdcAZXzaSAQcfbF1Zp++PLIzVDHIzeXznMRpxckR6tVxyMaQoPPZM
 8z7TeHeweHFM/plnkxwSa2tutk9gSvofejngfULhaAZjlIOInJsFa93gKMolqTluSUok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mILgqUO26eqTSreQ0SQtoeOfDRu9Sz1ylEU3McvwTJ0=; b=STpg0t8PVstPjlTB8ZEc3sbkDf
 bDa5dmwt+17+nn8dcWDIXByPzk8BG1zICciFlN7dAQHb5jJBN0b25uhH0ximROMbkl3ojBse5j4aG
 yPUZsBmV0lxAo9v4LvA8WvuQC33aAQrcwAxd/PR5hbtA1LSthOrKBRJhwxxKGkWzqcuI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCJTm-0002HI-VZ
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 11:27:33 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9D5FEC01C; Fri, 15 Jul 2022 13:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657884443; bh=mILgqUO26eqTSreQ0SQtoeOfDRu9Sz1ylEU3McvwTJ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o2CJYMnfS5rAJ3J+IZN7XNCblXuwvwN02WmqRQRtQOVoYRzkXfqh5a76KTcSYoIrl
 hp02r9mCKHPvN+eAAgqttan4BzJKuy+IHoHBswfmwOMn1uy64IwazHgiAyL/lRNuW/
 2Yn5iEuBosD8BtJiMTxkz7DKsfmeBjTb94TZUV/ru4ZgeGlPiuYKdPyFdYzY8FHQac
 84Z0qLv4/1pvJ6zJwYf0dizPc00LCfYRAT+p7hmKOiiHnuDESX6BueORuT6FbeeNea
 QqzpuToisTdJTQu0kXENhqxW+yWHUCi/Gq02IMTYSnObt9wY5shCnNeOu9PG9i9LHS
 BJJvmwNNMKJQw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 53D47C009;
 Fri, 15 Jul 2022 13:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657884441; bh=mILgqUO26eqTSreQ0SQtoeOfDRu9Sz1ylEU3McvwTJ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0epLQkIjILAAQciXqnVCCN39ToRaoVANI8rNOIPBLzcd0R00hTdiiRUrG6ow41QwF
 k3j3QctJBRGusygHPEKscdyrnB1BghIxDXi6lMs02cH+HuJsx0g9dcDr5sMUvbWN76
 f0tT4s+0ZNn0m02dO62Cuk3ahRKekq+JK0Yn66OdaDXU81OgWyyx8JIvJLLa5PH5re
 G17KKc95takSexjhU9bOikG+xajtvBEHYikqMBTeMie9P7v/Npzo1136fhu1nijIWM
 p6gQ3/JiceTqdf5wSuvz4nh/3MOFlQIasYZM0xib4rETA8apd42wwL4fV1sfClvB/L
 tabVG8D+HiqoA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 75838caa;
 Fri, 15 Jul 2022 11:27:16 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 20:27:04 +0900
Message-Id: <20220715112704.2556071-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220712060801.2487140-1-asmadeus@codewreck.org>
References: <20220712060801.2487140-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: mempool prep commit removed the awkward kref usage which
 didn't
 allow passing client pointer easily with the ref, so we no longer need a
 separate function to remove the tag from idr. This has the side benefit that
 it should be more robust in detecting leaks: umount will now properly catch
 unfreed requests as they still will be in the idr until the last ref is
 dropped Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oCJTm-0002HI-VZ
Subject: [V9fs-developer] [PATCH v2] 9p: roll p9_tag_remove into p9_req_put
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

mempool prep commit removed the awkward kref usage which didn't
allow passing client pointer easily with the ref, so we no longer
need a separate function to remove the tag from idr.

This has the side benefit that it should be more robust in detecting
leaks: umount will now properly catch unfreed requests as they still
will be in the idr until the last ref is dropped

Link: https://lkml.kernel.org/r/20220712060801.2487140-1-asmadeus@codewreck.org
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
v1->v2: restored p9_tag_remove for the idr_remove() call with lock
as per Christian's suggestion. Thanks!

And yes, sorry about that 'failme'...

 net/9p/client.c | 101 ++++++++++++++++++++++++------------------------
 1 file changed, 51 insertions(+), 50 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 0be19ab1f693..89c5aeb00076 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -298,7 +298,7 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 	/* Init ref to two because in the general case there is one ref
 	 * that is put asynchronously by a writer thread, one ref
 	 * temporarily given by p9_tag_lookup and put by p9_client_cb
-	 * in the recv thread, and one ref put by p9_tag_remove in the
+	 * in the recv thread, and one ref put by p9_req_put in the
 	 * main thread. The only exception is virtio that does not use
 	 * p9_tag_lookup but does not have a writer thread either
 	 * (the write happens synchronously in the request/zc_request
@@ -358,21 +358,22 @@ EXPORT_SYMBOL(p9_tag_lookup);
  *
  * Context: Any context.
  */
-static int p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
+static void p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
 {
 	unsigned long flags;
 	u16 tag = r->tc.tag;
 
-	p9_debug(P9_DEBUG_MUX, "clnt %p req %p tag: %d\n", c, r, tag);
+	p9_debug(P9_DEBUG_MUX, "freeing clnt %p req %p tag: %d\n", c, r, tag);
 	spin_lock_irqsave(&c->lock, flags);
 	idr_remove(&c->reqs, tag);
 	spin_unlock_irqrestore(&c->lock, flags);
-	return p9_req_put(c, r);
 }
 
 int p9_req_put(struct p9_client *c, struct p9_req_t *r)
 {
 	if (refcount_dec_and_test(&r->refcount)) {
+		p9_tag_remove(c, r);
+
 		p9_fcall_fini(&r->tc);
 		p9_fcall_fini(&r->rc);
 		kmem_cache_free(p9_req_cache, r);
@@ -397,7 +398,7 @@ static void p9_tag_cleanup(struct p9_client *c)
 	rcu_read_lock();
 	idr_for_each_entry(&c->reqs, req, id) {
 		pr_info("Tag %d still in use\n", id);
-		if (p9_tag_remove(c, req) == 0)
+		if (p9_req_put(c, req) == 0)
 			pr_warn("Packet with tag %d has still references",
 				req->tc.tag);
 	}
@@ -670,7 +671,7 @@ static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
 			c->trans_mod->cancelled(c, oldreq);
 	}
 
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 	return 0;
 }
 
@@ -704,7 +705,7 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
 	trace_9p_client_req(c, type, req->tc.tag);
 	return req;
 reterr:
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 	/* We have to put also the 2nd reference as it won't be used */
 	p9_req_put(c, req);
 	return ERR_PTR(err);
@@ -716,7 +717,7 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
  * @type: type of request
  * @fmt: protocol format string (see protocol.c)
  *
- * Returns request structure (which client must free using p9_tag_remove)
+ * Returns request structure (which client must free using p9_req_put)
  */
 
 static struct p9_req_t *
@@ -794,7 +795,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	if (!err)
 		return req;
 reterr:
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 	return ERR_PTR(safe_errno(err));
 }
 
@@ -809,7 +810,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
  * @in_hdrlen: reader header size, This is the size of response protocol data
  * @fmt: protocol format string (see protocol.c)
  *
- * Returns request structure (which client must free using p9_tag_remove)
+ * Returns request structure (which client must free using p9_req_put)
  */
 static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 					 struct iov_iter *uidata,
@@ -876,7 +877,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	if (!err)
 		return req;
 reterr:
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 	return ERR_PTR(safe_errno(err));
 }
 
@@ -1005,7 +1006,7 @@ static int p9_client_version(struct p9_client *c)
 
 error:
 	kfree(version);
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 
 	return err;
 }
@@ -1159,7 +1160,7 @@ struct p9_fid *p9_client_attach(struct p9_client *clnt, struct p9_fid *afid,
 	err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", &qid);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto error;
 	}
 
@@ -1168,7 +1169,7 @@ struct p9_fid *p9_client_attach(struct p9_client *clnt, struct p9_fid *afid,
 
 	memmove(&fid->qid, &qid, sizeof(struct p9_qid));
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return fid;
 
 error:
@@ -1215,10 +1216,10 @@ struct p9_fid *p9_client_walk(struct p9_fid *oldfid, uint16_t nwname,
 	err = p9pdu_readf(&req->rc, clnt->proto_version, "R", &nwqids, &wqids);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto clunk_fid;
 	}
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 
 	p9_debug(P9_DEBUG_9P, "<<< RWALK nwqid %d:\n", nwqids);
 
@@ -1294,7 +1295,7 @@ int p9_client_open(struct p9_fid *fid, int mode)
 	fid->iounit = iounit;
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1338,7 +1339,7 @@ int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags,
 	ofid->iounit = iounit;
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1382,7 +1383,7 @@ int p9_client_fcreate(struct p9_fid *fid, const char *name, u32 perm, int mode,
 	fid->iounit = iounit;
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1416,7 +1417,7 @@ int p9_client_symlink(struct p9_fid *dfid, const char *name,
 		 qid->type, qid->path, qid->version);
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1436,7 +1437,7 @@ int p9_client_link(struct p9_fid *dfid, struct p9_fid *oldfid, const char *newna
 		return PTR_ERR(req);
 
 	p9_debug(P9_DEBUG_9P, "<<< RLINK\n");
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return 0;
 }
 EXPORT_SYMBOL(p9_client_link);
@@ -1460,7 +1461,7 @@ int p9_client_fsync(struct p9_fid *fid, int datasync)
 
 	p9_debug(P9_DEBUG_9P, "<<< RFSYNC fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 
 error:
 	return err;
@@ -1488,7 +1489,7 @@ int p9_client_clunk(struct p9_fid *fid)
 
 	p9_debug(P9_DEBUG_9P, "<<< RCLUNK fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	/* Fid is not valid even after a failed clunk
 	 * If interrupted, retry once then give up and
@@ -1522,7 +1523,7 @@ int p9_client_remove(struct p9_fid *fid)
 
 	p9_debug(P9_DEBUG_9P, "<<< RREMOVE fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	if (err == -ERESTARTSYS)
 		p9_fid_put(fid);
@@ -1549,7 +1550,7 @@ int p9_client_unlinkat(struct p9_fid *dfid, const char *name, int flags)
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RUNLINKAT fid %d %s\n", dfid->fid, name);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1617,7 +1618,7 @@ p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
 			   "D", &count, &dataptr);
 	if (*err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		return 0;
 	}
 	if (rsize < count) {
@@ -1632,13 +1633,13 @@ p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
 
 		if (n != count) {
 			*err = -EFAULT;
-			p9_tag_remove(clnt, req);
+			p9_req_put(clnt, req);
 			return n;
 		}
 	} else {
 		iov_iter_advance(to, count);
 	}
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return count;
 }
 EXPORT_SYMBOL(p9_client_read_once);
@@ -1681,7 +1682,7 @@ p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
 		*err = p9pdu_readf(&req->rc, clnt->proto_version, "d", &count);
 		if (*err) {
 			trace_9p_protocol_dump(clnt, &req->rc);
-			p9_tag_remove(clnt, req);
+			p9_req_put(clnt, req);
 			break;
 		}
 		if (rsize < count) {
@@ -1691,7 +1692,7 @@ p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
 
 		p9_debug(P9_DEBUG_9P, "<<< RWRITE count %d\n", count);
 
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		iov_iter_advance(from, count);
 		total += count;
 		offset += count;
@@ -1726,7 +1727,7 @@ struct p9_wstat *p9_client_stat(struct p9_fid *fid)
 	err = p9pdu_readf(&req->rc, clnt->proto_version, "wS", &ignored, ret);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto error;
 	}
 
@@ -1743,7 +1744,7 @@ struct p9_wstat *p9_client_stat(struct p9_fid *fid)
 		 from_kgid(&init_user_ns, ret->n_gid),
 		 from_kuid(&init_user_ns, ret->n_muid));
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return ret;
 
 error:
@@ -1779,7 +1780,7 @@ struct p9_stat_dotl *p9_client_getattr_dotl(struct p9_fid *fid,
 	err = p9pdu_readf(&req->rc, clnt->proto_version, "A", ret);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto error;
 	}
 
@@ -1805,7 +1806,7 @@ struct p9_stat_dotl *p9_client_getattr_dotl(struct p9_fid *fid,
 		 ret->st_btime_sec, ret->st_btime_nsec,
 		 ret->st_gen, ret->st_data_version);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return ret;
 
 error:
@@ -1877,7 +1878,7 @@ int p9_client_wstat(struct p9_fid *fid, struct p9_wstat *wst)
 
 	p9_debug(P9_DEBUG_9P, "<<< RWSTAT fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1909,7 +1910,7 @@ int p9_client_setattr(struct p9_fid *fid, struct p9_iattr_dotl *p9attr)
 		goto error;
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RSETATTR fid %d\n", fid->fid);
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1937,7 +1938,7 @@ int p9_client_statfs(struct p9_fid *fid, struct p9_rstatfs *sb)
 			  &sb->files, &sb->ffree, &sb->fsid, &sb->namelen);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto error;
 	}
 
@@ -1946,7 +1947,7 @@ int p9_client_statfs(struct p9_fid *fid, struct p9_rstatfs *sb)
 		 fid->fid, sb->type, sb->bsize, sb->blocks, sb->bfree,
 		 sb->bavail, sb->files, sb->ffree, sb->fsid, sb->namelen);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1974,7 +1975,7 @@ int p9_client_rename(struct p9_fid *fid,
 
 	p9_debug(P9_DEBUG_9P, "<<< RRENAME fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -2004,7 +2005,7 @@ int p9_client_renameat(struct p9_fid *olddirfid, const char *old_name,
 	p9_debug(P9_DEBUG_9P, "<<< RRENAMEAT newdirfid %d new name %s\n",
 		 newdirfid->fid, new_name);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -2040,10 +2041,10 @@ struct p9_fid *p9_client_xattrwalk(struct p9_fid *file_fid,
 	err = p9pdu_readf(&req->rc, clnt->proto_version, "q", attr_size);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto clunk_fid;
 	}
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	p9_debug(P9_DEBUG_9P, "<<<  RXATTRWALK fid %d size %llu\n",
 		 attr_fid->fid, *attr_size);
 	return attr_fid;
@@ -2077,7 +2078,7 @@ int p9_client_xattrcreate(struct p9_fid *fid, const char *name,
 		goto error;
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RXATTRCREATE fid %d\n", fid->fid);
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -2139,11 +2140,11 @@ int p9_client_readdir(struct p9_fid *fid, char *data, u32 count, u64 offset)
 	if (non_zc)
 		memmove(data, dataptr, count);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return count;
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -2175,7 +2176,7 @@ int p9_client_mknod_dotl(struct p9_fid *fid, const char *name, int mode,
 		 qid->type, qid->path, qid->version);
 
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_mknod_dotl);
@@ -2205,7 +2206,7 @@ int p9_client_mkdir_dotl(struct p9_fid *fid, const char *name, int mode,
 		 qid->path, qid->version);
 
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_mkdir_dotl);
@@ -2237,7 +2238,7 @@ int p9_client_lock_dotl(struct p9_fid *fid, struct p9_flock *flock, u8 *status)
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RLOCK status %i\n", *status);
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_lock_dotl);
@@ -2274,7 +2275,7 @@ int p9_client_getlock_dotl(struct p9_fid *fid, struct p9_getlock *glock)
 		 glock->type, glock->start, glock->length,
 		 glock->proc_id, glock->client_id);
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_getlock_dotl);
@@ -2300,7 +2301,7 @@ int p9_client_readlink(struct p9_fid *fid, char **target)
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RREADLINK target %s\n", *target);
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_readlink);
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
