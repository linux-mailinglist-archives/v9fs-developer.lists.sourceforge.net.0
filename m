Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2916D5A851A
	for <lists+v9fs-developer@lfdr.de>; Wed, 31 Aug 2022 20:10:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oTSAV-00025j-Op;
	Wed, 31 Aug 2022 18:10:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1oTSAQ-00025Y-MR
 for v9fs-developer@lists.sourceforge.net;
 Wed, 31 Aug 2022 18:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UgxFIowahszZp3YqmiisiqrkN1WXXLGBv+HLJWO87II=; b=WOzHxrHI1AUEIpCUSG1mqK0Azr
 BWK0gXDnuPIkF3fH8ylnT5RjO6+S/ciImcOvY8j8S3v/7uFvsX9K5LYuy4gUmTlWQKle2HUThMfuv
 Bwj1QJZA9PPSBzw16KMuzoxIpbbDCTMOg4UtCXJE4wGJzh+INf+iP/zR8IGY799ro8To=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UgxFIowahszZp3YqmiisiqrkN1WXXLGBv+HLJWO87II=; b=Q
 s0vQZBBQ5SvKWKSxJVAEN+EBi/jvvTwDvP22LOqhGGGBQPX/hj3BI0yV2jFapHGYt1oJAl2THllcB
 qqTRYz2PNiKC/YkaiB0ffbeMMprOq9TXPwtpHx7q66Ds3S3lfBRkV2KsazMYI+oVmDZUZzrFFjru6
 jak2l1EOmU4wHZh4=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTSAO-0094om-Ta for v9fs-developer@lists.sourceforge.net;
 Wed, 31 Aug 2022 18:10:21 +0000
Received: by mail-pj1-f46.google.com with SMTP id
 m10-20020a17090a730a00b001fa986fd8eeso97804pjk.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 31 Aug 2022 11:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=UgxFIowahszZp3YqmiisiqrkN1WXXLGBv+HLJWO87II=;
 b=fI5WQhRVN2gjyq/VfwgKVUUSxu94g7sATcfU8pa+n63z0kIiVGbGFnblJV01nSNpjA
 IilbjGvM/mfscoJeAHl3+rnnyJSyViEvXi5uO3UYnQfmDK4wq0sItgJuJyslvWIuJ1xK
 xgy4lYlx8TBhrHvYOeWLqeIlhpC0E7rOWDvjqo8vcpndgDffNyYZP6vY8HULGL3eE8mk
 A+QpZaqX66TxUyh+lf8CD5cAwUMI1dwyk8V5ilGqGGtHTYyBFJKtgBqWyEmoLF2mOslr
 2Mme5B5yAK4DybIKEW/XvNlw2+d1ZnsHWEgDhWPm0uWaqJyircivF3tmV3nel1qDk9bH
 MEkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=UgxFIowahszZp3YqmiisiqrkN1WXXLGBv+HLJWO87II=;
 b=yJf8qHyqRiKaqrn83qDvyIvoHsJSYiMcJh2xA/AakcT35uAPuNS3Fsn2+0O7Nrsxt6
 cvAt/ExQtgdHzWdbvea53H+LpBG1v8qMtZI+dJvdJ+seSFMLUSMOmR63t9Z5JL4SDvVD
 kbIDcZ2bWNpRLnZ0UfF+9qyRh2KMNTQk2cRRViUz22ZE8cmgvjcjgRrF3w2Q4kh559I5
 Pbw1VzbDoXWPtqBoxkHMFNglJdYVrVkf7shUMg9dBy5yG0gjE57Rd2I2d85niJJrqS01
 CtiQyS/edkQI3QGhRi7Avjc2Eym85TrOg6r8K7oWAjuwnWAqq40udx2GF1k0O6Ld0hVJ
 abiw==
X-Gm-Message-State: ACgBeo0m/KHSPZ0wZAqv858yiUvHa9QCjBiG+7bksuyHSoIWVWSqtCSi
 8fJZ3GNiYG0WC8wdsvcrHmY=
X-Google-Smtp-Source: AA6agR68NCpgTVFenk7zMwhUValscToqoiIu27dAadrbzR2TvTiklXVBckP6992zWHmQtl26DJnD6g==
X-Received: by 2002:a17:902:e748:b0:175:2ffe:927d with SMTP id
 p8-20020a170902e74800b001752ffe927dmr7086642plf.168.1661969414955; 
 Wed, 31 Aug 2022 11:10:14 -0700 (PDT)
Received: from localhost.localdomain
 (ec2-18-117-95-84.us-east-2.compute.amazonaws.com. [18.117.95.84])
 by smtp.gmail.com with ESMTPSA id
 d68-20020a621d47000000b00535e46171c1sm11418557pfd.117.2022.08.31.11.10.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 11:10:14 -0700 (PDT)
From: Schspa Shi <schspa@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Thu,  1 Sep 2022 02:09:50 +0800
Message-Id: <20220831180950.76907-1-schspa@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is a deadlock condition when connection canceled.
 Please
 refer to the following scenarios. task 0 task1 p9_client_rpc req =
 p9_client_prepare_req(c, 
 type, c->msize, fmt, ap); // refco [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.46 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oTSAO-0094om-Ta
Subject: [V9fs-developer] [PATCH] p9: trans_fd: Fix deadlock when connection
 cancel
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
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

There is a deadlock condition when connection canceled.

