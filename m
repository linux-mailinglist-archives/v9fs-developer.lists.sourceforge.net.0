Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5DD69967B
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Feb 2023 14:59:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pSene-0006wP-8g;
	Thu, 16 Feb 2023 13:59:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dwysocha@redhat.com>) id 1pSenc-0006w7-Am
 for v9fs-developer@lists.sourceforge.net;
 Thu, 16 Feb 2023 13:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xEH9h33TQSqPPiPDsBdeDp7ByTBzbtZLpeGkYEW8pJk=; b=T9lWgONqcJEu3qxzVywDp0V067
 atf0301T4nwR63IeZ9B2F/VhkpSZTD3fZJpbUICt70IgAGtRySWJICF1Xqef6XU8B353wlQCKzqzD
 oiA6xx6C3E1tJYQTAB1zaZMK1DMl+rcVgXHHkTWff6kM00Qis2Ktql9Pp5Z5QFy0/mMQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xEH9h33TQSqPPiPDsBdeDp7ByTBzbtZLpeGkYEW8pJk=; b=L/AvowFLbn/7OL2Cs9Ez3qYwkn
 B+XU2BFY+G1ngBVmBlrZGLv71xe+pSvWgCmUTpjPRcz+xAdsTrSbii/H5OdgcXDArwrx4ukIVtOCn
 4wTlu2KM+Z7PISzUnpJtfUvYaGZWeidCYlfkBJdmeqnTX/zvGJycE0x2j1WUb0bWMsXs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pSenW-0000Nc-OP for v9fs-developer@lists.sourceforge.net;
 Thu, 16 Feb 2023 13:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676555977;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xEH9h33TQSqPPiPDsBdeDp7ByTBzbtZLpeGkYEW8pJk=;
 b=JQkjONjSaqNj1kjJyRFESjy3rK21lRvwmzWV1ocY4OBKaNOASABKVWVbCJ4DlOeFO35zoY
 V9xmWtyjd2d6bQMpKRbMIt2m+08pBQpYbWaxGOvhTLAXgBBQdxIN0sg6tLf2CA84ThLIpc
 Y2YWdyHJma7UQL+BTFmYuqhU7og939s=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-515-5oZl9oL9N361utulipW1XA-1; Thu, 16 Feb 2023 08:59:36 -0500
X-MC-Unique: 5oZl9oL9N361utulipW1XA-1
Received: by mail-pg1-f198.google.com with SMTP id
 c9-20020a63da09000000b004fb1a5a46e9so867764pgh.20
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 16 Feb 2023 05:59:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xEH9h33TQSqPPiPDsBdeDp7ByTBzbtZLpeGkYEW8pJk=;
 b=BMbxD9Z3waiHnA8ndviGNOckVvv+mgly2x+V+YXFDbr65/MDRX2jBs+mhYEiTJXUPv
 mlnxV0Brzh8fELd4/BSd2XQaT1yQdwzQgnmt5Hq0BUK6PAwCYmxgvNurldxvFoBShfDX
 WyhzTLMWOwxNie24j2T2Uws3IDkQbn7CJxZ0IEh9YyoEOsDSGcepLs3Z3PTHhWV87OkJ
 ZuBptv7WHayaRMe/MZjgh/au7krd1g/DvcOvO4prQwSX0YG72Khg91/IgxkhniNCUSAJ
 eJk1tvi/3JFSEhFA1n9Fnql03qVrSILvB6I7mjWqT0IwnkIkvHtkOcVRmnPaxVUxGrXI
 yd0w==
X-Gm-Message-State: AO0yUKVrli0Ap8DXnk+bL5vdEUhe8WTZ+aniVV6rRAdTlJcSGB8E93u4
 Y4kd7LCcCtnUVM4jznYCDhrihd9aeY8ebAo7aKUDcyukRoNOkI7J3Mx2joIrXqHlzEbUJycnqUd
 dwX90rGh08rpbuG542Ak24vi1x7gP5TEpWdMA+X6pjdn1DMUA2ZXaLLpNslo=
