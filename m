Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3184A5AC311
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 09:07:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUjiq-0005if-Gv;
	Sun, 04 Sep 2022 07:07:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oUjip-0005iZ-5E for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 07:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nj17c8EEpiNxDavavlSFttEFBjJJ8fjUL1PAJ1egdAY=; b=iiVXngZ/gnQV3/6yh7QPU2lklI
 a85cdDyQ9Tq4yInqMT7zOs5ovq1zhywHZtk7exVs0DClEksDuDnJrTbpJRsJaXJ6k1UC0O5KuGhMg
 2ymiTZcsiSZP33kfoNJ+CAkKVNFC+eC9XM9TbaA/fTi6fex3TmihCJVSmNdhu7hMDUsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nj17c8EEpiNxDavavlSFttEFBjJJ8fjUL1PAJ1egdAY=; b=FTnFouUxt7o12BflvX9FCMhQ5e
 WRKDHK0NldnQLc0d+FtmWPVU2iyuiYcyQfGnnrN4Xp2KD2dNk9nNzF3rL4JjjTZY9APO3iNT4qNdY
 jY4zZTZcm8AfIADylsldT0ZW4TXZ2VtOPy1YwKCBzepbCZ+tjuF/Y+GOYsW77rCDdCSI=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUjin-00Dalk-Qc for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 07:07:10 +0000
Received: from fsav311.sakura.ne.jp (fsav311.sakura.ne.jp [153.120.85.142])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 28476gk3074662;
 Sun, 4 Sep 2022 16:06:42 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav311.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav311.sakura.ne.jp);
 Sun, 04 Sep 2022 16:06:42 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav311.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 28476f3d074659
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 4 Sep 2022 16:06:41 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <68540a56-6a5f-87e9-3c21-49c58758bfaf@I-love.SAKURA.ne.jp>
Date: Sun, 4 Sep 2022 16:06:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>
References: <000000000000f842c805e64f17a8@google.com>
 <2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp>
 <YxRHYaqqISAr5Rif@codewreck.org>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <YxRHYaqqISAr5Rif@codewreck.org>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot is reporting inconsistent lock state in p9_req_put(), 
 for p9_tag_remove() from p9_req_put() from IRQ context is using
 spin_lock_irqsave()
 on "struct p9_client"->lock but other locations not fro [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oUjin-00Dalk-Qc
Subject: [V9fs-developer] [PATCH v2] net/9p: use a dedicated spinlock for
 modifying IDR
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot is reporting inconsistent lock state in p9_req_put(), for
p9_tag_remove() from p9_req_put() from IRQ context is using
spin_lock_irqsave() on "struct p9_client"->lock but other locations
not from IRQ context are using spin_lock().

Since spin_lock() => spin_lock_irqsave() conversion on this lock will
needlessly disable IRQ for infrequent event, and p9_tag_remove() needs
to disable IRQ only for modifying IDR (RCU read lock can be used for
reading IDR), let's introduce a spinlock dedicated for serializing
idr_alloc()/idr_alloc_u32()/idr_remove() calls. Since this spinlock
will be held as innermost lock, circular locking dependency problem
won't happen by adding this spinlock.

Link: https://syzkaller.appspot.com/bug?extid=2f20b523930c32c160cc [1]
Reported-by: syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
---
Changes in v2:
  Make this spinlock per "struct p9_client", though I don't know how we
  should update "@lock" when "@idr_lock" also protects @fids and @reqs...

   /**
    * struct p9_client - per client instance state
    * @lock: protect @fids and @reqs
    * @msize: maximum data size negotiated by protocol
    * @proto_version: 9P protocol version to use
    * @trans_mod: module API instantiated with this client
    * @status: connection state
    * @trans: tranport instance state and API
    * @fids: All active FID handles
    * @reqs: All active requests.
  + * @idr_lock: protect @fids and @reqs when modifying IDR
    * @name: node name used as client id
    *
    * The client structure is used to keep track of various per-client
    * state that has been instantiated.
    */

 include/net/9p/client.h |  2 ++
 net/9p/client.c         | 17 +++++++++--------
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index 78ebcf782ce5..5edb3bd144fc 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -94,6 +94,7 @@ struct p9_req_t {
  * @trans: tranport instance state and API
  * @fids: All active FID handles
  * @reqs: All active requests.
+ * @idr_lock: protect @fids and @reqs when modifying IDR
  * @name: node name used as client id
  *
  * The client structure is used to keep track of various per-client
@@ -122,6 +123,7 @@ struct p9_client {
 
 	struct idr fids;
 	struct idr reqs;
+	spinlock_t idr_lock;
 
 	char name[__NEW_UTS_LEN + 1];
 };
diff --git a/net/9p/client.c b/net/9p/client.c
index 0a6110e15d0f..9c801b49431d 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -283,14 +283,14 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 	INIT_LIST_HEAD(&req->req_list);
 
 	idr_preload(GFP_NOFS);
-	spin_lock_irq(&c->lock);
+	spin_lock_irq(&c->idr_lock);
 	if (type == P9_TVERSION)
 		tag = idr_alloc(&c->reqs, req, P9_NOTAG, P9_NOTAG + 1,
 				GFP_NOWAIT);
 	else
 		tag = idr_alloc(&c->reqs, req, 0, P9_NOTAG, GFP_NOWAIT);
 	req->tc.tag = tag;
-	spin_unlock_irq(&c->lock);
+	spin_unlock_irq(&c->idr_lock);
 	idr_preload_end();
 	if (tag < 0)
 		goto free;
@@ -364,9 +364,9 @@ static void p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
 	u16 tag = r->tc.tag;
 
 	p9_debug(P9_DEBUG_MUX, "freeing clnt %p req %p tag: %d\n", c, r, tag);
-	spin_lock_irqsave(&c->lock, flags);
+	spin_lock_irqsave(&c->idr_lock, flags);
 	idr_remove(&c->reqs, tag);
-	spin_unlock_irqrestore(&c->lock, flags);
+	spin_unlock_irqrestore(&c->idr_lock, flags);
 }
 
 int p9_req_put(struct p9_client *c, struct p9_req_t *r)
@@ -813,10 +813,10 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
 	refcount_set(&fid->count, 1);
 
 	idr_preload(GFP_KERNEL);
-	spin_lock_irq(&clnt->lock);
+	spin_lock_irq(&clnt->idr_lock);
 	ret = idr_alloc_u32(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
 			    GFP_NOWAIT);
-	spin_unlock_irq(&clnt->lock);
+	spin_unlock_irq(&clnt->idr_lock);
 	idr_preload_end();
 	if (!ret) {
 		trace_9p_fid_ref(fid, P9_FID_REF_CREATE);
@@ -835,9 +835,9 @@ static void p9_fid_destroy(struct p9_fid *fid)
 	p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
 	trace_9p_fid_ref(fid, P9_FID_REF_DESTROY);
 	clnt = fid->clnt;
-	spin_lock_irqsave(&clnt->lock, flags);
+	spin_lock_irqsave(&clnt->idr_lock, flags);
 	idr_remove(&clnt->fids, fid->fid);
-	spin_unlock_irqrestore(&clnt->lock, flags);
+	spin_unlock_irqrestore(&clnt->idr_lock, flags);
 	kfree(fid->rdir);
 	kfree(fid);
 }
@@ -943,6 +943,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	memcpy(clnt->name, client_id, strlen(client_id) + 1);
 
 	spin_lock_init(&clnt->lock);
+	spin_lock_init(&clnt->idr_lock);
 	idr_init(&clnt->fids);
 	idr_init(&clnt->reqs);
 
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
