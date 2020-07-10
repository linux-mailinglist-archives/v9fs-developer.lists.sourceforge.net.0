Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D680021B306
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jul 2020 12:16:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jtq4h-0006S4-IN; Fri, 10 Jul 2020 10:16:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1jtq4g-0006Ri-4O
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 10:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xEWeOmiRcNZxDMo4w56xaQpcnFr17PiLtiCDZ6VQFCM=; b=JqLrFAzM/gnGKnWnT9P8KW5Fyd
 HEjpzA3zaFhtwsAsX3ZciBmYMGaVIT0TNCAx3wEe8labTxfgeInKKV49D6+O3gBTLInZ0pTrih4AA
 ZsIPhebq3aAP7qlMTDq8ywI7PgqyXqbtngk6uAEdBc4Ves8eFzqjrlVLrv0GZKXlhL8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xEWeOmiRcNZxDMo4w56xaQpcnFr17PiLtiCDZ6VQFCM=; b=Z3lhD2CkPEruzL+vyy0k9+5Lza
 MYpDi9VP6IPbJn+9POYJjcnFw5ZgExpTMYk0c6p+UM7GTlriAeoETsUiRezq31m8+L8oOHMcK3UiU
 eqiB/HaSpGA4RKh4bFUNjYqpy0NbT6ypCzEQeYMkJIfMJ01zaBxPi6OTrnlujGvvNaUg=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jtq4b-00D4VW-Iz
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 10:16:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1304A31B;
 Fri, 10 Jul 2020 03:16:00 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.212.212])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E9F513F9AB;
 Fri, 10 Jul 2020 03:15:56 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 v9fs-developer@lists.sourceforge.net
Date: Fri, 10 Jul 2020 18:15:48 +0800
Message-Id: <20200710101548.10108-1-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jtq4b-00D4VW-Iz
Subject: [V9fs-developer] [PATCH v4] 9p: retrieve fid from file when file
 instance exist.
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
Cc: justin.he@arm.com, wei.chen@arm.com, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

In the current setattr implementation in 9p, fid is always retrieved
from dentry no matter file instance exists or not. If so, there may be
some info related to opened file instance dropped. So it's better
to retrieve fid from file instance when it is passed to setattr.

for example:
fd=open("tmp", O_RDWR);
ftruncate(fd, 10);

The file context related with the fd will be lost as fid is always
retrieved from dentry, then the backend can't get the info of
file context. It is against the original intention of user and
may lead to bug.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 fs/9p/vfs_inode.c      | 9 +++++++--
 fs/9p/vfs_inode_dotl.c | 9 +++++++--
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index c9255d399917..cd004dee2214 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -1090,7 +1090,7 @@ static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
 {
 	int retval;
 	struct v9fs_session_info *v9ses;
-	struct p9_fid *fid;
+	struct p9_fid *fid = NULL;
 	struct p9_wstat wstat;
 
 	p9_debug(P9_DEBUG_VFS, "\n");
@@ -1100,7 +1100,12 @@ static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
 
 	retval = -EPERM;
 	v9ses = v9fs_dentry2v9ses(dentry);
-	fid = v9fs_fid_lookup(dentry);
+	if (iattr->ia_valid & ATTR_FILE) {
+		fid = iattr->ia_file->private_data;
+		WARN_ON(!fid);
+	}
+	if (!fid)
+		fid = v9fs_fid_lookup(dentry);
 	if(IS_ERR(fid))
 		return PTR_ERR(fid);
 
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 60328b21c5fb..0028eccb665a 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -540,7 +540,7 @@ static int v9fs_mapped_iattr_valid(int iattr_valid)
 int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
 {
 	int retval;
-	struct p9_fid *fid;
+	struct p9_fid *fid = NULL;
 	struct p9_iattr_dotl p9attr;
 	struct inode *inode = d_inode(dentry);
 
@@ -560,7 +560,12 @@ int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
 	p9attr.mtime_sec = iattr->ia_mtime.tv_sec;
 	p9attr.mtime_nsec = iattr->ia_mtime.tv_nsec;
 
-	fid = v9fs_fid_lookup(dentry);
+	if (iattr->ia_valid & ATTR_FILE) {
+		fid = iattr->ia_file->private_data;
+		WARN_ON(!fid);
+	}
+	if (!fid)
+		fid = v9fs_fid_lookup(dentry);
 	if (IS_ERR(fid))
 		return PTR_ERR(fid);
 
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
