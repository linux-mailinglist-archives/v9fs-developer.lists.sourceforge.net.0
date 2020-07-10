Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F7921B1D2
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jul 2020 11:00:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jtotC-0006Qg-MG; Fri, 10 Jul 2020 09:00:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+9f3021a47afaa262729b+6165+infradead.org+hch@casper.srs.infradead.org>)
 id 1jtotB-0006Q4-EX
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 09:00:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=46zVvTCTOU6ly5L8DQ5CyQhpZx1njBDbWU2lkQmXjRM=; b=C+5EBfx1kDdEKTzoYMMEoPTr5n
 bpdeVLLM+plTAFBVhT0RYl2+W+YbrR2rRBQpWfNQ30tgHbijObLrmDAcaZ6lxjvOiIbJzpFXvb53E
 CiOj2Opvm2Q0k/3B+HI+Bsu0l39BUwY+NN6wc1MH1EYUSvWPzInAx4ExMLfaafmgtRhk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=46zVvTCTOU6ly5L8DQ5CyQhpZx1njBDbWU2lkQmXjRM=; b=E
 mBZiG/f9QbYNnahHn2IzMkGhhhARgVbVuWho6fs0++dF3uAae3gI/TcmD+nyVpC5lHpdmH/JLHIRV
 /9u0qhYzCw1Q+HQZzWm3RBel2nSxb4kmrSZV3K/RWskManVVxC0oHxBu9RZfW6SqvBQT5yQthq0In
 WZpU5nDsTkECNvQ0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtosy-00D0qb-Vb
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 09:00:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=46zVvTCTOU6ly5L8DQ5CyQhpZx1njBDbWU2lkQmXjRM=; b=ekpALOaKRhzdpAi91A603FNUEc
 8jMBLVjFMPuzRYer7Qk8uDweww316Rlk6rVKMIqXddXo4s80WblIH/eY1g8nYLCMvJPuctcp07LFW
 UQ1nR2uo+uqAi4+b9Zzk7kjs7L04URC0zXkRTzxS85EFisNDAk1kklxninKo5WGsOwAuxCiJK1A6S
 ++nJj9fxFOW9ks953HI7RCpcm1lt3GhTUvTAnXbmdN/25cOmzdKRZx97dVF0i7uT3734W97LG16Ks
 8OShoni+XXPPyZiSb9D19+C4MeOJWQBND/w17rqHIGrhYEasy8nZxQnJ5Asz1hT4dOUf2W4mJjhbH
 2L0eld0w==;
Received: from 089144201169.atnat0010.highway.a1.net ([89.144.201.169]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jtosY-00082k-5L; Fri, 10 Jul 2020 08:59:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: ericvh@gmail.com,
	lucho@ionkov.net,
	asmadeus@codewreck.org
Date: Fri, 10 Jul 2020 10:57:22 +0200
Message-Id: <20200710085722.435850-1-hch@lst.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtosy-00D0qb-Vb
Subject: [V9fs-developer] [PATCH] net/9p: validate fds in p9_fd_open
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
Cc: v9fs-developer@lists.sourceforge.net,
 syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

p9_fd_open just fgets file descriptors passed in from userspace, but
doesn't verify that they are valid for read or writing.  This gets
cought down in the VFS when actually attemping a read or write, but a
new warning added in linux-next upsets syzcaller.

Fix this by just verifying the fds early on.

Reported-by: syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/9p/trans_fd.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 13cd683a658ab6..1cd8ea0e493617 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -803,20 +803,28 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
 		return -ENOMEM;
 
 	ts->rd = fget(rfd);
+	if (!ts->rd)
+		goto out_free_ts;
+	if (!(ts->rd->f_mode & FMODE_READ))
+		goto out_put_wr;
 	ts->wr = fget(wfd);
-	if (!ts->rd || !ts->wr) {
-		if (ts->rd)
-			fput(ts->rd);
-		if (ts->wr)
-			fput(ts->wr);
-		kfree(ts);
-		return -EIO;
-	}
+	if (!ts->wr)
+		goto out_put_rd;
+	if (!(ts->wr->f_mode & FMODE_WRITE))
+		goto out_put_wr;
 
 	client->trans = ts;
 	client->status = Connected;
 
 	return 0;
+
+out_put_wr:
+	fput(ts->wr);
+out_put_rd:
+	fput(ts->rd);
+out_free_ts:
+	kfree(ts);
+	return -EIO;
 }
 
 static int p9_socket_open(struct p9_client *client, struct socket *csocket)
-- 
2.26.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
