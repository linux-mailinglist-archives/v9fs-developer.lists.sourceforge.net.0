Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B415A34FA
	for <lists+v9fs-developer@lfdr.de>; Sat, 27 Aug 2022 08:12:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oRp3R-0007zT-4l;
	Sat, 27 Aug 2022 06:12:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oRp3P-0007zN-Lh for v9fs-developer@lists.sourceforge.net;
 Sat, 27 Aug 2022 06:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ceGOMm0wshE36mcoSexn57XpwNdZu6wBgX1QjLbXnyI=; b=iNu5QRlCukYk/rqMhsBOplUqxt
 0QAQzAeerfDeAA1aexiBO0GG72oNMmc/eMYyAxxp+cqQeI3RDluwQoBHYstLORB0a3n+iOre5ghFs
 StJdeVIEihCacrfXEVx0nE3xu7MalHZL9/8GOQsyWcb2OZ/QnibJSzQJfT3eiP8d4eqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ceGOMm0wshE36mcoSexn57XpwNdZu6wBgX1QjLbXnyI=; b=EpFyJtYJodKsdc6nW/hLghc0sf
 OObONsv4eEaBNbT5xkgZcxXKXcuU+bIb24Ev3VSHyFIlpLMcfES4mLWHIYgMZsO1jURnxaaJwOs85
 q8DDSMBAyKRE9DgkG4jAsQwoDvTZKQre6ijxhHTKduPMLDwY6/0KlHAKX2SJlKmllJJQ=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRp3N-002MtX-Nr for v9fs-developer@lists.sourceforge.net;
 Sat, 27 Aug 2022 06:12:23 +0000
Received: from fsav111.sakura.ne.jp (fsav111.sakura.ne.jp [27.133.134.238])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 27R6BpP3040685;
 Sat, 27 Aug 2022 15:11:51 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav111.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav111.sakura.ne.jp);
 Sat, 27 Aug 2022 15:11:51 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav111.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 27R6BpTA040676
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 27 Aug 2022 15:11:51 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <4293faaf-8279-77e2-8b1a-aff765416980@I-love.SAKURA.ne.jp>
Date: Sat, 27 Aug 2022 15:11:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
References: <00000000000039af4d05915a9f56@google.com>
 <000000000000c1d3ca0593128b24@google.com>
 <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
In-Reply-To: <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
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
X-Headers-End: 1oRp3N-002MtX-Nr
Subject: [V9fs-developer] [PATCH v2] 9p/trans_fd: perform read/write with
 TIF_SIGPENDING set
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
need to interrupt kernel_{read,write}(). However, since p9_fd_open() does
not set O_NONBLOCK flag, but pipe blocks unless signal is pending,
p9_mux_poll_stop() needs to interrupt kernel_{read,write}() when the file
descriptor refers to a pipe. In other words, pipe file descriptor needs
to be handled as if socket file descriptor. We somehow need to interrupt
kernel_{read,write}() on pipes.

If we can tolerate "possibility of breaking userspace program by setting
O_NONBLOCK flag on userspace-supplied file descriptors" and "possibility
of race window that userspace program clears O_NONBLOCK flag between after
automatically setting O_NONBLOCK flag and before calling
kernel_{read,write}()", we could automatically set O_NONBLOCK flag
immediately before calling kernel_{read,write}().

A different approach, which this patch is doing, is to surround
kernel_{read,write}() with set_thread_flag(TIF_SIGPENDING) and
recalc_sigpending(). This might be ugly and bit costly, but does not
touch userspace-supplied file descriptors.

Link: https://syzkaller.appspot.com/bug?extid=8b41a1365f1106fd0f33 [1]
Reported-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Tested-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
---
Although syzbot tested that this patch solves hung task problem, syzbot
cannot verify that this patch will not break functionality of p9 users.
Please test before applying this patch.

 net/9p/trans_fd.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index e758978b44be..e2f4e3245a80 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -256,11 +256,13 @@ static int p9_fd_read(struct p9_client *client, void *v, int len)
 	if (!ts)
 		return -EREMOTEIO;
 
-	if (!(ts->rd->f_flags & O_NONBLOCK))
-		p9_debug(P9_DEBUG_ERROR, "blocking read ...\n");
-
 	pos = ts->rd->f_pos;
+	/* Force non-blocking read() even without O_NONBLOCK. */
+	set_thread_flag(TIF_SIGPENDING);
 	ret = kernel_read(ts->rd, v, len, &pos);
+	spin_lock_irq(&current->sighand->siglock);
+	recalc_sigpending();
+	spin_unlock_irq(&current->sighand->siglock);
 	if (ret <= 0 && ret != -ERESTARTSYS && ret != -EAGAIN)
 		client->status = Disconnected;
 	return ret;
@@ -423,10 +425,12 @@ static int p9_fd_write(struct p9_client *client, void *v, int len)
 	if (!ts)
 		return -EREMOTEIO;
 
-	if (!(ts->wr->f_flags & O_NONBLOCK))
-		p9_debug(P9_DEBUG_ERROR, "blocking write ...\n");
-
+	/* Force non-blocking write() even without O_NONBLOCK. */
+	set_thread_flag(TIF_SIGPENDING);
 	ret = kernel_write(ts->wr, v, len, &ts->wr->f_pos);
+	spin_lock_irq(&current->sighand->siglock);
+	recalc_sigpending();
+	spin_unlock_irq(&current->sighand->siglock);
 	if (ret <= 0 && ret != -ERESTARTSYS && ret != -EAGAIN)
 		client->status = Disconnected;
 	return ret;
-- 
2.18.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
