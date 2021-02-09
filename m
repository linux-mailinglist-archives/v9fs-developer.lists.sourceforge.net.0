Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DF6315371
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 17:10:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9Vav-0002oW-H6; Tue, 09 Feb 2021 16:10:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l9Vau-0002oI-61
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 16:10:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=akGVKWR6XgOFReDZRfWVmsLFvJtRrgKMTMbz030iBEY=; b=ZNI5Us7OchrK7SHxUDPTCgl6z1
 noco02JWrb+wdw0uYDl5+QKRZHXYw0liylj56Sx5ayDvcuEEP1IIG84KhHbAaiI8G68hKrb55CZzk
 1gO99EBhDskrFuowF5HHe1KWxy0u9Bk1TKAIFtgjC5d3cRBcfXyyFH5lrDQP5d68DET0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=akGVKWR6XgOFReDZRfWVmsLFvJtRrgKMTMbz030iBEY=; b=Hxp1c4ACMfr/K9hYUkQhUISdlP
 /onCg/+J2zM5qzJF1AnZXROwRXqi+hpz+NuK8nMIJYZ1DCdrMqCbbeT+T4lqeqmtWsLf/1y2Y6NCg
 wq88s++cohU9hHBSlhqBIufeRTfleaVEfX8UaUhtZ+lIauboiqTufFzlIpOs0jf+uJeg=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l9Vak-000G2F-S1
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 16:10:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612887013;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=akGVKWR6XgOFReDZRfWVmsLFvJtRrgKMTMbz030iBEY=;
 b=WbzyjtVD845gVRcThomw/sEfwtNi4LvOEFmseqeAJ0qp1C7zrZW+C4AD4VHzd3Uh6zoKoU
 +q/gSxkwmInbjiTZ5ymaf7bWSf1h/6RlTlBt29CRaOP20JvvTwbMyyDDZP5cm95gnNjfr5
 vrgUEYtfecpnoO8sm+XtqZJN2CULDQ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-422-D-UxzCEtMSabQA39JWulEA-1; Tue, 09 Feb 2021 11:10:08 -0500
X-MC-Unique: D-UxzCEtMSabQA39JWulEA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85F7980364E;
 Tue,  9 Feb 2021 16:10:06 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 98BD010016F6;
 Tue,  9 Feb 2021 16:09:58 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <591236.1612886997.1@warthog.procyon.org.uk>
Date: Tue, 09 Feb 2021 16:09:57 +0000
Message-ID: <591237.1612886997@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l9Vak-000G2F-S1
Subject: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 David Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Can you pull this during the upcoming merge window?  It provides a more
modern I/O API for fscache and moves some common pieces out of network
filesystems into a common helper library.  This request only includes
modifications for afs and ceph.

Dave Wysochanski has a patch series for nfs.  Normal nfs works fine and
passes various tests, but it turned out pnfs has a problem that wasn't
discovered until quite late - pnfs does splitting of requests itself and
sending them to various places, but it will need to cooperate more closely
with the netfs lib over this.

I've given Dominique Martinet a patch for 9p and Steve French a partial
patch for cifs, but neither of those is going to be ready for this merge
window.

