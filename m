Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7194A44B4AC
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Nov 2021 22:27:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkYea-0001U4-MR; Tue, 09 Nov 2021 21:27:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mkYeZ-0001Ty-Sb
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 21:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7KsArju8ppySIcA4To0LdNtm7ws2ZxZFgR4knlX4mWQ=; b=k2TAdafuBlDPCtAycBdU/DRUP1
 1S0oBmWRNpTD9si01Inr1c5gJqIVthXdjLw1hxJXbzPlbfbBDa2MnS4V7fE0HvNQ49e+EI02EIaIQ
 xUNA6fqX2I49obenOEE+xmeBaTURqVzCePc+rnxl2c3WbE/X7NJoD1p8QLbzVQfaLQ0k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7KsArju8ppySIcA4To0LdNtm7ws2ZxZFgR4knlX4mWQ=; b=M
 m0hf0Sl0EeQ1Q2KpLpPwsKFh/nP+xw07MqJpAl0YxRFwxpGekO0jugCbY2UFd6vVWLN6GHomMw/ut
 LUcKVf3ctA0GYVWSwcRUFyLot5W6I5I/b+M9WSR2cJ8ktEr590ZeA7E9yf4ZpIOLsj7AyoJI/w1By
 t+i8R4QOqF2+sUbA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mkYeV-007i2A-D8
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 21:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636493246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7KsArju8ppySIcA4To0LdNtm7ws2ZxZFgR4knlX4mWQ=;
 b=PRFm725LiY+eJReeUnKr+TRSrN+XxWWvA4dn0nftwkDSNyI4v2HwnS4gFe9511bt+VbviL
 /4i0Tv/Xk28VzmDapS1NVIVF22AkG4QDSkQqdJjko8/TQ9o57YH3/mhKnLj44REu/pxZ+o
 IITbYVZaK/Xx/RkH5FglwWoqRrQIQUE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-590--XC-8eGxM_298xtEp9_5EA-1; Tue, 09 Nov 2021 16:27:20 -0500
X-MC-Unique: -XC-8eGxM_298xtEp9_5EA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0266F1808329;
 Tue,  9 Nov 2021 21:27:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.37.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F0D7110016F4;
 Tue,  9 Nov 2021 21:27:14 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 09 Nov 2021 21:27:14 +0000
Message-ID: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
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
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
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
X-Headers-End: 1mkYeV-007i2A-D8
Subject: [V9fs-developer] [PATCH v4 0/5] netfs, 9p, afs, ceph: Support folios,
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
 kafs-testing@auristor.com, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, ceph-devel@vger.kernel.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Here's a set of patches to convert netfs, 9p and afs to use folios and to
provide sufficient conversion for ceph that it can continue to use the
netfs library.  Jeff Layton is working on fully converting ceph.

This has been rebased on to the 9p merge in Linus's tree[5] so that it has
access to both the 9p conversion to fscache and folios.

Changes
=======
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

David

Link: https://lore.kernel.org/r/YST/0e92OdSH0zjg@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/YST8OcVNy02Rivbm@casper.infradead.org/ [2]
Link: https://lore.kernel.org/r/163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/YYKa3bfQZxK5/wDN@casper.infradead.org/ [4]
Link: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f89ce84bc33330607a782e47a8b19406ed109b15 [5]
Link: https://lore.kernel.org/r/2408234.1628687271@warthog.procyon.org.uk/ # v0
Link: https://lore.kernel.org/r/162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>/ # v3
---
David Howells (5):
      folio: Add a function to change the private data attached to a folio
      folio: Add a function to get the host inode for a folio
      folio: Add replacements for page_endio()
      netfs, 9p, afs, ceph: Use folios
      afs: Use folios in directory handling


 fs/9p/vfs_addr.c           |  83 +++++----
 fs/9p/vfs_file.c           |  20 +--
 fs/afs/dir.c               | 229 ++++++++++--------------
 fs/afs/dir_edit.c          | 154 ++++++++--------
 fs/afs/file.c              |  68 ++++----
 fs/afs/internal.h          |  46 ++---
 fs/afs/write.c             | 347 ++++++++++++++++++-------------------
 fs/ceph/addr.c             |  80 +++++----
 fs/netfs/read_helper.c     | 165 +++++++++---------
 include/linux/netfs.h      |  12 +-
 include/linux/pagemap.h    |  23 ++-
 include/trace/events/afs.h |  21 +--
 mm/filemap.c               |  64 ++++---
 mm/page-writeback.c        |   2 +-
 14 files changed, 666 insertions(+), 648 deletions(-)



Tested-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Dominique Martinet <asmadeus@codewreck.org>
Tested-by: kafs-testing@auristor.com



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