Please refer to the following scenarios.
           task 0                task1
------------------------------------------------------------------
p9_client_rpc
  req = p9_client_prepare_req(c, type, c->msize, fmt, ap);
  // refcount = 2
  err = c->trans_mod->request(c, req);
  // req was added to unsent_req_list
  wait_event_killable(req->wq, req->status >= REQ_STATUS_RCVD);

                           p9_read_work
                             // IO error happen
                           error:
                             p9_conn_cancel(m, err);
                              spin_lock(&m->client->lock);
                              // hold client->lock now
                              p9_client_cb
                                req->status = REQ_STATUS_ERROR;
                                wake_up(&req->wq);
                                // task 0 wakeup
                                << preempted >>

reterr:
	p9_req_put(c, req);
    // refcount = 1 now
                                << got scheduled >>
                                p9_req_put
                                  // refcount = 0
                                  p9_tag_remove(c, r);
                                    spin_lock_irqsave(&c->lock, flags);
                           ------------- deadlock -------------

[  651.564169] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
[  651.564176] rcu:     3-...0: (8 ticks this GP) idle=40b4/1/0x4000000000000000 softirq=1289/1290 fqs=83762
[  651.564185]  (detected by 2, t=420047 jiffies, g=1601, q=992 ncpus=4)
[  651.564190] Sending NMI from CPU 2 to CPUs 3:
[  651.539301] NMI backtrace for cpu 3
[  651.539301] CPU: 3 PID: 46 Comm: kworker/3:1 Not tainted 6.0.0-rc2-rt3-00493-g2af9a9504166 #3
[  651.539301] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.16.0-0-gd239552ce722-prebuilt.qemu.org 04/01/2014
[  651.539301] Workqueue: events p9_read_work
[  651.539301] RIP: 0010:queued_spin_lock_slowpath+0xfc/0x590
[  651.539301] Code: 00 00 00 65 48 2b 04 25 28 00 00 00 0f 85 a5 04 00 00 48 81 c4 88 00 00 00 5b 5d 41 5c 41 5d 41 5e 41 5f c3 cc0
[  651.539301] RSP: 0018:ffff888002987ad8 EFLAGS: 00000002
[  651.539301] RAX: 0000000000000000 RBX: 0000000000000001 RCX: dffffc0000000000
[  651.539301] RDX: 0000000000000003 RSI: 0000000000000004 RDI: ffff888004adf600
[  651.539301] RBP: ffff888004adf600 R08: ffffffff81d341a0 R09: ffff888004adf603
[  651.539301] R10: ffffed100095bec0 R11: 0000000000000001 R12: 0000000000000001
[  651.539301] R13: 1ffff11000530f5c R14: ffff888004adf600 R15: ffff888002987c38
[  651.539301] FS:  0000000000000000(0000) GS:ffff888036580000(0000) knlGS:0000000000000000
[  651.539301] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  651.539301] CR2: 00007fe012d608dc CR3: 000000000bc16000 CR4: 0000000000350ee0
[  651.539301] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  651.539301] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  651.539301] Call Trace:
[  651.539301]  <TASK>
[  651.539301]  ? osq_unlock+0x100/0x100
[  651.539301]  ? ret_from_fork+0x1f/0x30
[  651.539301]  do_raw_spin_lock+0x196/0x1a0
[  651.539301]  ? spin_bug+0x90/0x90
[  651.539301]  ? do_raw_spin_lock+0x114/0x1a0
[  651.539301]  _raw_spin_lock_irqsave+0x1c/0x30
[  651.539301]  p9_req_put+0x61/0x130
[  651.539301]  p9_conn_cancel+0x321/0x3b0
[  651.539301]  ? p9_conn_create+0x1f0/0x1f0
[  651.539301]  p9_read_work+0x207/0x7d0
[  651.539301]  ? p9_fd_create+0x1d0/0x1d0
[  651.539301]  ? spin_bug+0x90/0x90
[  651.539301]  ? read_word_at_a_time+0xe/0x20
[  651.539301]  process_one_work+0x420/0x720
[  651.539301]  worker_thread+0x2b9/0x700
[  651.539301]  ? rescuer_thread+0x620/0x620
[  651.539301]  kthread+0x176/0x1b0
[  651.539301]  ? kthread_complete_and_exit+0x20/0x20
[  651.539301]  ret_from_fork+0x1f/0x30

To fix it, we can add extra reference counter to avoid deadlock, and
decrease it after we unlock the client->lock.

Fixes: 67dd8e445ee0 ("9p: roll p9_tag_remove into p9_req_put")

Signed-off-by: Schspa Shi <schspa@gmail.com>
---
 net/9p/trans_fd.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index e758978b44bee..2e4e039b38e3e 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -205,14 +205,19 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 		list_move(&req->req_list, &cancel_list);
 	}
 
-	list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
+	list_for_each_entry(req, &cancel_list, req_list) {
 		p9_debug(P9_DEBUG_ERROR, "call back req %p\n", req);
-		list_del(&req->req_list);
 		if (!req->t_err)
 			req->t_err = err;
+		p9_req_get(req);
 		p9_client_cb(m->client, req, REQ_STATUS_ERROR);
 	}
 	spin_unlock(&m->client->lock);
+
+	list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
+		list_del(&req->req_list);
+		p9_req_put(m->client, req);
+	}
 }
 
 static __poll_t
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
