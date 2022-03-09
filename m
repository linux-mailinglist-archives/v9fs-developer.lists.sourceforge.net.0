Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0834D3D13
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 23:35:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS4uG-0003pu-Pz; Wed, 09 Mar 2022 22:35:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nS4uF-0003pn-29
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 22:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7BCptgTn0msFj3Lu2nO08V4lR03WYPl53I+vGTYn7fk=; b=POEOQATCuQ2fZpqEnBsCSL4VB6
 4T+nvZt4e3allyp2jvrF4jbZtQ7mYnSqeuHF5DuABhx27qWmXSdO1yGJDqz4bdVJzXkiRszKFanxQ
 YNDyRTGFUN7m+wCvzZXU3q5vPCuy56Gx8P03gNDzzre31kH3oW2M/oS5Mwn/4RxJzbs8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7BCptgTn0msFj3Lu2nO08V4lR03WYPl53I+vGTYn7fk=; b=ZMOdORxPCiGGhcuhbvIQzN4Hgg
 QN8x+iOz2jIabSOyEvu5fC0FThZmprT8xph/0XyesJfI2/TuKufEgWXhqGuVWzjHW1JT0flnycpPA
 ifjaaLejqJxHZl1gIFXEwEDpHKcyHRope/F1VE711/c0v4e763qk0Bk7uU7Q7SJZX7cE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS4uC-0004tv-GK
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 22:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646865330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7BCptgTn0msFj3Lu2nO08V4lR03WYPl53I+vGTYn7fk=;
 b=fbYiabUp/uDUIUaecCQsduAEt0GMWW8Nhms468tDLVhY0Q2p540/ki9Plzi/9WO3Iadn/d
 guLnaCfjL84lGTiIyOGdjYWZuSF7eglkDUHw4ow/9WiqIkLPOblYWV6oyzgM9RfgMotD+y
 Mnm3hZR5DWk/ObMPHxV5vLVybN2fb8E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-578-P-IsmW0HMkWz7wctcP4Pcg-1; Wed, 09 Mar 2022 17:35:27 -0500
X-MC-Unique: P-IsmW0HMkWz7wctcP4Pcg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE0D7835DE0;
 Wed,  9 Mar 2022 22:35:23 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 954F945302;
 Wed,  9 Mar 2022 22:35:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <92ebc9fbdda967c14274f2b246ef3f77a1f21224.camel@kernel.org>
References: <92ebc9fbdda967c14274f2b246ef3f77a1f21224.camel@kernel.org>
 <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678220204.1200972.17408022517463940584.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <1842057.1646865301.1@warthog.procyon.org.uk>
Date: Wed, 09 Mar 2022 22:35:01 +0000
Message-ID: <1842058.1646865301@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > > -
 op->store.i_size = max(pos + size, i_size);
 > > + op->store.i_size = max(pos + size, ictx->remote_i_size); 
 > > Ahh ok, so if i_size is larger than is represented by this write, you'll
 > have a z [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS4uC-0004tv-GK
Subject: Re: [V9fs-developer] [PATCH v2 19/19] afs: Maintain
 netfs_i_context::remote_i_size
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
 linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> > -	op->store.i_size = max(pos + size, i_size);
> > +	op->store.i_size = max(pos + size, ictx->remote_i_size);
> 
> Ahh ok, so if i_size is larger than is represented by this write, you'll
> have a zeroed out region until writeback catches up. Makes sense.

That's the way it was working.  With this change, we track the server's idea
of the file size separately from our local inode->i_size (which is updated by
the modifications into the pagecache) and only expand the server's setting to
the end of the data we're storing, not to our local i_size.  I'm trying to
avoid zeroed-out regions appearing in the file.

Forcible expansion by truncate is a different matter.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
