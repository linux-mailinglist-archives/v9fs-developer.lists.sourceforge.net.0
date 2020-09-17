Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2123726DF39
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 17:11:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIvZ9-00026t-Td; Thu, 17 Sep 2020 15:11:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kIvZ3-000260-K8
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lu11y1IB6qPsE9QG9F+oQMlPRPTZIY05Da6y3WAX60M=; b=GBMPuIOZPx7WHraJpw9UfyOnxS
 uJFwEZ3NdIBtt33HqWE68GkvAEPrdG/Nxg1rA8gVC8NjXTMvFGz83ZC6CC68+XZNlL+V6JaIXGFhB
 eFgMKrBjIJW3VrcTx9cFbeNA8JYtrfjxI683Ym3XILJKqjsdlgN186tmoIfCz4xXLR5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lu11y1IB6qPsE9QG9F+oQMlPRPTZIY05Da6y3WAX60M=; b=U
 HFRFUGY6zKWZff2bGoalCe58DPZKThS9l7y3egF98pD0c7JGRX0JarMOBleWciF2M0TNnox5RDNob
 Ox4aeN8K8cEWmvKkdvPp4o6hwxqrLg4fXJu5N3P7HJFMIxcOE4TSbht++AEySzm5vO+tkEGtwIlCt
 h/8TLTKdTAJqjfj4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIvYx-00D5ft-2J
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=lu11y1IB6qPsE9QG9F+oQMlPRPTZIY05Da6y3WAX60M=; b=GPkxwUMdgSb1OJ4/VmsY06Tw3d
 wGaBexmE5C59ZCk9mEQrvh9oEg9vXINOmQweMRoeaKlDN+2g7USOiJ7p9L6bGvMTgyOEzZOtR669A
 jIht28BCCCPOx7e6FE0aFJU+a0OyffBNocDLpE1149X17KE2LrFn/XIZhTexixrbCr/7fuXh5bEIC
 5+5CsSw56eGm4LgIdvEOovoEjzYZrFmqYQ0NKJCGq7JspTlxSRfyl5i2MbjOV1DdvtIMrAzZjoYaL
 ynre9v/sxNEHLDS79EF6RrWV5KTmLFDCVpjgtJr0LUrFEcYXA87AZmSArmQz3cvHn2mHKHdPH2VNi
 a4wd79ow==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kIvYi-0001PE-2q; Thu, 17 Sep 2020 15:10:52 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 17 Sep 2020 16:10:37 +0100
Message-Id: <20200917151050.5363-1-willy@infradead.org>
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
X-Headers-End: 1kIvYx-00D5ft-2J
Subject: [V9fs-developer] [PATCH 00/13] Allow readpage to return a locked
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus recently made the page lock more fair.  That means that the old
pattern where we returned from ->readpage with the page unlocked and
then attempted to re-lock it will send us to the back of the queue for
this page's lock.

Ideally all filesystems would return from ->readpage with the
page Uptodate and Locked, but it's a bit painful to convert all the
asynchronous readpage implementations to synchronous.  These ones are
already synchronous, so convert them while I work on iomap.

A further benefit is that a synchronous readpage implementation allows
us to return an error to someone who might actually care about it.
There's no need to SetPageError, but I don't want to learn about how
a dozen filesystems handle I/O errors (hint: they're all different),
so I have not attempted to change that.

Please review your filesystem carefully.  I've tried to catch all the
places where a filesystem calls its own internal readpage implementation
without going through ->readpage, but I may have missed some.

Matthew Wilcox (Oracle) (13):
  mm: Add AOP_UPDATED_PAGE return value
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

 Documentation/filesystems/locking.rst |  7 ++++---
 Documentation/filesystems/vfs.rst     | 21 ++++++++++++++-------
 fs/9p/vfs_addr.c                      |  6 +++++-
 fs/afs/file.c                         |  3 ++-
 fs/ceph/addr.c                        |  9 +++++----
 fs/cifs/file.c                        |  8 ++++++--
 fs/cramfs/inode.c                     |  5 ++---
 fs/ecryptfs/mmap.c                    | 11 ++++++-----
 fs/fuse/file.c                        |  2 ++
 fs/hostfs/hostfs_kern.c               |  2 ++
 fs/jffs2/file.c                       |  6 ++++--
 fs/ubifs/file.c                       | 16 ++++++++++------
 fs/udf/file.c                         |  3 +--
 fs/vboxsf/file.c                      |  2 ++
 include/linux/fs.h                    |  5 +++++
 mm/filemap.c                          | 12 ++++++++++--
 16 files changed, 80 insertions(+), 38 deletions(-)

-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
