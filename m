Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 606394CA6E1
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Mar 2022 15:02:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nPPYP-0006pH-Fd; Wed, 02 Mar 2022 14:02:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nPPYM-0006p3-4M
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:02:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YlcWSKsMSqzT5IWdAWxPtZ91Z1EQmkshn5gNRXkAO+8=; b=UAgqk5pYGMwvkmHF3jpTIqzkoA
 QN1ZRZAVYMnGL1vTCGjAk98RMzewVUChPpspFrAYzx08nQx2jo/4HXCDpLAaNfx70jz/2u5sCzyI4
 7IbEh+TM55eeE4aKFCtGFkDQRKz7YGPTmu6Sy+yhxtzjFh1TRdKeS/1SYpubj63rm++8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YlcWSKsMSqzT5IWdAWxPtZ91Z1EQmkshn5gNRXkAO+8=; b=h
 CcnEiVAZJk6CzkXLMRVZlFLEOav5nFw1bB4L+kC68HqzfIGYt/ahD6OCnXi7WNEKVJai7LnLRugiK
 K3P9mgWmxKkZAZIDFc37vixJ0erHyngnneDSgItXiS1cYnR99AbCWQZrzLwMAMk1Rnmqkqtb/cfA3
 stj5+++hR2JZhviU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPPYG-0007tH-Ha
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Mar 2022 14:02:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646229714;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YlcWSKsMSqzT5IWdAWxPtZ91Z1EQmkshn5gNRXkAO+8=;
 b=hUj2Jo5dTFMyMkAoc7JzI2dsPaY0+X7XgunUTM1zMZOiQLDNmCH23GizNn5FSwpBiL6v7O
 JeEljawZxvIP6nFC+pxt9k8Nf2RL2poeODxCNMHgyx4avmtTR/kWF7jtbNYhkahS+yFw0U
 06eCwdaAmi/ysz5U/7KyVYRPdqaIyeQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-513-WIqtmVZ-P761tN5Xi_VAVw-1; Wed, 02 Mar 2022 09:01:51 -0500
X-MC-Unique: WIqtmVZ-P761tN5Xi_VAVw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 144DF801DDB;
 Wed,  2 Mar 2022 14:01:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 754841009655;
 Wed,  2 Mar 2022 14:01:42 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 02 Mar 2022 14:01:41 +0000
Message-ID: <164622970143.3564931.3656393397237724303.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Having had a go at implementing write helpers and content
 encryption support in netfslib, it seems that the netfs_read_{,sub}request
 structs and the equivalent write request structs were almost the sa [...]
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nPPYG-0007tH-Ha
Subject: [V9fs-developer] [PATCH 00/19] netfs: Prep for write helpers
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Jeffle Xu <jefflexu@linux.alibaba.com>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Having had a go at implementing write helpers and content encryption
support in netfslib, it seems that the netfs_read_{,sub}request structs and
the equivalent write request structs were almost the same and so should be
merged, thereby requiring only one set of alloc/get/put functions and a
common set of tracepoints.

Merging the structs also has the advantage that if a bounce buffer is added
to the request struct, a read operation can be performed to fill the bounce
buffer, the contents of the buffer can be modified and then a write
operation can be performed on it to send the data wherever it needs to go
using the same request structure all the way through.  The I/O handlers
would then transparently perform any required crypto.  This should make it
easy to perform RMW cycles if needed.

The potentially common functions and structs, however, by their names all
proclaim themselves to be associated with the read side of things.  The
bulk of these changes alter this in the following ways:

 (1) Rename struct netfs_read_{,sub}request to netfs_io_{,sub}request.

 (2) Rename some enums, members and flags to make them more appropriate.

 (3) Adjust some comments to match.

 (4) Drop "read"/"rreq" from the names of common functions.  For instance,
     netfs_get_read_request() becomes netfs_get_request().

 (5) The ->init_rreq() and ->issue_op() methods become ->init_request() and
     ->issue_read().  I've kept the latter as a read-specific function and
     in another branch added an ->issue_write() method.

The driver source is then reorganised into a number of files:

	fs/netfs/buffered_read.c	Create read reqs to the pagecache
	fs/netfs/io.c			Dispatchers for read and write reqs
	fs/netfs/main.c			Some general miscellaneous bits
	fs/netfs/objects.c		Alloc, get and put functions
	fs/netfs/stats.c		Optional procfs statistics.

and future development can be fitted into this scheme, e.g.:

	fs/netfs/buffered_write.c	Modify the pagecache
	fs/netfs/buffered_flush.c	Writeback from the pagecache
	fs/netfs/direct_read.c		DIO read support
	fs/netfs/direct_write.c		DIO write support
	fs/netfs/unbuffered_write.c	Write modifications directly back

