Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB47601E74
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Oct 2022 02:10:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1okaBs-0003VR-0Y;
	Tue, 18 Oct 2022 00:10:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1okaBq-0003VF-0y
 for v9fs-developer@lists.sourceforge.net;
 Tue, 18 Oct 2022 00:10:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+ZFw1GfBM+J8ba6KhEBtJE3u6BXV4M+8s1jJG8m7gdU=; b=WHn2Zic/X1ocduw5tHRCCbA3Vv
 NQNo15I2eDddpL9V0mdjnYpQGRXqrUeCcJwVrfG97p0cm9pEjZhlyCYlkf338IhSQfxBvbtXRTMB8
 LYTN1rvOIJbEVfDNVKQN0vJXdIsyWWoAFnpBj3KRylv+rm1JM/XEpu2Qgd/aw8C9A7sk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+ZFw1GfBM+J8ba6KhEBtJE3u6BXV4M+8s1jJG8m7gdU=; b=jtoV4qWXUtfulF0exCv6HMtpOr
 zL/L6eyFWFbCmj9eP5SmqjtOaT2Tky7u5nY2dX3iJJAqIkP7vWkqLvpaBQ/n4GZJKq7iX3QRFi/wy
 bYL4l0xV1jE8AgrgV+65IZ6/UQnQxFFcxES6vmp1Ggxjrl8VLKVqn46IGrdNcJVtWkqw=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1okaBl-007dxm-1B for v9fs-developer@lists.sourceforge.net;
 Tue, 18 Oct 2022 00:10:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C2156B81C03;
 Tue, 18 Oct 2022 00:10:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00F4FC4347C;
 Tue, 18 Oct 2022 00:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666051825;
 bh=KRUd1Gu6NyskDo2XT101lPcMnfUBxGPTwR0zaQnOBc8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qjTenv3+Mny2T8S+iPqEftwjRPkUHk6ZObm1iLlVGV0mNH9OixFAleI6Y/0DZ1zB6
 M9hexZMBLlhnFZvEQ0TEZlP67I+BJOmcN9nhpjSWcn9ek5qGgRdus1bqiiLJ42XLSm
 2ngHby2DkYdMFwpRv/y2i4/rh38jZ1DULD7QJgUL7lzU+tLpfi+b2NmEQKbKVQRsgD
 0gMtmqZKvXLIdkIDbKev6q7RHbKyzq5UQQd3IgGjRTa8arGOm6UgUj7kBSOi6IH1l3
 pu0mfiCt/0WJKlWyTX/Q1Sy6QeLyaYpBRxOm4QXFtf9t2m9GyufXwJ6ldxsnOmP1vw
 lBaJoypqgbwzA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 17 Oct 2022 20:09:38 -0400
Message-Id: <20221018000940.2731329-19-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221018000940.2731329-1-sashal@kernel.org>
References: <20221018000940.2731329-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp> [
 Upstream commit ef575281b21e9a34dfae544a187c6aac2ae424a9 ] syzbot is reporting
 hung task at p9_fd_close() [1], for p9_mux_poll_stop() from p9_conn_destroy()
 from p9_fd_close() is failing to interrupt already started kernel_read()
 from p9_fd_read() from p9_rea [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1okaBl-007dxm-1B
Subject: [V9fs-developer] [PATCH AUTOSEL 5.15 19/21] 9p/trans_fd: always use
 O_NONBLOCK read/write
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
Cc: Sasha Levin <sashal@kernel.org>, lucho@ionkov.net,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>,
 edumazet@google.com, ericvh@gmail.com, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

[ Upstream commit ef575281b21e9a34dfae544a187c6aac2ae424a9 ]

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

Link: https://lkml.kernel.org/r/345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp
Link: https://syzkaller.appspot.com/bug?extid=8b41a1365f1106fd0f33 [1]
Reported-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Tested-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
[Dominique: add comment at Christian's suggestion]
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/9p/trans_fd.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index ad4f0e0a25f9..dfce201d9884 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -824,11 +824,14 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
 		goto out_free_ts;
 	if (!(ts->rd->f_mode & FMODE_READ))
 		goto out_put_rd;
+	/* prevent workers from hanging on IO when fd is a pipe */
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
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
