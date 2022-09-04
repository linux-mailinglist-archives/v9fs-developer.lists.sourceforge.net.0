Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A095AC2ED
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 08:10:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUiq1-0000Te-OG;
	Sun, 04 Sep 2022 06:10:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oUipy-0000TX-65 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XDFvyBP4gp4AgPt76UYOFyxvSZN07V9WvX5ONu0ZEzk=; b=QgbhcKjLoDGDNs3GxCnlSyRYwh
 aMaD0Y4ebK00tJsmY81rdxxyXwgFwPEzyGGzgYSifQn09kZkhdEPNTcxafemHR7AaWkVxU1M/DiIW
 LH9XmsG3wI4OsTzP5C7E+YJ976vDiieFYuhXoXzdxo9OAA4dQHYRdMqWZUKqKfwNox2A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Cc:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XDFvyBP4gp4AgPt76UYOFyxvSZN07V9WvX5ONu0ZEzk=; b=MLqUzUM2RW0RhgjGQMEYhDNukq
 gu+7XohvxYpUHqsLmoNL1DzjsQ+ELtlOCevqP2xWRUtz3nviwcmK/Cz9T43vsQ+wOULsu9hoGZ3D7
 0xYviRJLBDTmv7+Ew627twqQZ3x3qypRlJAS9SpuiXaVTvnIi/ghWmWhK0ev1wyRanTg=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUipg-0001fU-W1 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:10:17 +0000
Received: from fsav115.sakura.ne.jp (fsav115.sakura.ne.jp [27.133.134.242])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 28469XNa064425;
 Sun, 4 Sep 2022 15:09:33 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav115.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav115.sakura.ne.jp);
 Sun, 04 Sep 2022 15:09:33 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav115.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 28469XDq064422
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 4 Sep 2022 15:09:33 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp>
Date: Sun, 4 Sep 2022 15:09:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
References: <000000000000f842c805e64f17a8@google.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <000000000000f842c805e64f17a8@google.com>
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
X-Headers-End: 1oUipg-0001fU-W1
Subject: [V9fs-developer] [PATCH] net/9p: use a dedicated spinlock for
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
Cc: v9fs-developer@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>,
 netdev@vger.kernel.org
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
This patch is not tested, for reproducer is not available.

 net/9p/client.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 0a6110e15d0f..20f0a2d8dd38 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -28,6 +28,8 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/9p.h>
 
+static DEFINE_SPINLOCK(p9_idr_lock);
+
 #define DEFAULT_MSIZE (128 * 1024)
 
 /* Client Option Parsing (code inspired by NFS code)
@@ -283,14 +285,14 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 	INIT_LIST_HEAD(&req->req_list);
 
 	idr_preload(GFP_NOFS);
-	spin_lock_irq(&c->lock);
+	spin_lock_irq(&p9_idr_lock);
 	if (type == P9_TVERSION)
 		tag = idr_alloc(&c->reqs, req, P9_NOTAG, P9_NOTAG + 1,
 				GFP_NOWAIT);
 	else
 		tag = idr_alloc(&c->reqs, req, 0, P9_NOTAG, GFP_NOWAIT);
 	req->tc.tag = tag;
-	spin_unlock_irq(&c->lock);
+	spin_unlock_irq(&p9_idr_lock);
 	idr_preload_end();
 	if (tag < 0)
 		goto free;
@@ -364,9 +366,9 @@ static void p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
 	u16 tag = r->tc.tag;
 
 	p9_debug(P9_DEBUG_MUX, "freeing clnt %p req %p tag: %d\n", c, r, tag);
-	spin_lock_irqsave(&c->lock, flags);
+	spin_lock_irqsave(&p9_idr_lock, flags);
 	idr_remove(&c->reqs, tag);
-	spin_unlock_irqrestore(&c->lock, flags);
+	spin_unlock_irqrestore(&p9_idr_lock, flags);
 }
 
 int p9_req_put(struct p9_client *c, struct p9_req_t *r)
@@ -813,10 +815,10 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
 	refcount_set(&fid->count, 1);
 
 	idr_preload(GFP_KERNEL);
-	spin_lock_irq(&clnt->lock);
+	spin_lock_irq(&p9_idr_lock);
 	ret = idr_alloc_u32(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
 			    GFP_NOWAIT);
-	spin_unlock_irq(&clnt->lock);
+	spin_unlock_irq(&p9_idr_lock);
 	idr_preload_end();
 	if (!ret) {
 		trace_9p_fid_ref(fid, P9_FID_REF_CREATE);
@@ -835,9 +837,9 @@ static void p9_fid_destroy(struct p9_fid *fid)
 	p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
 	trace_9p_fid_ref(fid, P9_FID_REF_DESTROY);
 	clnt = fid->clnt;
-	spin_lock_irqsave(&clnt->lock, flags);
+	spin_lock_irqsave(&p9_idr_lock, flags);
 	idr_remove(&clnt->fids, fid->fid);
-	spin_unlock_irqrestore(&clnt->lock, flags);
+	spin_unlock_irqrestore(&p9_idr_lock, flags);
 	kfree(fid->rdir);
 	kfree(fid);
 }
-- 
2.34.1




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