X-Received: by 2002:a63:375a:0:b0:4cd:fd18:8ccb with SMTP id
 g26-20020a63375a000000b004cdfd188ccbmr792420pgn.43.1676555974842; 
 Thu, 16 Feb 2023 05:59:34 -0800 (PST)
X-Google-Smtp-Source: AK7set+fnE4zZrwJsp2nenn4dAhNJXa5kjnLl2S0zfctKiolwaM2jNY3wF/FKP7SRJni882H8wLcwDW2NvsCxga0P3o=
X-Received: by 2002:a63:375a:0:b0:4cd:fd18:8ccb with SMTP id
 g26-20020a63375a000000b004cdfd188ccbmr792412pgn.43.1676555974531; Thu, 16 Feb
 2023 05:59:34 -0800 (PST)
MIME-Version: 1.0
References: <167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk>
 <167172133121.2334525.2608800018126833569.stgit@warthog.procyon.org.uk>
In-Reply-To: <167172133121.2334525.2608800018126833569.stgit@warthog.procyon.org.uk>
From: David Wysochanski <dwysocha@redhat.com>
Date: Thu, 16 Feb 2023 08:58:58 -0500
Message-ID: <CALF+zO=P1QbKmyE7c+4CQZyWKM5PeU1GqgPxUnerWc9B03OxCA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>, Matthew Wilcox <willy@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 22,
 2022 at 10:02 AM David Howells <dhowells@redhat.com>
 wrote: > > Fscache has an optimisation by which reads from the cache are
 skipped until > we know that (a) there's data there to be [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pSenW-0000Nc-OP
