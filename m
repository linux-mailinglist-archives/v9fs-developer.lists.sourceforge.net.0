Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7754D3CEB
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 23:28:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS4mz-00051k-7l; Wed, 09 Mar 2022 22:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nS4my-00051e-M2
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 22:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YVaegIYPMNuliKEZs1hQ0iCOAz5kKxaMcLvAsoa4pRE=; b=YSyzG9q5v0vPHvdPQMyqCa0ZaY
 yGjuobYU0vEas+21hj8JKiNktsX7CYrf0EddN4jMFAy4+/C2KiZyds4ybUaXzTEcaXHSWa5bIYGaV
 6EyknEs6ZPFdTR3biUvs6Lxy8FK/WaDtVcJCIi57zhimsnYInaAiXMstQyZPIr36oubM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YVaegIYPMNuliKEZs1hQ0iCOAz5kKxaMcLvAsoa4pRE=; b=DZChjX8ZhhDuS/6J83z4Jm2RLP
 bhBkbrxZ9VmDFhIJX24FYznWMTtFFszHN4mbkJ1ss8JQVy9iKUZ1sPBO+RaUxdCx37EAuiBoj6+KF
 ffA2JDe4HzN2/qxgo1BLywMcMp2tciFNuiCdg90r1/7tqnbcX2l281CmOU1r5uhnRjIg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS4mu-0004Od-JW
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 22:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646864882;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YVaegIYPMNuliKEZs1hQ0iCOAz5kKxaMcLvAsoa4pRE=;
 b=G+VHJCCgK/ViqhkDp5Nro6y4YIlOmGJTJwI9fZ1K46kV8oOHsPIcP/7hKf2NTqX7OBlg7o
 9D5CxZ2ZM9A66T+yN6Oc/+Rq1ZmB315LkQDy88APaBL6Ia/UYQYGqmKm3XseKKbdkEOuK+
 tBr3PoaDNtvbOG+jPsHZtkiRLX/crCo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-428-dFWyF8bnPDmAjCcY4C1Buw-1; Wed, 09 Mar 2022 17:28:01 -0500
X-MC-Unique: dFWyF8bnPDmAjCcY4C1Buw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74E6D1854E21;
 Wed,  9 Mar 2022 22:27:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CB20E4E2AE;
 Wed,  9 Mar 2022 22:27:52 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <2ebfd2f772ceef605896e58bbd0e733e1413ff71.camel@kernel.org>
References: <2ebfd2f772ceef605896e58bbd0e733e1413ff71.camel@kernel.org>
 <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678219305.1200972.6459431995188365134.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <1841544.1646864871.1@warthog.procyon.org.uk>
Date: Wed, 09 Mar 2022 22:27:51 +0000
Message-ID: <1841545.1646864871@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jeff Layton <jlayton@kernel.org> wrote: > This seems like
 something useful, but I wonder if it'll need some sort > of serialization
 vs. concurrent updates. Quite possibly, though that may be something that
 we have to delegate to the network filesystem. kafs, for instance, performs
 local serialisation of StoreData RPCs to any given inode because the serve
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS4mu-0004Od-JW
Subject: Re: [V9fs-developer] [PATCH v2 18/19] netfs: Keep track of the
 actual remote file size
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
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> This seems like something useful, but I wonder if it'll need some sort
> of serialization vs. concurrent updates.

Quite possibly, though that may be something that we have to delegate to the
network filesystem.  kafs, for instance, performs local serialisation of
StoreData RPCs to any given inode because the server will exclusively lock the
remote vnode around the write-to-disk and callback break (ie. change
notification) phases.  This does not preclude, however, another client making
a change whilst the local lock is held.  Of course, in such a case, we're into
conflict resolution and may end up invalidating the local copy.

> Can we assume that netfs itself will never call netfs_resize_file?

Probably.  Depends on how truncation gets handled.

> Ceph already has some pretty complicated size tracking, since it can get
> async notifications of size changes from the MDS. We'll have to consider
> how to integrate this with what it does. Probably this will replace one
> (or more?) of its fields.

ceph's i_reported_size maybe?  cifs has server_eof.

> We may need to offer up some guidance wrt locking.

i_lock may be a good fit.  I wonder if it's worth at some point moving i_lock
to being a seqlock so that various values ordinarily protected by it are
accessible using read_seqbegin().

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
