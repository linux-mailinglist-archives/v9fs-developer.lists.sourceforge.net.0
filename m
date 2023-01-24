Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E05678E60
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:39:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9De-0000iV-3X;
	Tue, 24 Jan 2023 02:39:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pK9Dc-0000iL-Cu
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ca/fSLz84+8zt25NEHBciinMYKl2LpEMEovBvxwZ9Y=; b=ShMgB9D+AkxEFij2CVVauV4wcz
 QDx6ungZsmVS3jrlO1FfmCyAenJxyRyofjt4V5QZ5xlC/4lkXPMhwZKob1pt8IwY77aDb7UtxO22A
 yTBjJJPbnWbnK/AjCjd/F1qep31prl0eQfr3dsr5N1epKoj3JmrcWAPavZ3Xf7x5ijMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4ca/fSLz84+8zt25NEHBciinMYKl2LpEMEovBvxwZ9Y=; b=TGqMV6thK/JsDEyBygphnydj2D
 A6mwqFKnjzSCt7OQsaXziJqsGDga/vOoqeYcesmi+F/CVNtrwBdkUWVGpuT1WlpD46PRL89LJLS7V
 5TMGHzMCgY8mCOdwdpIivcm00H5VnwvwGsLx8qsySk3VFx9PuZ4UkIKVd4OivDM0os6c=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9Db-0004ZE-24 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BFF5DB80FC9;
 Tue, 24 Jan 2023 02:39:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2C0BC4339B;
 Tue, 24 Jan 2023 02:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674527959;
 bh=fE7TnKGk+7sECniXW1Co7rrNpfck1npdV3aCIbmWvVY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jCqPJMhz+6FbBO604fTHk1Jefz1JgQav5j2OQSC3HHeTH0ntkts7NTG+v7/9iOw/d
 VH8t4YwRoediSlsf7CsTGHnBSl0p3K2USE5t6imqn3MIo8ibGniAgzUMqnOuhIQf0f
 EKzmS70uGtCYaHtwFjryFoDS57RDKMy0gv1g3GtK4dn8mEwQKiVWWyz2NeRy3Oyk6M
 itrKbYiUeb98SDn72IUnYOeZA+4jJSEX08dRL1fNu5W+yAiHR7GPHhudfc1RXuIZJ/
 e81hZ7FKkHYqIvypgC0aM4zrD7JMxv3ijn2XHbpIaB0GqHPIMv5zxZJ8n0IDjTEjMF
 iZ0SK9zvS4xqw==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Tue, 24 Jan 2023 02:38:34 +0000
Message-Id: <20230124023834.106339-12-ericvh@kernel.org>
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
 Content preview:  Unclear if this case ever happens, but if no inode in dentry,
 then the dentry is definitely invalid. Seemed to be the opposite in the
 existing
 code. Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org> ---
 fs/9p/vfs_dentry.c
 | 3 +-- 1 file changed, 1 insertion(+), 2 deletions(-) 
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
X-Headers-End: 1pK9Db-0004ZE-24
Subject: [V9fs-developer] [PATCH v3 11/11] Fix revalidate
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

Unclear if this case ever happens, but if no inode in dentry, then
the dentry is definitely invalid.  Seemed to be the opposite in the
existing code.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 fs/9p/vfs_dentry.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/9p/vfs_dentry.c b/fs/9p/vfs_dentry.c
index 65fa2df5e49b..b0c3f8e8ea00 100644
--- a/fs/9p/vfs_dentry.c
+++ b/fs/9p/vfs_dentry.c
@@ -68,7 +68,7 @@ static int v9fs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
 
 	inode = d_inode(dentry);
 	if (!inode)
-		goto out_valid;
+		return 0;
 
 	v9inode = V9FS_I(inode);
 	if (v9inode->cache_validity & V9FS_INO_INVALID_ATTR) {
@@ -91,7 +91,6 @@ static int v9fs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
 		if (retval < 0)
 			return retval;
 	}
-out_valid:
 	return 1;
 }
 
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
