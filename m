Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A09673F2F
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Jan 2023 17:45:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pIY2O-0005Ty-8k;
	Thu, 19 Jan 2023 16:45:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1pIY2E-0005T9-P8
 for v9fs-developer@lists.sourceforge.net;
 Thu, 19 Jan 2023 16:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=guUDzcYcYwMFnknqXHCyHjuKgr1G1lOnW/X0/GRq4JQ=; b=ZWM1TLjDvzqCkH05W4dwHlZTaI
 c7/9RWR5a+zdh3NTcLehUQuvhzMDpg64a098O5F0bjPOqsZXo0nOeecpKpM1WS7iX0tayS0PLzLfL
 56AgqUs1du20F6Vweroacq63hXDSP9o2rnx/9PZ9IBuWRQMNWgOhaPLFXI7P4b/J07ow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=guUDzcYcYwMFnknqXHCyHjuKgr1G1lOnW/X0/GRq4JQ=; b=ZA0TtB0Llh7oRG4TH9mEAspii5
 swAGX/OUTFGGHegM0aY+hjXF2z8yPX6A1FPoDEdSm3mVvj1qNxpcFmPeESYy5PrTkCPPgFkm6VlG9
 GoRWD/q9aGrUuc5LmZjyzN2bMx76I1Odovp9whCdF76ft0lMZZTDLm1fbbCasHdiayDw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pIY2D-0003Qo-0v for v9fs-developer@lists.sourceforge.net;
 Thu, 19 Jan 2023 16:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674146698;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=guUDzcYcYwMFnknqXHCyHjuKgr1G1lOnW/X0/GRq4JQ=;
 b=M6Ztzg6pMW4hzx0QrPRjUWFpbSlsPcxlaUJFM4YRg+k7d5eJeT3cEkX97cTHCfvQy3yrq6
 065YeU2UuoEZpzzNro4brz07nBZ1hbX934pGOORGOSDU5LzAdyJDd7pfBZ+sRzA+qcul6V
 QWbez0Z4Ji+ZAGKolTzJkalSW7vV+sA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-275-_H9fMNALMY6LF6QrvrotQw-1; Thu, 19 Jan 2023 11:44:53 -0500
X-MC-Unique: _H9fMNALMY6LF6QrvrotQw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6FC323C16E94;
 Thu, 19 Jan 2023 16:44:17 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6BF33112131E;
 Thu, 19 Jan 2023 16:44:15 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <Y8iwXJ2gMcCyXzm4@ZenIV>
References: <Y8iwXJ2gMcCyXzm4@ZenIV>
 <167391047703.2311931.8115712773222260073.stgit@warthog.procyon.org.uk>
 <167391063242.2311931.3275290816918213423.stgit@warthog.procyon.org.uk>
To: Al Viro <viro@zeniv.linux.org.uk>,
 Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <3030211.1674146654.1@warthog.procyon.org.uk>
Date: Thu, 19 Jan 2023 16:44:14 +0000
Message-ID: <3030212.1674146654@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Al Viro <viro@zeniv.linux.org.uk> wrote: > Wait a sec; just
 how would that work for ITER_KVEC? AFAICS, in your > tree that would blow
 with -EFAULT... You're right. I wonder if I should handle ITER_KVEC in
 iov_iter_extract_pages(), 
 though I'm sure I've been told that a kvec might point to data that doesn't
 have a matching page struct. Or maybe it's [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pIY2D-0003Qo-0v
Subject: Re: [V9fs-developer] [PATCH v6 21/34] 9p: Pin pages rather than
 ref'ing if appropriate
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christoph Hellwig <hch@infradead.org>,
 Jan Kara <jack@suse.cz>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-block@vger.kernel.org, Jens Axboe <axboe@kernel.dk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Al Viro <viro@zeniv.linux.org.uk> wrote:

> Wait a sec; just how would that work for ITER_KVEC?  AFAICS, in your
> tree that would blow with -EFAULT...

You're right.  I wonder if I should handle ITER_KVEC in
iov_iter_extract_pages(), though I'm sure I've been told that a kvec might
point to data that doesn't have a matching page struct.  Or maybe it's that
the refcount shouldn't be changed on it.

A question for the 9p devs:

Looking more into p9_virtio_zc_request(), it might be better to use
netfs_extract_iter_to_sg(), since the page list is going to get turned into
one, instead of calling p9_get_mapped_pages() and pack_sg_list().

This would, however, require that chan->sg[] be populated outside of the
spinlock'd section - is there any reason that this can't be the case?  There's
nothing inside the locked section that makes sure the chan can be used before
it launches into loading up the scatterlist.  There is a wait afterwards, but
it has to drop the lock first, so wouldn't stop a parallel op from clobbering
chan->sg[] anyway.

Further, if virtqueue_add_sgs() fails with -ENOSPC and we go round again to
req_retry_pinned, do we actually need to reload chan->sg[]?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
