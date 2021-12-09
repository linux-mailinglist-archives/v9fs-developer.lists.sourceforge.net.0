Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 174B746ED88
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 17:50:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvMcs-00036Q-1J; Thu, 09 Dec 2021 16:50:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvMcq-00036F-HF
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 16:50:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J1GcNbc9O5U5G8LlnP/kK4YsVg9drcvikjSXrTjTmMo=; b=KGZTUurNka6gdgNs8fomhFpVDg
 e6d6B4MQoqfEWAju5kp6eSZUZxdPf4uBPnttvFBsdUv9dr9AjKi/3CiorjJ1juGgpP9aVntV4yZ2h
 554E9XAiZOorD6QEsm638qTtCubae5Mf7w3iRPmvq6cHElKyVmQuUCwPLOdHUfQfU4Ss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J1GcNbc9O5U5G8LlnP/kK4YsVg9drcvikjSXrTjTmMo=; b=QBt7Sc7fqIgl6275FrAdK8qZdz
 Bljd1jdV4wymUYpzNwQYxyXPtH77KY7uJFbHqhHyGQyZVjIZn+f3XxnG9uUaqslCSpFFBf1k7Ti6r
 4qSeih3On5KhtOcutgClykJfDSGdSktGx01CKOZFUfft/Qu3Y1tpCndpbeKIvJJZsu4U=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvMcp-00ABLo-Ic
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 16:50:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639068625;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J1GcNbc9O5U5G8LlnP/kK4YsVg9drcvikjSXrTjTmMo=;
 b=IlBbN9E61O65mRo7TWQyETeb8hpbzltk4GDVvPkrc2En5ws7cgi9ELllAjrSfbi7GpTvKZ
 uKpnybkj1+FqLcLnVDR34gVYcsaZDlBy+rKE7TTU69KGEeXKO7WF7SeiFG8oLInOJ91/t+
 FDYjusSKUYi3wwB5Q7q4P8YWLHDQR54=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-JHLalODTOZi6-eTunFrpGg-1; Thu, 09 Dec 2021 11:50:21 -0500
X-MC-Unique: JHLalODTOZi6-eTunFrpGg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79DE718C89DF;
 Thu,  9 Dec 2021 16:50:19 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 24DE25ED39;
 Thu,  9 Dec 2021 16:49:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <d4167c15-b3ce-73b2-1d66-97d651723305@linux.alibaba.com>
References: <d4167c15-b3ce-73b2-1d66-97d651723305@linux.alibaba.com>
 <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
 <163819612321.215744.9738308885948264476.stgit@warthog.procyon.org.uk>
To: JeffleXu <jefflexu@linux.alibaba.com>
MIME-Version: 1.0
Content-ID: <143691.1639068593.1@warthog.procyon.org.uk>
Date: Thu, 09 Dec 2021 16:49:53 +0000
Message-ID: <143692.1639068593@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  JeffleXu <jefflexu@linux.alibaba.com> wrote: > > @@ -466,7
 +466,7 @@ static void netfs_rreq_short_read(struct netfs_read_request *rreq,
 > > netfs_get_read_subrequest(subreq); > > atomic_inc(&rreq->nr_rd_ops);
 > > if (subreq->source == NETFS_READ [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvMcp-00ABLo-Ic
Subject: Re: [V9fs-developer] [PATCH 24/64] netfs: Pass more information on
 how to deal with a hole in the cache
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
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

JeffleXu <jefflexu@linux.alibaba.com> wrote:

> > @@ -466,7 +466,7 @@ static void netfs_rreq_short_read(struct netfs_read_request *rreq,
> >  	netfs_get_read_subrequest(subreq);
> >  	atomic_inc(&rreq->nr_rd_ops);
> >  	if (subreq->source == NETFS_READ_FROM_CACHE)
> > -		netfs_read_from_cache(rreq, subreq, true);
> > +		netfs_read_from_cache(rreq, subreq, NETFS_READ_HOLE_CLEAR);
> 
> Hi I'm not sure why NETFS_READ_HOLE_CLEAR style should be used in 'short
> read' case.

The cache backing filesystem (eg. ext4) might have excised a chunk of zeros
from the cache in order to optimise its extent list.  This instructs the cache
to zero over the cracks.  Actually, I need to think a bit further on this.
This was written assuming that the cache tracks its content independently -
but those patches are not in with this set.

> I'm not sure why 'subreq->start' is not incremented with
> 'subreq->transferred' when calling cres->ops->read() in 'short read' case.

subreq->start shouldn't get changed.  subreq->transferred is sufficient.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
