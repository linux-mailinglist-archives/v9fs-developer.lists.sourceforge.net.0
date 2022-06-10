Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FF8546DC2
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jun 2022 21:57:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzkl0-0002CP-KX; Fri, 10 Jun 2022 19:57:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nzkkw-0002CI-UU
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jun 2022 19:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:From:Subject:Sender:Reply-To:To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=irp9I7bg5aP2EcRerJx9k5cqapFEVHVDaAOauS4ZbRQ=; b=KENOINJKPcjbBZXPFqlHL/NqFj
 tWU94hNlJfXlfzPh0c8iUdEmFLNu2F5nK+nNP6UojKKPrOjAZwfzkeTnV2TboEFje6z3kx1ZYBuex
 nLhpOu8JkpD/v0IH/d84wd7N6sUaMh9xm3/yKKfbXHapsnbTdzeuHdZXFDLql7xiGWvQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:
 From:Subject:Sender:Reply-To:To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=irp9I7bg5aP2EcRerJx9k5cqapFEVHVDaAOauS4ZbRQ=; b=F
 LyPfPnq5SpiQx4ASQUBME93+90m3lXWQl1dCgkYvCNIsFmWP90OdlKNKtHokRgRbxGVaizN5rC4bO
 wlvJ47eo/7h/4DGaptUguPvwKMj8rN6qCF/Af0I4RuQ5qBHzWhkYdQbq+jGWk2fq1RwU/+cwQ/tBV
 lKaiqeJxQEUCARlQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzkko-00E5Ju-Tk
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jun 2022 19:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654891015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=irp9I7bg5aP2EcRerJx9k5cqapFEVHVDaAOauS4ZbRQ=;
 b=W13vQjgo8f9GO64Keid/uOeRE1Bphu+FhJVjVCf1iecZaAPQhaENDgGZVhbm5aiM6VtCIX
 pwv6uOmvvjTkXeQIXNWaTuGC/2XLmrUzkBeLpPTKy4UtWTxJsULM9amkw8FtL3ccznwzAg
 ZSoFxnDTy4Wjskag3Ylhqbj7z0B8R3c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-121----5JlC7Nga4prmah_EWXw-1; Fri, 10 Jun 2022 15:56:49 -0400
X-MC-Unique: ---5JlC7Nga4prmah_EWXw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B090801756;
 Fri, 10 Jun 2022 19:56:48 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B1B6F40CF8EF;
 Fri, 10 Jun 2022 19:56:46 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
Date: Fri, 10 Jun 2022 20:56:45 +0100
Message-ID: <165489100590.703883.11054313979289027590.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Here are some cleanups, one for afs and a couple
 for netfs: (1) The afs patch cleans up a checker complaint. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nzkko-00E5Ju-Tk
Subject: [V9fs-developer] [RFC][PATCH 0/3] netfs, afs: Cleanups
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Hi Linus,

Here are some cleanups, one for afs and a couple for netfs:

 (1) The afs patch cleans up a checker complaint.

 (2) The first netfs patch is your netfs_inode changes plus the requisite
     documentation changes.

 (3) The second netfs patch replaces the ->cleanup op with a ->free_request
     op.  This is possible as the I/O request is now always available at
     the cleanup point as the stuff to be cleaned up is no longer passed
     into the API functions, but rather obtained by ->init_request.

I've run the patches through xfstests with -g quick on afs.

The patches are on a branch here:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-fixes

David

---
David Howells (2):
      afs: Fix some checker issues
      netfs: Rename the netfs_io_request cleanup op and give it an op pointer

Linus Torvalds (1):
      netfs: Further cleanups after struct netfs_inode wrapper introduced


 Documentation/filesystems/netfs_library.rst | 33 +++++++++++----------
 fs/9p/v9fs.h                                |  2 +-
 fs/9p/vfs_addr.c                            | 13 ++++----
 fs/9p/vfs_inode.c                           |  3 +-
 fs/afs/dynroot.c                            |  2 +-
 fs/afs/file.c                               |  6 ++--
 fs/afs/inode.c                              |  2 +-
 fs/afs/internal.h                           |  2 +-
 fs/afs/volume.c                             |  3 +-
 fs/afs/write.c                              |  2 +-
 fs/ceph/addr.c                              | 12 ++++----
 fs/ceph/cache.h                             |  2 +-
 fs/ceph/inode.c                             |  2 +-
 fs/cifs/fscache.h                           |  2 +-
 fs/netfs/buffered_read.c                    |  5 ++--
 fs/netfs/objects.c                          |  6 ++--
 include/linux/netfs.h                       | 25 +++++++---------
 17 files changed, 60 insertions(+), 62 deletions(-)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
