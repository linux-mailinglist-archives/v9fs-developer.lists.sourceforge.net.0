Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D46157121D
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 08:08:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oB94G-0001uY-Oq; Tue, 12 Jul 2022 06:08:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oB94F-0001uR-TS
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 06:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9+XgDA8aWAEcz20Xcn07UDCWgT83/Dl/PKDwXTfq7bA=; b=DmBNQUoL1AOXXtLraLU3iKg7MS
 kx/VkMzrEaPQ13ODdEKTSi/NTfmvqNdwFwV+JVmu0nbXl/SsQiH/hNokz6VNbjXewgtRS5uBotvPM
 4dKxH8VT/cVFAakH67z1n8xuz65qywoDrtDfNGEkVu/MzWU7mmTbNLQmKpzDFc5IDYlU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9+XgDA8aWAEcz20Xcn07UDCWgT83/Dl/PKDwXTfq7bA=; b=l
 t3BFluc0qmoAbS3rzHGaTBWRaWsPMMtEYnS07dUjGZV0LPeMNdwp0AEp/eH0t/JcjOLpfsFf4+zwB
 jWxtUtPbE5U0qIo3F7lQFG0i+J2MiSfL7PTNl20EpmSP9BWu4NH0yEi/jVdeng2rC9bwrTN+swVSD
 8lmR/UpHKJIY4UOs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oB94C-0006kK-HZ
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 06:08:18 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 33112C009; Tue, 12 Jul 2022 08:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657606090; bh=9+XgDA8aWAEcz20Xcn07UDCWgT83/Dl/PKDwXTfq7bA=;
 h=From:To:Cc:Subject:Date:From;
 b=L5kJxndVBPk5Zf0sJvmpBEboBn8r9ptn8bRN1E2p7AqeegeZDm3GkVSHk0Sa61d6u
 ChQFLWkpdG+Kqw0zuPn7qobM28O0imzbCDI8656r3wjGVKs0E/H53Q4WukZjjKEU0G
 eEb9WNKYXddWqpuhIAeIgyEaLRu1x/lS2SgKB2U62dNDehVwOsFM/OH26fsr0pTCa2
 Bn2Ph0qEY1c5yUO0uaHOhXEnDm9wZgisL0THLUeBj+clCCpl9bjPgZyBXA1dcw++dW
 HTXltm4HqtTs3Z9mWPlqsHVzcMLZ1j3kLi7Bo9Dy0RBfSy3FXp+YUQutu3wxdFd0Wf
 OyVSmj8V98EQw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 57A83C009;
 Tue, 12 Jul 2022 08:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657606088; bh=9+XgDA8aWAEcz20Xcn07UDCWgT83/Dl/PKDwXTfq7bA=;
 h=From:To:Cc:Subject:Date:From;
 b=Ly9wAtHvcFz7jfnu6W+TQMzRrBNhI7E9VBj4cNdxd2Z/LX4/eUBkhQG3amc4piIzD
 +Z3sXB05r4XQCa0L3VmZSB4mKCgi0Rdj3bIJBqMsOkZxjNuHKXtfeHtTc/eVMugIxp
 zIx19toxDfgaciRPsCeTESxU7VPfyC7zjNiCeT7WhdzUxe8Dta9+T7uFCN5M2e+9Nu
 pKZ0l1zGVQHLl5zy5RunH2PTGI36AkAnoBbx2hv1T1RSHKtA3gFgSFdEhAD2b9+0gi
 eCQUNlMvDYwnKeKYle03IOPPD76TdDD1UzKJjeEdTWj4uTORjQzoGjO18gz5yV+wOj
 CYSAzdSVwPrBQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 3a0d9e5f;
 Tue, 12 Jul 2022 06:08:03 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Tue, 12 Jul 2022 15:08:01 +0900
Message-Id: <20220712060801.2487140-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.36.1
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
X-Headers-End: 1oB94C-0006kK-HZ
Subject: [V9fs-developer] [PATCH] 9p: roll p9_tag_remove into p9_req_put
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
Cc: Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Hangyu Hua <hbh25y@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

