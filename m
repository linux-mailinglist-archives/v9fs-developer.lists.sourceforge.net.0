Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6EF636A73
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Nov 2022 21:03:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxvyC-0008Re-Oj;
	Wed, 23 Nov 2022 20:03:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1oxvxs-0008RM-B3
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 20:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FyF91lZbMxrHn5anVwrCryKb88DRm4Sm24TF8WqfMn8=; b=aNxO6nSlTv27HeWy26ZxwQDQxr
 4s2Ydj14Yv4DSQL6qyPgzl1sO3k+CR5kmqDqASn0vgz+6c1bWRA3rMEukDSxLMdWGR5wPsf39zmxL
 upxS8qSb9b+gwDQ82z+YgX8YRpTSowuWczPDVwZIXbMqso2tnn7cpUHNacVRdm2Cg9Uo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FyF91lZbMxrHn5anVwrCryKb88DRm4Sm24TF8WqfMn8=; b=PJPcwe7PPXVXKlrLj9lMhtm+6W
 /Qa2tgD70JNprFG0smHT89oZFIpza3qKXtl8lwpaso02qcVxuUm2gQWXMFg3Nj6Oe5mS7lMp0aXCx
 fPbbkL3iCfw6k6Y2Z+ubGu2hqeKDbGlkSFHi5LxpIwswxPizP8l4xOfFYhkawZJGHVvE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxvxo-00H7d2-NV for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 20:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669233794;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FyF91lZbMxrHn5anVwrCryKb88DRm4Sm24TF8WqfMn8=;
 b=VMZM2z3Ml/ijbef1vfDD6A8NAytldbp3tkYuGyRpop0CmOgjJFBXZwV/OoQGIJhGV85jjq
 GcZCSEapJrIy5iweiKe3FHOmjdswncqKezbRSqwTXukWsByQiPtVdSyqpuMtMrtuqEN+dx
 ZY1Vd8beoMyw9q3GcHePZY9yU90zh1E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-599-WfiQ4PvGNeam6muHEfvymg-1; Wed, 23 Nov 2022 15:03:09 -0500
X-MC-Unique: WfiQ4PvGNeam6muHEfvymg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB7E087B2A1;
 Wed, 23 Nov 2022 20:03:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.14])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B49AF40C83C5;
 Wed, 23 Nov 2022 20:03:06 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wghJtq-952e_8jd=vtV68y_HsDJ8=e0=C3-AsU2WL-8YA@mail.gmail.com>
References: <CAHk-=wghJtq-952e_8jd=vtV68y_HsDJ8=e0=C3-AsU2WL-8YA@mail.gmail.com>
 <1459152.1669208550@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <1619342.1669233783.1@warthog.procyon.org.uk>
Date: Wed, 23 Nov 2022 20:03:03 +0000
Message-ID: <1619343.1669233783@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Linus Torvalds <torvalds@linux-foundation.org> wrote: > But
 I also think it's strange in another way, with that odd placement of > >
 mapping_clear_release_always(inode->i_mapping); > > at inode eviction time.
 That just feels very random. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxvxo-00H7d2-NV
Subject: Re: [V9fs-developer] [PATCH v3] mm, netfs,
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 Rohith Surabattula <rohiths.msft@gmail.com>, dwysocha@redhat.com,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> But I also think it's strange in another way, with that odd placement of
> 
>         mapping_clear_release_always(inode->i_mapping);
> 
> at inode eviction time. That just feels very random.

I was under the impression that a warning got splashed if unexpected
address_space flags were set when ->evict_inode() returned.  I may be thinking
of page flags.  If it doesn't, fine, this isn't required.

> Similarly, that change to shrink_folio_list() looks strange, with the
> nasty folio_needs_release() helper. It seems entirely pointless, with
> the use then being
> 
>                 if (folio_needs_release(folio)) {
>                         if (!filemap_release_folio(folio, sc->gfp_mask))
>                                 goto activate_locked;

Unfortunately, that can't be simply folded down.  It actually does something
extra if folio_has_private() was set, filemap_release_folio() succeeds but
there was no mapping:

		 * Rarely, folios can have buffers and no ->mapping.
		 * These are the folios which were not successfully
		 * invalidated in truncate_cleanup_folio().  We try to
		 * drop those buffers here and if that worked, and the
		 * folio is no longer mapped into process address space
		 * (refcount == 1) it can be freed.  Otherwise, leave
		 * the folio on the LRU so it is swappable.

Possibly I could split the if-statement and make it two separate cases:

		/*
		 * If the folio has buffers, try to free the buffer
		 * mappings associated with this folio. If we succeed
		 * we try to free the folio as well.
		 *
		 * We do this even if the folio is dirty.
		 * filemap_release_folio() does not perform I/O, but it
		 * is possible for a folio to have the dirty flag set,
		 * but it is actually clean (all its buffers are clean).
		 * This happens if the buffers were written out directly,
		 * with submit_bh(). ext3 will do this, as well as
		 * the blockdev mapping.  filemap_release_folio() will
		 * discover that cleanness and will drop the buffers
		 * and mark the folio clean - it can be freed.
		 */
		if (!filemap_release_folio(folio, sc->gfp_mask))
			goto activate_locked;

filemap_release_folio() will return true if folio_has_private() is false,
which would allow us to reach the next part, which we would then skip.

		/*
		 * Rarely, folios can have buffers and no ->mapping.
		 * These are the folios which were not successfully
		 * invalidated in truncate_cleanup_folio().  We try to
		 * drop those buffers here and if that worked, and the
		 * folio is no longer mapped into process address space
		 * (refcount == 1) it can be freed.  Otherwise, leave
		 * the folio on the LRU so it is swappable.
		 */
		if (!mapping && folio_has_private(folio) &&
		    folio_ref_count(folio) == 1) {
			folio_unlock(folio);
			if (folio_put_testzero(folio))
				goto free_it;
			 /*
			  * rare race with speculative reference.
			  * the speculative reference will free
			  * this folio shortly, so we may
			  * increment nr_reclaimed here (and
			  * leave it off the LRU).
			  */
			nr_reclaimed += nr_pages;
			continue;
		}

But that will malfunction if try_to_free_buffers(), as called from
folio_has_private(), manages to clear the private bits.  I wonder if it might
be possible to fold this bit into filemap_release_folio() somehow.

I really need a three-state return from filemap_release_folio() - maybe:

	0	couldn't release
	1	released
	2	there was no private

The ordinary "if (filemap_release_folio()) { ... }" would work as expected.
shrink_folio_list() could do something different between case 1 and case 2.

> And the change to mm/filemap.c is completely unacceptable in all
> forms, and this added test
> 
> +       if ((!mapping || !mapping_release_always(mapping)) &&
> +           !folio_test_private(folio) &&
> +           !folio_test_private_2(folio))
> +               return true;
> 
> will not be accepted even during the merge window. That code makes no
> sense what-so-ever, and is in no way acceptable.
>
> That code makes no sense what-so-ever. Why isn't it using
> "folio_has_private()"?

It should be, yes.

> Why is this done as an open-coded - and *badly* so - version of
> !folio_needs_release() that you for some reason made private to mm/vmscan.c?

Yeah, in retrospect, I should have put that in mm/internal.h.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
