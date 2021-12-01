Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2854649AB
	for <lists+v9fs-developer@lfdr.de>; Wed,  1 Dec 2021 09:29:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1msKzq-0000JM-Nx; Wed, 01 Dec 2021 08:29:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1msKzo-0000JF-Vs
 for v9fs-developer@lists.sourceforge.net; Wed, 01 Dec 2021 08:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4tUl7G8alL78nfbRo0WLNZl+gkt+X3mS2JKYOztBaCw=; b=B/j4vThxgaEptjrO0sQraDrZJV
 3axqpYap0OXEs3VHEPF3Zoa5UwIPVpjeZs79Hmh9cEqNa0TZS6gJEO9xqveuuIziNPk5H47M0CYVp
 a1rRvsxEAqFX+/S23IxNHKdG/FxRTKEmwABuHof6OPXZICMGhcz21N7J423QUAd7cwoM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4tUl7G8alL78nfbRo0WLNZl+gkt+X3mS2JKYOztBaCw=; b=bm49DwFJ9zcNo6/Oaoko5oTb6U
 qUnqIunfjDMSL3KP+6JeoQycEYgOXlwjek27cqGMwWmbeIyw3ja2WYPyJ9mGv9o3nn905TNVDiVH+
 eMXkm53jTkSoe3fpTEPmTFa85KXBCYNa/du8cir0RbIuWNp+6GGkLoxEQvT1QpZdtvCM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msKzn-0005hy-Jw
 for v9fs-developer@lists.sourceforge.net; Wed, 01 Dec 2021 08:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638347377;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4tUl7G8alL78nfbRo0WLNZl+gkt+X3mS2JKYOztBaCw=;
 b=Q9HTm2UK5n3YyPaocpbkGIT5GvvKs130tSBFOthRPS0We8O5q0q0Gtc4w75CTKqDgE3WFO
 XuiW0kuCl7iVjNlOLHIFV88qNNb/vS9d4TEqc7XK5Qct8yo1YZZqEMGiBh0QBVcXI8iuwp
 //esibe6Ljr4T6St26rp7mdaj0s+muY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-521-AnOULJD2MFCLO_7J_kL0gQ-1; Wed, 01 Dec 2021 03:29:34 -0500
X-MC-Unique: AnOULJD2MFCLO_7J_kL0gQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B2A42190B2A1;
 Wed,  1 Dec 2021 08:29:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A14EB4D73A;
 Wed,  1 Dec 2021 08:29:26 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <bcefb8f2-576a-b3fc-cc29-89808ebfd7c1@linux.alibaba.com>
References: <bcefb8f2-576a-b3fc-cc29-89808ebfd7c1@linux.alibaba.com>
 <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
 <163819640393.215744.15212364106412961104.stgit@warthog.procyon.org.uk>
To: JeffleXu <jefflexu@linux.alibaba.com>
MIME-Version: 1.0
Content-ID: <571667.1638347365.1@warthog.procyon.org.uk>
Date: Wed, 01 Dec 2021 08:29:25 +0000
Message-ID: <571668.1638347365@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: JeffleXu <jefflexu@linux.alibaba.com> wrote: > > + /* If the
 path is usable ASCII, then we render it directly */ > > + if (print) { >
 > + len = 1 + keylen + 1; > > + name = kmalloc(len, GFP_KERNEL); > > + if
 (!name) > > + return false; > > + > > [...] 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1msKzn-0005hy-Jw
Subject: Re: [V9fs-developer] [PATCH 44/64] cachefiles: Implement key to
 filename encoding
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

> > +	/* If the path is usable ASCII, then we render it directly */
> > +	if (print) {
> > +		len = 1 + keylen + 1;
> > +		name = kmalloc(len, GFP_KERNEL);
> > +		if (!name)
> > +			return false;
> > +
> > +		name[0] = 'D'; /* Data object type, string encoding */
> > +		name[1 + keylen] = 0;
> > +		memcpy(name + 1, key, keylen);
> > +		goto success;
> 			^
> If we goto success from here,
> ...
> > +
> > +success:
> > +	name[len] = 0;
> 	     ^
> then it seems that this will cause an out-of-boundary access.

You're right.  I'll change that to:

		len = 1 + keylen;
		name = kmalloc(len + 1, GFP_KERNEL);

and I shouldn't need:

		name[1 + keylen] = 0;

as that's also done after the success label.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
