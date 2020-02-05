Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F341C1539A4
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 21:41:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izRUD-0004Bw-S3; Wed, 05 Feb 2020 20:41:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <l29ah@cock.li>) id 1izRUC-0004Bk-4Q
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 20:41:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ErdBvDBYEOq9QcB7Qb0GxATwpG5gp95yOhzAGfnZnq4=; b=Ke7hlGf64fbWfpjub5HGaKHg22
 DwqYkBp+Hv2Wxza7smJSK/v9uRgC0E1uLm6OneARnra4U6kwVsQojxApR+dAsEmZhZeG8HqyFU14C
 Y8Ebq4suvE0qEf95mFNeQXgidguNSUixhH5oZKAWbDp+cwW4u9QMB+Apmx9YjVqO9WCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ErdBvDBYEOq9QcB7Qb0GxATwpG5gp95yOhzAGfnZnq4=; b=X
 qpCiZwdoSlRHVLPJcXtjH4BZpfdJALJFX1jI0qMEceZ1vH36wVK+13xMistu7PEoYSOcH8iCXoew7
 dB+gTp8utsMeNETJV6WMx92oup3KqtgXpOYxpsGGeqyorFGCKv6IwmtA0bGPi349P7a8E39rqP2yQ
 z2NXpBJQBqa9z2Uk=;
Received: from mx1.cock.li ([185.10.68.5] helo=cock.li)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izRU9-00BIR0-MM
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 20:41:24 +0000
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on cock.li
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,NO_RECEIVED,NO_RELAYS shortcircuit=_SCTYPE_
 autolearn=disabled version=3.4.2
From: Sergey Alirzaev <l29ah@cock.li>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cock.li; s=mail;
 t=1580935270; bh=ntRFvU3hcsMEE34oypcg9/W6Ep/xOHm+MQXdA0Es7h4=;
 h=From:To:Cc:Subject:Date:From;
 b=NW7pcRwCupXSD4j8s711wENm+UqaKYaVIKzE4QcwCDYYhcWJmDlASquy90LYs00Wr
 n515bEcisaEFfsw8CAxCbBakEl7EHaAgYB17BtTVG9hMcCzEydQTVKw/847pytpLiY
 qLMLrvl5DePK1tWkqygcuVe3zig4jJAYWgtDCdhKwqumZOOMpa6U7kT+k3iRZiEcRX
 ABKl30NZVG+ytvPOVg0h3OFYGja/ZnFFJKC1+iHEEY6DcoKtHYWz4xF22JMPXNChYT
 tf2x3PyS1OcxHRipU7rQG7ZmBmHtmvF3JEZvsN3is1Ozk9cu1YNgZb7SlD5uuJ1YX0
 XxoGy8oxzjguA==
To: v9fs-developer@lists.sourceforge.net
Date: Wed,  5 Feb 2020 23:40:53 +0300
Message-Id: <20200205204053.12751-1-l29ah@cock.li>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
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
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izRU9-00BIR0-MM
Subject: [V9fs-developer] [PATCH] 9pnet: allow making incomplete read
 requests
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

A user doesn't necessarily want to wait for all the requested data to
be available, since the waiting time for each request is unbounded.

The new method permits sending one read request at a time and getting
the response ASAP, allowing to use 9pnet with synthetic file systems
representing arbitrary data streams.

Signed-off-by: Sergey Alirzaev <l29ah@cock.li>
---
 include/net/9p/client.h |   2 +
 net/9p/client.c         | 135 ++++++++++++++++++++++------------------
 2 files changed, 76 insertions(+), 61 deletions(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index acc60d8a3b3b..f6c890e94f87 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -200,6 +200,8 @@ int p9_client_fsync(struct p9_fid *fid, int datasync);
 int p9_client_remove(struct p9_fid *fid);
 int p9_client_unlinkat(struct p9_fid *dfid, const char *name, int flags);
 int p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err);
