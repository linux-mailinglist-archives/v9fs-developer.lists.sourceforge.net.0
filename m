Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6BF437DE2
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:08:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdztv-0004gP-QH; Fri, 22 Oct 2021 19:08:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mdztt-0004gI-Py
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tW1THt74zlEe0JuUHAuc3WzNTwwNynQeKBO1wEGMPGk=; b=hrDqEztbKcstaQ4Yn4vEhZIolQ
 S0DoFA9Pj6mdinmFIk/PKHslVqLhC7E59fEZAXkawlM9Ps+Xc8SSTKnb4AUU/2q+YlVJks/6P66zE
 VciKhzbq4+3VZ4b8s+72IXDts9Tzy3bcp/YQbGB4eVx44Pmph85Qmpw4wMxe5S3tcFMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tW1THt74zlEe0JuUHAuc3WzNTwwNynQeKBO1wEGMPGk=; b=RGsRfZP1wHsvn7JFR+F7ffGBSF
 Zai2OFggvazBE/TysDjOwoJm2Plze6uNSujE68tz60HmYwNxhYwYtiCRfS+JscCgQD7YJZ24DgzKv
 Ly9EhXMsqi8ePx/HdyvqFjVZU093T/Z6HtVByoLdTpdA5OQ+Jguc1SsNBhR9uIgHtdnY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdzts-00CHhF-NO
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634929694;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tW1THt74zlEe0JuUHAuc3WzNTwwNynQeKBO1wEGMPGk=;
 b=LR9gRE/i3ZrPk0f98x/fZtRWKUaKkHbf4vKkHaCnp5y4+UVLyNwyfxw48hThy51mcmOl3g
 Ijb+IZizglK8Kaq4CD81TwFunvRzUxDOIycvAX7MKJBZxPI2+iI8cXnogpkkM8Wcj6JJAk
 QYhrZW96/LLJyiB4SXkhZzK8h16nXfk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-LwTXxwRMMRqR8zd0PjpeHQ-1; Fri, 22 Oct 2021 14:52:31 -0400
X-MC-Unique: LwTXxwRMMRqR8zd0PjpeHQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DAC8802B4F;
 Fri, 22 Oct 2021 18:52:28 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CA62C60C04;
 Fri, 22 Oct 2021 18:52:19 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAH2r5msO7-QCXv6JQj2Tado9ZoWAHRkgq6-En18PeKSXFDdBLw@mail.gmail.com>
References: <CAH2r5msO7-QCXv6JQj2Tado9ZoWAHRkgq6-En18PeKSXFDdBLw@mail.gmail.com>
 <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <YXHntB2O0ACr0pbz@relinquished.localdomain>
To: Steve French <smfrench@gmail.com>
MIME-Version: 1.0
Content-ID: <1037423.1634928738.1@warthog.procyon.org.uk>
Date: Fri, 22 Oct 2021 19:52:18 +0100
Message-ID: <1037424.1634928738@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Steve French <smfrench@gmail.com> wrote: > On Thu, Oct 21,
 2021 at 5:21 PM Omar Sandoval <osandov@osandov.com> wrote: > > > > On Mon,
 Oct 18, 2021 at 03:50:15PM +0100, David Howells wrote: > > However, with
 the advent of the tmpfile capacity [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
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
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdzts-00CHhF-NO
Subject: Re: [V9fs-developer] [PATCH 00/67] fscache: Rewrite index API and
 management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, David Howells <dhowells@redhat.com>,
 linux-mm <linux-mm@kvack.org>, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 CIFS <linux-cifs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs <linux-nfs@vger.kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Steve French <smfrench@gmail.com> wrote:

> On Thu, Oct 21, 2021 at 5:21 PM Omar Sandoval <osandov@osandov.com> wrote:
> >
> > On Mon, Oct 18, 2021 at 03:50:15PM +0100, David Howells wrote:
> > However, with the advent of the tmpfile capacity in the VFS, an opportunity
> > arises to do invalidation much more easily, without having to wait for I/O
> > that's actually in progress: Cachefiles can simply cut over its file
> > pointer for the backing object attached to a cookie and abandon the
> > in-progress I/O, dismissing it upon completion.
> 
> Have changes been made to O_TMPFILE?  It is problematic for network
> filesystems because it is not an atomic operation, and would be great if it
> were possible to create a tmpfile and open it atomically (at the file system
> level).

In this case, it's nothing to do with the network filesystem that's using the
cache per se.  Cachefiles is using tmpfiles on the backing filesystem, so as
long as that's, say, ext4, xfs or btrfs, it should work fine.  The backing
filesystem also needs to support SEEK_HOLE and SEEK_DATA.

I'm not sure I'd recommend putting your cache on a network filesystem.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
