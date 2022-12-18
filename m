Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACED6650591
	for <lists+v9fs-developer@lfdr.de>; Mon, 19 Dec 2022 00:23:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p730c-0005AS-Ee;
	Sun, 18 Dec 2022 23:23:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p730b-0005AH-6r
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LTQeSnHB9tsXZcputSEm3mn8KgKyBhPbKH6Ub3wWTBY=; b=m3qhj6TaGP7P66V6G/hzQ+/uRq
 pfBhv2FhHKCxGPf49VSvjhz3Pn9tYwrDFkJqQaBjdDud7tMGvsUjBITBemCU+zZS7ikuslDdh8Trf
 QO5wpXlktJFTTGM92n6IYB6O2ueCs1b/yTsA6BAPkLmR/dXDFBvD6+D+u5KlhTVFygZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LTQeSnHB9tsXZcputSEm3mn8KgKyBhPbKH6Ub3wWTBY=; b=UBiY1CVSFUw5jn2X6Hkv/yGitg
 7vwOLiZKaFTn5xHkM2bNPgWAXrlEwbhyZsLUsAnI/J66jKZ9UAzDEJpcTDg38TxJ72mxaoJQJpjyN
 R0zHnycE9ZlyAh5hfGs4nEEKKHd4AJ6DQ2ZvRNzb5HUZktsOL7YuT5Ev79ZKHSco6jWw=;
Received: from ms11p00im-qufo17281301.me.com ([17.58.38.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p730V-0003Je-74 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:23:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671405822;
 bh=LTQeSnHB9tsXZcputSEm3mn8KgKyBhPbKH6Ub3wWTBY=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=gwyLEZPZR4SZt0tBotTT6SrR1b3XiW+pb3OCjvtP8UY25PsZVgNM1zx7fkR3CC9G+
 61tkvo0PNEoHyQNUktMw0B4tv6twq2CNDu0A0mjE6G2YmsXD698yzVOrZ5tHMwscMU
 op7vnh9O3+m9Rnq1wyVk4a3ebXhVmBCWgc4j5ExlOZe2uqIt9ydx8nL4CTwpCP5jEI
 2CGmE8kmmk8fwaEZFVq+EhXbpzDkAyLNXG9ZoWnX12/uIAuQwA1U/giM/q9j6gI99D
 ZvGGozsjIRoyL/cpTDv0Pr/RVI5bQ/Senf/Wqwom7R6Sk35AV3S6/EI9cHsM3CQ7rI
 TMcfTglqFgs+g==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17281301.me.com (Postfix) with ESMTPSA id 1E3D1CC041B;
 Sun, 18 Dec 2022 23:23:41 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sun, 18 Dec 2022 23:22:17 +0000
Message-Id: <20221218232217.1713283-6-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221218232217.1713283-1-evanhensbergen@icloud.com>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: SWVjh7ha5_I54cqlvRaU2BHa_lZcinxc
X-Proofpoint-GUID: SWVjh7ha5_I54cqlvRaU2BHa_lZcinxc
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 mlxscore=0 spamscore=0
 adultscore=0 bulkscore=0 malwarescore=0 mlxlogscore=917 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180222
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: xattr creates a lot of additional messages for 9p in the
 current
 implementation. This allows users to conditionalize xattr support on 9p mount
 if they are on a connection with bad latency. Using this [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [17.58.38.50 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p730V-0003Je-74
Subject: [V9fs-developer] [PATCH v2 05/10] allow disable of xattr support on
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
From: Eric Van Hensbergen via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Eric Van Hensbergen <evanhensbergen@icloud.com>
Cc: linux-fsdevel@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

xattr creates a lot of additional messages for 9p in
the current implementation.  This allows users to
conditionalize xattr support on 9p mount if they
are on a connection with bad latency.  Using this
flag is also useful when debugging other aspects
of 9p as it reduces the noise in the trace files.

Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
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
