Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3844114D7
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 14:47:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSIhl-0004xK-PS; Mon, 20 Sep 2021 12:47:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mSIhk-0004xC-DF
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 12:47:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N/2Pe4Rx8NqNClTKB4DSeOEu5W1xviKvYQ55s0CgCms=; b=N4+2aEME48JdTmNdw+bxaJO1VR
 seg4zljJHQxgGUHTmRscSYa/EisURtbJojWOTejKUhvxMBand6jKyXLuoLTWgP5gsvb8PSKjIbUqa
 844S/eHMwkYJs7Xpes+Vxas4a7yrVvburBJsQcLi7v2gZ5+hXcPp7SMIIHThpTCXzmkI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N/2Pe4Rx8NqNClTKB4DSeOEu5W1xviKvYQ55s0CgCms=; b=fflfR5+O7LX4HyxpZOkURQtc9t
 7k0ODDfv+6AEZzvBcfg+qBHwXNETCv4RLyOPML35EOwm+dAcRZHOjDnqDktLUQBq4Ds4DCDL7jn9G
 Bn46lV+UpxvgZVHxMQAQPN5bdd7+DSinJwtjLi5VpvAQ3rLNMd5gQagpGsqK0P3VLaA4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSIhg-00Gwvb-0D
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 12:47:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632142037;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N/2Pe4Rx8NqNClTKB4DSeOEu5W1xviKvYQ55s0CgCms=;
 b=HD49E9YsYEIJeSwCNS3qrD+fidHrCx2Mir61AAkTqhnyIn6vi2YrC05gYRKm6F9fA+DziY
 qEgxeraXxe3OKIVjC6DyE826Mq04MFExOk++0NL6ZSywKAoIjnyu/Y3c/D0vrWXC2aX8du
 dEp5DXN3lt80l+BI9N24j51nrLFns0I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-602-p4w5CPeYMlu6gISbMFeP6Q-1; Mon, 20 Sep 2021 08:47:14 -0400
X-MC-Unique: p4w5CPeYMlu6gISbMFeP6Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C1D184A5E0;
 Mon, 20 Sep 2021 12:47:12 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2E44E10027C4;
 Mon, 20 Sep 2021 12:47:04 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YUiAmnMV7+fprNC1@casper.infradead.org>
References: <YUiAmnMV7+fprNC1@casper.infradead.org>
 <163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <2950843.1632142024.1@warthog.procyon.org.uk>
Date: Mon, 20 Sep 2021 13:47:04 +0100
Message-ID: <2950844.1632142024@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Matthew Wilcox <willy@infradead.org> wrote: > > +++
 b/fs/9p/vfs_addr.c
 > > @@ -88, 7 +88, 7 @@ static const struct netfs_read_request_ops v9fs_req_ops
 = { > > > > /** > > * v9fs_vfs_readpage - read an entire page in from 9P
 > > - * @filp: file be [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mSIhg-00Gwvb-0D
Subject: Re: [V9fs-developer] [RFC PATCH] fscache, 9p, afs, cifs,
 nfs: Deal with some warnings from W=1
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
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 linux-doc@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, Marc Dionne <marc.dionne@auristor.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> > +++ b/fs/9p/vfs_addr.c
> > @@ -88,7 +88,7 @@ static const struct netfs_read_request_ops v9fs_req_ops = {
> >  
> >  /**
> >   * v9fs_vfs_readpage - read an entire page in from 9P
> > - * @filp: file being read
> > + * @file: file being read
> >   * @page: structure to page
> >   *
> >   */
> 
> This is an example of a weird pattern in filesystems.  Several of
> them have kernel-doc for the implementation of various ->ops methods.
> I don't necessarily believe we should delete the comments (although is
> there any useful information in the above?), but I don't see the point
> in the comment being kernel-doc.

Yeah - I would prefer to do that.  Only kdoc it if it's inter-(sub-)driver API
- and if it is, it must have a namespacing prefix so that it is obvious in
amongst a kernel-wide general index.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
