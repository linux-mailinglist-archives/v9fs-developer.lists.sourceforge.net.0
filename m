Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB521444413
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 15:59:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miHjC-0002d2-Qr; Wed, 03 Nov 2021 14:59:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1miHjB-0002cu-Ee
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 14:59:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ioiM+Du60rzXrbVCIHTdbL7lBwbxpxRPlGADqNtS8t8=; b=BMQtWJaq1yGVcGh6pF2yF7BiKO
 hh719TosxubkDEAWKFEj5PnjJM3a/8YVy7EvEUWk3W8gbG4kShjxno/e74NSFpGrIeAzEuaHVZg1k
 Fal/6Ma99j1LktXagozcIelmQVnS+rNmmSKmFrl0EwjA7bUVAcDXkFnA4LdcTOK8Zp9E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ioiM+Du60rzXrbVCIHTdbL7lBwbxpxRPlGADqNtS8t8=; b=bC8nN/cmX6XKP1RNc84axEVa1x
 DoxezpaZ5L4uX17MiVlfrAsEbPSWXNOGzTvh+u00agS4TwbRJadBOn5m7/OJIZKBNElZ1ZDZPEy6l
 TMpbbiHy148EzI4xitGQsAVS2FV6ql4xUHI4VuuuEkuS1t/DPFCQzUEycF55Au/BZAhI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miHj7-00Go7E-Dr
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 14:59:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635951525;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ioiM+Du60rzXrbVCIHTdbL7lBwbxpxRPlGADqNtS8t8=;
 b=KWhOXtJvMFQv45B4DItQxLA1mpAJWRm0lVUFx8owOATRgzqYCl9eGAn0aafZ+qVKz5Qu1g
 IDWurpq9l2R6uErrFn+J6Dha3R9wdLXI922Bu9kSpaGWzMSqGzb6QIdjIBVlBRmFAHD4ug
 Pi3D0/0dMHBdISyDTDD51Iy/+jaHfUA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-sSG_VRK5OiSDTeHnbcefkg-1; Wed, 03 Nov 2021 10:58:40 -0400
X-MC-Unique: sSG_VRK5OiSDTeHnbcefkg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E91656C8B;
 Wed,  3 Nov 2021 14:58:28 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C887D69FA2;
 Wed,  3 Nov 2021 14:58:13 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YYKa3bfQZxK5/wDN@casper.infradead.org>
References: <YYKa3bfQZxK5/wDN@casper.infradead.org>
 <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
 <163584187452.4023316.500389675405550116.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1038256.1635951492.1@warthog.procyon.org.uk>
Date: Wed, 03 Nov 2021 14:58:12 +0000
Message-ID: <1038257.1635951492@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Matthew Wilcox <willy@infradead.org> wrote: > > + len = (size
 >= start + gran) ? gran : size - start;
 > > This seems like the most complicated
 way to write this ... how about: > > size_t len = min_t(loff_t, isize - start, 
 folio_size(folio)); 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1miHj7-00Go7E-Dr
Subject: Re: [V9fs-developer] [PATCH v3 5/6] netfs, 9p, afs, ceph: Use folios
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> > +	len = (size >= start + gran) ? gran : size - start;
> 
> This seems like the most complicated way to write this ... how about:
> 
>         size_t len = min_t(loff_t, isize - start, folio_size(folio));

I was trying to hedge against isize-start going negative.  Can this code race
against truncate?  truncate_setsize() changes i_size *before* invalidating the
pages.

> >  static int afs_symlink_readpage(struct file *file, struct page *page)
> >  {
> > -	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
> > +	struct afs_vnode *vnode = AFS_FS_I(page_mapping(page)->host);
> 
> How does swap end up calling readpage on a symlink?

Um - readpage is called to read the symlink.

> > -	page_endio(page, false, ret);
> > +	page_endio(&folio->page, false, ret);
> 
> We need a folio_endio() ...

I think we mentioned this before and I think you said you had or would make a
patch for it.  I can just create a wrapper for it if that'll do.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
