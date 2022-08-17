Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 132F8596911
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Aug 2022 08:00:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oOC6N-00085w-DF;
	Wed, 17 Aug 2022 06:00:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oOC6L-00085p-Qb
 for v9fs-developer@lists.sourceforge.net;
 Wed, 17 Aug 2022 06:00:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oLawsTDNpKCPBs4WfqX5ZpLPu+XeYzk8pF8CByNEE9U=; b=iWnFuuuPb4CJd/ezfWULYZ4fiJ
 J230IMZzl47qGfNpQ0l06GluwUlaQf+ZvXqOKRUsQ45KEdV0hvoCcr7E7rgmtVsYGISjSdXULhJQG
 IMMtoB8teA8d1G+rbEGiMN/anWtgiZz8vD1ftlY+Q2oISI57HZfwDwZDa/MvSVKF+kjI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oLawsTDNpKCPBs4WfqX5ZpLPu+XeYzk8pF8CByNEE9U=; b=kc+ApC2goHCSbI180tyTzq9vgS
 2UXNwRBihkFy1N3ksRyHasSTeDt9SHJM+Ulzf+wzaxBAjh+CScfC9DLyng8VE00kkZ9KW1n9FHkc4
 vfIOQAFe4o2M0YsKu2A2sqMpn7ZQEyXEMv8Qg65vBej7456ItB/OLaMTx5o9kFhZLce8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oOC6F-005DEd-CZ for v9fs-developer@lists.sourceforge.net;
 Wed, 17 Aug 2022 06:00:25 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5B90FC020; Wed, 17 Aug 2022 08:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1660716010; bh=oLawsTDNpKCPBs4WfqX5ZpLPu+XeYzk8pF8CByNEE9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q8kyToz4gT4qpFyv4SW3MaYKZeh1z/1Vtbq64ZONJx+68wN1zoFXakjvp09eIAP40
 Us4DyYKA/qYnl5+XwdnCOH10431pAYXNxBFr+239yymvX98r33qK1kP0/cMP99GLUT
 11BUvfYMy7buHGPfDBxfTj891YKpKjYTJSwDbadCyhsBMsiOxnfwUbiakiKE4kez3b
 a3A5yd5xw8UYvf+RTyXGu6c0E0V7nv5pKuwirpSxrWZVlhUYMbIZMdtu0rJN7mbbBS
 3wkTdj/Vkx2r3Gayq+P9BKTcyOgzP1Kov5zyNK4Vv2lmO6L9WiKOvRjsh4eITKHYLc
 JzHDY71836eEA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 9C693C009;
 Wed, 17 Aug 2022 08:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1660716009; bh=oLawsTDNpKCPBs4WfqX5ZpLPu+XeYzk8pF8CByNEE9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wIPUcYFMZFE6d29/F20PcsGJHWz99spLgop5LaFfEhHJY7aVmwEWCc0xuxGK81jzX
 5gKyEZehHb67HXExYY1GozBD69Jogpu27xTayMLiwHdBRbUexiKSIXMIuNUNzUUcdy
 sW5fEPWypWT3DZt8dxfpDMTiP+CeYMqWWx7Mgm5tMwRqYDbIAQ4+Lqt88ayGCJlcM1
 tro98Mo8P4E14RTlW1BwaJxeadg83HQjfXtuTQhXO9UbVwbNFA6vctVwtv5NWtXG16
 +2JZSL1kgiqv1ZCVpFKPRe3umCXMAeDMpVA0fwBwspi1JFbucsu7sREXMv06nwXAV4
 y1c9aNpFiEgVQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a01f3657;
 Wed, 17 Aug 2022 06:00:02 +0000 (UTC)
Date: Wed, 17 Aug 2022 14:59:47 +0900
From: asmadeus@codewreck.org
To: syzbot <syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com>
Message-ID: <YvyD053bdbGE9xoo@codewreck.org>
References: <0000000000001c3efc05e6693f06@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000001c3efc05e6693f06@google.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot having a fresh look at 9p? Well at least that one
 should
 be easy enough, the following (untested) probably should work around that
 issue: ----- From 433138e5d36a5b29b46b043c542e14b9dc908460 Mon Sep 17 00:00:00
 2001 From: Dominique Martinet <asmadeus@codewreck.org> Date: Wed, 17 Aug
 2022 14:49:29 +0900 Subject: [PATCH] 9p: p9_client_crea [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oOC6F-005DEd-CZ
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 p9_req_put
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot having a fresh look at 9p?

Well at least that one should be easy enough, the following (untested)
probably should work around that issue:

-----
From 433138e5d36a5b29b46b043c542e14b9dc908460 Mon Sep 17 00:00:00 2001
From: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 17 Aug 2022 14:49:29 +0900
Subject: [PATCH] 9p: p9_client_create: use p9_client_destroy on failure

If trans was connected it's somehow possible to fail with requests in
flight that could still be accessed after free if we just free the clnt
on failure.
Just use p9_client_destroy instead that has proper safeguards.

Reported-by: syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

diff --git a/net/9p/client.c b/net/9p/client.c
index 5bf4dfef0c70..da5d43848600 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -948,7 +948,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
 	err = parse_opts(options, clnt);
 	if (err < 0)
-		goto free_client;
+		goto out;
 
 	if (!clnt->trans_mod)
 		clnt->trans_mod = v9fs_get_default_trans();
@@ -957,7 +957,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		err = -EPROTONOSUPPORT;
 		p9_debug(P9_DEBUG_ERROR,
 			 "No transport defined or default transport\n");
-		goto free_client;
+		goto out;
 	}
 
 	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
@@ -965,7 +965,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
 	err = clnt->trans_mod->create(clnt, dev_name, options);
 	if (err)
-		goto put_trans;
+		goto out;
 
 	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
@@ -979,12 +979,12 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
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
@@ -997,12 +997,8 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 
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
-----

I'll test and submit to Linus over the next few weeks.

I had a quick look at the other new syzbot warnings and:
 - 'possible deadlock in p9_req_put' is clear enough, we can just drop
the lock before running through the cancel list and I don't think
that'll cause any problem as everything has been moved to a local list
and that lock is abused by trans fd for its local stuff. I'll also send
that after quick testing.
----
From c46435a4af7c119bd040922886ed2ea3a2a842d7 Mon Sep 17 00:00:00 2001
From: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 17 Aug 2022 14:58:44 +0900
Subject: [PATCH] 9p: trans_fd/p9_conn_cancel: drop client lock earlier

syzbot reported a double-lock here and we no longer need this
lock after requests have been moved off to local list:
just drop the lock earlier.

Reported-by: syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index e758978b44be..60fcc6b30b46 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -205,6 +205,8 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 		list_move(&req->req_list, &cancel_list);
 	}
 
+	spin_unlock(&m->client->lock);
+
 	list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
 		p9_debug(P9_DEBUG_ERROR, "call back req %p\n", req);
 		list_del(&req->req_list);
@@ -212,7 +214,6 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 			req->t_err = err;
 		p9_client_cb(m->client, req, REQ_STATUS_ERROR);
 	}
-	spin_unlock(&m->client->lock);
 }
 
 static __poll_t
----

 - but I don't get the two 'inconsistent lock state', the hint says it's
possibly an interrupt while the lock was held but that doesn't seem to
be the case from the stack trace (unless we leaked the lock, at which
point anything goes)
I'd need to take time to look at it, feel free to beat me to these.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
