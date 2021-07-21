Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ED93D16B3
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 20:55:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6HNH-0006WW-At; Wed, 21 Jul 2021 18:55:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1m6HNG-0006WP-FQ
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 18:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jJTgBMXwThnuFAlDzExyHYWCk5DsYLxTDpEqi54da7Q=; b=HlLMJzsqNOMFutfWP9JdWGI/4S
 cWK/jo9Hq17FoMuP1/mkg6JnxpQRuZtScmm0c8A6vg/P0cJxFfEksZdC4pBDDzpweYh5my29eYV2v
 EOZuX5BQdXJPNh7U4N7nfvkaRwPwE4gDFlOuD8sHRmc5aXOnZG42Eey1O892ToVFSjE4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jJTgBMXwThnuFAlDzExyHYWCk5DsYLxTDpEqi54da7Q=; b=k5g5VdL/stJtFoU+h2NFgbMq3q
 hzMWh4vzzU+A9wZN90hE4+441RAzDtbXsBfMLEVJbuwOvxDWR54xUCyPRQ+sRj1ZIAJlii3cgQy/U
 S+aSkZzeXWqmjhATrAwsKc4q5KS5sD0XGASybe4Rb9eU+Qx8DvWs6OD6o3e8xKRv/ldc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6HN9-00FzRu-Oi
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 18:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626893705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jJTgBMXwThnuFAlDzExyHYWCk5DsYLxTDpEqi54da7Q=;
 b=LjJYNclyexq7u1cGkCwxBHRzCVaqJercPGWCYlnWzdJ082gnEVJGC72fyirZFuxH4YEwLu
 73+k3lwJlNfVkKyDjnQ7f0tWBMPm+N7Gny0380OrNs9Zj8E/tcpb+8JnNx+vGxMJQKxtVs
 Rj1CjxCR3PGVTT1hfLxOl2g6iSYLHHQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-_zwGKJtQPgywbHz1n30GUA-1; Wed, 21 Jul 2021 14:55:02 -0400
X-MC-Unique: _zwGKJtQPgywbHz1n30GUA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8567F2B6;
 Wed, 21 Jul 2021 18:54:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-62.rdu2.redhat.com
 [10.10.112.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D744F5D740;
 Wed, 21 Jul 2021 18:54:52 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <e7a3b850e8a42845f4e020c7642743b3dce2b9f1.camel@redhat.com>
References: <e7a3b850e8a42845f4e020c7642743b3dce2b9f1.camel@redhat.com>
 <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
 <162687511125.276387.15493860267582539643.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <298116.1626893692.1@warthog.procyon.org.uk>
Date: Wed, 21 Jul 2021 19:54:52 +0100
Message-ID: <298117.1626893692@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m6HN9-00FzRu-Oi
Subject: Re: [V9fs-developer] [RFC PATCH 03/12] netfs: Remove
 netfs_read_subrequest::transferred
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Miklos Szeredi <miklos@szeredi.hu>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@redhat.com> wrote:

> The above two deltas seem like they should have been in patch #2.

Yeah.  Looks like at least partially so.

> > @@ -635,15 +625,8 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
> >  		goto failed;
> >  	}
> >  
> > -	if (WARN(transferred_or_error > subreq->len - subreq->transferred,
> > -		 "Subreq overread: R%x[%x] %zd > %zu - %zu",
> > -		 rreq->debug_id, subreq->debug_index,
> > -		 transferred_or_error, subreq->len, subreq->transferred))
> > -		transferred_or_error = subreq->len - subreq->transferred;
> > -
> >  	subreq->error = 0;
> > -	subreq->transferred += transferred_or_error;
> > -	if (subreq->transferred < subreq->len)
> > +	if (iov_iter_count(&subreq->iter))
> >  		goto incomplete;
> >  
> 
> I must be missing it, but where does subreq->iter get advanced to the
> end of the current read? If you're getting rid of subreq->transferred
> then I think that has to happen above, no?

For afs, afs_req_issue_op() points fsreq->iter at the subrequest iterator and
calls afs_fetch_data().  Thereafter, we wend our way to
afs_deliver_fs_fetch_data() or yfs_deliver_fs_fetch_data() which set
call->iter to point to that iterator and then call afs_extract_data() which
passes it to rxrpc_kernel_recv_data(), which eventually passes it to
skb_copy_datagram_iter(), which advances the iterator.

For the cache, the subrequest iterator is passed to the cache backend by
netfs_read_from_cache().  This would be cachefiles_read() which calls
vfs_iocb_iter_read() which I thought advances the iterator (leastways,
filemap_read() keeps going until iov_iter_count() reaches 0 or some other stop
condition occurs and doesn't thereafter call iov_iter_revert()).

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
