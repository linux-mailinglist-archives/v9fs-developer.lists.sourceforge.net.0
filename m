Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD42442FD6
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 15:08:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhuT6-0005N6-W1; Tue, 02 Nov 2021 14:08:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dominique.martinet@codewreck.org>)
 id 1mhuT5-0005KO-B5
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 14:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JtS9CK2Cer31Yt2MKF/M0BG72RJwy9q68EbiptBzxHI=; b=LZpq568ix2r7zlUBXAKEoC6XPJ
 rdbjE2di3Cmoy2wLbyXQh1Jh18HC+gQM00CQxO3dgFbMTPne1QxzOJmvoHZgl675yI06czFEOAiqU
 6gCHfSVOtNEBsx0GaYA4InWX9Ya6u33DoPcf68AhrWsevdVxctV25Rtt36zXD9xZMKGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JtS9CK2Cer31Yt2MKF/M0BG72RJwy9q68EbiptBzxHI=; b=M
 hM8saOjwBHwxltVUqISd2YpjJGkiSqOFTN/D68/ILRTddQyAiO0FpjaxrknhO3qp7YEQmjMVBNZ7u
 KWz/sw+RoK0ZyeqRwGTf763ybPAa0gH0O1DHwJ5On/MMELTXM1f58xNBHos1Vxitin8ET7ibxDOtT
 +Pu/hEHsjaiVc5vE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhuT0-00EyCW-Fx
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 14:08:50 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0FDADC022; Tue,  2 Nov 2021 15:08:40 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A3C87C01C;
 Tue,  2 Nov 2021 15:08:33 +0100 (CET)
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a3f1a5c0;
 Tue, 2 Nov 2021 13:46:12 +0000 (UTC)
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: v9fs-developer@lists.sourceforge.net
Date: Tue,  2 Nov 2021 22:46:04 +0900
Message-Id: <20211102134608.1588018-1-dominique.martinet@atmark-techno.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Dominique Martinet <asmadeus@codewreck.org> This is
 quite some churn (especially 2nd patch) for very little gain, I'm not quite
 decided on what to do with this. First patch is harmless enough and some
 people care about SPDX licenses so I guess it'll get in, and the later two
 are real improvements so will definitely get in, but opinions on the big
 patch are de [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mhuT0-00EyCW-Fx
Subject: [V9fs-developer] [PATCH 0/4] Follow up to checkpatch fixes
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <asmadeus@codewreck.org>

This is quite some churn (especially 2nd patch) for very little gain,
I'm not quite decided on what to do with this.

First patch is harmless enough and some people care about SPDX licenses
so I guess it'll get in, and the later two are real improvements so will
definitely get in, but opinions on the big patch are definitely welcome
(along with reviews if any)

Thanks!

Dominique Martinet (4):
  9p: fix file headers
  9p: fix a bunch of checkpatch warnings
  9p v9fs_parse_options: replace simple_strtoul with kstrtouint
  9p p9mode2perm: remove useless strlcpy and check sscanf return code

 fs/9p/acl.c                |  11 +-
 fs/9p/acl.h                |  27 +--
 fs/9p/cache.c              |   4 +-
 fs/9p/v9fs.c               |  19 +-
 fs/9p/v9fs_vfs.h           |  11 +-
 fs/9p/vfs_addr.c           |   8 +-
 fs/9p/vfs_dentry.c         |   4 +-
 fs/9p/vfs_dir.c            |   2 -
 fs/9p/vfs_file.c           |   3 +-
 fs/9p/vfs_inode.c          |  29 ++-
 fs/9p/vfs_inode_dotl.c     |  11 +-
 fs/9p/vfs_super.c          |  11 +-
 fs/9p/xattr.c              |  10 +-
 fs/9p/xattr.h              |  29 +--
 include/net/9p/9p.h        |  12 +-
 include/net/9p/client.h    |  24 ++-
 include/net/9p/transport.h |  20 +-
 net/9p/client.c            | 432 ++++++++++++++++++-------------------
 net/9p/error.c             |   4 +-
 net/9p/mod.c               |  11 +-
 net/9p/protocol.c          |  38 ++--
 net/9p/protocol.h          |   4 +-
 net/9p/trans_common.c      |  10 +-
 net/9p/trans_common.h      |  12 +-
 net/9p/trans_fd.c          |   2 -
 net/9p/trans_rdma.c        |   2 -
 net/9p/trans_xen.c         |  25 +--
 27 files changed, 345 insertions(+), 430 deletions(-)

-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