mempool prep commit removed the awkward kref usage which didn't
allow passing client pointer easily with the ref, so we no longer
need a separate function to remove the tag from idr.

This has the side benefit that it should be more robust in detecting
leaks: umount will now properly catch unfreed requests as they still
will be in the idr until the last ref is dropped

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
Discussion with Hangyu Hua made me notice we don't warn on all leaks on
umount, we can make this more coherent.
The patche requires Kent's first two cosmetic patches to apply, please use
my 9p-next branch for testing:
https://github.com/martinetd/linux/commits/9p-next


 net/9p/client.c   | 122 +++++++++++++++++++++-------------------------
 net/9p/trans_fd.c |   2 +
 2 files changed, 58 insertions(+), 66 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 0be19ab1f693..9aaef9c90666 100644
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
@@ -351,28 +351,18 @@ struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag)
 }
 EXPORT_SYMBOL(p9_tag_lookup);
 
-/**
- * p9_tag_remove - Remove a tag.
- * @c: Client session.
- * @r: Request of reference.
- *
- * Context: Any context.
- */
-static int p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
-{
-	unsigned long flags;
-	u16 tag = r->tc.tag;
-
-	p9_debug(P9_DEBUG_MUX, "clnt %p req %p tag: %d\n", c, r, tag);
-	spin_lock_irqsave(&c->lock, flags);
-	idr_remove(&c->reqs, tag);
-	spin_unlock_irqrestore(&c->lock, flags);
-	return p9_req_put(c, r);
-}
-
 int p9_req_put(struct p9_client *c, struct p9_req_t *r)
 {
 	if (refcount_dec_and_test(&r->refcount)) {
+		unsigned long flags;
+		u16 tag = r->tc.tag;
+
+		p9_debug(P9_DEBUG_MUX, "freeing clnt %p req %p tag: %d\n", c, r, tag);
+
+		spin_lock_irqsave(&c->lock, flags);
+		idr_remove(&c->reqs, tag);
+		spin_unlock_irqrestore(&c->lock, flags);
+
 		p9_fcall_fini(&r->tc);
 		p9_fcall_fini(&r->rc);
 		kmem_cache_free(p9_req_cache, r);
@@ -397,7 +387,7 @@ static void p9_tag_cleanup(struct p9_client *c)
 	rcu_read_lock();
 	idr_for_each_entry(&c->reqs, req, id) {
 		pr_info("Tag %d still in use\n", id);
-		if (p9_tag_remove(c, req) == 0)
+		if (p9_req_put(c, req) == 0)
 			pr_warn("Packet with tag %d has still references",
 				req->tc.tag);
 	}
@@ -670,7 +660,7 @@ static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
 			c->trans_mod->cancelled(c, oldreq);
 	}
 
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 	return 0;
 }
 
@@ -704,7 +694,7 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
 	trace_9p_client_req(c, type, req->tc.tag);
 	return req;
 reterr:
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 	/* We have to put also the 2nd reference as it won't be used */
 	p9_req_put(c, req);
 	return ERR_PTR(err);
@@ -716,7 +706,7 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
  * @type: type of request
  * @fmt: protocol format string (see protocol.c)
  *
- * Returns request structure (which client must free using p9_tag_remove)
+ * Returns request structure (which client must free using p9_req_put)
  */
 
 static struct p9_req_t *
@@ -794,7 +784,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	if (!err)
 		return req;
 reterr:
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 	return ERR_PTR(safe_errno(err));
 }
 
@@ -809,7 +799,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
  * @in_hdrlen: reader header size, This is the size of response protocol data
  * @fmt: protocol format string (see protocol.c)
  *
- * Returns request structure (which client must free using p9_tag_remove)
+ * Returns request structure (which client must free using p9_req_put)
  */
 static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 					 struct iov_iter *uidata,
@@ -876,7 +866,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	if (!err)
 		return req;
 reterr:
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 	return ERR_PTR(safe_errno(err));
 }
 
@@ -1005,7 +995,7 @@ static int p9_client_version(struct p9_client *c)
 
 error:
 	kfree(version);
