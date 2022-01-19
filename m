Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65338493707
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 Jan 2022 10:18:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nA76w-0002Jn-Qw; Wed, 19 Jan 2022 09:18:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nA76u-0002Jh-TY
 for v9fs-developer@lists.sourceforge.net; Wed, 19 Jan 2022 09:18:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qsHFjR3VZGRzuJsXGrmQKYKJ/CFlVyV1IKZ/8UEEbWk=; b=GfULAud1+xdqzZqvyX5EcQ+9yU
 17HRkoMoW/bp0skOtbR343Olrrg2nMH9IxV4i3HxBEK5BJEK4Mg9tedXWs2zXjN2Rf5gk8wfvBznR
 KrA/tgih0xrmgnoNG6GV6wsn3JIy+Ead0BbGVgOVhSlbsXMRrnK43GkAOsVRSKuHy/Lo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qsHFjR3VZGRzuJsXGrmQKYKJ/CFlVyV1IKZ/8UEEbWk=; b=JIMAApPC31U25dTA6x5jbrA6LW
 zGdEx3oBy8ArMIZysxo7IJMD6Npq8ktENjBKEWr2qmM4BrOLTaJBKVpB2lb7bAnMI+7or3AFMGsQh
 n6bIivtNqMuTetFniKXi1Ge7BSrmo51gBqmK/yj9GT2CPAbJqoj1FfSA0lOSx6McH4zM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nA76r-003JDz-MS
 for v9fs-developer@lists.sourceforge.net; Wed, 19 Jan 2022 09:18:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642583903;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qsHFjR3VZGRzuJsXGrmQKYKJ/CFlVyV1IKZ/8UEEbWk=;
 b=hZx9c6vsj4M4OonxWbm7CmdS40XFOkgCe1NXyf4qqlUE4hMR5w5gbhZsBTfFwORPNPjB1S
 IRt8bm1waqCNvz2l2/6Ut+UWk+4WGSJrNdFHGAMFN+aiyng7tQqy8zbQFlPlGKZBH1iM6l
 JXclfyN5w+kkmy6hnIxhNj4Zp4hTGao=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-315-GmWhYa85PziqVu9-iauLvg-1; Wed, 19 Jan 2022 04:18:20 -0500
X-MC-Unique: GmWhYa85PziqVu9-iauLvg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B820814249;
 Wed, 19 Jan 2022 09:18:18 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 163D27B9D6;
 Wed, 19 Jan 2022 09:18:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YeefizLOGt1Qf35o@infradead.org>
References: <YeefizLOGt1Qf35o@infradead.org> <YebpktrcUZOlBHkZ@infradead.org>
 <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251409447.3435901.10092442643336534999.stgit@warthog.procyon.org.uk>
 <3613681.1642527614@warthog.procyon.org.uk>
To: Christoph Hellwig <hch@infradead.org>
MIME-Version: 1.0
Content-ID: <3765723.1642583885.1@warthog.procyon.org.uk>
Date: Wed, 19 Jan 2022 09:18:05 +0000
Message-ID: <3765724.1642583885@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christoph Hellwig <hch@infradead.org> wrote: > On Tue, Jan
 18, 2022 at 05:40:14PM +0000, David Howells wrote: > > Christoph Hellwig
 <hch@infradead.org> wrote: > > > > > On Tue, Jan 18, 2022 at 01:54:54PM +0000, 
 David Howells wrote: > > > > Add a [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nA76r-003JDz-MS
Subject: Re: [V9fs-developer] [PATCH 09/11] vfs,
 fscache: Add an IS_KERNEL_FILE() macro for the S_KERNEL_FILE flag
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
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Steve French <smfrench@gmail.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christoph Hellwig <hch@infradead.org> wrote:

> On Tue, Jan 18, 2022 at 05:40:14PM +0000, David Howells wrote:
> > Christoph Hellwig <hch@infradead.org> wrote:
> > 
> > > On Tue, Jan 18, 2022 at 01:54:54PM +0000, David Howells wrote:
> > > > Add an IS_KERNEL_FILE() macro to test the S_KERNEL_FILE inode flag as is
> > > > common practice for the other inode flags[1].
> > > 
> > > Please fix the flag to have a sensible name first, as the naming of the
> > > flag and this new helper is utterly wrong as we already discussed.
> > 
> > And I suggested a new name, which you didn't comment on.
> 
> Again, look at the semantics of the flag:  The only thing it does in the
> VFS is to prevent a rmdir.  So you might want to name it after that.
> 
> Or in fact drop the flag entirely.  We don't have that kind of
> protection for other in-kernel file use or important userspace daemons
> either.  I can't see why cachefiles is the magic snowflake here that
> suddenly needs semantics no one else has.

The flag cannot just be dropped - it's an important part of the interaction
with cachefilesd with regard to culling.  Culling to free up space is
offloaded to userspace rather than being done within the kernel.

Previously, cachefiles, the kernel module, had to maintain a huge tree of
records of every backing inode that it was currently using so that it could
forbid cachefilesd to cull one when cachefilesd asked.  I've reduced that to a
single bit flag on the inode struct, thereby saving both memory and time.  You
can argue whether it's worth sacrificing an inode flag bit for that, but the
flag can be reused for any other kernel service that wants to similarly mark
an inode in use.

Further, it's used as a mark to prevent cachefiles accidentally using an inode
twice - say someone misconfigures a second cache overlapping the first - and,
again, this works if some other kernel driver wants to mark inode it is using
in use.  Cachefiles will refuse to use them if it ever sees them, so no
problem there.

And it's not true that we don't have that kind of protection for other
in-kernel file use.  See S_SWAPFILE.  I did consider using that, but that has
other side effects.  I mentioned that perhaps I should make swapon set
S_KERNEL_FILE also.  Also blockdevs have some exclusion also, I think.

The rmdir thing should really apply to rename and unlink also.  That's to
prevent someone, cachefilesd included, causing cachefiles to malfunction by
removing the directories it created.  Possibly this should be a separate bit
to S_KERNEL_FILE, maybe S_NO_DELETE.

So I could change S_KERNEL_FILE to S_KERNEL_LOCK, say, or maybe S_EXCLUSIVE.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
