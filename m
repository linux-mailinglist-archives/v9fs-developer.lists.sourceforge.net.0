Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E56699855
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Feb 2023 16:07:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pSfr1-00039H-NA;
	Thu, 16 Feb 2023 15:07:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1pSfr0-000397-4t
 for v9fs-developer@lists.sourceforge.net;
 Thu, 16 Feb 2023 15:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Zm5Dn7i1p/5BiDzjYElohEtJkvunM7mT3Q22YOMQp4=; b=KoGhytPo0hmqHVkm2mtqzcjE68
 lJ8RQ3d35EcMaYrTiTYMnFne/wG8+fcRkBZhSIrYJtDzq+gvHu2ZUDN3y/6++WYwIPMIfCKCRpsME
 s2H0aWFfPHN25B4o4CpjOexJKPp8jwFulry8H02wgdpMeQTsjmAYocSK+pysoTpb6ROg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4Zm5Dn7i1p/5BiDzjYElohEtJkvunM7mT3Q22YOMQp4=; b=I
 E4VZuwNCT4VH/CYwUdWE2KBWqYH5QLdsp/AEaA7/EVhbUtlw4/71UKqpGqUgs8WOXvCweOgVVtKKX
 B+6DPf/vuI4yJxq2eGN/WLhyWAsydp+m31y+ASsVbfQp5i1ddkG94VfiwetFaaI3eOgpsORGe8lT9
 AO/PBg4dYLSwO6F0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pSfqu-0002sA-K7 for v9fs-developer@lists.sourceforge.net;
 Thu, 16 Feb 2023 15:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676560031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=4Zm5Dn7i1p/5BiDzjYElohEtJkvunM7mT3Q22YOMQp4=;
 b=g8cnHZvofZ7i/w9wp+ISRIzMVPyhB7KpY+X4KED2BKu1g65nAAZs+z2pmgUwMdPP+EiRb0
 RGgCanFsMHq8Em2Nw0GBJfqAEENFcrJBqujhFXypVDL3N90sHh3I1WU41j1HpRPe5pB1/t
 TM4lrA6MK5DXps66GDWv35ivlgRGEwg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-iIVyHqFbOUyMy5heOHW_ZQ-1; Thu, 16 Feb 2023 10:07:09 -0500
X-MC-Unique: iIVyHqFbOUyMy5heOHW_ZQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CAE93C14862;
 Thu, 16 Feb 2023 15:07:07 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4E53A4010E85;
 Thu, 16 Feb 2023 15:07:05 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Thu, 16 Feb 2023 15:06:59 +0000
Message-Id: <20230216150701.3654894-1-dhowells@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Willy, Is this okay by you? You said you wanted to look
 at the remaining uses of page_has_private(), of which there are then three
 after these patches, not counting folio_has_private(): arch/s390/kernel/uv.c:
 if (page_has_private(page)) mm/khugepaged.c: 1 + page_mapcount(page) +
 page_has_private(page))
 { mm/migrate_device.c: extra += 1 + page_has_private(page); 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pSfqu-0002sA-K7
Subject: [V9fs-developer] [PATCH v6 0/2] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-nfs@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-ext4@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Willy,

Is this okay by you?  You said you wanted to look at the remaining uses of
page_has_private(), of which there are then three after these patches, not
counting folio_has_private():

	arch/s390/kernel/uv.c:          if (page_has_private(page))
	mm/khugepaged.c:                    1 + page_mapcount(page) + page_has_private(page)) {
	mm/migrate_device.c:            extra += 1 + page_has_private(page);

--
I've split the folio_has_private()/filemap_release_folio() call pair
merging into its own patch, separate from the actual bugfix and pulled out
the folio_needs_release() function into mm/internal.h and made
filemap_release_folio() use it.  I've also got rid of the bit clearances
from the network filesystem evict_inode functions as they doesn't seem to
be necessary.

Note that the last vestiges of try_to_release_page() got swept away, so I
rebased and dealt with that.  One comment remained, which is removed by the
first patch.

David

Changes:
========
ver #6)
 - Drop the third patch which removes a duplicate check in vmscan().

ver #5)
 - Rebased on linus/master.  try_to_release_page() has now been entirely
   replaced by filemap_release_folio(), barring one comment.
 - Cleaned up some pairs in ext4.

ver #4)
 - Split has_private/release call pairs into own patch.
 - Moved folio_needs_release() to mm/internal.h and removed open-coded
   version from filemap_release_folio().
 - Don't need to clear AS_RELEASE_ALWAYS in ->evict_inode().
 - Added experimental patch to reduce shrink_folio_list().

ver #3)
 - Fixed mapping_clear_release_always() to use clear_bit() not set_bit().
 - Moved a '&&' to the correct line.

ver #2)
 - Rewrote entirely according to Willy's suggestion[1].

Link: https://lore.kernel.org/r/Yk9V/03wgdYi65Lb@casper.infradead.org/ [1]
Link: https://lore.kernel.org/r/164928630577.457102.8519251179327601178.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/166869495238.3720468.4878151409085146764.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/1459152.1669208550@warthog.procyon.org.uk/ # v3 also
Link: https://lore.kernel.org/r/166924370539.1772793.13730698360771821317.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk/ # v5
---
%(shortlog)s
%(diffstat)s

David Howells (2):
  mm: Merge folio_has_private()/filemap_release_folio() call pairs
  mm, netfs, fscache: Stop read optimisation when folio removed from
    pagecache

 fs/9p/cache.c           |  2 ++
 fs/afs/internal.h       |  2 ++
 fs/cachefiles/namei.c   |  2 ++
 fs/ceph/cache.c         |  2 ++
 fs/cifs/fscache.c       |  2 ++
 fs/ext4/move_extent.c   | 12 ++++--------
 fs/splice.c             |  3 +--
 include/linux/pagemap.h | 16 ++++++++++++++++
 mm/filemap.c            |  2 ++
 mm/huge_memory.c        |  3 +--
 mm/internal.h           | 11 +++++++++++
 mm/khugepaged.c         |  3 +--
 mm/memory-failure.c     |  8 +++-----
 mm/migrate.c            |  3 +--
 mm/truncate.c           |  6 ++----
 mm/vmscan.c             |  8 ++++----
 16 files changed, 56 insertions(+), 29 deletions(-)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
