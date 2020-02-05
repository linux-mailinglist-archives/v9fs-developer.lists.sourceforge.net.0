Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 552B6152450
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 01:55:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iz8yP-0002h2-Dm; Wed, 05 Feb 2020 00:55:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <l29ah@cock.li>) id 1iz8yM-0002go-6g
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 00:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6fhlIdfWWepifGMZuKzV5Npuql6UEmATKi58Tswz0p4=; b=ST22wT7+G1MHoafeFFWF1vUH/4
 EnLEf05IZKUwpG9Ok5PluBRoY/C8LL8NPHzBWpZBgboLHSl4e0np3ioTKJL0J7pf2bIsyWsm4ySLB
 E9Z6xk1gvhiyHkS5MbNl8jp54vAJKZZWiEnUKPnVCIqXZOAnL0IpPWuPntO77dvtDUDM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6fhlIdfWWepifGMZuKzV5Npuql6UEmATKi58Tswz0p4=; b=X
 1ORzYRloLeEICtrB0bkEe2PeHtu45ym+5CuNl7W/q4j6IET6wCNHn2hxTO1P+uA54pLkVJp/kSBeq
 hAlvhPynAfCHpLFV4I8v2/9bqF60B4ols9qAziqgxCcBKilVRmgaDKMvsUASE3FlRjpSZvFkWzJhc
 EEgMvY9wL4AuAqrQ=;
Received: from mx1.cock.li ([185.10.68.5] helo=cock.li)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iz8yJ-00AWul-Ep
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 00:55:18 +0000
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on cock.li
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,NO_RECEIVED,NO_RELAYS shortcircuit=_SCTYPE_
 autolearn=disabled version=3.4.2
From: Sergey Alirzaev <l29ah@cock.li>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cock.li; s=mail;
 t=1580862943; bh=nAV3l3sUTQpml1uNYZHfn/7ytdaY9Tyf+4SAhK9kxa4=;
 h=From:To:Cc:Subject:Date:From;
 b=FBI/CC4625dbP+d0Eo79S69mfRAfHxDp75pBmTbWpy5tOBE9MZ2ioSgE8cMqE3T+0
 nfgeRlAxaRMzXspuWGP1r/SUVqUb/v6fj5xNxE3kbMg7XPyk38ekpt1OvJ0ffaTvg8
 iDKzSIpqrGCJFQgnk+zuiEAuRUOXlUKGHQ9x+rtd/+q6m8Rin4h8EXPq9Q8lbLuwqJ
 fqpFsa03Q/Q/zKrS5T/5aRg51w7XaP0wuJ1h7hoEoxhoAihhHDNz1BeUMNgj0VtIFR
 YsCn8k1AjVAzHD77EpAq4JvsYZfYEnTAr07IetkIn8c+q7np4ZfrZfseKrwHuvh2lS
 5CwPmtciFXD5A==
To: v9fs-developer@lists.sourceforge.net
Date: Wed,  5 Feb 2020 03:34:56 +0300
Message-Id: <20200205003457.24340-1-l29ah@cock.li>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam-Score: -0.5 (/)
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
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iz8yJ-00AWul-Ep
Subject: [V9fs-developer] [PATCH 1/2] 9pnet: allow making incomplete read
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
be available, since the waiting time is unbounded.

Signed-off-by: Sergey Alirzaev <l29ah@cock.li>
---
 include/net/9p/client.h |   2 +
 net/9p/client.c         | 133 ++++++++++++++++++++++------------------
 2 files changed, 76 insertions(+), 59 deletions(-)

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
index 1d48afc7033c..186f5b44aa01 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1548,83 +1548,98 @@ EXPORT_SYMBOL(p9_client_unlinkat);
 
 int
 p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
+{
+	int total = 0;
+	*err = 0;
+
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
 {
 	struct p9_client *clnt = fid->clnt;
 	struct p9_req_t *req;
 	int total = 0;
-	*err = 0;
+	int count = iov_iter_count(to);
+	int rsize, non_zc = 0;
+	char *dataptr;
 
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
+		return total;
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
+		return total;
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
+		return total;
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
+		total += n;
+		if (n != count) {
+			*err = -EFAULT;
+			p9_tag_remove(clnt, req);
+			return total;
 		}
-		p9_tag_remove(clnt, req);
+	} else {
+		iov_iter_advance(to, count);
+		total += count;
 	}
+	p9_tag_remove(clnt, req);
 	return total;
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
