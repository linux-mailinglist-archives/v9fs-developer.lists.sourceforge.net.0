Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E09D063C500
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 17:23:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p03O5-0007Ql-EO;
	Tue, 29 Nov 2022 16:23:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p03O4-0007Qf-BA
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 16:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NcXAf7kW6X0N8QOOI9Ap4mD0Z2urNR7zKdEOvhntDTY=; b=Of4ScHLINAnUgEtpAcf0sYl+qF
 cYRxm9XZZBtlBC5ka/bX/p8MukvrNUo75DCTDsDaE0GfkmXG27mpWS7TIkYvjg3yTWbgHiUeVBCXk
 5cTRZDMtnlyGt0NkszpWXfv+sSPDWAWmr9FfJ6SWAn31T3MhXwCTF37rhzgQgCGwFrpo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NcXAf7kW6X0N8QOOI9Ap4mD0Z2urNR7zKdEOvhntDTY=; b=J
 Od3oNdoJZNwbqer+IME6iNZQrLNLEBzIG/VPb9Ztj7/HqPkjg2uTL7YLIkSB6UYyyREwXph+sedkT
 7S/xqhziFi9c0n88CGlR2hbWn2zJ5deieu/zu/n+ZS8MOCvdePmisk/M++Hqkoou5Cdz4vaPF0nrO
 TYvphZIFmNk9rOyY=;