The main features of this request are:

 (1) Institution of a helper library for network filesystems.  The first
     phase of this handles ->readpage(), ->readahead() and part of
     ->write_begin() on behalf of the netfs, requiring the netfs to provide
     a common vector to perform a read to some part of a file.

     This allows handling of the following to be (at least partially) moved
     out of all the network filesystems and consolidated in one place:

	- changes in VM vectors (Matthew Wilcox's work)
	  - transparent huge page support
	- shaping of reads
	  - readahead expansion
	  - fs alignment/granularity (ceph, pnfs)
	  - cache alignment/granularity
	- slicing of reads
	  - rsize
	  - keeping multiple read in flight	} Steve French would like
	  - multichannel distribution		} but for the future
	  - multiserver distribution (ceph, pnfs)
	  - stitching together reads from the cache and reads from the net
	- copying data read from the server into the cache
	- retry/reissue handling
	  - fallback after cache failure
     	- short reads
	- fscrypt data crypting (Jeff Layton is considering for the future)

 (2) Adding an alternate cache I/O API for use with the netfs lib that
     makes use of kiocbs in the cache to do direct I/O between the cache
     files and the netfs pages.

     This is intended to replace the current I/O API that calls the backing
     fs readpage op and than snooping the wait queues for completion to
     read and using vfs_write() to write.  It wasn't possible to do
     in-kernel DIO when I first wrote cachefiles - but using kiocbs makes
     it a lot simpler and more robust (and it uses a lot less memory).

 (3) Add an ITER_XARRAY iov_iter that allows I/O iteration to be done on an
     xarray of pinned pages (such as inode->i_mapping->i_pages), thereby
     avoiding the need to allocate a bvec array to represent this.

     This is used to present a set of netfs pages to the cache to do DIO on
     and is also used by afs to present netfs pages to sendmsg.  It could
     also be used by unencrypted cifs to pass the pages to the TCP socket
     it uses (if it's doing TCP) and my patch for 9p (which isn't included
     here) can make use of it too.

 (4) Make afs use the above.  It passes the same xfstests (and has the same
     failures) as the unpatched afs client.

 (5) Make ceph use the above (I've merged a branch from Jeff Layton for this).
     This also passes xfstests.

David
---
The following changes since commit 9791581c049c10929e97098374dd1716a81fefcc:

  Merge tag 'for-5.11-rc4-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux (2021-01-20 14:15:33 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/fscache-ioapi-20210203

for you to fetch changes up to 1df6bf2cc0fad1a5b2b32b7b0066b13175ad1ce4:

  netfs: Fix kerneldoc on netfs_subreq_terminated() (2021-02-03 11:17:57 +0000)

----------------------------------------------------------------
fscache I/O API rework and netfs changes

----------------------------------------------------------------
David Howells (29):
      iov_iter: Add ITER_XARRAY
      vm: Add wait/unlock functions for PG_fscache
      mm: Implement readahead_control pageset expansion
      vfs: Export rw_verify_area() for use by cachefiles
      netfs: Make a netfs helper module
      netfs: Provide readahead and readpage netfs helpers
      netfs: Add tracepoints
      netfs: Gather stats
      netfs: Add write_begin helper
      netfs: Define an interface to talk to a cache
      fscache, cachefiles: Add alternate API to use kiocb for read/write to cache
      afs: Disable use of the fscache I/O routines
      afs: Pass page into dirty region helpers to provide THP size
      afs: Print the operation debug_id when logging an unexpected data version
      afs: Move key to afs_read struct
      afs: Don't truncate iter during data fetch
      afs: Log remote unmarshalling errors
      afs: Set up the iov_iter before calling afs_extract_data()
      afs: Use ITER_XARRAY for writing
      afs: Wait on PG_fscache before modifying/releasing a page
      afs: Extract writeback extension into its own function
      afs: Prepare for use of THPs
      afs: Use the fs operation ops to handle FetchData completion
      afs: Use new fscache read helper API
      Merge branch 'fscache-netfs-lib' into fscache-next
      Merge branch 'ceph-netfs-lib' of https://git.kernel.org/pub/scm/linux/kernel/git/jlayton/linux into fscache-next
      netfs: Fix various bits of error handling
      afs: Fix error handling in afs_req_issue_op()
      netfs: Fix kerneldoc on netfs_subreq_terminated()

Jeff Layton (7):
      ceph: disable old fscache readpage handling
      ceph: rework PageFsCache handling
      ceph: fix fscache invalidation
      ceph: convert readpage to fscache read helper
      ceph: plug write_begin into read helper
      ceph: convert ceph_readpages to ceph_readahead
      ceph: fix an oops in error handling in ceph_netfs_issue_op

 fs/Kconfig                    |    1 +
 fs/Makefile                   |    1 +
 fs/afs/Kconfig                |    1 +
 fs/afs/dir.c                  |  225 +++++---
 fs/afs/file.c                 |  470 ++++-------------
 fs/afs/fs_operation.c         |    4 +-
 fs/afs/fsclient.c             |  108 ++--
 fs/afs/inode.c                |    7 +-
 fs/afs/internal.h             |   58 +-
 fs/afs/rxrpc.c                |  150 ++----
 fs/afs/write.c                |  610 ++++++++++++----------
 fs/afs/yfsclient.c            |   82 +--
 fs/cachefiles/Makefile        |    1 +
 fs/cachefiles/interface.c     |    5 +-
 fs/cachefiles/internal.h      |    9 +
 fs/cachefiles/rdwr2.c         |  412 +++++++++++++++
 fs/ceph/Kconfig               |    1 +
 fs/ceph/addr.c                |  535 ++++++++-----------
 fs/ceph/cache.c               |  125 -----
 fs/ceph/cache.h               |  101 +---
 fs/ceph/caps.c                |   10 +-
 fs/ceph/inode.c               |    1 +
 fs/ceph/super.h               |    1 +
 fs/fscache/Kconfig            |    1 +
 fs/fscache/Makefile           |    3 +-
 fs/fscache/internal.h         |    3 +
 fs/fscache/page.c             |    2 +-
 fs/fscache/page2.c            |  117 +++++
 fs/fscache/stats.c            |    1 +
 fs/internal.h                 |    5 -
 fs/netfs/Kconfig              |   23 +
 fs/netfs/Makefile             |    5 +
 fs/netfs/internal.h           |   97 ++++
 fs/netfs/read_helper.c        | 1161 +++++++++++++++++++++++++++++++++++++++++
 fs/netfs/stats.c              |   59 +++
 fs/read_write.c               |    1 +
 include/linux/fs.h            |    1 +
 include/linux/fscache-cache.h |    4 +
 include/linux/fscache.h       |   40 +-
 include/linux/netfs.h         |  167 ++++++
 include/linux/pagemap.h       |   16 +
 include/linux/uio.h           |   11 +
 include/net/af_rxrpc.h        |    2 +-
 include/trace/events/afs.h    |   74 ++-
 include/trace/events/netfs.h  |  201 +++++++
 lib/iov_iter.c                |  313 ++++++++++-
 mm/filemap.c                  |   18 +
 mm/readahead.c                |   70 +++
 net/rxrpc/recvmsg.c           |    9 +-
 49 files changed, 3749 insertions(+), 1573 deletions(-)
 create mode 100644 fs/cachefiles/rdwr2.c
 create mode 100644 fs/fscache/page2.c
 create mode 100644 fs/netfs/Kconfig
 create mode 100644 fs/netfs/Makefile
 create mode 100644 fs/netfs/internal.h
 create mode 100644 fs/netfs/read_helper.c
 create mode 100644 fs/netfs/stats.c
 create mode 100644 include/linux/netfs.h
 create mode 100644 include/trace/events/netfs.h



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
