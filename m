Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCCA4D3CA5
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 23:09:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS4V1-00070E-8k; Wed, 09 Mar 2022 22:09:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nS4Uz-000708-57
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 22:09:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4qDmg2fffNWU1syoN14+7jtGn5Y7/b0UyTVYlsya390=; b=d2TlGlaNAh6f09dR7ViaJBfKpM
 we1+Nt+MwqXlASbiSiu1JMffiv4qjA2BA2WqhTFjfIzt4Q/9V+rsHrrRlJuj4uwo94vp6GTXky7XF
 4RHmyfS+YuPe2KdAEDRD0Bp5fOPg0+iGMhnLI2Ufkg/u6lZlcb3+hIObQJ4J0Fy3PHSU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4qDmg2fffNWU1syoN14+7jtGn5Y7/b0UyTVYlsya390=; b=Bp7aFtwaYkhaFMHw96IUJsMaa7
 8mMUGGuZbtV+f3FhoJjiXc9hQI1NiWrszqW+07X8RTuI6tmoH9RU4oDtSnY/InMBa/3xWTSR2dHDH
 SRK59WY1kkqjIUdkMSVqL2I0txz7nVtMlZini99Cr7KN3D+kn4StVOe7yBHnznbk1LTI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS4Uo-0002zf-RW
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 22:09:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646863760;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4qDmg2fffNWU1syoN14+7jtGn5Y7/b0UyTVYlsya390=;
 b=VY1UPUBYjQLtd8oxQoSSJfmWny4OujfdIOHvFcv6l8al6VXvjfGawpI+ELwK4gajhAWhjE
 kDy/lTq8jf1hK9qQYlKJEC1iPpcHjLXF9x8WolXGYPNVVKrt2V8Z1yb42D0XSXHBEZnd9P
 S4h9VZKucK18eirNZKVfCaLezIzdpZI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-322-GvQmizKXPhiPEd9CfK-jyg-1; Wed, 09 Mar 2022 17:09:17 -0500
X-MC-Unique: GvQmizKXPhiPEd9CfK-jyg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 625391006AA6;
 Wed,  9 Mar 2022 22:09:15 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 318CC709F1;
 Wed,  9 Mar 2022 22:08:58 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <9d69be49081bccff44260e4c6e0049c63d6d04a1.camel@redhat.com>
References: <9d69be49081bccff44260e4c6e0049c63d6d04a1.camel@redhat.com>
 <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678214287.1200972.16734134007649832160.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <1840691.1646863738.1@warthog.procyon.org.uk>
Date: Wed, 09 Mar 2022 22:08:58 +0000
Message-ID: <1840692.1646863738@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@redhat.com> wrote: > > + rreq->work.func
 = netfs_rreq_work; > > + > > ^^^ > This seems like it should be an INIT_WORK
 call. I assume you're moving > this here this because you intend to use
 netfs_alloc_request for write [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS4Uo-0002zf-RW
Subject: Re: [V9fs-developer] [PATCH v2 13/19] netfs: Add a function to
 consolidate beginning a read
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

Jeff Layton <jlayton@redhat.com> wrote:

> > +	rreq->work.func = netfs_rreq_work;
> > +
> 
> ^^^
> This seems like it should be an INIT_WORK call. I assume you're moving
> this here this because you intend to use netfs_alloc_request for writes
> too?

Interesting question.  INIT_WORK() was called in netfs_alloc_request(), so the
lockdep state has already been initialised and may even have been used already
(say, for instance, we do an RMW cycle buffering in the same request struct).

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
