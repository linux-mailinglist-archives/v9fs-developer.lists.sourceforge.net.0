Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F7B69B6E5
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 01:34:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTBB2-0008G5-9D;
	Sat, 18 Feb 2023 00:34:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pTBAs-0008Fy-Hn
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QqeHCeZBkZ41yv09fXeJYjnM+sSkb+0rFkrueg+KhM0=; b=hUZVpB0ryelGyE+YWnDmTWZ+SS
 nZvokMynkOFvtzhAI6ggzqjkmuuMDOEPiKKqiuYddOgNyljXePsxDav0eDS/xULwHhaSFRhECkXat
 b8sNoqabtB9LMwVstIuqSETikjqI1QzbNFodb3bfxpKSHHwvCqinObd+gKnhI6U9fUA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QqeHCeZBkZ41yv09fXeJYjnM+sSkb+0rFkrueg+KhM0=; b=UugExOoY2JcJbIGUNVHRWNjxAv
 CcyqZn5hCKaIibDsmgN1T9aJ9KP6XNgGO//dcKfy+hkXYE6GnYZ49ZjpSgpxRO0wVaAzukP/6McAw
 tFUM3kvMeAaxjI5QA3wuHGSz7KTWaW7fNmSgBkU575DZTJQ4u6rG+L7COCkLphIfK9S4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTBAp-007r6F-TG for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:33:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6692AB82EA6;
 Sat, 18 Feb 2023 00:33:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2611BC433EF;
 Sat, 18 Feb 2023 00:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676680424;
 bh=lXhsoutPECxKV3nX3JhNGjme2nqA5IIggiW3j7Todqo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GStguZfzTZmY9/0+uqzLErEw1TejVU0fhuxl//reMls8miLIU91W/7TLvimRuiGHf
 XePD67lej6yLD5XJh0y7TNJJ1DSudwUpuk79+AwNgYZwwciuwJ6WUApJ18mfTlIaYO
 UiGgS9G+zDI0voHtEpJb8EaOu3t1lKkz8v8RQJssPykqXwao9fSskaKKxH+Lr+Rl7F
 ctqFm79kJvDFnWfuB5KNEX1ZbGycAgjELErU7MSo8Ye0IQ/XoAgpbc6SklW66MF1Ig
 UqUq6UcEKHFcB4qMiIqed9Y0FJ6S2Tsob64qOAm1L9GprL5YU+4Px2CizqSnt82M0d
 3U9q1K7lXvdQQ==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 18 Feb 2023 00:33:12 +0000
Message-Id: <20230218003323.2322580-1-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230124023834.106339-1-ericvh@kernel.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This is the fourth version of a patch series which adds a
 number of features to improve read/write performance in the 9p filesystem.
 Mostly it focuses on fixing caching to help utilize the recently in [...]
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
X-Headers-End: 1pTBAp-007r6F-TG
Subject: [V9fs-developer] [PATCH v4 00/11] Performance fixes for 9p
 filesystem
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

This is the fourth version of a patch series which adds a number
of features to improve read/write performance in the 9p filesystem.
Mostly it focuses on fixing caching to help utilize the recently
increased MSIZE limits and also fixes some problematic behavior
within the writeback code.

All together, these show roughly 10x speed increases on simple
file transfers over no caching for readahead mode.  Future patch
sets will improve cache consistency and directory caching, which
should benefit loose mode.

This iteration of the patch incorporates an important fix for
writeback which uses a stronger mechanism to flush writeback on
close of files and addresses observed bugs in previous versions of
the patch for writeback, mmap, and loose cache modes.

These patches are also available on github:
https://github.com/v9fs/linux/tree/ericvh/for-next
and on kernel.org:
https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git

Tested against qemu, cpu, and diod with fsx, dbench, and postmark
in every caching mode.

I'm gonna definitely submit the first couple patches as they are
fairly harmless - but would like to submit the whole series to the
upcoming merge window.  Would appreciate reviews.

Eric Van Hensbergen (11):
  net/9p: Adjust maximum MSIZE to account for p9 header
  fs/9p: Expand setup of writeback cache to all levels
  fs/9p: Consolidate file operations and add readahead and writeback
  fs/9p: Remove unnecessary superblock flags
  fs/9p: allow disable of xattr support on mount
  net/9p: fix bug in client create for .L
  9p: Add additional debug flags and open modes
  fs/9p: Add new mount modes
  fs/9p: fix error reporting in v9fs_dir_release
  fs/9p: writeback mode fixes
  fs/9p: Fix revalidate

 Documentation/filesystems/9p.rst |  26 ++--
 fs/9p/fid.c                      |  49 +++-----
 fs/9p/fid.h                      |  33 ++++-
 fs/9p/v9fs.c                     |  49 +++++---
 fs/9p/v9fs.h                     |  10 +-
 fs/9p/v9fs_vfs.h                 |   4 -
 fs/9p/vfs_addr.c                 |  24 ++--
 fs/9p/vfs_dentry.c               |   3 +-
 fs/9p/vfs_dir.c                  |  10 +-
 fs/9p/vfs_file.c                 | 205 +++++++------------------------
 fs/9p/vfs_inode.c                | 102 +++++++--------
 fs/9p/vfs_inode_dotl.c           |  69 ++++++-----
 fs/9p/vfs_super.c                |  28 +++--
 include/net/9p/9p.h              |   5 +
 net/9p/client.c                  |   8 +-
 15 files changed, 284 insertions(+), 341 deletions(-)

--
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
