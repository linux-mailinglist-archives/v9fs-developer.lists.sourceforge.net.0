Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E075EE947
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 00:19:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odfP6-0006Ty-52;
	Wed, 28 Sep 2022 22:19:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1odfP4-0006To-41
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 22:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s8v7euaD+Iw8Rlbt89l6wSiw8vlpRm5+S9b6T6Y34jM=; b=c4ATqAhe0Umk2i1VPAeTFEeGoY
 pqqzFkGsa+4j0oD5ak6lBfAkUkUEG7P+JS30WiwDDbbg3C/gRjo2n+CubocwtyaVOj55NaNXj16dd
 MbjBkreLUhke2RyOVM0B9kh3I5ykB7YedaYk2o/kU0hYYtl6PEZIK99DSt52ajZntmVU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s8v7euaD+Iw8Rlbt89l6wSiw8vlpRm5+S9b6T6Y34jM=; b=ljDkpQeOIsGtkzQlq6lwTO5IX8
 /UqPYY562ouwQAPnp75GwvCkzCSF2zZ2b9O4sL8HsGM6av6Mnye1gRYJZaEdVFgvuf8nzVAVW0u2o
 d93U4k8KsAnDq04LtCkKxr4zSH8ps0mVdPRxeDuy8yxTMG/z+IJzQroTO+QW0PzzC6eU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odfP2-005xsg-Q3 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 22:19:41 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7820FC01D; Thu, 29 Sep 2022 00:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664403573; bh=s8v7euaD+Iw8Rlbt89l6wSiw8vlpRm5+S9b6T6Y34jM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bjKKgo02VyBfUDesqIscXbdMQ+WAfJkenJJ0PDjW3Qu9Uc0QwV4rnJCi1BC8XqqkB
 wFC2LHZZ+Yr9NR6CkWrOISv2N26h9IDeRTjetCE7/c76ozRz+TtpAxFHDRe2sZWF48
 t4KBaCuk6F81M4kOZDlFBX/+3sFje4SlrZK1XQHnUZBNjg4D0HpJeQpdSw/aeq2cqZ
 SRupt5WBZQlH1v2VTrQMI+pI+BcbzRN2KaVYGih0cSsl/KPkGv4M8P+VRIwRjEZlzC
 zKuBjPdthbH/9gUI0aSDdN7XL//OZUxBW72jbPn3CRwrFY8+3kuWEuBIxKmVDMG6XA
 4hhR1IFVAqIAw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C38ADC009;
 Thu, 29 Sep 2022 00:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664403571; bh=s8v7euaD+Iw8Rlbt89l6wSiw8vlpRm5+S9b6T6Y34jM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ox6s95DptvlFBuo1ui9DuVQpX3L9L+dkPkIzGxN+NGTqYNDtz5QoiJ3lj26mZFcnH
 aw/zkXbTd9oT/pJHr74ciAYbYjq76OprOEswHbjRmA+XBEfa/f7C7pRqXZ4oRwoOV2
 5F56au5wAOMNejb05sim3xlzmyCrxP+NwB9T5KHs+fGmK0GLUuOhcNXiYSHIffQfb1
 Ipj28OrzztVgxqFmv9j7CYg7+iHPwBCxDeBgjn8hLhJ98Pl2illvt+YhQMDHRHe8av
 JXtELYFFphefvYYXqCZddXRDqJy6gmc3slOgUvHGJ4jpQUF6ZfA159DAkWGTa2aDj4
 qvi1vADRqPFBg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8a009fd5;
 Wed, 28 Sep 2022 22:19:27 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 29 Sep 2022 07:19:23 +0900
Message-Id: <20220928221923.1751130-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220928215800.1749929-1-asmadeus@codewreck.org>
References: <20220928215800.1749929-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: destroy code would incorrectly call close() if trans_mod
 exists
 after some hasty code cleanup: we need to make sure we only call close after
 create Link:
 https://lkml.kernel.org/r/20220928214417.1749609-1-asmadeus@codewreck.org
 Link: https://lkml.kernel.org/r/00000000000015ac7905e97ebaed@google.com
 Reported-by: syzbot+67d13108d855f451cafc@syzkall [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1odfP2-005xsg-Q3
Subject: [V9fs-developer] [PATCH v3] 9p: client_create/destroy: only call
 trans_mod->close after create
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
Cc: Leon Romanovsky <leon@kernel.org>,
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

destroy code would incorrectly call close() if trans_mod exists after some
hasty code cleanup: we need to make sure we only call close after create

Link: https://lkml.kernel.org/r/20220928214417.1749609-1-asmadeus@codewreck.org
Link: https://lkml.kernel.org/r/00000000000015ac7905e97ebaed@google.com
Reported-by: syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com
Reported-by: Leon Romanovsky <leon@kernel.org>
Fixes: 3ff51294a055 ("9p: p9_client_create: use p9_client_destroy on failure")
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
v1->v2: also reset trans on create error
v2->v3: fix silly compile errors

Sorry for the multiple mails, that's what I get for not even doing basic
tests before talking...

 net/9p/client.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index bfa80f01992e..41e825a8da7c 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -971,6 +971,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	spin_lock_init(&clnt->lock);
 	idr_init(&clnt->fids);
 	idr_init(&clnt->reqs);
+	clnt->trans = ERR_PTR(-EINVAL);
 
 	err = parse_opts(options, clnt);
 	if (err < 0)
@@ -990,8 +991,14 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
 
 	err = clnt->trans_mod->create(clnt, dev_name, options);
-	if (err)
+	// ensure clnt->trans is initialized to call close() on destroy
+	// if and only if create succeeded
+	if (err < 0) {
+		clnt->trans = ERR_PTR(err);
 		goto out;
+	}
+	if (IS_ERR(clnt->trans))
+		clnt->trans = NULL;
 
 	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
@@ -1036,7 +1043,7 @@ void p9_client_destroy(struct p9_client *clnt)
 
 	p9_debug(P9_DEBUG_MUX, "clnt %p\n", clnt);
 
-	if (clnt->trans_mod)
+	if (clnt->trans_mod && !IS_ERR(clnt->trans))
 		clnt->trans_mod->close(clnt);
 
 	v9fs_put_trans(clnt->trans_mod);
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
