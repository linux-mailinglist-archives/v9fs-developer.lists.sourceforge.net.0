Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDCD44DA5A
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Nov 2021 17:26:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mlCu1-0003uX-FT; Thu, 11 Nov 2021 16:26:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mlCtz-0003uQ-H3
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Nov 2021 16:26:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8bm581BkhHLAgHXcU5RDiPE2gfVwKDukiIT1uir51Iw=; b=Aoleoq1a0TTRjVeYt1rMU6dhAd
 PDBjQhgho3z/pRRkxRIuRcanVjeMnRiXNA21q+qQFUIPtenJ9uJOy06c+JdqIPduSs6P511hX6gCv
 77/+ZR3gXrslsEglQdhTVkXFn+3NUPKU6QRVqjBV5s+sOn4VhrnoFzi4y6dslN1dX8+s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8bm581BkhHLAgHXcU5RDiPE2gfVwKDukiIT1uir51Iw=; b=gOk0+++TQL07CjOAvfebmuArXk
 Ko5XL3CXp1gQ9u56PdipROvJzOSahmtZdKRRjZuBKG0Mnd0bxtHrzxjgBdNxwK0VFRS0HkBn+5afO
 ZWfO1YkmhaCMibuPUJXD2pAwpHLpK4etcCoo2dIk4sf6UUoRek4tfSU4Mc2RPfldkZQM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlCtz-009pIE-F8
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Nov 2021 16:26:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636647969;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=8bm581BkhHLAgHXcU5RDiPE2gfVwKDukiIT1uir51Iw=;
 b=EXP6MR8IKcT7HrMEmDq1FcNrZOWgnM8xAQVMH79lPquFjZuJVcOUa/LIh4M9hCEzd0Cy/8
 nh/CmSHPqq53oGwJEXPQhBBr8Mn1iOMOWKzoyhOqlNDmHFi9PGSGiA9oqAKrCaXAnNjRdE
 Ec8HnM/ol7I26V0L+HE9Y8sD3HauPd4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-sDZ7WAxrN6qb7l0ozDVudQ-1; Thu, 11 Nov 2021 11:26:04 -0500
X-MC-Unique: sDZ7WAxrN6qb7l0ozDVudQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34743100C660;
 Thu, 11 Nov 2021 16:26:00 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.37.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3BD4A5C1D5;
 Thu, 11 Nov 2021 16:25:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <1134870.1636647952.1@warthog.procyon.org.uk>
Date: Thu, 11 Nov 2021 16:25:52 +0000
Message-ID: <1134871.1636647952@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, [Apologies for the late request, but I needed to
 wait for folios and 9p to be pulled into your tree so that I could get rid
 of the temporary merge I was using and then I had to wait for my branch to
 b [...] Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mlCtz-009pIE-F8
Subject: [V9fs-developer] [GIT PULL] netfs, 9p, afs, ceph: Use folios
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
 Jeffrey E Altman <jaltman@auristor.com>, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

[Apologies for the late request, but I needed to wait for folios and 9p to
be pulled into your tree so that I could get rid of the temporary merge I
was using and then I had to wait for my branch to be retested before I
could send this your way - and then Willy changed his mind about how to
handle foliation of page_endio().]

Anyway, could you consider pulling this please?  It converts netfslib, 9p
and afs to use folios.  It also partially converts ceph so that it uses
folios on the boundaries with netfslib.

To help with this, a couple of folio helper functions are added in the
first two patches.  If you don't want to take the netfs/9p/afs/ceph bits,
could you at least consider taking the folio helpers?  Then they would be
available to others.

These patches don't touch fscache and cachefiles as I intend to remove all
the code that deals with pages directly from there.  Only nfs and cifs are
using the old fscache I/O API now.  The new API uses iov_iter instead.

Thanks to Jeff Layton, Dominique Martinet and AuriStor for testing and
retesting the patches.

Thanks,
David

Changes
=======
ver #5:
 - Got rid of the folio_endio bits again as Willy changed his mind and
   would rather I inlined the code directly instead.

ver #4:
 - Detached and sent the afs symlink split patch separately.
 - Handed the 9p netfslibisation patch off to Dominique Martinet.
 - Added a patch to foliate page_endio().
 - Fixed a bug in afs_redirty_page() whereby it didn't set the next page
   index in the loop and returned too early.
 - Simplified a check in v9fs_vfs_write_folio_locked()[4].
 - Undid a change to afs_symlink_readpage()[4].
 - Used offset_in_folio() in afs_write_end()[4].
 - Rebased on 9p-folio merge upstream[5].

ver #3:
 - Rebased on upstream as folios have been pulled.
 - Imported a patch to convert 9p to netfslib from my
   fscache-remove-old-api branch[3].
 - Foliated netfslib.

ver #2:
 - Reorder the patches to put both non-folio afs patches to the front.
 - Use page_offset() rather than manual calculation[1].
 - Fix folio_inode() to directly access the inode[2].

Link: https://lore.kernel.org/r/YST/0e92OdSH0zjg@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/YST8OcVNy02Rivbm@casper.infradead.org/ [2]
Link: https://lore.kernel.org/r/163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/YYKa3bfQZxK5/wDN@casper.infradead.org/ [4]
Link: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f89ce84bc33330607a782e47a8b19406ed109b15 [5]
Link: https://lore.kernel.org/r/2408234.1628687271@warthog.procyon.org.uk/ # v0
Link: https://lore.kernel.org/r/162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>/ # v3
Link: https://lore.kernel.org/r/163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/163657847613.834781.7923681076643317435.stgit@warthog.procyon.org.uk/ # v5

---
The following changes since commit f89ce84bc33330607a782e47a8b19406ed109b15:

  Merge tag '9p-for-5.16-rc1' of git://github.com/martinetd/linux (2021-11-09 10:30:13 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/netfs-folio-20211111

for you to fetch changes up to 255ed63638da190e2485d32c0f696cd04d34fbc0:

  afs: Use folios in directory handling (2021-11-10 21:17:09 +0000)

----------------------------------------------------------------
netfs, 9p, afs and ceph (partial) foliation

----------------------------------------------------------------
David Howells (4):
      folio: Add a function to change the private data attached to a folio
      folio: Add a function to get the host inode for a folio
      netfs, 9p, afs, ceph: Use folios
      afs: Use folios in directory handling

 fs/9p/vfs_addr.c           |  83 ++++++-----
 fs/9p/vfs_file.c           |  20 +--
 fs/afs/dir.c               | 229 +++++++++++++-----------------
 fs/afs/dir_edit.c          | 154 ++++++++++----------
 fs/afs/file.c              |  70 +++++----
 fs/afs/internal.h          |  46 +++---
 fs/afs/write.c             | 347 ++++++++++++++++++++++-----------------------
 fs/ceph/addr.c             |  80 ++++++-----
 fs/netfs/read_helper.c     | 165 ++++++++++-----------
 include/linux/netfs.h      |  12 +-
 include/linux/pagemap.h    |  33 +++++
 include/trace/events/afs.h |  21 +--
 mm/page-writeback.c        |   2 +-
 13 files changed, 636 insertions(+), 626 deletions(-)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