+int p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
+		int *err);
 int p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err);
 int p9_client_readdir(struct p9_fid *fid, char *data, u32 count, u64 offset);
 int p9dirent_read(struct p9_client *clnt, char *buf, int len,
diff --git a/net/9p/client.c b/net/9p/client.c
index 1d48afc7033c..240d7c05b282 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1549,82 +1549,95 @@ EXPORT_SYMBOL(p9_client_unlinkat);
 int
 p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
 {
-	struct p9_client *clnt = fid->clnt;
-	struct p9_req_t *req;
 	int total = 0;
 	*err = 0;
 
+	while (iov_iter_count(to)) {
+		int count;
+
+		count = p9_client_read_once(fid, offset, to, err);
+		if (!count || *err)
+			break;
+		offset += count;
+		total += count;
+	}
+	return total;
+}
+EXPORT_SYMBOL(p9_client_read);
+
+int
+p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
+		    int *err)
+{
+	struct p9_client *clnt = fid->clnt;
+	struct p9_req_t *req;
+	int count = iov_iter_count(to);
+	int rsize, non_zc = 0;
+	char *dataptr;
+
+	*err = 0;
 	p9_debug(P9_DEBUG_9P, ">>> TREAD fid %d offset %llu %d\n",
 		   fid->fid, (unsigned long long) offset, (int)iov_iter_count(to));
 
-	while (iov_iter_count(to)) {
-		int count = iov_iter_count(to);
-		int rsize, non_zc = 0;
-		char *dataptr;
+	rsize = fid->iounit;
+	if (!rsize || rsize > clnt->msize - P9_IOHDRSZ)
+		rsize = clnt->msize - P9_IOHDRSZ;
 
-		rsize = fid->iounit;
-		if (!rsize || rsize > clnt->msize-P9_IOHDRSZ)
-			rsize = clnt->msize - P9_IOHDRSZ;
+	if (count < rsize)
+		rsize = count;
 
-		if (count < rsize)
-			rsize = count;
+	/* Don't bother zerocopy for small IO (< 1024) */
+	if (clnt->trans_mod->zc_request && rsize > 1024) {
+		/* response header len is 11
+		 * PDU Header(7) + IO Size (4)
+		 */
+		req = p9_client_zc_rpc(clnt, P9_TREAD, to, NULL, rsize,
+				       0, 11, "dqd", fid->fid,
+				       offset, rsize);
+	} else {
+		non_zc = 1;
+		req = p9_client_rpc(clnt, P9_TREAD, "dqd", fid->fid, offset,
+				    rsize);
+	}
+	if (IS_ERR(req)) {
+		*err = PTR_ERR(req);
+		return 0;
+	}
 
-		/* Don't bother zerocopy for small IO (< 1024) */
-		if (clnt->trans_mod->zc_request && rsize > 1024) {
-			/*
-			 * response header len is 11
-			 * PDU Header(7) + IO Size (4)
-			 */
-			req = p9_client_zc_rpc(clnt, P9_TREAD, to, NULL, rsize,
-					       0, 11, "dqd", fid->fid,
-					       offset, rsize);
-		} else {
-			non_zc = 1;
-			req = p9_client_rpc(clnt, P9_TREAD, "dqd", fid->fid, offset,
-					    rsize);
-		}
-		if (IS_ERR(req)) {
-			*err = PTR_ERR(req);
-			break;
-		}
+	*err = p9pdu_readf(&req->rc, clnt->proto_version,
+			   "D", &count, &dataptr);
+	if (*err) {
+		trace_9p_protocol_dump(clnt, &req->rc);
+		p9_tag_remove(clnt, req);
+		return 0;
+	}
+	if (rsize < count) {
+		pr_err("bogus RREAD count (%d > %d)\n", count, rsize);
+		count = rsize;
+	}
 
-		*err = p9pdu_readf(&req->rc, clnt->proto_version,
-				   "D", &count, &dataptr);
-		if (*err) {
-			trace_9p_protocol_dump(clnt, &req->rc);
-			p9_tag_remove(clnt, req);
-			break;
-		}
-		if (rsize < count) {
-			pr_err("bogus RREAD count (%d > %d)\n", count, rsize);
-			count = rsize;
-		}
+	p9_debug(P9_DEBUG_9P, "<<< RREAD count %d\n", count);
+	if (!count) {
+		p9_tag_remove(clnt, req);
+		return 0;
+	}
 
-		p9_debug(P9_DEBUG_9P, "<<< RREAD count %d\n", count);
-		if (!count) {
-			p9_tag_remove(clnt, req);
-			break;
-		}
+	if (non_zc) {
+		int n = copy_to_iter(dataptr, count, to);
 
-		if (non_zc) {
-			int n = copy_to_iter(dataptr, count, to);
-			total += n;
-			offset += n;
-			if (n != count) {
-				*err = -EFAULT;
-				p9_tag_remove(clnt, req);
-				break;
-			}
-		} else {
-			iov_iter_advance(to, count);
-			total += count;
-			offset += count;
+		if (n != count) {
+			*err = -EFAULT;
+			p9_tag_remove(clnt, req);
+			return n;
 		}
-		p9_tag_remove(clnt, req);
+	} else {
+		iov_iter_advance(to, count);
+		count;
 	}
-	return total;
+	p9_tag_remove(clnt, req);
+	return count;
 }
-EXPORT_SYMBOL(p9_client_read);
+EXPORT_SYMBOL(p9_client_read_once);
 
 int
 p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
-- 
2.25.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
