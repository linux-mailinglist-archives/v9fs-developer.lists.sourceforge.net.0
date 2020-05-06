Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C91D41C72BC
	for <lists+v9fs-developer@lfdr.de>; Wed,  6 May 2020 16:24:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jWKyj-0007LA-3K; Wed, 06 May 2020 14:24:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jWKyh-0007Kg-4Q
 for v9fs-developer@lists.sourceforge.net; Wed, 06 May 2020 14:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dbddwc8AWoCH822EokkiRcp0XFOdJXpCOboNl38sqMs=; b=MaVekdanX37Rr4Mp5tL1DNJbZ4
 UoglK+YaedGep7MnzVymlklusUC/sJfeakE2pwYqqg+5+CFc3g5NemtKDuWCgHNKEB9i5CvDgqpC5
 t8aS5LQP8h3gYBaqAhWtuukJjmQZbNtk+Lr2JiLHIlFMF4im8u48ORM6Wkb5D7+ebK3Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dbddwc8AWoCH822EokkiRcp0XFOdJXpCOboNl38sqMs=; b=e16kECxyGsUkbnpxPqUbhfDuwR
 3NB4t82cSANTMtRWvfAG1STHtg+ehAui5CI1WbwAoPdtSZc7fCKiEWiyqmwjGvIXcTPl+OI30+9Iy
 O+Pezn9l9qTOULG880zHPnZc8T5+C+gzeNpbmt4upqewFE8WzMPCX7clOGSMVZ2Pspck=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jWKyg-00CxZ7-26
 for v9fs-developer@lists.sourceforge.net; Wed, 06 May 2020 14:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588775082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dbddwc8AWoCH822EokkiRcp0XFOdJXpCOboNl38sqMs=;
 b=ACHaDpy3T+8vAeh8aoJigXXeFPOf9C4HwA/U5jqHOKpbI6hZEFqZh3pVyMtZ0zLTGkJbE1
 tBgTpG6hPgN7FRvJGPe1fHd6xT8qSvFW+rzk2gr9YuwBKK9W0hl/YXkvRNFgyli78q4Dly
 eQ04N0YhT7FJfN+aoiDkfRESNnLn0MU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-7dSlh3iYM9GY009Ms9gsRQ-1; Wed, 06 May 2020 10:24:39 -0400
X-MC-Unique: 7dSlh3iYM9GY009Ms9gsRQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1CE281CBE1;
 Wed,  6 May 2020 14:24:36 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2557E6299C;
 Wed,  6 May 2020 14:24:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20200506110942.GL16070@bombadil.infradead.org>
References: <20200506110942.GL16070@bombadil.infradead.org>
 <20200505115946.GF16070@bombadil.infradead.org>
 <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
 <158861253957.340223.7465334678444521655.stgit@warthog.procyon.org.uk>
 <683739.1588751878@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <713140.1588775072.1@warthog.procyon.org.uk>
Date: Wed, 06 May 2020 15:24:32 +0100
Message-ID: <713141.1588775072@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWKyg-00CxZ7-26
Subject: Re: [V9fs-developer] [RFC PATCH 54/61] afs: Wait on PG_fscache
 before modifying/releasing a page
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
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> > Won't that screw up ITER_MAPPING?  Does that mean that ITER_MAPPING isn't
> > viable?
> 
> Can you remind me why ITER_MAPPING needs:
> 
> "The caller must guarantee that the pages are all present and they must be
> locked using PG_locked, PG_writeback or PG_fscache to prevent them from
> going away or being migrated whilst they're being accessed."
> 
> An elevated refcount prevents migration, and it also prevents the pages
> from being freed.  It doesn't prevent them from being truncated out of
> the file, but it does ensure the pages aren't reallocated.

ITER_MAPPING relies on the mapping to maintain the pointers to the pages so
that it can find them rather than being like ITER_BVEC where there's a
separate list.

Truncate removes the pages from the mapping - at which point ITER_MAPPING can
no longer find them.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
