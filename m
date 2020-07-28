Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0268C230AD6
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jul 2020 15:01:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0PE9-0004tj-Lo; Tue, 28 Jul 2020 13:01:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <aik@ozlabs.ru>) id 1k0PE7-0004tW-UA
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jul 2020 13:01:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tUtoJvG/chtuXtvBDDaSMmx9rYyXFF5PpGoV5MhO8ok=; b=Z6+P27g96/3IHK3tU/pEkUOFmJ
 utPqlungxXm0WWh7ZrgU3HVCAzWRsup+fTeWR5BQ3JzegahIqZWG+M3aM4wmCENhiLlz9ysjYw/Hl
 du0y9PuVE7ypxKVzxmheXwJn9Ztv5grovKVpV2ZDsY2n4foNTGtX0TQhVrk/CdP6x1cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tUtoJvG/chtuXtvBDDaSMmx9rYyXFF5PpGoV5MhO8ok=; b=MAZxW1h5xJMKkopytNeqmfoLpq
 otiXFSIO0CQ6N0ZPqZesQndo8F2MWYiUQhcrlEdjs1pKPXndy5sw16SFAaKXWJT5KWM2bPcomhjy+
 ROifC78Z+Q1QuUEEtBpyyUNc8hw/2duMXUZnlKBs/TRYf3MNddrgNC+1yW4LlDnJBbug=;
Received: from [107.174.27.60] (helo=ozlabs.ru)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1k0PE6-001zzx-0p
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jul 2020 13:01:03 +0000
Received: from fstn1-p1.ozlabs.ibm.com (localhost [IPv6:::1])
 by ozlabs.ru (Postfix) with ESMTP id EDB48AE800ED;
 Tue, 28 Jul 2020 08:38:56 -0400 (EDT)
From: Alexey Kardashevskiy <aik@ozlabs.ru>
To: v9fs-developer@lists.sourceforge.net
Date: Tue, 28 Jul 2020 22:41:29 +1000
Message-Id: <20200728124129.130856-1-aik@ozlabs.ru>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ozlabs.ru]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -1.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k0PE6-001zzx-0p
Subject: [V9fs-developer] [PATCH kernel] 9p/trans_fd: Check file mode at
 opening
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Alexey Kardashevskiy <aik@ozlabs.ru>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The "fd" transport layer uses 2 file descriptors passed externally
and calls kernel_write()/kernel_read() on these. If files were opened
without FMODE_WRITE/FMODE_READ, WARN_ON_ONCE() will fire.

This adds file mode checking in p9_fd_open; this returns -EBADF to
preserve the original behavior.

Found by syzkaller.

Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
---
 net/9p/trans_fd.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 13cd683a658a..62cdfbd01f0a 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -797,6 +797,7 @@ static int parse_opts(char *params, struct p9_fd_opts *opts)
 
 static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
 {
+	bool perm;
 	struct p9_trans_fd *ts = kzalloc(sizeof(struct p9_trans_fd),
 					   GFP_KERNEL);
 	if (!ts)
@@ -804,12 +805,16 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
 
 	ts->rd = fget(rfd);
 	ts->wr = fget(wfd);
-	if (!ts->rd || !ts->wr) {
+	perm = ts->rd && (ts->rd->f_mode & FMODE_READ) &&
+	       ts->wr && (ts->wr->f_mode & FMODE_WRITE);
+	if (!ts->rd || !ts->wr || !perm) {
 		if (ts->rd)
 			fput(ts->rd);
 		if (ts->wr)
 			fput(ts->wr);
 		kfree(ts);
+		if (!perm)
+			return -EBADF;
 		return -EIO;
 	}
 
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
