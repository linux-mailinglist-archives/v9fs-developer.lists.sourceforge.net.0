Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43297543AB3
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 Jun 2022 19:42:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nyzgw-0000e8-7S; Wed, 08 Jun 2022 17:42:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <viro@ftp.linux.org.uk>) id 1nyzgu-0000Jv-Al
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Jun 2022 17:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:MIME-Version:Message-ID:Subject
 :Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TeOj6cMufxRfM72BEyadE0T4YuExPZum0C6Sd7F3BAA=; b=hwqG0XqZSZh0bHgJIw1V+AtcF2
 BZ+yRe2KJaABtXAM8oSMdHMCayHwdRc/2+p63TSs21hnGprTKxQK/5wp3G68Yuul0SO2rHj6SOPK4
 FHuZ5SiYJbJ06VP9DCdhqtpfbT2/j19Mcjz/K/ul3WCS3wOfpLnF8qfxKtIz1u995S9A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TeOj6cMufxRfM72BEyadE0T4YuExPZum0C6Sd7F3BAA=; b=L
 kcy4QX4mLN6IBVaitDe1mx2k+/NEAiqcwJGFq/dIeUnemJ6pZQmCCUkUe4XMreMb31Mc70LWjPQbV
 bgI5mYe25SYX1j6cyjMh6KHsXu7M6FcaSKr+4BoylcHJwpzqfLEZfPGUCFlC3BojfYPTfKW18p/01
 KBZBvJ9B9LsIv28c=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyzgq-00A6rq-CI
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Jun 2022 17:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=TeOj6cMufxRfM72BEyadE0T4YuExPZum0C6Sd7F3BAA=; b=i28TeTTo6P1qZ/BvrrCuuPg3hs
 JQFlVr8K7FkxOantx+KeAcwQb7ARfkAerE1SiKSpsG52SsAKKFL6OcIfCqXhqO3RIM5m05V8E4ehj
 evTqK1uJ+SbIE0v+osBZOZYrD8TxQBAEMIQiJsDiQc6WeJCn7PeqjQgC6NAKe9Zc6vojDjr5sWecI
 S9l9bgoAg9HgJIUTcKW/Egg5O01RZkFtn4jb+vJDFwPMkGdF5TFk7Bw1gwMydYAoHPU4BNhU8oABI
 HGHQyIaWTDjOW0U6vAuD7CiIBLK3LRYznjDBmwHcVaYyCJSBP9ZMsTXqwkxaHdUWS6VC9OdSvObef
 1A9+2JYg==;
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nyzgg-005Bwi-QE; Wed, 08 Jun 2022 17:41:47 +0000
Date: Wed, 8 Jun 2022 17:41:46 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <YqDfWho8+f2AXPrj@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As it is, p9_client_zc_rpc()/p9_check_zc_errors() is playing
 fast and loose with copy_from_iter_full(). Background: reading from file
 is done by sending Tread request. Response consists of fixed-sized header
 (including the amount of data actually read) followed by the data itself. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1nyzgq-00A6rq-CI
Subject: [V9fs-developer] [RFC][CFT] handling Rerror without
 copy_from_iter_full()
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

	As it is, p9_client_zc_rpc()/p9_check_zc_errors() is playing fast
and loose with copy_from_iter_full().

	Background: reading from file is done by sending Tread request.
Response consists of fixed-sized header (including the amount of data
actually read) followed by the data itself.

	For zero-copy case we arrange the things so that the first 11
bytes of reply go into the fixed-sized buffer, with the rest going
straight into the pages we want to read into.

	What makes the things inconvenient is that sglist describing
what should go where has to be set *before* the reply arrives.  As
the result, if reply is an error, the things get interesting.  Success
is
	size[4] Rread tag[2] count[4] data[count]
For error layout varies depending upon the protocol variant -
in original 9P and 9P2000 it's
	size[4] Rerror tag[2] len[2] error[len]
in 9P2000.U
	size[4] Rerror tag[2] len[2] error[len] errno[4]
in 9P2000.L
	size[4] Rlerror tag[2] errno[4]

The last case is nice and simple - we have an 11-byte response that fits
into the fixed-sized buffer we hoped to get an Rread into.  In other
two, though, we get a variable-length string spill into the pages
we'd prepared for the data to be read.

Had that been in fixed-sized buffer (which is actually 4K), we would've
dealt with that the same way we handle non-zerocopy case.  However,
for zerocopy it doesn't end up there, so we need to copy it from
those pages.

The trouble is, by the time we get around to that, the references to
pages in question are already dropped.  As the result, p9_zc_check_errors()
tries to get the data using copy_from_iter_full().  Unfortunately, the
iov_iter it's trying to read from might *NOT* be capable of that.
It is, after all, a data destination, not data source.  In particular,
if it's an ITER_PIPE one, copy_from_iter_full() will simply fail.

The thing is, in ->zc_request() itself we have those pages.  There it
would be a simple matter of memcpy_from_page() into the fixed-sized
buffer and it isn't hard to recognize the (rare) case when such
copying is needed.  That way we get rid of p9_zc_check_errors() entirely
- p9_check_errors() can be used instead both for zero-copy and non-zero-copy
cases.

