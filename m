Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A30A55A2B32
	for <lists+v9fs-developer@lfdr.de>; Fri, 26 Aug 2022 17:28:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oRbFp-00076c-8R;
	Fri, 26 Aug 2022 15:28:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oRbFo-00076W-JT for v9fs-developer@lists.sourceforge.net;
 Fri, 26 Aug 2022 15:28:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fzi9eNSMBd9xjJM0mBgGv0lve5949kAxWeFcrz3ew0E=; b=JdFbwWFJPrB8Wmhh4bBo7SmzWh
 fOcWzQK4OsxmpGXLNx9ZCxzxcXmxy9VVgcjTWC0MFJJFOZQIuAYIL+/W4l/giDIBdZcUs1F+aAc/1
 X45Jvuzq9ei/7tbXTeGcH05hUPZpzsrN57U026oz2o8mI1mKsmc9zn8AG01TocKnJwdw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Cc:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fzi9eNSMBd9xjJM0mBgGv0lve5949kAxWeFcrz3ew0E=; b=LFRGqWDTDWqNF0lxG8pFKtb9WQ
 Fh434V9PdnDvN8ao27CK+agD6ku6u+rDfsF73XJ3a8EZHtNPskfC+3LrWZgTIvMwxZoCibFMCHbPx
 ZRWyguW2gh/rn6LFOw3Jk4w5nVfZqMYRsTyP8IoMcblNPI1bThgn3c9Ymmjvn7otaREw=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRbFl-001dU9-2P for v9fs-developer@lists.sourceforge.net;
 Fri, 26 Aug 2022 15:28:16 +0000
Received: from fsav115.sakura.ne.jp (fsav115.sakura.ne.jp [27.133.134.242])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 27QFRlRp086469;
 Sat, 27 Aug 2022 00:27:47 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav115.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav115.sakura.ne.jp);
 Sat, 27 Aug 2022 00:27:47 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav115.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 27QFRkNj086466
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 27 Aug 2022 00:27:47 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
Date: Sat, 27 Aug 2022 00:27:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Content-Language: en-US
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
References: <00000000000039af4d05915a9f56@google.com>
 <000000000000c1d3ca0593128b24@google.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <000000000000c1d3ca0593128b24@google.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot is reporting hung task at p9_fd_close() [1],
 for p9_mux_poll_stop()
 from p9_conn_destroy() from p9_fd_close() is failing to interrupt already
 started kernel_read() from p9_fd_read() from p9_rea [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oRbFl-001dU9-2P
Subject: [V9fs-developer] [PATCH] 9p/trans_fd: always use O_NONBLOCK
 read/write
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
Cc: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>,
 v9fs-developer@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot is reporting hung task at p9_fd_close() [1], for p9_mux_poll_stop()
 from p9_conn_destroy() from p9_fd_close() is failing to interrupt already
started kernel_read() from p9_fd_read() from p9_read_work() and/or
kernel_write() from p9_fd_write() from p9_write_work() requests.

Since p9_socket_open() sets O_NONBLOCK flag, p9_mux_poll_stop() does not
need to interrupt kernel_read()/kernel_write(). However, since p9_fd_open()
does not set O_NONBLOCK flag, but pipe blocks unless signal is pending,
p9_mux_poll_stop() needs to interrupt kernel_read()/kernel_write() when
the file descriptor refers to a pipe. In other words, pipe file descriptor
needs to be handled as if socket file descriptor.

We somehow need to interrupt kernel_read()/kernel_write() on pipes.

A minimal change, which this patch is doing, is to set O_NONBLOCK flag
 from p9_fd_open(), for O_NONBLOCK flag does not affect reading/writing
of regular files. But this approach changes O_NONBLOCK flag on userspace-
supplied file descriptors (which might break userspace programs), and
O_NONBLOCK flag could be changed by userspace. It would be possible to set
O_NONBLOCK flag every time p9_fd_read()/p9_fd_write() is invoked, but still
remains small race window for clearing O_NONBLOCK flag.

If we don't want to manipulate O_NONBLOCK flag, we might be able to
surround kernel_read()/kernel_write() with set_thread_flag(TIF_SIGPENDING)
and recalc_sigpending(). Since p9_read_work()/p9_write_work() works are
processed by kernel threads which process global system_wq workqueue,
signals could not be delivered from remote threads when p9_mux_poll_stop()
 from p9_conn_destroy() from p9_fd_close() is called. Therefore, calling
set_thread_flag(TIF_SIGPENDING)/recalc_sigpending() every time would be
needed if we count on signals for making kernel_read()/kernel_write()
non-blocking.

Link: https://syzkaller.appspot.com/bug?extid=8b41a1365f1106fd0f33 [1]
Reported-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Tested-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
---
Although syzbot tested that this patch solves hung task problem, syzbot
cannot verify that this patch will not break functionality of p9 users.
Please test before applying this patch.

 net/9p/trans_fd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index e758978b44be..9870597da583 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -821,11 +821,13 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
 		goto out_free_ts;
 	if (!(ts->rd->f_mode & FMODE_READ))
 		goto out_put_rd;
+	ts->rd->f_flags |= O_NONBLOCK;
 	ts->wr = fget(wfd);
 	if (!ts->wr)
 		goto out_put_rd;
 	if (!(ts->wr->f_mode & FMODE_WRITE))
 		goto out_put_wr;
+	ts->wr->f_flags |= O_NONBLOCK;
 
 	client->trans = ts;
 	client->status = Connected;
-- 
2.18.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
