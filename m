Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33879433EC1
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 20:48:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcuAL-000487-Ob; Tue, 19 Oct 2021 18:48:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcuAJ-000481-LU
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 18:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W0LKdMZo9vNdqSvore2I0xfjftCA66bzkuaIif0bJYs=; b=GZuhFKIhMKL6SGcBSEwttpI/G8
 69FGAHNRS3oNJgfNJhBwlgtleeKDSX9SYgoVTLaOSAZFXzEavCB3fxamEmoR+5PeEhcdm5wM5wUtB
 wT50YXDhBhXHvBA0z2jwyRHA1AapHRBu9EBZAQqoqyIg3LL7bxoUTjcSoyxDQtZrzyjo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W0LKdMZo9vNdqSvore2I0xfjftCA66bzkuaIif0bJYs=; b=lfN2CDq8ClKXcRaO9tNqGyoXHO
 7mKu40jkUIzLKpCMh2TKHzlD4mL7I6HoTgVVBxAMibjGsLnYEuweUyptowEMfYGVNj4I1q0P4GHjL
 Uy7YXkG7qqfb6uh3JLq4/rFQwFRlhDhOLvANtvRriMbnJDygruD0NA9GmGUrF5LDvlsQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcuAI-006Utu-7m
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 18:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634669316;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=W0LKdMZo9vNdqSvore2I0xfjftCA66bzkuaIif0bJYs=;
 b=YRwwdefYS2QxW/T3nO7xaHtAGL89oYtF5OaUcDMMu4AkYBsRW5H5j3iDcxLb8Jv/SgSaLo
 50TvSO2OU/FSMPV8o6vftn7xtGvOXUGxkFbYPH51Qzmz875VpP0c03rp6l1vMKrv2jOIv/
 Xd4yOtf+mEMYc/Gdmfb/+R7htzFWjH4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-j1U2L1iBM6ODM8XJ0ZVuqg-1; Tue, 19 Oct 2021 14:48:32 -0400
X-MC-Unique: j1U2L1iBM6ODM8XJ0ZVuqg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2130C19251A1;
 Tue, 19 Oct 2021 18:48:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 965D65DD68;
 Tue, 19 Oct 2021 18:48:16 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YW8OMsrEzrY8aSxo@casper.infradead.org>
References: <YW8OMsrEzrY8aSxo@casper.infradead.org>
 <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456863216.2614702.6384850026368833133.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <2971213.1634669295.1@warthog.procyon.org.uk>
Date: Tue, 19 Oct 2021 19:48:15 +0100
Message-ID: <2971214.1634669295@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Matthew Wilcox <willy@infradead.org> wrote: > > + isize =
 i_size_read(inode); > > + if (unlikely(iocb->ki_pos >= isize)) > > + goto
 put_pages; > > + > > Is there a good reason to assign to isize here? I'd rather
 not, > because it complicates an [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcuAI-006Utu-7m
Subject: Re: [V9fs-developer] [PATCH 01/67] mm: Stop filemap_read() from
 grabbing a superfluous page
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Kent Overstreet <kent.overstreet@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> > +		isize = i_size_read(inode);
> > +		if (unlikely(iocb->ki_pos >= isize))
> > +			goto put_pages;
> > +
> 
> Is there a good reason to assign to isize here?  I'd rather not,
> because it complicates analysis, and a later change might look at
> the isize read here, not realising it was a racy use.  So I'd
> rather see:

If we don't set isize, the loop will never end.  Actually, maybe we can just
break out at that point rather than going to put_pages.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