Received: from mail-io1-f52.google.com ([209.85.166.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p03O2-000Px2-DG for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 16:23:12 +0000
Received: by mail-io1-f52.google.com with SMTP id g26so9745501iob.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 29 Nov 2022 08:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NcXAf7kW6X0N8QOOI9Ap4mD0Z2urNR7zKdEOvhntDTY=;
 b=TbVVjhsN6Lsksx5jQUoKasgH5oGbQEes1jlylk6/dr3TMSO/QovM2rG/ComLvR/mAE
 5fA2l3ZYfbUsKX01G0AV4Uq8d5VmKdQlDnC3hget5f+pElz9m5cCvOcGdq8kAE0fBDd6
 s7HmLRYCtlAeaY5JjU0Sgud0vi80Q4C3FiF4PRxjc4mJr+FGD0uO9dq6itUWbmA/orGJ
 WNtY+FOS6Z33iORgVZDQfll1jNuIwb4MHjLn9M8dm1zsJZ7QBe8j3MSqqUJTH0B3k0wf
 SGQlyQlXlCSevzT5LWTSlQEL6WYlHexcH5hXuB/7mxBiw1siGn3cjXA3rrQVSMQyCOss
 C3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NcXAf7kW6X0N8QOOI9Ap4mD0Z2urNR7zKdEOvhntDTY=;
 b=Q20QEjf8EiGNa+u6CsoES+svRBCwMvCh0ZHR5+wCfRgF48IHMOE7bfRzLrhqSAx9X5
 so1CEnAglhWWuNfF32Q5NiyRmKCby6QBsvKFf3QdIxCzszPpXEOwf0QO2hOUfaQlRNBU
 Novc4lfGy+bKIcV7FdmsrzBaFTQmHfJbHYyDsh8FbgJ3Nbp3UiSTUyLwHx+mbj8LwK1N
 2pgmu5eT7Bqxh6m8Nf/aos7uDQh/Cj9J33ehhtWCmEmsziQj4qI7dt5lQJii5eS/ms00
 t7ekRkKjsVSUir6azEiee8j/Uz0t5Vqu5/U6FzuhHw4tppMkJHVYXZiuuQhWKosbdBDu
 KLoQ==
X-Gm-Message-State: ANoB5pmKEwif656Yxq5XYDp7URoLLzOfYWhisv5YEcfCvQHwdpRqv+F9
 gFSZoYhg+hiZhwzKJhx1Zpw=
X-Google-Smtp-Source: AA0mqf53xelOLRL138/ZwVJ8jmeEy43saE43xzEwwZHtVNLDjq5JHscgca8xaO3bV60CBxFrTW3XMQ==
X-Received: by 2002:a05:6602:220a:b0:6bb:a841:11fc with SMTP id
 n10-20020a056602220a00b006bba84111fcmr17116271ion.162.1669738984730; 
 Tue, 29 Nov 2022 08:23:04 -0800 (PST)
Received: from MBP.lan (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 t3-20020a02b183000000b00375192e7484sm5382402jah.90.2022.11.29.08.22.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Nov 2022 08:23:04 -0800 (PST)
From: Schspa Shi <schspa@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.co, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Wed, 30 Nov 2022 00:22:51 +0800
Message-Id: <20221129162251.90790-1-schspa@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The transport layer of fs does not fully support the cancel
 request. When the request is in the REQ_STATUS_SENT state, p9_fd_cancelled
 will forcibly delete the request, and at this time p9_[read/write [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.52 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1p03O2-000Px2-DG
Subject: [V9fs-developer] [PATCH] 9p: fix crash when transaction killed
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
Cc: v9fs-developer@lists.sourceforge.net, Schspa Shi <schspa@gmail.com>,
 linux-kernel@vger.kernel.org,
 syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The transport layer of fs does not fully support the cancel request.
When the request is in the REQ_STATUS_SENT state, p9_fd_cancelled
will forcibly delete the request, and at this time p9_[read/write]_work
may continue to use the request. Therefore, it causes UAF .

There is the logs from syzbot.

Corrupted memory at 0xffff88807eade00b [ 0xff 0x07 0x00 0x00 0x00 0x00
0x00 0x00 . . . . . . . . ] (in kfence-#110):
 p9_fcall_fini net/9p/client.c:248 [inline]
 p9_req_put net/9p/client.c:396 [inline]
 p9_req_put+0x208/0x250 net/9p/client.c:390
 p9_client_walk+0x247/0x540 net/9p/client.c:1165
 clone_fid fs/9p/fid.h:21 [inline]
 v9fs_fid_xattr_set+0xe4/0x2b0 fs/9p/xattr.c:118
 v9fs_xattr_set fs/9p/xattr.c:100 [inline]
 v9fs_xattr_handler_set+0x6f/0x120 fs/9p/xattr.c:159
 __vfs_setxattr+0x119/0x180 fs/xattr.c:182
 __vfs_setxattr_noperm+0x129/0x5f0 fs/xattr.c:216
 __vfs_setxattr_locked+0x1d3/0x260 fs/xattr.c:277
 vfs_setxattr+0x143/0x340 fs/xattr.c:309
 setxattr+0x146/0x160 fs/xattr.c:617
 path_setxattr+0x197/0x1c0 fs/xattr.c:636
 __do_sys_setxattr fs/xattr.c:652 [inline]
 __se_sys_setxattr fs/xattr.c:648 [inline]
 __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:648
 do_syscall_32_irqs_on arch/x86/entry/common.c:112 [inline]
 __do_fast_syscall_32+0x65/0xf0 arch/x86/entry/common.c:178
 do_fast_syscall_32+0x33/0x70 arch/x86/entry/common.c:203
 entry_SYSENTER_compat_after_hwframe+0x70/0x82

Below is a similar scenario, the scenario in the syzbot log looks more
complicated than this one, but the root cause seems to be the same.

     T21124               p9_write_work        p9 read_work
======================== first trans =================================
p9_client_walk
  p9_client_rpc
    p9_client_prepare_req
    /* req->refcount == 2 */
    c->trans_mod->request(c, req);
      p9_fd_request
        req move to unsent_req_list
                            req->status = REQ_STATUS_SENT;
                            req move to req_list
                            << send to server >>
    wait_event_killable
    << get kill signal >>
    if (c->trans_mod->cancel(c, req))
       p9_client_flush(c, req);
         /* send flush request */
         req = p9_client_rpc(c, P9_TFLUSH, "w", oldtag);
		 if (c->trans_mod->cancelled)
            c->trans_mod->cancelled(c, oldreq);
              /* old req was deleted from req_list */
              /* req->refcount == 1 */
  p9_req_put
    /* req->refcount == 0 */
    << preempted >>
                                       << get response, UAF here >>
                                       m->rreq = p9_tag_lookup(m->client, m->rc.tag);
                                         /* req->refcount == 1 */
                                       << do response >>
                                       p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);
                                         /* req->refcount == 0 */
                                         p9_fcall_fini
                                         /* request have been freed */
    p9_fcall_fini
     /* double free */
                                       p9_req_put(m->client, m->rreq);
                                         /* req->refcount == 1 */

To fix it, we can wait the request with status REQ_STATUS_SENT returned.

Reported-by: syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com

Signed-off-by: Schspa Shi <schspa@gmail.com>
---
 net/9p/client.c   |  2 +-
 net/9p/trans_fd.c | 12 ++++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index aaa37b07e30a..963cf91aa0d5 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -440,7 +440,7 @@ void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
 	smp_wmb();
 	req->status = status;
 
-	wake_up(&req->wq);
+	wake_up_all(&req->wq);
 	p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
 	p9_req_put(c, req);
 }
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index eeea0a6a75b6..ee2d6b231af1 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -30,6 +30,7 @@
 #include <net/9p/transport.h>
 
 #include <linux/syscalls.h> /* killme */
+#include <linux/wait.h>
 
 #define P9_PORT 564
 #define MAX_SOCK_BUF (1024*1024)
@@ -728,6 +729,17 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 		return 0;
 	}
 
+	/* If the request is been sent to the server, we need to wait for the
+	 * job to finish.
+	 */
+	if (req->status == REQ_STATUS_SENT) {
+		spin_unlock(&m->req_lock);
+		p9_debug(P9_DEBUG_TRANS, "client %p req %p wait done\n",
+			 client, req);
+		wait_event(req->wq, req->status >= REQ_STATUS_RCVD);
+
+		return 0;
+	}
 	/* we haven't received a response for oldreq,
 	 * remove it from the list.
 	 */
-- 
2.37.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