Beyond the above changes, there are also some changes that affect how
things work:

 (1) Make fscache_end_operation() generally available.

 (2) In the netfs tracing header, generate enums from the symbol -> string
     mapping tables rather than manually coding them.

 (3) Add a struct for filesystems that uses netfslib to put into their
     inode wrapper structs to hold extra state that netfslib is interested
     in, such as the fscache cookie.  This allows netfslib functions to be
     set in filesystem operation tables and jumped to directly without
     having to have a filesystem wrapper.

 (4) Add a member to the struct added in (3) to track the remote inode
     length as that may differ if local modifications are buffered.  We may
     need to supply an appropriate EOF pointer when storing data (in AFS
     for example).

 (5) Pass extra information to netfs_alloc_request() so that the
     ->init_request() hook can access it and retain information to indicate
     the origin of the operation.

 (6) Make the ->init_request() hook return an error, thereby allowing a
     filesystem that isn't allowed to cache an inode (ceph or cifs, for
     example) to skip readahead.

 (7) Switch to using refcount_t for subrequests and add tracepoints to log
     refcount changes for the request and subrequest structs.

 (8) Add a function to consolidate dispatching a read request.  Similar
     code is used in three places and another couple are likely to be added
     in the future.


The patches can be found on this branch:

	http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-next

This is based on top of ceph's master branch as some of the patches
conflict.

David
---
David Howells (17):
      netfs: Generate enums from trace symbol mapping lists
      netfs: Add a netfs inode context
      netfs: Rename netfs_read_*request to netfs_io_*request
      netfs: Finish off rename of netfs_read_request to netfs_io_request
      netfs: Split netfs_io_* object handling out
      netfs: Adjust the netfs_rreq tracepoint slightly
      netfs: Trace refcounting on the netfs_io_request struct
      netfs: Trace refcounting on the netfs_io_subrequest struct
      netfs: Adjust the netfs_failure tracepoint to indicate non-subreq lines
      netfs: Prepare to split read_helper.c
      netfs: Add a function to consolidate beginning a read
      netfs: Split fs/netfs/read_helper.c
      netfs: Split some core bits out into their own file
      netfs: Rename rename read_helper.c to io.c
      netfs: Change ->init_rreq() to return an error code
      netfs: Keep track of the actual remote file size
      afs: Maintain netfs_i_context::remote_i_size

Jeff Layton (1):
      netfs: Refactor arguments for netfs_alloc_read_request

Jeffle Xu (1):
      fscache: export fscache_end_operation()


 Documentation/filesystems/netfs_library.rst |   38 +-
 fs/9p/cache.c                               |   10 +-
 fs/9p/v9fs.c                                |    4 +-
 fs/9p/v9fs.h                                |   12 +-
 fs/9p/vfs_addr.c                            |   60 +-
 fs/9p/vfs_inode.c                           |   13 +-
 fs/afs/dynroot.c                            |    1 +
 fs/afs/file.c                               |   41 +-
 fs/afs/inode.c                              |   32 +-
 fs/afs/internal.h                           |   23 +-
 fs/afs/super.c                              |    4 +-
 fs/afs/write.c                              |   10 +-
 fs/cachefiles/io.c                          |   10 +-
 fs/ceph/addr.c                              |   45 +-
 fs/ceph/cache.c                             |   28 +-
 fs/ceph/cache.h                             |   15 +-
 fs/ceph/inode.c                             |    6 +-
 fs/ceph/super.h                             |   16 +-
 fs/cifs/cifsglob.h                          |   10 +-
 fs/cifs/fscache.c                           |   19 +-
 fs/cifs/fscache.h                           |    2 +-
 fs/fscache/internal.h                       |   11 -
 fs/netfs/Makefile                           |    8 +-
 fs/netfs/buffered_read.c                    |  429 +++++++
 fs/netfs/internal.h                         |   49 +-
 fs/netfs/io.c                               |  656 ++++++++++
 fs/netfs/main.c                             |   20 +
 fs/netfs/objects.c                          |  161 +++
 fs/netfs/read_helper.c                      | 1205 -------------------
 fs/netfs/stats.c                            |    1 -
 fs/nfs/fscache.c                            |    8 -
 include/linux/fscache.h                     |   14 +
 include/linux/netfs.h                       |  162 ++-
 include/trace/events/cachefiles.h           |    6 +-
 include/trace/events/netfs.h                |  188 ++-
 35 files changed, 1750 insertions(+), 1567 deletions(-)
 create mode 100644 fs/netfs/buffered_read.c
 create mode 100644 fs/netfs/io.c
 create mode 100644 fs/netfs/main.c
 create mode 100644 fs/netfs/objects.c
 delete mode 100644 fs/netfs/read_helper.c




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
