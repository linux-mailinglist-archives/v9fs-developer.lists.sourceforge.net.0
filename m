Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AB0678E57
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:39:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9DY-0004ty-Vj;
	Tue, 24 Jan 2023 02:39:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pK9DW-0004tj-DD
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wVUapmqnjZ7wsAx0m6Gx0Mc85WnVc0CijwHDY53WOQs=; b=Vwoy5pGt2Z3msVaUEX5MjCG6N4
 7Z3DNyn4Q40olNqnFPFweVAI3pkDiMXAEGnqIwaKxAyTBCcFQ+l1HVzYkRfs2xz326DhhWBQn7NTE
 DTLnzEo0crv1KbXx4+V96N5oq9YrHYESavAqbPVAF4a4NH6hOhf1TirvXwmm6keohsaU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wVUapmqnjZ7wsAx0m6Gx0Mc85WnVc0CijwHDY53WOQs=; b=bGfMv2PfYDMt4ujzer2BmBAKfH
 eNUKCPVH9XE3LahQPJYxkMjlpNrhCwgdHrNwbm5O01qBk3jUZPNAcMTS7ETIT/0lZe6LSt40RiXL+
 neAALoRe349ORtJfEGlATmvetjb1FZd3sF2CoilVJeBdSgJKUzt+RnFHRrvQ6c8NuY9k=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9DU-00Dv6r-MT for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 66538B80FF1;
 Tue, 24 Jan 2023 02:39:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AA6BC433EF;
 Tue, 24 Jan 2023 02:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674527952;
 bh=9zTXmROnUui0sVsVPrKS01wGDaTFTG/Ge1FznKcEYuY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RHCcAWAr5tinfwi81brnT/kVfOqaudynDJJnfBELaVugND2FC6lX6X4ySN3PZxjsk
 dZREJIbmtjdjxLB3241CMudQGAW/U/SeyN+sKYcEgP9DBpbI/C+rMGGq3vQwFlMoEd
 r2pMNBoNQDgdtwpTCLfU9KpcIjnhgPss+9f6aqGMz8XmYRMH+r7ZuTWtL7Kk4Otkik
 T0u5DdPZ2uG4Vhgtoex26JHlZ9NfGgYYrw6x0wQU3bzSN3B7I5jNd0HpgPbHeowomj
 IpNSB9ClkH31rdUVDCWZ3X5flQbCse19URASNv0IxsiA5ORGYf9TO5Fyu4mbCyIWzX
 3qYQSPRqsS+Ig==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Tue, 24 Jan 2023 02:38:28 +0000
Message-Id: <20230124023834.106339-6-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230124023834.106339-1-ericvh@kernel.org>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: xattr creates a lot of additional messages for 9p in the
 current
 implementation. This allows users to conditionalize xattr support on 9p mount
 if they are on a connection with bad latency. Using this [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pK9DU-00Dv6r-MT
Subject: [V9fs-developer] [PATCH v3 05/11] allow disable of xattr support on
 mount
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
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

xattr creates a lot of additional messages for 9p in
the current implementation.  This allows users to
conditionalize xattr support on 9p mount if they
are on a connection with bad latency.  Using this
flag is also useful when debugging other aspects
of 9p as it reduces the noise in the trace files.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 Documentation/filesystems/9p.rst | 2 ++
 fs/9p/v9fs.c                     | 9 ++++++++-
 fs/9p/v9fs.h                     | 3 ++-
 fs/9p/vfs_super.c                | 3 ++-
 4 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst
index 7b5964bc8865..0e800b8f73cc 100644
--- a/Documentation/filesystems/9p.rst
+++ b/Documentation/filesystems/9p.rst
@@ -137,6 +137,8 @@ Options
   		This can be used to share devices/named pipes/sockets between
 		hosts.  This functionality will be expanded in later versions.
 
+  noxattr	do not offer xattr functions on this mount.
+
   access	there are four access modes.
 			user
 				if a user tries to access a file on v9fs
diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index a46bf9121f11..f8e952c013f9 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -38,7 +38,7 @@ enum {
 	/* String options */
 	Opt_uname, Opt_remotename, Opt_cache, Opt_cachetag,
 	/* Options that take no arguments */
-	Opt_nodevmap,
+	Opt_nodevmap, Opt_noxattr,
 	/* Access options */
 	Opt_access, Opt_posixacl,
 	/* Lock timeout option */
@@ -55,6 +55,7 @@ static const match_table_t tokens = {
 	{Opt_uname, "uname=%s"},
 	{Opt_remotename, "aname=%s"},
 	{Opt_nodevmap, "nodevmap"},
+	{Opt_noxattr, "noxattr"},
 	{Opt_cache, "cache=%s"},
 	{Opt_cachetag, "cachetag=%s"},
 	{Opt_access, "access=%s"},
@@ -149,6 +150,9 @@ int v9fs_show_options(struct seq_file *m, struct dentry *root)
 	if (v9ses->flags & V9FS_POSIX_ACL)
 		seq_puts(m, ",posixacl");
 
+	if (v9ses->flags & V9FS_NO_XATTR)
+		seq_puts(m, ",noxattr");
+
 	return p9_show_client_options(m, v9ses->clnt);
 }
 
@@ -269,6 +273,9 @@ static int v9fs_parse_options(struct v9fs_session_info *v9ses, char *opts)
 		case Opt_nodevmap:
 			v9ses->nodev = 1;
 			break;
+		case Opt_noxattr:
+			v9ses->flags |= V9FS_NO_XATTR;
+			break;
 		case Opt_cachetag:
 #ifdef CONFIG_9P_FSCACHE
 			kfree(v9ses->cachetag);
diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
index 5813967ecdf0..a08cf6618c86 100644
--- a/fs/9p/v9fs.h
+++ b/fs/9p/v9fs.h
@@ -36,7 +36,8 @@ enum p9_session_flags {
 	V9FS_ACCESS_SINGLE	= 0x04,
 	V9FS_ACCESS_USER	= 0x08,
 	V9FS_ACCESS_CLIENT	= 0x10,
-	V9FS_POSIX_ACL		= 0x20
+	V9FS_POSIX_ACL		= 0x20,
+	V9FS_NO_XATTR		= 0x40
 };
 
 /* possible values of ->cache */
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 65d96fa94ba2..5fc6a945bfff 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -64,7 +64,8 @@ v9fs_fill_super(struct super_block *sb, struct v9fs_session_info *v9ses,
 	sb->s_magic = V9FS_MAGIC;
 	if (v9fs_proto_dotl(v9ses)) {
 		sb->s_op = &v9fs_super_ops_dotl;
-		sb->s_xattr = v9fs_xattr_handlers;
+		if (!(v9ses->flags & V9FS_NO_XATTR))
+			sb->s_xattr = v9fs_xattr_handlers;
 	} else {
 		sb->s_op = &v9fs_super_ops;
 		sb->s_time_max = U32_MAX;
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
