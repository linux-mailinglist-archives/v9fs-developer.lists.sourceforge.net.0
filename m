Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FCC44C438
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Nov 2021 16:19:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkpNW-0001YH-49; Wed, 10 Nov 2021 15:19:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <marc.c.dionne@gmail.com>) id 1mkpNU-0001Xw-3D
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Nov 2021 15:19:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mO3hph1YkCApcCuLSKx4NqEPJzPi9cWVsNMhXuQPk3w=; b=PEVQ1sCI9s8zFlZbXIC+xhTQ4w
 HScrRuGi4mXtmPcn3Kpci6iYmQVnINDnkoKrJ4+woWy1BpBQXhPYWueq8r+YVJl2W+lE40jUukLc7
 SDAwNe8EbEAcAVjfH+C/QQ+s4Zm7vh4D1VAWVzXxVhrvd93jOmU1sZ6H7bVUj/vOYdaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mO3hph1YkCApcCuLSKx4NqEPJzPi9cWVsNMhXuQPk3w=; b=btrlhCBjbabOvRDa9BLxCY/3XO
 2A1fctmTPkXmYra4QyJkhevhoRVtLS6rmqZPt6pIW1ikCA6KFHq6MDfC4BXOWKaCb4+C74oYaNJ4K
 s1H3ZE6n1wGh9pEVSMXEMlxva0g3mmqwVwk4K80hnznqVLCJ2HfkpHyh1qPWdUEznOdM=;
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mkpNT-0000ml-B1
 for v9fs-developer@lists.sourceforge.net; Wed, 10 Nov 2021 15:19:09 +0000
Received: by mail-ed1-f51.google.com with SMTP id g14so12000905edz.2
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 10 Nov 2021 07:19:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mO3hph1YkCApcCuLSKx4NqEPJzPi9cWVsNMhXuQPk3w=;
 b=2nYGR8C1jnRKyghsVssITbqA4EkELI3H9YbAuDMlEOeuahDJuOt5xLPhRpz6j9KNJq
 N+qVE6xAjokaQj8wEGwkKjKrDSvmBoYQDGrHL8fm0OJFMYmmq6sDU7ai3bzADdngyt2u
 QPvrk515NZmwTBLBqZwZBFPhotSs33AdNfD+TsR0b8jv5rfixyMekdcK4Ero46at87LL
 wr+eorueiDKGUYTGa5DPV5EuzHYJhZem6Q3DaVYziqNNWfKum4krgVjXcnE8i1oU7mjE
 Dz5uwBxLoE12CB9vAGUnIvj/ESbudClP/2tuLjpHRkvVqbRObBmfSZPXH+yLVA6pd1FB
 cu5w==
X-Gm-Message-State: AOAM530qwyeLR7t2pHbzjY6q/L5CB/mWpTMe7vSx3yRwaRhEOBF/ay0p
 lxWwYyN16mKHAy6zOhesLhaljn46YhYe0X82
X-Google-Smtp-Source: ABdhPJzAuPGOvECilDArXE98UApUF3kI6GjIFLCNd0mfk03LW/0s5PQiXg6F0KT/c4PoJrCrTf75/Q==
X-Received: by 2002:a17:907:d22:: with SMTP id
 gn34mr378071ejc.195.1636557525514; 
 Wed, 10 Nov 2021 07:18:45 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id dt4sm20489ejb.27.2021.11.10.07.18.44
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Nov 2021 07:18:44 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id n29so4599218wra.11
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 10 Nov 2021 07:18:44 -0800 (PST)
X-Received: by 2002:a05:6000:4b:: with SMTP id k11mr627335wrx.86.1636557523979; 
 Wed, 10 Nov 2021 07:18:43 -0800 (PST)
MIME-Version: 1.0
References: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
In-Reply-To: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
From: Marc Dionne <marc.dionne@auristor.com>
Date: Wed, 10 Nov 2021 11:18:32 -0400
X-Gmail-Original-Message-ID: <CAB9dFdvOM=QPGxNj1GpZkedd_kq9HWsc__MpUJevOGfSsNfopQ@mail.gmail.com>
Message-ID: <CAB9dFdvOM=QPGxNj1GpZkedd_kq9HWsc__MpUJevOGfSsNfopQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 9,
 2021 at 5:28 PM David Howells <dhowells@redhat.com>
 wrote: > > > Here's a set of patches to convert netfs, 9p and afs to use
 folios and to > provide sufficient conversion for ceph that [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.51 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.c.dionne[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mkpNT-0000ml-B1
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
 kafs-testing@auristor.com, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, linux-mm@kvack.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, ceph-devel@vger.kernel.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Nov 9, 2021 at 5:28 PM David Howells <dhowells@redhat.com> wrote:
>
>
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

The updated series passed our automated test suite, which is mostly
targeted afs testing, but with a framework that also relies on 9p.

So you can reapply:
Tested-by: kafs-testing@auristor.com

Marc


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
