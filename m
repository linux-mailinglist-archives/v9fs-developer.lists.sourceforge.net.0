Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 487B0678E5B
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:39:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9Dc-0007YP-GT;
	Tue, 24 Jan 2023 02:39:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pK9Db-0007YF-JU
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lKbM5PWl4FOvwpfK7hdhAtdGRvZdpaWJXiMIqQK0xgw=; b=QYmRmhaMUogOWhppJVmwFJgy2p
 qLn3ZMJJ+zRnqf8c/5Lthz8pzIEFBR2n5m7TzmDedOoktuRLEJqa9fRa/J14hJOrrqiR2nvyo6F+u
 W7PVdKXLFrInOk9bsbU0sFqaQvtHdrppXhqXOHxOos15X4jgxnnOkmub+yoTyWYHBspM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lKbM5PWl4FOvwpfK7hdhAtdGRvZdpaWJXiMIqQK0xgw=; b=lA2kukkt6jlz99/tacRHRV1K37
 8UZtavK+aLGz48EfyiRm4Qz9K0H5T5MtXQ7aCHqOcnyOPKrKvGdmdCbscEBOUUWk/2l9meLtchley
 +5pRCN4ajv6PJOrkhjhQsTAtN1SgtmOTtQ90ZW0l8F5CL2Ux2bjrrswRtMvjYSnZGq+k=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9DY-00Dv72-Tp for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 577AE611B1;
 Tue, 24 Jan 2023 02:39:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B27FC43445;
 Tue, 24 Jan 2023 02:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674527956;
 bh=mwpeKRv006PC18eABtcCK4GFwMNFS3Fk5mUgrdToDss=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kMfz40343k0/zebkCJjoV+sRSk8Vi1+yrsj+udY3whQfhSqXTn2/5X0fh1ACIamub
 z4k/teyg31KjOBA1x0UY4zQoh7gWft9EoJVjGwqL0D3EUBiorKFOKphXmr/MxJxrr8
 72corNpJMDjCA2ZoA6OvwUmF1AAoWfJZjoXD7dIryntCaimZvM99oGJe1HC62mnt1Z
 akJj/iz3ek63WqXW/vnedcsLzb1610DkWicc8/YmXjhL6uuNsSNKevNdbi0hJ81NAq
 fomB1DOYSqbTzJ7zaNFLRQDHWKqy4ltVZMuBgrumww3fFfVxJH2i4s13Tdrhdui8Vd
 yFePQK0tpl8zw==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Tue, 24 Jan 2023 02:38:31 +0000
Message-Id: <20230124023834.106339-9-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230124023834.106339-1-ericvh@kernel.org>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add some additional mount modes for cache management
 including
 specifying directio as a mount option and an option for ignore qid.version
 for determining whether or not a file is cacheable. Signed-off-by: Eric Van
 Hensbergen <ericvh@kernel.org> --- fs/9p/v9fs.c | 16 ++++++++++++++--
 fs/9p/v9fs.h
 | 5 ++++- 2 files changed, 18 insertions(+), 3 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pK9DY-00Dv72-Tp
Subject: [V9fs-developer] [PATCH v3 08/11] Add new mount modes
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

Add some additional mount modes for cache management including
specifying directio as a mount option and an option for ignore
qid.version for determining whether or not a file is cacheable.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 fs/9p/v9fs.c | 16 ++++++++++++++--
 fs/9p/v9fs.h |  5 ++++-
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index f8e952c013f9..43d3806150a9 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -38,7 +38,7 @@ enum {
 	/* String options */
 	Opt_uname, Opt_remotename, Opt_cache, Opt_cachetag,
 	/* Options that take no arguments */
-	Opt_nodevmap, Opt_noxattr,
+	Opt_nodevmap, Opt_noxattr, Opt_directio, Opt_ignoreqv,
 	/* Access options */
 	Opt_access, Opt_posixacl,
 	/* Lock timeout option */
@@ -56,6 +56,8 @@ static const match_table_t tokens = {
 	{Opt_remotename, "aname=%s"},
 	{Opt_nodevmap, "nodevmap"},
 	{Opt_noxattr, "noxattr"},
+	{Opt_directio, "directio"},
+	{Opt_ignoreqv, "ignoreqv"},
 	{Opt_cache, "cache=%s"},
 	{Opt_cachetag, "cachetag=%s"},
 	{Opt_access, "access=%s"},
@@ -125,7 +127,7 @@ int v9fs_show_options(struct seq_file *m, struct dentry *root)
 	if (v9ses->nodev)
 		seq_puts(m, ",nodevmap");
 	if (v9ses->cache)
-		seq_printf(m, ",%s", v9fs_cache_modes[v9ses->cache]);
+		seq_printf(m, ",cache=%s", v9fs_cache_modes[v9ses->cache]);
 #ifdef CONFIG_9P_FSCACHE
 	if (v9ses->cachetag && v9ses->cache == CACHE_FSCACHE)
 		seq_printf(m, ",cachetag=%s", v9ses->cachetag);
@@ -147,6 +149,10 @@ int v9fs_show_options(struct seq_file *m, struct dentry *root)
 		break;
 	}
 
+	if (v9ses->flags & V9FS_IGNORE_QV)
+		seq_puts(m, ",ignoreqv");
+	if (v9ses->flags & V9FS_DIRECT_IO)
+		seq_puts(m, ",directio");
 	if (v9ses->flags & V9FS_POSIX_ACL)
 		seq_puts(m, ",posixacl");
 
@@ -276,6 +282,12 @@ static int v9fs_parse_options(struct v9fs_session_info *v9ses, char *opts)
 		case Opt_noxattr:
 			v9ses->flags |= V9FS_NO_XATTR;
 			break;
+		case Opt_directio:
+			v9ses->flags |= V9FS_DIRECT_IO;
+			break;
+		case Opt_ignoreqv:
+			v9ses->flags |= V9FS_IGNORE_QV;
+			break;
 		case Opt_cachetag:
 #ifdef CONFIG_9P_FSCACHE
 			kfree(v9ses->cachetag);
diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
index a08cf6618c86..c80c318ff31c 100644
--- a/fs/9p/v9fs.h
+++ b/fs/9p/v9fs.h
@@ -37,7 +37,10 @@ enum p9_session_flags {
 	V9FS_ACCESS_USER	= 0x08,
 	V9FS_ACCESS_CLIENT	= 0x10,
 	V9FS_POSIX_ACL		= 0x20,
-	V9FS_NO_XATTR		= 0x40
+	V9FS_NO_XATTR		= 0x40,
+	V9FS_IGNORE_QV		= 0x80,
+	V9FS_DIRECT_IO		= 0x100,
+	V9FS_SYNC			= 0x200
 };
 
 /* possible values of ->cache */
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
