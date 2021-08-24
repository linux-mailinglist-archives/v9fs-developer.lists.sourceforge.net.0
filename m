Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F323F5EF1
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 15:25:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIWQF-0005dt-AS; Tue, 24 Aug 2021 13:24:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mIWQE-0005dm-3l
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 13:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UJrfd86tR0Yk7ZIVAdwqtRJBEFVA/ho7C/JF2A2SL3I=; b=chzXAWJDhpMCu5OFxFUEMBgMlK
 tBbvj++cD0TNkC0SZBZmdPYpEYVghwtmIQKQtrmNtYTYJ9qSUP+e1sjxiNL40oK/oAHIucXMvwimt
 IlYNp2zy5FlE3NnrzHMsUhRrCQk3PQAp3jafj/HnJ3LyGkyFxcdZyDW5KDkgs7zbF+yw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UJrfd86tR0Yk7ZIVAdwqtRJBEFVA/ho7C/JF2A2SL3I=; b=m
 jmCrP8CgkZv51kO8cD/6/pxK4HFfHSlrMYf/eet0dwxlbBnnW3fUaorrNujDzoC9WHvTiPKGfbyax
 /mkTHDUN0WCXpkQ1Gvlj43eNFQLdp6Akl30f5DDQkb2GQ/lm4/yGz4yjfqVZEUGJCYlBPFxL9pfs4
 buCt2MruNZwsE4AU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIWQA-0001R1-6I
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 13:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629811487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UJrfd86tR0Yk7ZIVAdwqtRJBEFVA/ho7C/JF2A2SL3I=;
 b=IMddWUQJv+GHo0K+1WGugOwVjxGHbpn6AvZ4hPEAXJcxk47G/BMyzZ1RXGYRouuI840K6m
 dejIPLkEKu7oZvLA4z28SAMDLC1i9uL+1pI5ndLaOwpQFaSmTzOYPGhkOvi8dN93AXa/Lk
 94+MUdO+O5TaZVa3CqN4q0N8LmQWF/A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-6xbBUESKNQCq4Y_eoBj7LA-1; Tue, 24 Aug 2021 09:24:44 -0400
X-MC-Unique: 6xbBUESKNQCq4Y_eoBj7LA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A0DD801A92;
 Tue, 24 Aug 2021 13:24:42 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.86])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C0C583AA2;
 Tue, 24 Aug 2021 13:24:35 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 24 Aug 2021 14:24:34 +0100
Message-ID: <162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mIWQA-0001R1-6I
Subject: [V9fs-developer] [PATCH 0/6] netfs, afs, ceph: Support folios,
 at least partially
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
 Jeffrey Altman <jaltman@auristor.com>, Jeff Layton <jlayton@redhat.com>,
 linux-mm@kvack.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, Marc Dionne <marc.dionne@auristor.com>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Here's a set of patches to convert netfs and afs to use folios and to
provide sufficient conversion for ceph that it can continue to use the
netfs library.  Jeff Layton is working on fully converting ceph.

This based on top of part of Matthew Wilcox's folio changes[1]

David

Link: https://git.infradead.org/users/willy/pagecache.git/shortlog/refs/heads/for-next [1]
Link: https://lore.kernel.org/r/2408234.1628687271@warthog.procyon.org.uk/ # v0
---
David Howells (6):
      afs: Fix afs_launder_page() to set correct start file position
      folio: Add a function to change the private data attached to a folio
      folio: Add a function to get the host inode for a folio
      afs: Sort out symlink reading
      netfs, afs, ceph: Use folios
      afs: Use folios in directory handling


 fs/afs/dir.c               | 229 +++++++++++--------------
 fs/afs/dir_edit.c          | 154 ++++++++---------
 fs/afs/file.c              |  82 +++++----
 fs/afs/inode.c             |   6 +-
 fs/afs/internal.h          |  49 +++---
 fs/afs/write.c             | 333 ++++++++++++++++++-------------------
 fs/ceph/addr.c             |  80 ++++-----
 fs/netfs/read_helper.c     | 165 +++++++++---------
 include/linux/netfs.h      |  12 +-
 include/linux/pagemap.h    |  33 ++++
 include/trace/events/afs.h |  21 +--
 mm/page-writeback.c        |   2 +-
 12 files changed, 584 insertions(+), 582 deletions(-)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
