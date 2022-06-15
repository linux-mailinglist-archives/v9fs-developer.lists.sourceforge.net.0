Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8D954BF36
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jun 2022 03:21:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1HiP-000118-2Z; Wed, 15 Jun 2022 01:20:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <yang.lee@linux.alibaba.com>) id 1o1HiO-000112-5E
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 01:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3kwgP56Ddhf//C+6Nc3fy5n4cMEXcwG6uUA1NoWT9dc=; b=U6SLU8JSsJS6F4JYvjb2cyDMTS
 SqrPnHnCxyaWxfB9Qg7iAlB3GbVZr1VRfDQuoFbNHova3a4RXOJmeSd9h4ua1OKTYgpKcv8znFmB8
 XpxK+lsk3vW16QnOoCFeoQyUqQxXbEboPJOeAWRJXf7/p9fP40t2w2x4RQgKe3htnxR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3kwgP56Ddhf//C+6Nc3fy5n4cMEXcwG6uUA1NoWT9dc=; b=U
 1SDnvhvliaxNyNJQgrNmwB8jhyNfUHe4DMxmCNnEOMvtZICIhBID5ZKVsk9pkJZV5IVvXOp6rl5rE
 6VMUxvB9oKbUl5U47eMl2GVLp5wIaKrOjSLJbAp1031b0LnR/ElUA8e22Qf6ppStmZeJxa1qX5b5F
 jKlY/gN7GeiH4ctk=;
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1HiF-0002aR-7t
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 01:20:58 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R201e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=ay29a033018045170;
 MF=yang.lee@linux.alibaba.com; NM=1; PH=DS; RN=8; SR=0;
 TI=SMTPD_---0VGQPSJc_1655256041; 
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0VGQPSJc_1655256041) by smtp.aliyun-inc.com;
 Wed, 15 Jun 2022 09:20:42 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: ericvh@gmail.com
Date: Wed, 15 Jun 2022 09:20:39 +0800
Message-Id: <20220615012039.43479-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Remove warnings found by running scripts/kernel-doc, which
 is caused by using 'make W=1'. fs/9p/fid.c:35: warning: Function parameter
 or member 'pfid' not described in 'v9fs_fid_add' fs/9p/fid.c:35: w [...] 
 Content analysis details:   (-8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.56 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [115.124.30.56 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1o1HiF-0002aR-7t
Subject: [V9fs-developer] [PATCH -next] 9p: Fix some kernel-doc comments
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com,
 Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org,
 Yang Li <yang.lee@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Remove warnings found by running scripts/kernel-doc,
which is caused by using 'make W=1'.
fs/9p/fid.c:35: warning: Function parameter or member 'pfid' not described in 'v9fs_fid_add'
fs/9p/fid.c:35: warning: Excess function parameter 'fid' description in 'v9fs_fid_add'
fs/9p/fid.c:80: warning: Function parameter or member 'pfid' not described in 'v9fs_open_fid_add'
fs/9p/fid.c:80: warning: Excess function parameter 'fid' description in 'v9fs_open_fid_add'

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 fs/9p/fid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 289a85eae2ae..3a0f5963b8bd 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -28,7 +28,7 @@ static inline void __add_fid(struct dentry *dentry, struct p9_fid *fid)
 /**
  * v9fs_fid_add - add a fid to a dentry
  * @dentry: dentry that the fid is being added to
- * @fid: fid to add
+ * @pfid: fid to add
  *
  */
 void v9fs_fid_add(struct dentry *dentry, struct p9_fid **pfid)
@@ -72,7 +72,7 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
 /**
  * v9fs_open_fid_add - add an open fid to an inode
  * @inode: inode that the fid is being added to
- * @fid: fid to add
+ * @pfid: fid to add
  *
  */
 
-- 
2.20.1.7.g153144c



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