Subject: Re: [V9fs-developer] [PATCH v5 2/3] mm, netfs,
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 linux-ext4@lists.ozlabs.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 22, 2022 at 10:02 AM David Howells <dhowells@redhat.com> wrote:
>
> Fscache has an optimisation by which reads from the cache are skipped until
> we know that (a) there's data there to be read and (b) that data isn't
> entirely covered by pages resident in the netfs pagecache.  This is done
> with two flags manipulated by fscache_note_page_release():
>
>         if (...
>             test_bit(FSCACHE_COOKIE_HAVE_DATA, &cookie->flags) &&
>             test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags))
>                 clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
>
> where the NO_DATA_TO_READ flag causes cachefiles_prepare_read() to indicate
> that netfslib should download from the server or clear the page instead.
>
> The fscache_note_page_release() function is intended to be called from
> ->releasepage() - but that only gets called if PG_private or PG_private_2
> is set - and currently the former is at the discretion of the network
> filesystem and the latter is only set whilst a page is being written to the
> cache, so sometimes we miss clearing the optimisation.
>
> Fix this by following Willy's suggestion[1] and adding an address_space
> flag, AS_RELEASE_ALWAYS, that causes filemap_release_folio() to always call
> ->release_folio() if it's set, even if PG_private or PG_private_2 aren't
> set.
>
> Note that this would require folio_test_private() and page_has_private() to
> become more complicated.  To avoid that, in the places[*] where these are
> used to conditionalise calls to filemap_release_folio() and
> try_to_release_page(), the tests are removed the those functions just
> jumped to unconditionally and the test is performed there.
>
> [*] There are some exceptions in vmscan.c where the check guards more than
> just a call to the releaser.  I've added a function, folio_needs_release()
> to wrap all the checks for that.
>
> AS_RELEASE_ALWAYS should be set if a non-NULL cookie is obtained from
> fscache and cleared in ->evict_inode() before truncate_inode_pages_final()
> is called.
>
> Additionally, the FSCACHE_COOKIE_NO_DATA_TO_READ flag needs to be cleared
> and the optimisation cancelled if a cachefiles object already contains data
> when we open it.
>
> Changes:
> ========
> ver #4)
>  - Split out merging of folio_has_private()/filemap_release_folio() call
>    pairs into a preceding patch.
>  - Don't need to clear AS_RELEASE_ALWAYS in ->evict_inode().
>
> ver #3)
>  - Fixed mapping_clear_release_always() to use clear_bit() not set_bit().
>  - Moved a '&&' to the correct line.
>
> ver #2)
>  - Rewrote entirely according to Willy's suggestion[1].
>
> Reported-by: Rohith Surabattula <rohiths.msft@gmail.com>
> Suggested-by: Matthew Wilcox <willy@infradead.org>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: Matthew Wilcox <willy@infradead.org>
> cc: Linus Torvalds <torvalds@linux-foundation.org>
> cc: Steve French <sfrench@samba.org>
> cc: Shyam Prasad N <nspmangalore@gmail.com>
> cc: Rohith Surabattula <rohiths.msft@gmail.com>
> cc: Dave Wysochanski <dwysocha@redhat.com>
> cc: Dominique Martinet <asmadeus@codewreck.org>
> cc: Ilya Dryomov <idryomov@gmail.com>
> cc: linux-cachefs@redhat.com
> cc: linux-cifs@vger.kernel.org
> cc: linux-afs@lists.infradead.org
> cc: v9fs-developer@lists.sourceforge.net
> cc: ceph-devel@vger.kernel.org
> cc: linux-nfs@vger.kernel.org
> cc: linux-fsdevel@vger.kernel.org
> cc: linux-mm@kvack.org
>
> Link: https://lore.kernel.org/r/Yk9V/03wgdYi65Lb@casper.infradead.org/ [1]
> Link: https://lore.kernel.org/r/164928630577.457102.8519251179327601178.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk/ # v2
> Link: https://lore.kernel.org/r/166869495238.3720468.4878151409085146764.stgit@warthog.procyon.org.uk/ # v3
> Link: https://lore.kernel.org/r/1459152.1669208550@warthog.procyon.org.uk/ # v3 also
> Link: https://lore.kernel.org/r/166924372614.1772793.3804564782036202222.stgit@warthog.procyon.org.uk/ # v4
> ---
>
>  fs/9p/cache.c           |    2 ++
>  fs/afs/internal.h       |    2 ++
>  fs/cachefiles/namei.c   |    2 ++
>  fs/ceph/cache.c         |    2 ++
>  fs/cifs/fscache.c       |    2 ++
>  include/linux/pagemap.h |   16 ++++++++++++++++
>  mm/internal.h           |    5 ++++-
>  7 files changed, 30 insertions(+), 1 deletion(-)
>
> diff --git a/fs/9p/cache.c b/fs/9p/cache.c
> index cebba4eaa0b5..12c0ae29f185 100644
> --- a/fs/9p/cache.c
> +++ b/fs/9p/cache.c
> @@ -68,6 +68,8 @@ void v9fs_cache_inode_get_cookie(struct inode *inode)
>                                        &path, sizeof(path),
>                                        &version, sizeof(version),
>                                        i_size_read(&v9inode->netfs.inode));
> +       if (v9inode->netfs.cache)
> +               mapping_set_release_always(inode->i_mapping);
>
>         p9_debug(P9_DEBUG_FSC, "inode %p get cookie %p\n",
>                  inode, v9fs_inode_cookie(v9inode));
> diff --git a/fs/afs/internal.h b/fs/afs/internal.h
> index 9ba7b68375c9..8e4afaeb6bff 100644
> --- a/fs/afs/internal.h
> +++ b/fs/afs/internal.h
> @@ -680,6 +680,8 @@ static inline void afs_vnode_set_cache(struct afs_vnode *vnode,
>  {
>  #ifdef CONFIG_AFS_FSCACHE
>         vnode->netfs.cache = cookie;
> +       if (cookie)
> +               mapping_set_release_always(vnode->netfs.inode.i_mapping);
>  #endif
>  }
>
> diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
> index 03ca8f2f657a..50b2ee163af6 100644
> --- a/fs/cachefiles/namei.c
> +++ b/fs/cachefiles/namei.c
> @@ -584,6 +584,8 @@ static bool cachefiles_open_file(struct cachefiles_object *object,
>         if (ret < 0)
>                 goto check_failed;
>
> +       clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &object->cookie->flags);
> +
>         object->file = file;
>
>         /* Always update the atime on an object we've just looked up (this is
> diff --git a/fs/ceph/cache.c b/fs/ceph/cache.c
> index 177d8e8d73fe..de1dee46d3df 100644
> --- a/fs/ceph/cache.c
> +++ b/fs/ceph/cache.c
> @@ -36,6 +36,8 @@ void ceph_fscache_register_inode_cookie(struct inode *inode)
>                                        &ci->i_vino, sizeof(ci->i_vino),
>                                        &ci->i_version, sizeof(ci->i_version),
>                                        i_size_read(inode));
> +       if (ci->netfs.cache)
> +               mapping_set_release_always(inode->i_mapping);
>  }
>
>  void ceph_fscache_unregister_inode_cookie(struct ceph_inode_info *ci)
> diff --git a/fs/cifs/fscache.c b/fs/cifs/fscache.c
> index f6f3a6b75601..79e9665dfc90 100644
> --- a/fs/cifs/fscache.c
> +++ b/fs/cifs/fscache.c
> @@ -108,6 +108,8 @@ void cifs_fscache_get_inode_cookie(struct inode *inode)
>                                        &cifsi->uniqueid, sizeof(cifsi->uniqueid),
>                                        &cd, sizeof(cd),
>                                        i_size_read(&cifsi->netfs.inode));
> +       if (cifsi->netfs.cache)
> +               mapping_set_release_always(inode->i_mapping);
>  }
>
>  void cifs_fscache_unuse_inode_cookie(struct inode *inode, bool update)
> diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
> index 29e1f9e76eb6..a0d433e0addd 100644
> --- a/include/linux/pagemap.h
> +++ b/include/linux/pagemap.h
> @@ -199,6 +199,7 @@ enum mapping_flags {
>         /* writeback related tags are not used */
>         AS_NO_WRITEBACK_TAGS = 5,
>         AS_LARGE_FOLIO_SUPPORT = 6,
> +       AS_RELEASE_ALWAYS,      /* Call ->release_folio(), even if no private data */
>  };
>
>  /**
> @@ -269,6 +270,21 @@ static inline int mapping_use_writeback_tags(struct address_space *mapping)
>         return !test_bit(AS_NO_WRITEBACK_TAGS, &mapping->flags);
>  }
>
> +static inline bool mapping_release_always(const struct address_space *mapping)
> +{
> +       return test_bit(AS_RELEASE_ALWAYS, &mapping->flags);
> +}
> +
> +static inline void mapping_set_release_always(struct address_space *mapping)
> +{
> +       set_bit(AS_RELEASE_ALWAYS, &mapping->flags);
> +}
> +
> +static inline void mapping_clear_release_always(struct address_space *mapping)
> +{
> +       clear_bit(AS_RELEASE_ALWAYS, &mapping->flags);
> +}
> +
>  static inline gfp_t mapping_gfp_mask(struct address_space * mapping)
>  {
>         return mapping->gfp_mask;
> diff --git a/mm/internal.h b/mm/internal.h
> index c4c8e58e1d12..5421ce8661fa 100644
> --- a/mm/internal.h
> +++ b/mm/internal.h
> @@ -168,7 +168,10 @@ static inline void set_page_refcounted(struct page *page)
>   */
>  static inline bool folio_needs_release(struct folio *folio)
>  {
> -       return folio_has_private(folio);
> +       struct address_space *mapping = folio->mapping;
> +
> +       return folio_has_private(folio) ||
> +               (mapping && mapping_release_always(mapping));
>  }
>
>  extern unsigned long highest_memmap_pfn;
>
>

What is the status of this patch?  I think it may be stalled but I'm not sure
if maybe it's in progress behind the scenes, or in someone's testing tree?

FWIW, this is still needed for the NFS netfs conversion patches [1]
(I will post a v11 soon), to avoid a perf regression seen by my unit
tests as well as by Daire Byrne and Ben Maynard re-export environments.

Thanks.

[1] https://marc.info/?l=linux-nfs&m=166749188616723&w=4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
