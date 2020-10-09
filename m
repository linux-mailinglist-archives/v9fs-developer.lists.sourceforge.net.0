Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D117288AEB
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:31:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtQb-0002cA-5l; Fri, 09 Oct 2020 14:31:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kQtQZ-0002bz-NT
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GeyZChjU8Oj99Pp+9Mi0xQ6/HJ6pKkZb0kZT9pF9iBE=; b=bTeA/dv5fADGRRdbrspiuW7oFA
 jpabap2H0zEA6EpEDDJ0Q8rHr6+WEG7aMFDUJuFJRflSR6a7qxj8ZHzDENFypfC0LpRmJmuuHlmlD
 maCO8ZPpsBzvovZyHyKdfBYOWYVeVHhtpAj6QBfzQ4yR6zUUXB48w9TSLO5Gyb6A0BHA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GeyZChjU8Oj99Pp+9Mi0xQ6/HJ6pKkZb0kZT9pF9iBE=; b=X
 /xMcNKu0Nm7ybJx275lrd88LunrfFbFezqFQlNAG+6t5qAdkQC76fmDR5lSqDBuzVCzQYytZFoSBf
 sjhf9Av65TXbTkSTq6xRrS/l4U3/9M9AHqEn2pqjxVGur+h6annPC560ZgM5gXWsOfyvW1M4hU3+c
 rh2HG5Th7m0mX/z0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtQU-004Iq1-0Y
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=GeyZChjU8Oj99Pp+9Mi0xQ6/HJ6pKkZb0kZT9pF9iBE=; b=Dq9QSGgeteBqpVdE+hBXk+LzdL
 I4AVG5F9x8v0QGJ5MRwNuBqwfxHyMo/Io8eUCPuH8g6FiNs6SFWDDC/LaxdgLL9IRmO378buAs0Nd
 /9fFuziR9D8ptZW2K48QSlR0cl+tAHJWxW9OWT6KzQpFo64yaxYXBs+NwGFwnEH1szT9X5UKIDv9a
 I4IgyXpNyes45ny+RuOTSQ/+VIMqtrQ/O+Dt6tEE5DLIEE5Bys7Feal0RaDC9hjliaOa48W9e4I15
 evQwTi1i6I1cP89eget5ZT673r2Hl0R5jp619lb54zyWDhXlpnWQV50yOUzipONAoMNyZ2lMu4spW
 D5naUVtg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQtQI-0005uQ-A9; Fri, 09 Oct 2020 14:31:06 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Fri,  9 Oct 2020 15:30:48 +0100
Message-Id: <20201009143104.22673-1-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQtQU-004Iq1-0Y
Subject: [V9fs-developer] [PATCH v2 00/16] Allow readpage to return a locked
 page
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus recently made the page lock more fair.  That means that the old
pattern where we returned from ->readpage with the page unlocked and
then attempted to re-lock it will send us to the back of the queue for
this page's lock.

A further benefit is that a synchronous readpage implementation allows
us to return an error to someone who might actually care about it.
There's no need to SetPageError, but I don't want to learn about how
a dozen filesystems handle I/O errors (hint: they're all different),
so I have not attempted to change that.  Except for iomap.

Ideally all filesystems would return from ->readpage with the page
Uptodate and Locked, but it's a bit painful to convert all the
asynchronous readpage implementations to synchronous.  The first 14
filesystems converted are already synchronous.  The last two patches
convert iomap to synchronous readpage.

This patchset is against iomap-for-next.  Andrew, it would make merging
the THP patchset much easier if you could merge at least the first patch
adding AOP_UPDATED_PAGE during the merge window which opens next week.

Matthew Wilcox (Oracle) (16):
  mm: Add AOP_UPDATED_PAGE return value
  mm: Inline wait_on_page_read into its one caller
  9p: Tell the VFS that readpage was synchronous
  afs: Tell the VFS that readpage was synchronous
  ceph: Tell the VFS that readpage was synchronous
  cifs: Tell the VFS that readpage was synchronous
  cramfs: Tell the VFS that readpage was synchronous
  ecryptfs: Tell the VFS that readpage was synchronous
  fuse: Tell the VFS that readpage was synchronous
  hostfs: Tell the VFS that readpage was synchronous
  jffs2: Tell the VFS that readpage was synchronous
  ubifs: Tell the VFS that readpage was synchronous
  udf: Tell the VFS that readpage was synchronous
  vboxsf: Tell the VFS that readpage was synchronous
  iomap: Inline iomap_iop_set_range_uptodate into its one caller
  iomap: Make readpage synchronous

 Documentation/filesystems/locking.rst |  7 +-
 Documentation/filesystems/vfs.rst     | 21 ++++--
 fs/9p/vfs_addr.c                      |  6 +-
 fs/afs/file.c                         |  3 +-
 fs/ceph/addr.c                        |  9 +--
 fs/cifs/file.c                        |  8 ++-
 fs/cramfs/inode.c                     |  5 +-
 fs/ecryptfs/mmap.c                    | 11 ++--
 fs/fuse/file.c                        |  2 +
 fs/hostfs/hostfs_kern.c               |  2 +
 fs/iomap/buffered-io.c                | 92 ++++++++++++++-------------
 fs/jffs2/file.c                       |  6 +-
 fs/ubifs/file.c                       | 16 +++--
 fs/udf/file.c                         |  3 +-
 fs/vboxsf/file.c                      |  2 +
 include/linux/fs.h                    |  5 ++
 mm/filemap.c                          | 33 +++++-----
 17 files changed, 135 insertions(+), 96 deletions(-)

-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
