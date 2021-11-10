Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AE144C227
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Nov 2021 14:33:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mknj0-0001IY-S4; Wed, 10 Nov 2021 13:33:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1mkniz-0001IR-U8
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Nov 2021 13:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yekiZWFQnrlqdUNOfWl9q7c6F9RWK2W4Ig/WfTo8ZOs=; b=X/rg5SOVfamqXEhpbC+NZzLOqs
 6uuGlelxKD2djC31sBDiWjnX6FKDbqtDQEhyWCDSaWu2ykE01Xnu2Td4ww/yzU5R2PYvpd/dM1y5d
 yqDWMd2vBW3SzAjFJ48VRx1pErTy1Emt1EoyhL1h0y1ijdp8laKdqfkCeIXj7/gRfdp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yekiZWFQnrlqdUNOfWl9q7c6F9RWK2W4Ig/WfTo8ZOs=; b=LKjbxOta8g3Bso0QarMnHB+X1A
 9qM54TeaOh/1djU3jjAPNhXmVia2fkOPmfLtxJogcG1VksbHzb+0HIfkFKfL8QXNNy2JnRrSaFAlC
 6iPLYGNfIv7aiBp5qY99Uw/GQdXrjFi2ePN9gNznRpUsfXyB6xgxP8NreaIQOaQSvjp4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mkniy-008WDF-PV
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Nov 2021 13:33:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA7C6611AD;
 Wed, 10 Nov 2021 13:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636551184;
 bh=2fOPQfcnnYGsAAsZbIczysSMHxsigaGOJywncfgF58U=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=aT56LUYcfryK8afAqwV7QUlb1VOXsox2IRfA9k3CQD+AbWS5WrGR5btKvGGSJw1ls
 kFhWTJ4+M8oryzYoJ2toZRmUpEUUVvY/UgV9dixyoQyLKeGu8HxPOXYfAyY8pjK0C1
 E6B6e/oPwiOypZoBEsUDC5OkTlSMrm+mkU9bP9KiJ4CWgTtNjS17BjA5xORv9hQvO6
 vA2R1gri9i/NKNOZ7ocjQy59+mN4hsXC9+Akms+CiFVvMgCjmjjX2tvvhVrq/MplG2
 6ZbhmUnzqNdRKoO5KEhCc1jpiUMoqZf5GbU82wKzu98hTjWGLqJ5FgkIKysU9v6qAN
 RqDtNznsE/6YQ==
Message-ID: <a0212b723317677e8601b3f58927eab03ef784de.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, "Matthew Wilcox (Oracle)"
 <willy@infradead.org>
Date: Wed, 10 Nov 2021 08:33:01 -0500
In-Reply-To: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
References: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2021-11-09 at 21:27 +0000, David Howells wrote: >
 Here's a set of patches to convert netfs, 9p and afs to use folios and to
 > provide sufficient conversion for ceph that it can continue to use [...]
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mkniy-008WDF-PV
Subject: Re: [V9fs-developer] [PATCH v4 0/5] netfs, 9p, afs,
 ceph: Support folios, at least partially
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
 kafs-testing@auristor.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 linux-cachefs@redhat.com, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 ceph-devel@vger.kernel.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2021-11-09 at 21:27 +0000, David Howells wrote:
> Here's a set of patches to convert netfs, 9p and afs to use folios and to
> provide sufficient conversion for ceph that it can continue to use the
> netfs library.  Jeff Layton is working on fully converting ceph.
> 
> This has been rebased on to the 9p merge in Linus's tree[5] so that it has
> access to both the 9p conversion to fscache and folios.
> 
> Changes
> =======
> ver #4:
>  - Detached and sent the afs symlink split patch separately.
>  - Handed the 9p netfslibisation patch off to Dominique Martinet.
>  - Added a patch to foliate page_endio().
>  - Fixed a bug in afs_redirty_page() whereby it didn't set the next page
>    index in the loop and returned too early.
>  - Simplified a check in v9fs_vfs_write_folio_locked()[4].
>  - Undid a change to afs_symlink_readpage()[4].
>  - Used offset_in_folio() in afs_write_end()[4].
>  - Rebased on 9p-folio merge upstream[5].
> 
> ver #3:
>  - Rebased on upstream as folios have been pulled.
>  - Imported a patch to convert 9p to netfslib from my
>    fscache-remove-old-api branch[3].
>  - Foliated netfslib.
> 
> ver #2:
>  - Reorder the patches to put both non-folio afs patches to the front.
>  - Use page_offset() rather than manual calculation[1].
>  - Fix folio_inode() to directly access the inode[2].
> 
> David
> 
> Link: https://lore.kernel.org/r/YST/0e92OdSH0zjg@casper.infradead.org/ [1]
> Link: https://lore.kernel.org/r/YST8OcVNy02Rivbm@casper.infradead.org/ [2]
> Link: https://lore.kernel.org/r/163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk/ [3]
> Link: https://lore.kernel.org/r/YYKa3bfQZxK5/wDN@casper.infradead.org/ [4]
> Link: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f89ce84bc33330607a782e47a8b19406ed109b15 [5]
> Link: https://lore.kernel.org/r/2408234.1628687271@warthog.procyon.org.uk/ # v0
> Link: https://lore.kernel.org/r/162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/163005740700.2472992.12365214290752300378.stgit@warthog.procyon.org.uk/ # v2
> Link: https://lore.kernel.org/r/163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>/ # v3
> ---
> David Howells (5):
>       folio: Add a function to change the private data attached to a folio
>       folio: Add a function to get the host inode for a folio
>       folio: Add replacements for page_endio()
>       netfs, 9p, afs, ceph: Use folios
>       afs: Use folios in directory handling
> 
> 
>  fs/9p/vfs_addr.c           |  83 +++++----
>  fs/9p/vfs_file.c           |  20 +--
>  fs/afs/dir.c               | 229 ++++++++++--------------
>  fs/afs/dir_edit.c          | 154 ++++++++--------
>  fs/afs/file.c              |  68 ++++----
>  fs/afs/internal.h          |  46 ++---
>  fs/afs/write.c             | 347 ++++++++++++++++++-------------------
>  fs/ceph/addr.c             |  80 +++++----
>  fs/netfs/read_helper.c     | 165 +++++++++---------
>  include/linux/netfs.h      |  12 +-
>  include/linux/pagemap.h    |  23 ++-
>  include/trace/events/afs.h |  21 +--
>  mm/filemap.c               |  64 ++++---
>  mm/page-writeback.c        |   2 +-
>  14 files changed, 666 insertions(+), 648 deletions(-)
> 
> 
> 
> Tested-by: Jeff Layton <jlayton@kernel.org>
> Tested-by: Dominique Martinet <asmadeus@codewreck.org>
> Tested-by: kafs-testing@auristor.com
> 

I know this already has my Tested-by, but I ran some more tests with
this series yesterday and it did fine:

(Re-)Tested-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
