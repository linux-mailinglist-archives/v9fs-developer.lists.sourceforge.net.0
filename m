Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF99434855
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Oct 2021 11:49:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1md8E7-00073L-3f; Wed, 20 Oct 2021 09:49:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1md8E1-00071m-Ny
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Oct 2021 09:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yrwzIKxJLyOlRuVjyH2WuWw8q3AM6f6AtDPiL7a0cJ0=; b=gZw8QYI+PRshB0TxyvkqB3zjp5
 Xdc1UjVUKRk1Vesh6HIUQe8IMD/80dhwWuA2nnOs85ImDDOOWjbSLzlgXoXfJHre8LKM20Uu20KJj
 R+RfA/xfJFRYJfvu77Jdu71dTqnOyQWl1MyTPRV8AmAnTgMMChTVDc3/E7Hot4FxnTo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yrwzIKxJLyOlRuVjyH2WuWw8q3AM6f6AtDPiL7a0cJ0=; b=KxdQ2KWMmq9x8SMUkCHE5qAsYn
 dsxdpxEHKEccTLm/t8omK+5SMsg+uP20PZWrvWtxKDjPsl1kR1zyLhG/GotjpqDgCYE2EtDM2yI6y
 THEzBQBlbZWHQu5FGD4GZykl13VE5lMpslJiC+hXzpctgEtJ6ygaj3M0/8PTeDWIuQgA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1md8Dw-007uhV-N6
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Oct 2021 09:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634723362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yrwzIKxJLyOlRuVjyH2WuWw8q3AM6f6AtDPiL7a0cJ0=;
 b=e1d6jJS9q1vFwL5elu4m1sQhJeTNo0YQdIyCVdPCFdKOWVIEyYey2EoR7qm2Tc3RPf0dRe
 8P83sq/RgDCqEcujye9PIXDSi35fN2g+8qG6VFEWDHWAMeiqNESDQBAyg+v4cjc5eO423N
 TIaj9jVwUeYPa91VeXEC6dT9nK9k1tM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-160-ZFkCjXapNaOorQ1nti-2Sg-1; Wed, 20 Oct 2021 05:49:19 -0400
X-MC-Unique: ZFkCjXapNaOorQ1nti-2Sg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE16F1006AAE;
 Wed, 20 Oct 2021 09:49:15 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3ED3018A8F;
 Wed, 20 Oct 2021 09:49:10 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <d58335124c7467703201a9cdba765a46a780c855.camel@redhat.com>
References: <d58335124c7467703201a9cdba765a46a780c855.camel@redhat.com>
 <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456866523.2614702.2234665737111683988.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <3087476.1634723349.1@warthog.procyon.org.uk>
Date: Wed, 20 Oct 2021 10:49:09 +0100
Message-ID: <3087477.1634723349@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jeff Layton <jlayton@redhat.com> wrote: > IDGI: how would
 I_PINNING_FSCACHE_WB get set in the first place? This is used by a later patch,
 but because this modifies a very commonly used header file, it was causing
 mass rebuilds every time I pushed or popped it. I can merge it back in now,
 I think. 
 Content analysis details:   (-1.6 points, 6.0 required)
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
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1md8Dw-007uhV-N6
Subject: Re: [V9fs-developer] [PATCH 03/67] vfs,
 fscache: Force ->write_inode() to occur if cookie pinned for
 writeback
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@redhat.com> wrote:

> IDGI: how would I_PINNING_FSCACHE_WB get set in the first place? 

This is used by a later patch, but because this modifies a very commonly used
header file, it was causing mass rebuilds every time I pushed or popped it.  I
can merge it back in now, I think.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
