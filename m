Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA1C54E92E
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 20:09:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1twG-0005Fg-DM; Thu, 16 Jun 2022 18:09:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <28a01af70227378bb47318d5eb7780b050f03b97@lizzy.crudebyte.com>)
 id 1o1twF-0005Fa-6f
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 18:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Cc:To:Subject:Date:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xm94cFRpLBeZoS4MkJUmpD9ccv8vD46ilbV91YuAu+4=; b=B/UHi0F13GqlXLbDJYQ/TzTvgB
 lm1D6TI0ACbGFH3Z0Vsk7LTttjpHUwoB2XhWcwq27YeinwGU0TwaieTPu6WUtpLxhOcQ2UTaBIjiy
 ES1G03sqNsnBvcQDL4DXgaGKeduRxzzDSw547fU18ZMt/eFfxNSlCZjy8WXm0TAX7q1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Cc:To:Subject:Date:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xm94cFRpLBeZoS4MkJUmpD9ccv8vD46ilbV91YuAu+4=; b=IIfF8j9L+A23pxG2GZlIYFoRYH
 Z2BbUqv15E/NS0tqHRfq91+MIBIvfm2Q1xKRYZ2nd78ywB7qo9J3pn1NRZ3tSzApTztx7Ll6nYuRF
 Bvbl+HnMFroFquX2ymQl+yvhzOQJpXDmeMycPBuh9ZeELTAVEqUg0VYAl3Ne3B0fzVeU=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1twB-004Nnj-Qr
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 18:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Message-Id:Cc:To:Subject:Date:From:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=xm94cFRpLBeZoS4MkJUmpD9ccv8vD46ilbV91YuAu+4=; b=gTOEs
 aiOGh59u3PyvQFNqRbDXK5rbrTl2/02z3Yf6YAwDFqMRHfBdGjmFBUeekgmLJpcOMtVj+qA44ha/V
 7PY/1Dz0A9TFKsFgk7h7k79/VnE4JUHQ3nk9olcwnmy6b+AJwBT83U7v9mUC79w4h3SakvKiFbQ3y
 NfOKHHu55Clmzy9yEkoHJ/zRowQJLaeZcKRuJjQUxZfS15tI0w2bT6IqMtTpkuMg8H55//Gh8Mkdj
 rjdwgolVWqIsDBpTQeSdUfloljJkEdjMTuTEAnrVdPLOCBmEuIwzQ+a4jCIjzHjpzC6yrxSDUiCyC
 Zszg3Nxd9UpyhBTNY3dT1XFAn3dUA==;
Date: Thu, 16 Jun 2022 19:09:42 +0200
To: Dominique Martinet <asmadeus@codewreck.org>
Message-Id: <E1o1tHC-00039k-04@lizzy.crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The netfs changes (eb497943fa21) introduced cases where
 'Tread'
 was sent to 9p server on a fid that was opened in write-only file mode. It
 took some time to find the cause of the symptoms observed (EB [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o1twB-004Nnj-Qr
Subject: [V9fs-developer] [PATCH] net/9p: show warning on Tread/Twrite if
 wrong file mode
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, David Howells <dhowells@redhat.com>,
 linux-kernel@vger.kernel.org, Latchesar Ionkov <lucho@ionkov.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The netfs changes (eb497943fa21) introduced cases where 'Tread' was sent
to 9p server on a fid that was opened in write-only file mode. It took
some time to find the cause of the symptoms observed (EBADF errors in
user space apps). Add warnings to detect such issues easier in future.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Link: https://lore.kernel.org/netdev/3645230.Tf70N6zClz@silver/
---
As requested by Dominique, here a clean version of my previous
EBADF trap code to be merged. Dominique, if you already have an
equivalent patch queued, then just go ahead. I don't mind.

I'm currently testing your EBADF fix patch and the discussed,
slightly adjusted versions. Looking good so far, but I'll report
back later on.


 net/9p/client.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/9p/client.c b/net/9p/client.c
index 8bba0d9cf975..05dead12702d 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1555,6 +1555,8 @@ p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
 	int total = 0;
 	*err = 0;
 
+	WARN_ON((fid->mode & O_ACCMODE) == O_WRONLY);
+
 	while (iov_iter_count(to)) {
 		int count;
 
@@ -1648,6 +1650,8 @@ p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
 	p9_debug(P9_DEBUG_9P, ">>> TWRITE fid %d offset %llu count %zd\n",
 		 fid->fid, offset, iov_iter_count(from));
 
+	WARN_ON((fid->mode & O_ACCMODE) == O_RDONLY);
+
 	while (iov_iter_count(from)) {
 		int count = iov_iter_count(from);
 		int rsize = fid->iounit;
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