-	p9_tag_remove(c, req);
+	p9_req_put(c, req);
 
 	return err;
 }
@@ -1159,7 +1149,7 @@ struct p9_fid *p9_client_attach(struct p9_client *clnt, struct p9_fid *afid,
 	err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", &qid);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto error;
 	}
 
@@ -1168,7 +1158,7 @@ struct p9_fid *p9_client_attach(struct p9_client *clnt, struct p9_fid *afid,
 
 	memmove(&fid->qid, &qid, sizeof(struct p9_qid));
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return fid;
 
 error:
@@ -1215,10 +1205,10 @@ struct p9_fid *p9_client_walk(struct p9_fid *oldfid, uint16_t nwname,
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
 
@@ -1294,7 +1284,7 @@ int p9_client_open(struct p9_fid *fid, int mode)
 	fid->iounit = iounit;
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1338,7 +1328,7 @@ int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags,
 	ofid->iounit = iounit;
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1382,7 +1372,7 @@ int p9_client_fcreate(struct p9_fid *fid, const char *name, u32 perm, int mode,
 	fid->iounit = iounit;
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1416,7 +1406,7 @@ int p9_client_symlink(struct p9_fid *dfid, const char *name,
 		 qid->type, qid->path, qid->version);
 
 free_and_error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1436,7 +1426,7 @@ int p9_client_link(struct p9_fid *dfid, struct p9_fid *oldfid, const char *newna
 		return PTR_ERR(req);
 
 	p9_debug(P9_DEBUG_9P, "<<< RLINK\n");
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return 0;
 }
 EXPORT_SYMBOL(p9_client_link);
@@ -1460,7 +1450,7 @@ int p9_client_fsync(struct p9_fid *fid, int datasync)
 
 	p9_debug(P9_DEBUG_9P, "<<< RFSYNC fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 
 error:
 	return err;
@@ -1488,7 +1478,7 @@ int p9_client_clunk(struct p9_fid *fid)
 
 	p9_debug(P9_DEBUG_9P, "<<< RCLUNK fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	/* Fid is not valid even after a failed clunk
 	 * If interrupted, retry once then give up and
@@ -1522,7 +1512,7 @@ int p9_client_remove(struct p9_fid *fid)
 
 	p9_debug(P9_DEBUG_9P, "<<< RREMOVE fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	if (err == -ERESTARTSYS)
 		p9_fid_put(fid);
@@ -1549,7 +1539,7 @@ int p9_client_unlinkat(struct p9_fid *dfid, const char *name, int flags)
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RUNLINKAT fid %d %s\n", dfid->fid, name);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1617,7 +1607,7 @@ p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
 			   "D", &count, &dataptr);
 	if (*err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		return 0;
 	}
 	if (rsize < count) {
@@ -1632,13 +1622,13 @@ p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
 
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
@@ -1681,7 +1671,7 @@ p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
 		*err = p9pdu_readf(&req->rc, clnt->proto_version, "d", &count);
 		if (*err) {
 			trace_9p_protocol_dump(clnt, &req->rc);
-			p9_tag_remove(clnt, req);
+			p9_req_put(clnt, req);
 			break;
 		}
 		if (rsize < count) {
@@ -1691,7 +1681,7 @@ p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
 
 		p9_debug(P9_DEBUG_9P, "<<< RWRITE count %d\n", count);
 
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		iov_iter_advance(from, count);
 		total += count;
 		offset += count;
@@ -1726,7 +1716,7 @@ struct p9_wstat *p9_client_stat(struct p9_fid *fid)
 	err = p9pdu_readf(&req->rc, clnt->proto_version, "wS", &ignored, ret);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto error;
 	}
 
@@ -1743,7 +1733,7 @@ struct p9_wstat *p9_client_stat(struct p9_fid *fid)
 		 from_kgid(&init_user_ns, ret->n_gid),
 		 from_kuid(&init_user_ns, ret->n_muid));
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return ret;
 
 error:
@@ -1779,7 +1769,7 @@ struct p9_stat_dotl *p9_client_getattr_dotl(struct p9_fid *fid,
 	err = p9pdu_readf(&req->rc, clnt->proto_version, "A", ret);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto error;
 	}
 
@@ -1805,7 +1795,7 @@ struct p9_stat_dotl *p9_client_getattr_dotl(struct p9_fid *fid,
 		 ret->st_btime_sec, ret->st_btime_nsec,
 		 ret->st_gen, ret->st_data_version);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return ret;
 
 error:
@@ -1877,7 +1867,7 @@ int p9_client_wstat(struct p9_fid *fid, struct p9_wstat *wst)
 
 	p9_debug(P9_DEBUG_9P, "<<< RWSTAT fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1909,7 +1899,7 @@ int p9_client_setattr(struct p9_fid *fid, struct p9_iattr_dotl *p9attr)
 		goto error;
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RSETATTR fid %d\n", fid->fid);
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1937,7 +1927,7 @@ int p9_client_statfs(struct p9_fid *fid, struct p9_rstatfs *sb)
 			  &sb->files, &sb->ffree, &sb->fsid, &sb->namelen);
 	if (err) {
 		trace_9p_protocol_dump(clnt, &req->rc);
-		p9_tag_remove(clnt, req);
+		p9_req_put(clnt, req);
 		goto error;
 	}
 
@@ -1946,7 +1936,7 @@ int p9_client_statfs(struct p9_fid *fid, struct p9_rstatfs *sb)
 		 fid->fid, sb->type, sb->bsize, sb->blocks, sb->bfree,
 		 sb->bavail, sb->files, sb->ffree, sb->fsid, sb->namelen);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -1974,7 +1964,7 @@ int p9_client_rename(struct p9_fid *fid,
 
 	p9_debug(P9_DEBUG_9P, "<<< RRENAME fid %d\n", fid->fid);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -2004,7 +1994,7 @@ int p9_client_renameat(struct p9_fid *olddirfid, const char *old_name,
 	p9_debug(P9_DEBUG_9P, "<<< RRENAMEAT newdirfid %d new name %s\n",
 		 newdirfid->fid, new_name);
 
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -2040,10 +2030,10 @@ struct p9_fid *p9_client_xattrwalk(struct p9_fid *file_fid,
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
@@ -2077,7 +2067,7 @@ int p9_client_xattrcreate(struct p9_fid *fid, const char *name,
 		goto error;
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RXATTRCREATE fid %d\n", fid->fid);
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 error:
 	return err;
 }
@@ -2139,11 +2129,11 @@ int p9_client_readdir(struct p9_fid *fid, char *data, u32 count, u64 offset)
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
@@ -2175,7 +2165,7 @@ int p9_client_mknod_dotl(struct p9_fid *fid, const char *name, int mode,
 		 qid->type, qid->path, qid->version);
 
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_mknod_dotl);
@@ -2205,7 +2195,7 @@ int p9_client_mkdir_dotl(struct p9_fid *fid, const char *name, int mode,
 		 qid->path, qid->version);
 
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_mkdir_dotl);
@@ -2237,7 +2227,7 @@ int p9_client_lock_dotl(struct p9_fid *fid, struct p9_flock *flock, u8 *status)
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RLOCK status %i\n", *status);
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_lock_dotl);
@@ -2274,7 +2264,7 @@ int p9_client_getlock_dotl(struct p9_fid *fid, struct p9_getlock *glock)
 		 glock->type, glock->start, glock->length,
 		 glock->proc_id, glock->client_id);
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_getlock_dotl);
@@ -2300,7 +2290,7 @@ int p9_client_readlink(struct p9_fid *fid, char **target)
 	}
 	p9_debug(P9_DEBUG_9P, "<<< RREADLINK target %s\n", *target);
 error:
-	p9_tag_remove(clnt, req);
+	p9_req_put(clnt, req);
 	return err;
 }
 EXPORT_SYMBOL(p9_client_readlink);
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 007c3f45fe05..507974ce880c 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -272,6 +272,8 @@ static int p9_fd_read(struct p9_client *client, void *v, int len)
  *
  */
 
+static int failme;
+
 static void p9_read_work(struct work_struct *work)
 {
 	__poll_t n;
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
