Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0D45541D6
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Jun 2022 06:44:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o3sEO-0001dO-Gl; Wed, 22 Jun 2022 04:44:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o3sEN-0001dI-Fs
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Jun 2022 04:44:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SvpTBwVexYrFJCdZ3kGO9tYts3xgDDucgGQnhol99JQ=; b=PmPt5EvD/qKxI5T6Vv7kg6wNDM
 AVOx1gW6yHyw8B+algoUB446Vci2psVvnDTE1ikWQ1JYfcOb+Ugo1j3R8yVSL5trFerFpGzDp9Ao8
 mZNgd+bSvPMQGlcOEHl5l6mUuPFHwdVBb3NckTVnMR2VnV6qs7B7q/jAPj4tbLxJCO8o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SvpTBwVexYrFJCdZ3kGO9tYts3xgDDucgGQnhol99JQ=; b=X
 58H5ZLwYxcHcjkfTPCTThOx+/vQmqXIW3rT81hFHxLjD8klSkZs5S3xJgxttzV07q7vIAYpSpCJmW
 wK0zni81nSXGPmh9NEfoDvgT5xGaMXNciLJO9A8X1407xQP/gcZIEVGyZKFRpqTmf3sWa4RhUMrzO
 tsBW9N2Lm8I3PUjU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o3sEM-0005rB-22
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Jun 2022 04:44:44 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0B1D4C01D; Wed, 22 Jun 2022 06:44:33 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C1B91C009;
 Wed, 22 Jun 2022 06:44:30 +0200 (CEST)
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id da68f758;
 Wed, 22 Jun 2022 04:44:27 +0000 (UTC)
Date: Wed, 22 Jun 2022 13:44:12 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YrKeHMRfXTNw3vTE@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks to Tyler and Christian for the patch/reviews/tests!
 The following changes since commit b13baccc3850ca8b8cccbf8ed9912dbaa0fdf7f3:
 Linux 5.19-rc2 (2022-06-12 16:11:37 -0700) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o3sEM-0005rB-22
Subject: [V9fs-developer] [GIT PULL] 9p fixes for 5.19-rc4
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
Cc: Tyler Hicks <tyhicks@linux.microsoft.com>, linux-fsdevel@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Thanks to Tyler and Christian for the patch/reviews/tests!


The following changes since commit b13baccc3850ca8b8cccbf8ed9912dbaa0fdf7f3:

  Linux 5.19-rc2 (2022-06-12 16:11:37 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.19-rc4

for you to fetch changes up to b0017602fdf6bd3f344dd49eaee8b6ffeed6dbac:

  9p: fix EBADF errors in cached mode (2022-06-17 06:03:30 +0900)

----------------------------------------------------------------
9p-for-5.19-rc4: fid refcount and fscache fixes

This contains a couple of fixes:
 - fid refcounting was incorrect in some corner cases and would
leak resources, only freed at umount time. The first three commits
fix three such cases
 - cache=loose or fscache was broken when trying to write a partial
page to a file with no read permission since the rework a few releases
ago. The fix taken here is just to restore old behavior of using the
special 'writeback_fid' for such reads, which is open as root/RDWR
and such not get complains that we try to read on a WRONLY fid.
Long-term it'd be nice to get rid of this and not issue the read at
all (skip cache?) in such cases, but that direction hasn't progressed

----------------------------------------------------------------
Dominique Martinet (3):
      9p: fix fid refcount leak in v9fs_vfs_atomic_open_dotl
      9p: fix fid refcount leak in v9fs_vfs_get_link
      9p: fix EBADF errors in cached mode

Tyler Hicks (1):
      9p: Fix refcounting during full path walks for fid lookups

 fs/9p/fid.c            | 22 +++++++++-------------
 fs/9p/vfs_addr.c       | 13 +++++++++++++
 fs/9p/vfs_inode.c      |  8 ++++----
 fs/9p/vfs_inode_dotl.c |  3 +++
 4 files changed, 29 insertions(+), 17 deletions(-)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
