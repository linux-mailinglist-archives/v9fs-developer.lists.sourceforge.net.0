Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4AA44295D
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 09:29:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhpAv-0005T5-Ic; Tue, 02 Nov 2021 08:29:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mhpAu-0005Sz-Ey
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 08:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AGQfQE+y23DXMjkdSWV0LFVA0+D/0EvWkXC0q0Pk3Q4=; b=dJmj6L2fsyZ0/39zjulL2A96Py
 UrZnl6+IDpdxOYt9Ayp6slErTJOtIRMCOV6GjlEcoagYUsoiZd/mkjzJEdibro9u6INRvAJcO4Xvi
 oK3Dxb2dxBsPlNg3vbSV5RV0l5xrmf6HnO+PcuQ1e1uYmHV1eXPySToh2a5KP3xrvz5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AGQfQE+y23DXMjkdSWV0LFVA0+D/0EvWkXC0q0Pk3Q4=; b=l
 IKBCT+TlU9itVXraJ/lAwLJJO0ExrAFfEpwjJl7AfkjnRSgEcV+m8lhbSrO/uQAPD7afMj4cLOJbo
 tv3PrLbMd8VEwPP0oqZ45IDZ22RzlAT65E+fzsQ3oiw2EiNVj/z4+GEihBe1qphHVY2YIvfpwtWN4
 TS9NY7jhAjUKUKfg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhpAq-0002u8-VW
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 08:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635841774;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=AGQfQE+y23DXMjkdSWV0LFVA0+D/0EvWkXC0q0Pk3Q4=;
 b=VUAiNzD1dtzK4yFl65QneVuDPiagXuztT+8Gcw9haxmOa+8MYhLoRNWzhC8AzE9jaAXxFG
 fqic6uX86kJLxSgO0au+6dO4yrSHhhyYjtS6CrOGt7OrsE3D4B2vDEv0E1T+gGZO8PdlRO
 ftdWsU/xtaUb8+waxgz01vOtE5b/VJE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-Yh_WrSB2Pha7tYZorf2u2A-1; Tue, 02 Nov 2021 04:29:31 -0400
X-MC-Unique: Yh_WrSB2Pha7tYZorf2u2A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D23CE8066EF;
 Tue,  2 Nov 2021 08:29:28 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 29A371017CE3;
 Tue,  2 Nov 2021 08:29:10 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 02 Nov 2021 08:29:09 +0000
Message-ID: <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Here's a set of patches to convert netfs, 9p and afs to use
 folios and to provide sufficient conversion for ceph that it can continue
 to use the netfs library. Jeff Layton is working on fully converti [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mhpAq-0002u8-VW
Subject: [V9fs-developer] [PATCH v3 0/6] netfs, 9p, afs, ceph: Support folios,
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
 Jeff Layton <jlayton@redhat.com>, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Here's a set of patches to convert netfs, 9p and afs to use folios and to
provide sufficient conversion for ceph that it can continue to use the
netfs library.  Jeff Layton is working on fully converting ceph.

This also contains a patch to split afs symlink readpage from afs file
readpage to aid with foliation and a patch to convert 9p to netfslib to
reduce the amount of foliation needed there.

Changes
=======
ver #3:
 - Rebased on upstream as folios have been pulled.
 - Imported a patch to convert 9p to netfslib from my
   fscache-remove-old-api branch[3].
 - Foliated netfslib.

ver #2:
 - Reorder the patches to put both non-folio afs patches to the front.
 - Use page_offset() rather than manual calculation[1].
 - Fix folio_inode() to directly access the inode[2].

David

Link: https://lore.kernel.org/r/YST/0e92OdSH0zjg@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/YST8OcVNy02Rivbm@casper.infradead.org/ [2]
Link: https://lore.kernel.org/r/163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/2408234.1628687271@warthog.procyon.org.uk/ # v0
Link: https://lore.kernel.org/r/162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk/ # v2
---
David Howells (6):
      afs: Sort out symlink reading
      9p: Convert to using the netfs helper lib to do reads and caching
      folio: Add a function to change the private data attached to a folio
      folio: Add a function to get the host inode for a folio
      netfs, 9p, afs, ceph: Use folios
      afs: Use folios in directory handling


 fs/9p/Kconfig              |   1 +
 fs/9p/cache.c              | 137 ---------------
 fs/9p/cache.h              |  97 +----------
 fs/9p/v9fs.h               |   9 +
 fs/9p/vfs_addr.c           | 253 +++++++++++++--------------
 fs/9p/vfs_file.c           |  29 ++--
 fs/afs/dir.c               | 229 ++++++++++--------------
 fs/afs/dir_edit.c          | 154 +++++++++--------
 fs/afs/file.c              |  70 ++++----
 fs/afs/internal.h          |  46 ++---
 fs/afs/write.c             | 346 ++++++++++++++++++-------------------
 fs/ceph/addr.c             |  80 +++++----
 fs/netfs/read_helper.c     | 165 +++++++++---------
 include/linux/netfs.h      |  12 +-
 include/linux/pagemap.h    |  33 ++++
 include/trace/events/afs.h |  21 +--
 mm/page-writeback.c        |   2 +-
 17 files changed, 738 insertions(+), 946 deletions(-)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
