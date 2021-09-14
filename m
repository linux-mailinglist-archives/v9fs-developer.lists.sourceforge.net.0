Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CE240AFBC
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 15:55:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQ8tp-0005tP-Hx; Tue, 14 Sep 2021 13:55:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mQ8tn-0005tD-MM
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 13:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rIzfcnXtGjc7TySfbNX1AsWwNTm/MWDBD4Ry2MXdNBs=; b=Gu25kkeWLd32IgjSLXWKEV0TI7
 Nf9nvEFG8q05iQx7+cg9EypeYxP48+2dUhEkHfKJvg+6VXNZ+pDJVZwbf3B+ptNetNnUsqDO2Oixt
 0b+lWcdSqFn4A2zCp5c6IiVpAkLA5hkDPFWB42PL8k97JnV5wfdXEVe6QMcqmfQE3mYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rIzfcnXtGjc7TySfbNX1AsWwNTm/MWDBD4Ry2MXdNBs=; b=Z
 yNFbiRm7pgDACyGgooEMB2/vO4PAC5EROhO2DK7amIaYioMkD1tEgwdQBYQIAQPCr8sHDqiuswEnH
 +EXeuc83G8tYNrsj3bMiW6+EQL0kUF98Xh2uq7Wu2JMtQPQvDNoSxFMdU3lR8PM/sp8oU45WsBfSw
 jbSCAJkpEAeZ6WWY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQ8th-00ARhF-OW
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 13:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631627687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=rIzfcnXtGjc7TySfbNX1AsWwNTm/MWDBD4Ry2MXdNBs=;
 b=XmnkoZSOd7HX3mrH5FBowUbUGhjYheBvLGPRaiype9CkgP+i8gSaa8xwRHRqDvJ+yptqlj
 Veuf3SrXNDX+nNH02o0EMMtVAJgHiDhWoIDoji1RnugZERYeKpgiIXxXx0q1g4EN4NSSO6
 CUHx3j/z74trKYCLdNFUCCcDQSLcp+g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-114-dIBVNSzYOdueWmxj2p5K1Q-1; Tue, 14 Sep 2021 09:54:46 -0400
X-MC-Unique: dIBVNSzYOdueWmxj2p5K1Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97C6F8145EE;
 Tue, 14 Sep 2021 13:54:43 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0C68460583;
 Tue, 14 Sep 2021 13:54:36 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 14 Sep 2021 14:54:36 +0100
Message-ID: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Here's a set of patches that removes the old fscache I/O API
 by the following means: (1) A simple fallback API is added that can read
 or write a single page synchronously. The functions for this have "deprecated"
 in their names as they have to be removed at some point. 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mQ8th-00ARhF-OW
Subject: [V9fs-developer] [RFC PATCH 0/8] fscache: Replace and remove old
 I/O API
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Here's a set of patches that removes the old fscache I/O API by the following
means:

 (1) A simple fallback API is added that can read or write a single page
     synchronously.  The functions for this have "deprecated" in their names
     as they have to be removed at some point.

 (2) An implementation of this is provided in cachefiles.  It creates a kiocb
     to use DIO to the backing file rather than calling readpage on the
     backing filesystem page and then snooping the page wait queue.

 (3) NFS is switched to use the fallback API.

 (4) CIFS is switched to use the fallback API also for the moment.

 (5) 9P is switched to using netfslib.

 (6) The old I/O API is removed from fscache and the page snooping
     implementation is removed from cachefiles.

The reasons for doing this are:

 (A) Using a kiocb to do asynchronous DIO from/to the pages of the backing
     file is now a possibility that didn't exist when cachefiles was created.
     This is much simpler than the snooping mechanism with a proper callback
     path and it also requires fewer copies and less memory.

 (B) We have to stop using bmap() or SEEK_DATA/SEEK_HOLE to work out what
     blocks are present in the backing file is dangerous and can lead to data
     corruption if the backing filesystem can insert or remove blocks of zeros
     arbitrarily in order to optimise its extent list[1].

     Whilst this patchset doesn't fix that yet, it does simplify the code and
     the fix for that can be made in a subsequent patchset.

 (C) In order to fix (B), the cache will need to keep track itself of what
     data is present.  To make this easier to manage, the intention is to
     increase the cache block granularity to, say, 256KiB - importantly, a
     size that will span multiple pages - which means the single-page
     interface will have to go away.  netfslib is designed to deal with
     that on behalf of a filesystem, though a filesystem could use raw
     cache calls instead and manage things itself.

These patches can be found also on:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter-3

David

Link: https://lore.kernel.org/r/YO17ZNOcq+9PajfQ@mit.edu [1]
---
David Howells (8):
      fscache: Generalise the ->begin_read_operation method
      fscache: Implement an alternate I/O interface to replace the old API
      nfs: Move to using the alternate (deprecated) fscache I/O API
      9p: (untested) Convert to using the netfs helper lib to do reads and caching
      cifs: (untested) Move to using the alternate (deprecated) fscache I/O API
      fscache: Remove the old I/O API
      fscache: Remove stats that are no longer used
      fscache: Update the documentation to reflect I/O API changes


 .../filesystems/caching/backend-api.rst       |  138 +--
 .../filesystems/caching/netfs-api.rst         |  386 +-----
 fs/9p/Kconfig                                 |    1 +
 fs/9p/cache.c                                 |  137 ---
 fs/9p/cache.h                                 |   98 +-
 fs/9p/v9fs.h                                  |    9 +
 fs/9p/vfs_addr.c                              |  174 ++-
 fs/9p/vfs_file.c                              |   21 +-
 fs/cachefiles/Makefile                        |    1 -
 fs/cachefiles/interface.c                     |   15 -
 fs/cachefiles/internal.h                      |   38 -
 fs/cachefiles/io.c                            |   28 +-
 fs/cachefiles/main.c                          |    1 -
 fs/cachefiles/rdwr.c                          |  972 ---------------
 fs/cifs/file.c                                |   64 +-
 fs/cifs/fscache.c                             |  105 +-
 fs/cifs/fscache.h                             |   74 +-
 fs/fscache/cache.c                            |    6 -
 fs/fscache/cookie.c                           |   10 -
 fs/fscache/internal.h                         |   58 +-
 fs/fscache/io.c                               |  140 ++-
 fs/fscache/object.c                           |    2 -
 fs/fscache/page.c                             | 1066 -----------------
 fs/fscache/stats.c                            |   73 +-
 fs/nfs/file.c                                 |   14 +-
 fs/nfs/fscache-index.c                        |   26 -
 fs/nfs/fscache.c                              |  161 +--
 fs/nfs/fscache.h                              |   84 +-
 fs/nfs/read.c                                 |   25 +-
 fs/nfs/write.c                                |    7 +-
 include/linux/fscache-cache.h                 |  131 --
 include/linux/fscache.h                       |  418 ++-----
 include/linux/netfs.h                         |   17 +-
 33 files changed, 508 insertions(+), 3992 deletions(-)
 delete mode 100644 fs/cachefiles/rdwr.c




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
