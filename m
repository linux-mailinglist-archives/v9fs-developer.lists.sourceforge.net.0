Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9363C5AC305
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 08:39:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUjIU-0002ba-Cx;
	Sun, 04 Sep 2022 06:39:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oUjIS-0002bS-9V
 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=miYzyZXO3Y9mE5VTAs4cy8zeo4mpViTAUsvFYJlZovY=; b=RIly5YnDiPBWq+pSSKR6lwrSlF
 eJnV8sjSaDdxC0OFbAx8PuenqM3EOgJE5dtrAW+FxXwUCwRuoJaEmCTLUbqvmbsrotysxgSE9b6JA
 s9xMefek+RrOfpFd/xx3nTwa1ivuP52j1TXjZfLbqOQWlgaOEJGNmBADRS7+E3CXngSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=miYzyZXO3Y9mE5VTAs4cy8zeo4mpViTAUsvFYJlZovY=; b=MPCtvs+urUxVisZ5adLJ1YDFB7
 nL5/yT1xIs4c3InbYRWnqyERcHw9mbRYZ6yc/gvxkoUOns4e39etRY+R700wOX9TjHV+VKUBwOY/O
 E/8ioAsp5KjtGtxEDaZsvBCYLZ3soAkIC1xmlUahye+yQz0+Z2Xca2ZHRYqnrwUmOFaQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUjIR-00DZqA-Er for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:39:56 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B2308C01D; Sun,  4 Sep 2022 08:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662273588; bh=miYzyZXO3Y9mE5VTAs4cy8zeo4mpViTAUsvFYJlZovY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HLsVLhsvfAK+Wa4HgqxkYpMZUKdE/yIGIs5qxTKzKWVyGhllrceb1lZpGeTVV4qU6
 +nnx/vkDs8XRjtPrxn2ngpF/G90UMiSLCNzaR5t3+tB74FXWqyQop1IvEQ9tVxlnbv
 WielN1vgColAi6E5UXJrrcBYMNWo9P4TPBXqd6iU6o5R50Pt6JZcaj21RrY4F85kZZ
 EHcHsW9j2zaYeu6pHkbfqSegL29A13Bn6MGmUhJD9PcoiUVuJgVjRLVVMMB3zTUSKf
 bDCAzJu+jwFnXEk572iNU5PUKrsgTD4RmFEQOANZ6cIynhdjQRAkz2decemK9sNMCB
 NHr45TspgHPug==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0F923C009;
 Sun,  4 Sep 2022 08:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662273587; bh=miYzyZXO3Y9mE5VTAs4cy8zeo4mpViTAUsvFYJlZovY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DGpImAY0Y2wqk+H5bmyNEk7jt/o3t71V9PIu6k2XfSjaRGl9hb0WIBcziFV9kWTi3
 um6DzOh6+ND0BmALDVyKTrMS9WmGTOKnzsgGn77Y2KluxB16+mNf8nzgauYS11OEKt
 1Vj4Dce8MhlckP9EEnpJt/TxSxicPR9xAs6NmC2bXcM8Hl9RMO54CQqYZkWbH85Tia
 LYCiMvAa2F9VF6BG8TuMQy/fnS3mdxABhcnVHtLX6Pexyr8QE8pP5206AP6HQ7I4Lb
 YnukwnDcgHXB5RdNUPKRfUWWDJaMMnzIkaYOztVfnYkRSWCMMfmOI6AFmfhcgnCMUM
 wT4bFHe+KZE+A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 2cbbbc34;
 Sun, 4 Sep 2022 06:39:43 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Sun,  4 Sep 2022 15:39:36 +0900
Message-Id: <20220904063936.1305139-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <0000000000001c3efc05e6693f06@google.com>
References: <0000000000001c3efc05e6693f06@google.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If trans was connected it's somehow possible to fail with
 requests in flight that could still be accessed after free if we just free
 the clnt on failure. Just use p9_client_destroy instead that has pr [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oUjIR-00DZqA-Er
Subject: [V9fs-developer] [PATCH 1/2] 9p: p9_client_create: use
 p9_client_destroy on failure
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
Cc: linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org,
 syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

If trans was connected it's somehow possible to fail with requests in
flight that could still be accessed after free if we just free the clnt
on failure.
Just use p9_client_destroy instead that has proper safeguards.

Reported-by: syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 net/9p/client.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 0a6110e15d0f..d340dbbd2ace 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -931,14 +931,10 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	char *client_id;
 
 	err = 0;
-	clnt = kmalloc(sizeof(*clnt), GFP_KERNEL);
+	clnt = kzalloc(sizeof(*clnt), GFP_KERNEL);
 	if (!clnt)
 		return ERR_PTR(-ENOMEM);
 
-	clnt->trans_mod = NULL;
-	clnt->trans = NULL;
-	clnt->fcall_cache = NULL;
-
 	client_id = utsname()->nodename;
 	memcpy(clnt->name, client_id, strlen(client_id) + 1);
 
@@ -948,7 +944,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
 	err = parse_opts(options, clnt);
 	if (err < 0)
-		goto free_client;
+		goto out;
 
 	if (!clnt->trans_mod)
 		clnt->trans_mod = v9fs_get_default_trans();
@@ -957,7 +953,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		err = -EPROTONOSUPPORT;
 		p9_debug(P9_DEBUG_ERROR,
 			 "No transport defined or default transport\n");
-		goto free_client;
+		goto out;
 	}
 
 	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
@@ -965,7 +961,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
 	err = clnt->trans_mod->create(clnt, dev_name, options);
 	if (err)
-		goto put_trans;
+		goto out;
 
 	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
@@ -979,12 +975,12 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		p9_debug(P9_DEBUG_ERROR,
 			 "Please specify a msize of at least 4k\n");
 		err = -EINVAL;
-		goto close_trans;
+		goto out;
 	}
 
 	err = p9_client_version(clnt);
 	if (err)
-		goto close_trans;
+		goto out;
 
 	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
 	 * followed by data accessed from userspace by read
@@ -997,12 +993,8 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
 	return clnt;
 
-close_trans:
-	clnt->trans_mod->close(clnt);
-put_trans:
-	v9fs_put_trans(clnt->trans_mod);
-free_client:
-	kfree(clnt);
+out:
+	p9_client_destroy(clnt);
 	return ERR_PTR(err);
 }
 EXPORT_SYMBOL(p9_client_create);
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