Do you see any problems with the variant below?

Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
diff --git a/net/9p/client.c b/net/9p/client.c
index 8bba0d9cf975..d403085b9ef5 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -550,90 +550,6 @@ static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
 	return err;
 }
 
-/**
- * p9_check_zc_errors - check 9p packet for error return and process it
- * @c: current client instance
- * @req: request to parse and check for error conditions
- * @uidata: external buffer containing error
- * @in_hdrlen: Size of response protocol buffer.
- *
- * returns error code if one is discovered, otherwise returns 0
- *
- * this will have to be more complicated if we have multiple
- * error packet types
- */
-
-static int p9_check_zc_errors(struct p9_client *c, struct p9_req_t *req,
-			      struct iov_iter *uidata, int in_hdrlen)
-{
-	int err;
-	int ecode;
-	s8 type;
-	char *ename = NULL;
-
-	err = p9_parse_header(&req->rc, NULL, &type, NULL, 0);
-	/* dump the response from server
-	 * This should be after parse_header which poplulate pdu_fcall.
-	 */
-	trace_9p_protocol_dump(c, &req->rc);
-	if (err) {
-		p9_debug(P9_DEBUG_ERROR, "couldn't parse header %d\n", err);
-		return err;
-	}
-
-	if (type != P9_RERROR && type != P9_RLERROR)
-		return 0;
-
-	if (!p9_is_proto_dotl(c)) {
-		/* Error is reported in string format */
-		int len;
-		/* 7 = header size for RERROR; */
-		int inline_len = in_hdrlen - 7;
-
-		len = req->rc.size - req->rc.offset;
-		if (len > (P9_ZC_HDR_SZ - 7)) {
-			err = -EFAULT;
-			goto out_err;
-		}
-
-		ename = &req->rc.sdata[req->rc.offset];
-		if (len > inline_len) {
-			/* We have error in external buffer */
-			if (!copy_from_iter_full(ename + inline_len,
-						 len - inline_len, uidata)) {
-				err = -EFAULT;
-				goto out_err;
-			}
-		}
-		ename = NULL;
-		err = p9pdu_readf(&req->rc, c->proto_version, "s?d",
-				  &ename, &ecode);
-		if (err)
-			goto out_err;
-
-		if (p9_is_proto_dotu(c) && ecode < 512)
-			err = -ecode;
-
-		if (!err) {
-			err = p9_errstr2errno(ename, strlen(ename));
-
-			p9_debug(P9_DEBUG_9P, "<<< RERROR (%d) %s\n",
-				 -ecode, ename);
-		}
-		kfree(ename);
-	} else {
-		err = p9pdu_readf(&req->rc, c->proto_version, "d", &ecode);
-		err = -ecode;
-
-		p9_debug(P9_DEBUG_9P, "<<< RLERROR (%d)\n", -ecode);
-	}
-	return err;
-
-out_err:
-	p9_debug(P9_DEBUG_ERROR, "couldn't parse error%d\n", err);
-	return err;
-}
-
 static struct p9_req_t *
 p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...);
 
@@ -874,7 +790,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	if (err < 0)
 		goto reterr;
 
-	err = p9_check_zc_errors(c, req, uidata, in_hdrlen);
+	err = p9_check_errors(c, req);
 	trace_9p_client_res(c, type, req->rc.tag, err);
 	if (!err)
 		return req;
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index b24a4fb0f0a2..2a210c2f8e40 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -377,6 +377,35 @@ static int p9_get_mapped_pages(struct virtio_chan *chan,
 	}
 }
 
+static void handle_rerror(struct p9_req_t *req, int in_hdr_len,
+			  size_t offs, struct page **pages)
+{
+	unsigned size, n;
+	void *to = req->rc.sdata + in_hdr_len;
+
+	// Fits entirely into the static data?  Nothing to do.
+	if (req->rc.size < in_hdr_len)
+		return;
+
+	// Really long error message?  Tough, truncate the reply.  Might get
+	// rejected (we can't be arsed to adjust the size encoded in header,
+	// or string size for that matter), but it wouldn't be anything valid
+	// anyway.
+	if (unlikely(req->rc.size > P9_ZC_HDR_SZ))
+		req->rc.size = P9_ZC_HDR_SZ;
+
+	// data won't span more than two pages
+	size = req->rc.size - in_hdr_len;
+	n = PAGE_SIZE - offs;
+	if (size > n) {
+		memcpy_from_page(to, *pages++, offs, n);
+		offs = 0;
+		to += n;
+		size -= n;
+	}
+	memcpy_from_page(to, *pages, offs, size);
+}
+
 /**
  * p9_virtio_zc_request - issue a zero copy request
  * @client: client instance issuing the request
@@ -503,6 +532,11 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	kicked = 1;
 	p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
 	err = wait_event_killable(req->wq, req->status >= REQ_STATUS_RCVD);
+	// RERROR needs reply (== error string) in static data
+	if (req->status == REQ_STATUS_RCVD &&
+	    unlikely(req->rc.sdata[4] == P9_RERROR))
+		handle_rerror(req, in_hdr_len, offs, in_pages);
+
 	/*
 	 * Non kernel buffers are pinned, unpin them
 	 */


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
