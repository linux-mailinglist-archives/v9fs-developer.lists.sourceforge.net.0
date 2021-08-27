Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDAD3F9766
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Aug 2021 11:44:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mJYPF-0007Bt-VK; Fri, 27 Aug 2021 09:44:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mJYPE-0007Bn-Kc
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Aug 2021 09:44:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Db4J9qqzVtQ4nd+3HQst+edgAm4oaZrD+OaQmGzLIq8=; b=hSbw7M9apQFS8r/dWUPtdfuprz
 wjOSVoXSgoWgQYHjy24k+rvElo0g2qckNXzsW5a4iDplCm1My9XgF171eAGHvyi1IKe/0V5vSR9Yi
 lBgdsG9Q7SluHmKoEkmJbJNM9DCc8ItY/BbvyISMIb/bk/FWD/Dq+w0mBVAc/Irb57dk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Db4J9qqzVtQ4nd+3HQst+edgAm4oaZrD+OaQmGzLIq8=; b=h
 aVYBgNIpTHbvpoBt/pnqWtoYaKU2Va3WPcMFyvNtNIyp+nsp8/AuIJtkhOwXCcyUcvn/2Ky8GvuFp
 DwW4t0ut6z/3glcAYtxfrEaqSVCJeK7f+naUIQK6afJY0J1y4OkPJgc5mQcnm789xoHMSy5GfP5Zk
 c+xc5K7vB+cdPYaM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJYP7-0008PR-40
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Aug 2021 09:44:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630057439;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Db4J9qqzVtQ4nd+3HQst+edgAm4oaZrD+OaQmGzLIq8=;
 b=duN+2oGVL9Q9rQewV8OfwzxIo1mIywSpVp5AEiVGabq/9Ey0OAHrSQ/RFy91K5GGRCj9JZ
 nojxXQ0noZPn93HLQbjuIv7cVFWww/zhgdehKENhGMBSGSMFpjZb1uUL2up3498v06IbJ7
 JBdn/4Okgt/Xh5FeiNfjmMKccEFHOJs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-9Sg_JrpyPwC_i1p3yT2gAQ-1; Fri, 27 Aug 2021 05:43:57 -0400
X-MC-Unique: 9Sg_JrpyPwC_i1p3yT2gAQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D8191015193;
 Fri, 27 Aug 2021 09:43:31 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 07ED9752A0;
 Fri, 27 Aug 2021 09:43:27 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Fri, 27 Aug 2021 10:43:27 +0100
Message-ID: <163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mJYP7-0008PR-40
Subject: [V9fs-developer] [PATCH v2 0/6] netfs, afs, ceph: Support folios,
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
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Here's a set of patches to convert netfs and afs to use folios and to
provide sufficient conversion for ceph that it can continue to use the
netfs library.  Jeff Layton is working on fully converting ceph.

This based on top of part of Matthew Wilcox's folio changes[1]

Changes:

ver #2:
 - Reorder the patches to put both non-folio afs patches to the front.
 - Use page_offset() rather than manual calculation[2].
 - Fix folio_inode() to directly access the inode[3].

David

Link: https://git.infradead.org/users/willy/pagecache.git/shortlog/refs/heads/for-next [1]
Link: https://lore.kernel.org/r/YST/0e92OdSH0zjg@casper.infradead.org/ [2]
Link: https://lore.kernel.org/r/YST8OcVNy02Rivbm@casper.infradead.org/ [3]
Link: https://lore.kernel.org/r/2408234.1628687271@warthog.procyon.org.uk/ # v0
Link: https://lore.kernel.org/r/162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk/ # v1
---
David Howells (6):
      afs: Fix afs_launder_page() to set correct start file position
      afs: Sort out symlink reading
      folio: Add a function to change the private data attached to a folio
      folio: Add a function to get the host inode for a folio
      netfs, afs, ceph: Use folios
      afs: Use folios in directory handling


 fs/afs/dir.c               | 229 +++++++++++--------------
 fs/afs/dir_edit.c          | 154 ++++++++---------
 fs/afs/file.c              |  82 +++++----
 fs/afs/inode.c             |   6 +-
 fs/afs/internal.h          |  49 +++---
 fs/afs/write.c             | 332 ++++++++++++++++++-------------------
 fs/ceph/addr.c             |  80 ++++-----
 fs/netfs/read_helper.c     | 165 +++++++++---------
 include/linux/netfs.h      |  12 +-
 include/linux/pagemap.h    |  33 ++++
 include/trace/events/afs.h |  21 +--
 mm/page-writeback.c        |   2 +-
 12 files changed, 584 insertions(+), 581 deletions(-)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
