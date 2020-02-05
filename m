Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 650B4152451
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 01:55:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iz8yR-0002hA-4p; Wed, 05 Feb 2020 00:55:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <l29ah@cock.li>) id 1iz8yM-0002gv-IV
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 00:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DM4kDaOsb2DuV+kjY+blsOGJiY10P8x5wmeDe51N59I=; b=QcTnGZkH9Z51B/eZMaYKt/qvqP
 BkRAoNwR2pIg6P69ekqtvHSCIobMOxIenStUV4VXK8YWuv7/z6fNIc66ZVYaxZXmhkmAD3hPwx58v
 3F/BRi9/D9TdAcalbd6fBZQt/uXrvonvZQNJ11GMLf5Qz1GbGYsoQkk8EjoRolvqt6DA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DM4kDaOsb2DuV+kjY+blsOGJiY10P8x5wmeDe51N59I=; b=ZU7rKrGzbd4ynvwoAVpvZtB3hf
 lPtzgixwLGAlDDYPKIAl58UHI1XsbrbQA8UiXlyWjb+Jk/i6WM06uYwBA/RyAODarQrjcO5r8td5D
 t+CqNxwUPaVllexDGhDujYCxlJsm0uWPCS9aSd+RL+KhL50cmZRUYtHtanovIFey6Vjc=;
Received: from mx1.cock.li ([185.10.68.5] helo=cock.li)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iz8yJ-00ATne-ON
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 00:55:18 +0000
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on cock.li
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,NO_RECEIVED,NO_RELAYS shortcircuit=_SCTYPE_
 autolearn=disabled version=3.4.2
From: Sergey Alirzaev <l29ah@cock.li>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cock.li; s=mail;
 t=1580862943; bh=Hjws4hd6gO2//6ej+Q1oLOrL7jmkiZKIXGuthMfEYqY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=knpvXt/SYh3/6+DkvT/RYVyVwKyKqP/J1WLMVs3qP/R++J9A2mtZwIjjvtJ+MN2bQ
 RPoGVCnorvJAyGWi7TMoFHUM6NGBdUXi+mvX9iws//EgMbGGoh1lDdfcbzCOdQ7jo4
 Tnb5CJldbRPd0ul46RllaNuUEHWk/V+GGAVJTVYs2gXiYkiNpi9EXJeYJkFkCK5mQa
 6jwTP1VU3bw4b6GV1vCe3OAweiRo5yudSefxBK/A3jqcvpYelAt/JYEW/BOe6XyBpZ
 Bwrj+uL4xBSfVGZNAN9N0VQ1sfdv0psNuGfwbs7dLeF+inGP4LOFs/i6RFbrSY9F01
 4XnN3SCgmrXJg==
To: v9fs-developer@lists.sourceforge.net
Date: Wed,  5 Feb 2020 03:34:57 +0300
Message-Id: <20200205003457.24340-2-l29ah@cock.li>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200205003457.24340-1-l29ah@cock.li>
References: <20200205003457.24340-1-l29ah@cock.li>
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cock.li]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [185.10.68.5 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iz8yJ-00ATne-ON
Subject: [V9fs-developer] [PATCH 2/2] 9p: read only once on O_NONBLOCK
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Alirzaev <l29ah@cock.li>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

A proper way to handle O_NONBLOCK would be making the requests and
responses happen asynchronously, but this would require serious code
refactoring.

Signed-off-by: Sergey Alirzaev <l29ah@cock.li>
---
 fs/9p/vfs_file.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index fe7f0bd2048e..92cd1d80218d 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -388,7 +388,10 @@ v9fs_file_read_iter(struct kiocb *iocb, struct iov_iter *to)
 	p9_debug(P9_DEBUG_VFS, "count %zu offset %lld\n",
 		 iov_iter_count(to), iocb->ki_pos);
 
-	ret = p9_client_read(fid, iocb->ki_pos, to, &err);
+	if (iocb->ki_filp->f_flags & O_NONBLOCK)
+		ret = p9_client_read_once(fid, iocb->ki_pos, to, &err);
+	else
+		ret = p9_client_read(fid, iocb->ki_pos, to, &err);
 	if (!ret)
 		return err;
 
-- 
2.25.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
