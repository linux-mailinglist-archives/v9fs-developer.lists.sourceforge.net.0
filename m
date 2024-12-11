Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E18349ED888
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Dec 2024 22:29:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLUGv-0005eY-01;
	Wed, 11 Dec 2024 21:29:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1tLUGt-0005eR-Up
 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 21:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DlVkfk0rJ4LeWz9ql6yoaPE0Ei1VM+gQ/8uRLa2OXOQ=; b=i71BSSYPL97H8rg7h/KUDQcxWU
 Pq50yrn+a/4Hkcp005Lg4zy+1R1NIMNOo1eh8j6iDzZS/8C1HdxngQoqAYszot8CLBkfD/3HTmEwN
 dDI3TLbxAA4V/nSBeF5VH/guwR8FMUDTrulNNrN9bSTYm+pStjHJScyRr1b6tt2R9f/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DlVkfk0rJ4LeWz9ql6yoaPE0Ei1VM+gQ/8uRLa2OXOQ=; b=N6pjWDpDVIzNFhSuJDl6Y7TGuy
 jYH/rXvjsKuid/u8qVld2aOXAVFnZqBtP7fIT6E4BuF8m1O05R79zJoFpkS0ml+oUmhmq9SMaj19f
 yGoJI+my/cXOR4Y7TW2ZRxJdCFMU5pHdplIRl+e5YIm525P7D/6lvUBz/bL05ERFYXtI=;
Received: from submarine.notk.org ([62.210.214.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1tLUGr-0006Lj-PA for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 21:29:27 +0000
Received: from gaia.codewreck.org (localhost [127.0.0.1])
 by submarine.notk.org (Postfix) with ESMTPS id 9D1C414C1E1;
 Wed, 11 Dec 2024 22:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org;
 s=2; t=1733951079;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DlVkfk0rJ4LeWz9ql6yoaPE0Ei1VM+gQ/8uRLa2OXOQ=;
 b=y+5nP3QY7x5hvzAES3PzKJOKXhuW5jq7hRI8yRO6Y9qckm0cws3QbXUrGfo0aZitLRJQyw
 IVIR5F4NK/6MItL/FbXOD2JZY6awJNJKqsEU5CuhqLp3saJmVX1+fOw9hX5hB7BvvIG6EF
 4IzfP1/KU5D5h8Pu5MVgalPf/g+RY9PP1Xnot6m4gKZumfBgEZr6RlcQJyi7QcS3CEem06
 KONIS41SP8koC4SWNFO6D/Wu0VOv4rU1d2BIXSkmXagUKAHHLq9CiH9VJc1e4j+azEHwUX
 WWmC6yc/7JEUeSeg/ybCqa/sWsTDcXP0hJT3MtBJ92Lr1vcapVFJUdYdA3YsCw==
Received: from localhost (gaia.codewreck.org [local])
 by gaia.codewreck.org (OpenSMTPD) with ESMTPA id 7c6a0dba;
 Wed, 11 Dec 2024 21:04:32 +0000 (UTC)
Date: Thu, 12 Dec 2024 06:04:17 +0900
From: asmadeus@codewreck.org
To: Leo Stone <leocstone@gmail.com>
Message-ID: <Z1n-Ue19Pa_AWVu0@codewreck.org>
References: <675963eb.050a0220.17f54a.0038.GAE@google.com>
 <20241211200240.103853-1-leocstone@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241211200240.103853-1-leocstone@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Leo Stone wrote on Wed, Dec 11, 2024 at 12:02:40PM -0800:
 > syzbot creates a pipe and writes some data to it. It then creates a v9fs
 > mount using the pipe as transport. The data in the pipe specifies [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.210.214.84 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.210.214.84 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tLUGr-0006Lj-PA
Subject: [V9fs-developer] Alloc cap limit for 9p xattrs (Was: WARNING in
 __alloc_frozen_pages_noprof)
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: lucho@ionkov.net, Christian Brauner <brauner@kernel.org>,
 syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com, ericvh@gmail.com,
 v9fs@lists.linux.dev, linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, Fedor Pchelkin <pchelkin@ispras.ru>,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ericvh@kernel.org,
 torvalds@linux-foundation.org, Seth Forshee <sforshee@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Leo Stone wrote on Wed, Dec 11, 2024 at 12:02:40PM -0800:
> syzbot creates a pipe and writes some data to it. It then creates a v9fs
> mount using the pipe as transport. The data in the pipe specifies an ACL
> of size 9 TB (9895604649984 bytes) for the root inode, causing kmalloc
> to fail.

grmbl.

Sorry about that, there's been some paches ages ago to either cap xattrs
allocations to XATTR_SIZE_MAX, KMALLOC_MAX_SIZE, look into
vfs_getxattr_alloc or just flag the alloc __GFP_NOWARN:
https://lore.kernel.org/all/20240304-xattr_maxsize-v1-1-322357ec6bdf@codewreck.org/T/#u

and it was left forgotten because no decision was taken on something I
don't have time to think about

I've re-added everyone involved in Ccs, let's pick one and be done with
it.

Christian Schoenebeck's suggestion was something like this -- I guess
that's good enough for now and won't break anything (e.g. ACLs bigger
than XATTR_SIZE_MAX), so shall we go with that instead?

I don't care but let's get something in this cycle, the first patch is
almost one year old and this is ridiculous...

diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
index 8604e3377ee7..97f60b73bf16 100644
--- a/fs/9p/xattr.c
+++ b/fs/9p/xattr.c
@@ -37,8 +37,8 @@ ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
 	if (attr_size > buffer_size) {
 		if (buffer_size)
 			retval = -ERANGE;
-		else if (attr_size > SSIZE_MAX)
-			retval = -EOVERFLOW;
+		else if (attr_size > KMALLOC_MAX_SIZE)
+			retval = -E2BIG;
 		else /* request to get the attr_size */
 			retval = attr_size;
 	} else {

--
Dominique,
sleepy


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
