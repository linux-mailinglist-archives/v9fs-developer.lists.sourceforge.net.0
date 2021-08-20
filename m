Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B663F2D81
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 15:57:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH51K-0000ge-90; Fri, 20 Aug 2021 13:57:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1mH51I-0000gY-RC
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 13:57:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AdBBLZ+ynqlQ9Q6GswBHLcMKxEelq2a3xkRhBd1Z4yE=; b=VN1Bse9/Uc8SBfPUrS2aa38XEg
 IXcBAwKh1zW/MlbY2OJ9TrewO9VZ7Z0tb51USaQ8/WWhfkSNlUWJTbwZbs25l5n5lQeIXQ3X49mWU
 eCqbYWGiWPi8CSRsCuGY+QVnT659oHjV/nlI1Kh8lbEmxVWYAFESxIvISUQDZPpUEZc4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AdBBLZ+ynqlQ9Q6GswBHLcMKxEelq2a3xkRhBd1Z4yE=; b=P
 4fj/xam6eosBCpDvWHtKrAUv+ksLEt9WORWuvas26y5UwxRDlIvVaEqar/Gg92UmZL7WQ7KO8ZKDB
 wtFPVpFRLQvgJ1fPc8oXbIuW6avtefd3g3i34k4x5zenJcxMaaOxAoM9f99Bieu9//Bj/+om5A2br
 XSjYqSgXRSpFrXMA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH51H-00070K-PJ
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 13:57:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C8368610E6;
 Fri, 20 Aug 2021 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629467830;
 bh=8MnTVdYClbddCsTsLNbTMsCRF2Gxk95s2pj8wLFwQd0=;
 h=From:To:Cc:Subject:Date:From;
 b=t2HxBUM9QOrlPdcAaWYWdwKfXD7QFuBmZx3OUE5KT2Y1RrRgrlG401SCGys5CG8Fc
 +lcVOwSK0F1uRH0K8QJLDIwYW3EmP2b4Ceco7wMOADwIq3h+lqnTB1niclYqvdm+d7
 2enkha2NLg5vfDHEe2r8OXXRW79B3laihEfbtfBlVEsjUkdLaKnZVY3+uH2dh+qDQt
 utX2JoYLcmwYrQrNOrxt/rOswI8UjaFYpiDcbSrgc9rnqPDeyRgQkinXLuc7PBcbGt
 6iedGwdHK4/mUMLaWC3veuKd1igYYNJE82n3G60q/Ne/nfjplocJEfqwkX2HW7hZLL
 IPdEki8PItNtQ==
From: Jeff Layton <jlayton@kernel.org>
To: torvalds@linux-foundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 20 Aug 2021 09:57:05 -0400
Message-Id: <20210820135707.171001-1-jlayton@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mH51H-00070K-PJ
Subject: [V9fs-developer] [PATCH v2 0/2] fs: remove support for mandatory
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
 david@redhat.com, willy@infradead.org, w@1wt.eu, cluster-devel@redhat.com,
 linux-mm@kvack.org, rostedt@goodmis.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 ebiederm@xmission.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The first patch in this series adds a new warning that should pop on
kernels have mandatory locking enabled when someone mounts a filesystem
with -o mand. The second patch removes support for mandatory locking
altogether.

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
 fs/namespace.c                                |  31 +--
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
 19 files changed, 20 insertions(+), 505 deletions(-)
 delete mode 100644 Documentation/filesystems/mandatory-locking.rst

-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
