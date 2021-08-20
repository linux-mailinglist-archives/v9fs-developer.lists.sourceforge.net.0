Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CFD3F31AC
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 18:43:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH7bp-0002Fc-Ns; Fri, 20 Aug 2021 16:43:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1mH7YJ-0001hj-Ew
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BWfp3BXpsFEES7gvY19rXU36zfClIi1GIvVgc5SAOrk=; b=Qn2pdOM2IJ02K1Sq9urU2w8hyz
 URwgMZa6kog6ohWC2137OQoCbiEo3gHiq3NbSSaZcdIVBsIk18jC+O41QzfwU5wMBnvoXQP3JjaPD
 udpIM5G7cULbotQ+BClkSugMUmfsQKQ3Yvc72TClvopHjzC2pGAYl4SQqaYHgy986Fq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BWfp3BXpsFEES7gvY19rXU36zfClIi1GIvVgc5SAOrk=; b=U
 mZ0U+cJMwQM/O1qBqkDVpO5pZZoLP99UhKVzPNiE6GV8Tl7kfFzl74hA/xhKHHEZNoqBrgmJWNTEL
 WhXE6GQOsR8uY7nlmC2Lu9vL/h0p49ufCJ5UpiKvK77GNPH6/92ZJgRe84q28Yc7JwjOSplOEO/we
 HtdN9kykVE+GozMM=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH7YF-00CwQN-2k
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:39:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 294CF610A3;
 Fri, 20 Aug 2021 16:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629477561;
 bh=fQVEnoDE2Gjbt5CEfpajFLqE2D9pqoShMYb2SpVXfmc=;
 h=From:To:Cc:Subject:Date:From;
 b=eqD+1vSJQ9VAzRyAVh6ORjz/OOen6ChPbsPPA0Bd0oIhpqN3zbr4stgPyj8ufqUON
 EwJAhVaaWdzGdoYVzIy+s0h3KD/7XRsRaBMidPklVN23TWEeNjvHs5eXor1QeL9BR/
 VqBlWHodQxCuUDwuKOrh+3idz0+VQgbdm13oCnS0XZw335YK54B0nxT4luICeHe6bP
 93+t84fNHACxCtgsuJISmHnMyaKrOjSZYi3oidm1CJTzOS8rm7+XthOEbGSZfjTPO4
 wKdn9pCXwRZBoCFSwwmvRzFZoQQzKictNDnW9EmUe/Ufc9xH7wgMK9eYYKJSbmE4eW
 wvO0/oXmlL4rA==
From: Jeff Layton <jlayton@kernel.org>
To: torvalds@linux-foundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 20 Aug 2021 12:39:17 -0400
Message-Id: <20210820163919.435135-1-jlayton@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  v3: slight revision to verbiage, and use pr_warn_once The
 first patch in this series adds a new warning that should pop on kernels that
 have mandatory locking enabled when someone mounts a filesystem with -o mand.
 The second patch removes support for man [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mH7YF-00CwQN-2k
Subject: [V9fs-developer] [PATCH v3 0/2] fs: remove support for mandatory
 locking
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
Cc: bfields@fieldses.org, linux-nfs@vger.kernel.org, linux-doc@vger.kernel.org,
 david@redhat.com, willy@infradead.org, cluster-devel@redhat.com,
 linux-mm@kvack.org, rostedt@goodmis.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 ebiederm@xmission.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

v3: slight revision to verbiage, and use pr_warn_once

The first patch in this series adds a new warning that should pop on
kernels that have mandatory locking enabled when someone mounts a
filesystem with -o mand. The second patch removes support for mandatory
locking altogether.

What I think we probably want to do is apply the first to v5.14 before
it ships and allow the new warning to trickle out into stable kernels.
Then we can merge the second patch in v5.15 to go ahead and remove it.

Sound like a plan?

Jeff Layton (2):
  fs: warn about impending deprecation of mandatory locks
  fs: remove mandatory file locking support

 .../filesystems/mandatory-locking.rst         | 188 ------------------
 fs/9p/vfs_file.c                              |  12 --
 fs/Kconfig                                    |  10 -
 fs/afs/flock.c                                |   4 -
 fs/ceph/locks.c                               |   3 -
 fs/gfs2/file.c                                |   3 -
 fs/locks.c                                    | 116 +----------
 fs/namei.c                                    |   4 +-
 fs/namespace.c                                |  25 +--
 fs/nfs/file.c                                 |   4 -
 fs/nfsd/nfs4state.c                           |  13 --
 fs/nfsd/vfs.c                                 |  15 --
 fs/ocfs2/locks.c                              |   4 -
 fs/open.c                                     |   8 +-
 fs/read_write.c                               |   7 -
 fs/remap_range.c                              |  10 -
 include/linux/fs.h                            |  84 --------
 mm/mmap.c                                     |   6 -
 mm/nommu.c                                    |   3 -
 19 files changed, 14 insertions(+), 505 deletions(-)
 delete mode 100644 Documentation/filesystems/mandatory-locking.rst

-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
