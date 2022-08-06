Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 846EF58B4A4
	for <lists+v9fs-developer@lfdr.de>; Sat,  6 Aug 2022 10:56:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oKFbn-0000hU-Dh; Sat, 06 Aug 2022 08:56:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oKFbl-0000hO-So
 for v9fs-developer@lists.sourceforge.net; Sat, 06 Aug 2022 08:56:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hCPs0hF3V5Rf9V+E1F9Ydwq3hmn8QXJCJt/HUNiS+nI=; b=gb2cK6ZchizGa4iOq8CMwZ6jVf
 sYA7yth2IVo4aCP0e7uoetcQ2NsTjRbbnnLQMsAH2JhX6tA9CVH7Btl0lp7okB+CKWNBRV7nPGetz
 qWbMnMkv86Ps+STuIzKv8nDVtjBD6/aSnAhsqvHtJJyiCdRkH9uZFcrZhdn6T32WTu9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hCPs0hF3V5Rf9V+E1F9Ydwq3hmn8QXJCJt/HUNiS+nI=; b=Y
 JKpL4evYACOarwx+1hlpYR6chDPsSOSOi0sTrHcGQ61ODZXEb3Mc8rDrCljOrnH70EDBcDPFoPjJq
 MsU8C9mBY84ogsIfjbFPULB5J47atRf2i51wZAsm3qtSo4SNk6qHcWAA7rx90ZUErF0OfMlf4CTZR
 oL3dwekAhRftb+rM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oKFbg-005TlE-GH
 for v9fs-developer@lists.sourceforge.net; Sat, 06 Aug 2022 08:56:31 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id DA845C01A; Sat,  6 Aug 2022 10:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1659776180; bh=hCPs0hF3V5Rf9V+E1F9Ydwq3hmn8QXJCJt/HUNiS+nI=;
 h=Date:From:To:Cc:Subject:From;
 b=MrKI9DMvvKnIgRZIYmdhtVhS71L7HCShPD+yvdvB3OgDRoeUVGSP2DazCgl2SHhBu
 yYfBCMNVxpDqNGpsfaygzPrQMi3tY5EGUBfoAcrOJNgKZoUwPt2Z8cfotcMoqSJHAD
 dfT12huYLleFxWPxAxkpG5C2Cc0QJHQN3nuCLgHtM4a+4htZ0Ofo7Q1dzMOxU+mxWA
 WJycMqBT4hQAeLzE8/4Z6k0Y3tXG3Xd1eHpDq2X6LBXh5BFxbxQ6dktHoR5vuN5cGJ
 IVPzT/MiyBEtvJKvNzhWS461GpQ58i1qxgSkSiST28fGBzcGCIdy4TdgD03/vOcHnS
 z5zaOoDxXuWcg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 259C3C009;
 Sat,  6 Aug 2022 10:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1659776180; bh=hCPs0hF3V5Rf9V+E1F9Ydwq3hmn8QXJCJt/HUNiS+nI=;
 h=Date:From:To:Cc:Subject:From;
 b=MrKI9DMvvKnIgRZIYmdhtVhS71L7HCShPD+yvdvB3OgDRoeUVGSP2DazCgl2SHhBu
 yYfBCMNVxpDqNGpsfaygzPrQMi3tY5EGUBfoAcrOJNgKZoUwPt2Z8cfotcMoqSJHAD
 dfT12huYLleFxWPxAxkpG5C2Cc0QJHQN3nuCLgHtM4a+4htZ0Ofo7Q1dzMOxU+mxWA
 WJycMqBT4hQAeLzE8/4Z6k0Y3tXG3Xd1eHpDq2X6LBXh5BFxbxQ6dktHoR5vuN5cGJ
 IVPzT/MiyBEtvJKvNzhWS461GpQ58i1qxgSkSiST28fGBzcGCIdy4TdgD03/vOcHnS
 z5zaOoDxXuWcg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 11a5f395;
 Sat, 6 Aug 2022 08:56:15 +0000 (UTC)
Date: Sat, 6 Aug 2022 17:56:00 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Yu4soPL07+/xDd3D@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Note this will conflict with Al Viro's "9p: convert
 to advancing variant of iov_iter_get_pages_alloc()" that I believe he hasn't
 sent yet, but it should be simple enough to untangle. I also had a few more
 improvements tested locally I forgot to push to -next, so I guess they'll
 wait for next cycle :/ Sorry Christian... 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oKFbg-005TlE-GH
Subject: [V9fs-developer] [GIT PULL] 9p for 5.20 (or 6.0)
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,


Note this will conflict with Al Viro's "9p: convert to advancing variant
of iov_iter_get_pages_alloc()" that I believe he hasn't sent yet, but it
should be simple enough to untangle.

I also had a few more improvements tested locally I forgot to push to
-next, so I guess they'll wait for next cycle :/ Sorry Christian...



The following changes since commit 03c765b0e3b4cb5063276b086c76f7a612856a9a:

  Linux 5.19-rc4 (2022-06-26 14:22:10 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.20

for you to fetch changes up to aa7aeee169480e98cf41d83c01290a37e569be6d:

  net/9p: Initialize the iounit field during fid creation (2022-07-16 07:16:55 +0900)

----------------------------------------------------------------
9p-for-5.20

- a couple of fixes
- add a tracepoint for fid refcounting
- some cleanup/followup on fid lookup
- some cleanup around req refcounting

----------------------------------------------------------------
Dominique Martinet (4):
      9p fid refcount: add p9_fid_get/put wrappers
      9p fid refcount: add a 9p_fid_ref tracepoint
      9p fid refcount: cleanup p9_fid_put calls
      9p: roll p9_tag_remove into p9_req_put

Hangyu Hua (1):
      net: 9p: fix refcount leak in p9_read_work() error handling

Kent Overstreet (2):
      9p: Drop kref usage
      9p: Add client parameter to p9_req_put()

Tyler Hicks (5):
      9p: Track the root fid with its own variable during lookups
      9p: Make the path walk logic more clear about when cloning is required
      9p: Remove unnecessary variable for old fids while walking from d_parent
      9p: Fix minor typo in code comment
      net/9p: Initialize the iounit field during fid creation

Yang Li (1):
      9p: Fix some kernel-doc comments

 fs/9p/fid.c               |  61 ++++++++++++++-----------
 fs/9p/fid.h               |   6 +--
 fs/9p/vfs_addr.c          |   4 +-
 fs/9p/vfs_dentry.c        |   4 +-
 fs/9p/vfs_dir.c           |   2 +-
 fs/9p/vfs_file.c          |   9 ++--
 fs/9p/vfs_inode.c         |  89 ++++++++++++++++---------------------
 fs/9p/vfs_inode_dotl.c    |  82 +++++++++++++---------------------
 fs/9p/vfs_super.c         |   8 ++--
 fs/9p/xattr.c             |   8 ++--
 include/net/9p/client.h   |  49 ++++++++++++++++++--
 include/trace/events/9p.h |  48 ++++++++++++++++++++
 net/9p/client.c           | 168 +++++++++++++++++++++++++++++++++++----------------------------------
 net/9p/trans_fd.c         |  13 +++---
 net/9p/trans_rdma.c       |   2 +-
 net/9p/trans_virtio.c     |   4 +-
 net/9p/trans_xen.c        |   2 +-
 17 files changed, 314 insertions(+), 245 deletions(-)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
