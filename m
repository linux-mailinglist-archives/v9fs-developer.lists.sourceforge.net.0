Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE2B44555E
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Nov 2021 15:33:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1midne-0005Nz-7d; Thu, 04 Nov 2021 14:33:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1midnS-0005NL-UL
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Nov 2021 14:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OPjgKPP44SXIrxLx8CNgjbtemUL2QQQynBIl4LnWo2g=; b=W7Wxnm6pTkPrsunghnP5Ocunyu
 v193Y4k40vgI95TLMKi7ccse6D7BUifhp2oqM26Yq8RYKXI745gtCmyyqzWJQkTaoBPts41t4Lio2
 7mc/w3713AFbVCCpT4ote0ni/ygGr4pccHaGFglbhLymBDXjCj1XyaEsaxIxnZ7nMtaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OPjgKPP44SXIrxLx8CNgjbtemUL2QQQynBIl4LnWo2g=; b=EnIM+O6/1X5UNy9KyaYJMObd4o
 sVKnbmrbr1LMFAn0vYIw2Q6qRwGaGRMJydaI+0IhjAeGmgHBC9pp1JesqTDlwSQGInSD8FY4AFXs+
 NBmoT2ATgcLkji4fuozLZxl87qoSurxskUya7ixWmhElcUtRaQJkZu7qVuOKivqVgNGI=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1midnL-001VaT-D4
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Nov 2021 14:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636036360;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OPjgKPP44SXIrxLx8CNgjbtemUL2QQQynBIl4LnWo2g=;
 b=HhWKadzg/tLnrtT+RskucLhmJhKnJHdP41++LpzMlJ2wiXu4FWBsN+IHAg+ygmt8gWM4eD
 eH0lXZ94KOabjqsotct2l4uAmECMXUvE7a9y3jRy7sbuDrMBNOYrq+Wdvw2yzUM77v+WGh
 bxoz6WofEPzCdK+aY+CZyty4urm8a/Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-jIvx4JasMH27MVkeYdVBDA-1; Thu, 04 Nov 2021 10:32:37 -0400
X-MC-Unique: jIvx4JasMH27MVkeYdVBDA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5890F87D548;
 Thu,  4 Nov 2021 14:32:35 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 22BD856A94;
 Thu,  4 Nov 2021 14:32:18 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YYK4YKCnDyoJx5eW@casper.infradead.org>
References: <YYK4YKCnDyoJx5eW@casper.infradead.org>
 <YYKa3bfQZxK5/wDN@casper.infradead.org>
 <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
 <163584187452.4023316.500389675405550116.stgit@warthog.procyon.org.uk>
 <1038257.1635951492@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1760414.1636036338.1@warthog.procyon.org.uk>
Date: Thu, 04 Nov 2021 14:32:18 +0000
Message-ID: <1760415.1636036338@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Matthew Wilcox <willy@infradead.org> wrote: > On Wed, Nov
 03, 2021 at 02:58:12PM +0000,
 David Howells wrote: > > Matthew Wilcox <willy@infradead.org>
 wrote: > > > > > > + len = (size >= start + gran) ? gran : size - start;
 > > > > > > This seem [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
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
X-Headers-End: 1midnL-001VaT-D4
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

> On Wed, Nov 03, 2021 at 02:58:12PM +0000, David Howells wrote:
> > Matthew Wilcox <willy@infradead.org> wrote:
> > 
> > > > +	len = (size >= start + gran) ? gran : size - start;
> > > 
> > > This seems like the most complicated way to write this ... how about:
> > > 
> > >         size_t len = min_t(loff_t, isize - start, folio_size(folio));
> > 
> > I was trying to hedge against isize-start going negative.  Can this code race
> > against truncate?  truncate_setsize() changes i_size *before* invalidating the
> > pages.
> 
> We should check for isize < start separately, and skip the writeback
> entirely.

So, something like the following

	static int v9fs_vfs_write_folio_locked(struct folio *folio)
	{
		struct inode *inode = folio_inode(folio);
		struct v9fs_inode *v9inode = V9FS_I(inode);
		loff_t start = folio_pos(folio);
		loff_t i_size = i_size_read(inode);
		struct iov_iter from;
		size_t len = folio_size(folio);
		int err;

		if (start >= i_size)
			return 0; /* Simultaneous truncation occurred */

		len = min_t(loff_t, i_size - start, len);

		iov_iter_xarray(&from, ..., start, len);
		...
	}

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
