Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F33487661
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jan 2022 12:20:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n5nIF-0002Nz-SA; Fri, 07 Jan 2022 11:20:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n5nIE-0002HD-Sa
 for v9fs-developer@lists.sourceforge.net; Fri, 07 Jan 2022 11:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PswEpjxzjKrjXqvo3ZcUyyPMxbfB05nP29oDsBh+1Z4=; b=eHcNUU2REyX8kXheYfJqlvLK3s
 DXSFXRhDdjAO/dwupYoYJoVWdnzwVUFgFP+Kuse8WhT84GNQhtBNuEAOjJXFRcCbwzvwM7zxr9zQ9
 ERMp+S0kS9X3oCzbfXYKW1AC75LUwBQsxdbbWbgyvYGThkA2JeCunD+RAK6d3ciqmF60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PswEpjxzjKrjXqvo3ZcUyyPMxbfB05nP29oDsBh+1Z4=; b=VGpvqIXB4dnHkgCkBeu2T1Gkuk
 cd5Qj1sLXPIjoRcwa0lOt354SJW+bFm8/5Wn1yU5nz8qRdgGDvfmuki2kHGyxsERzcPZ7EnPAWmeX
 7UOJhW52bnH6rpVanoWwuS0MLSfjx77scxpMWfVkY6LA0toipxmvPR49LuKPHvdHL0dQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5nIB-0004o7-JW
 for v9fs-developer@lists.sourceforge.net; Fri, 07 Jan 2022 11:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641554412;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PswEpjxzjKrjXqvo3ZcUyyPMxbfB05nP29oDsBh+1Z4=;
 b=dcU4TT+000R99CGvrPN4CxWlqYaarfdF5pRcHuCj0sb6kadvg7q251/Aoj9sFxKDY/Rpi5
 qX/YtOISywNVkSzPzO8CZu4NbEb5YMDOSys2GE/DLZXll+2PpkKKYmEQLMXhN9jMQfwxEC
 8qxtNtjqk/6J3Q0rL+6XuhjjOPcivU8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-_zFRiW7tPMu4lwviEKOwRQ-1; Fri, 07 Jan 2022 06:20:07 -0500
X-MC-Unique: _zFRiW7tPMu4lwviEKOwRQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CF571800D50;
 Fri,  7 Jan 2022 11:20:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7D1597E23A;
 Fri,  7 Jan 2022 11:19:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1e102cc81aaf71df2b7f5ae906b79c188a34a111.camel@kernel.org>
References: <1e102cc81aaf71df2b7f5ae906b79c188a34a111.camel@kernel.org>
 <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021549223.640689.14762875188193982341.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <3149373.1641554392.1@warthog.procyon.org.uk>
Date: Fri, 07 Jan 2022 11:19:52 +0000
Message-ID: <3149374.1641554392@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > Since most cookies
 are fairly small, is there any real benefit to > optimizing for length here?
 How much inflation are we talking about? Taking AFS as an example, a vnode
 is represented at the file level by two numbers: a 32-bit or 96-bit file
 ID and a 32-bit uniquifier. If it's a 96-bit file ID, a lot of the time, the
 upper 64-bits wi [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1n5nIB-0004o7-JW
Subject: Re: [V9fs-developer] [PATCH v4 44/68] cachefiles: Implement key to
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> Since most cookies are fairly small, is there any real benefit to
> optimizing for length here? How much inflation are we talking about?

Taking AFS as an example, a vnode is represented at the file level by two
numbers: a 32-bit or 96-bit file ID and a 32-bit uniquifier.  If it's a 96-bit
file ID, a lot of the time, the upper 64-bits will be zero, so we're talking
something like:

	S421d4,1f07f34,,

instead of:

	S000421d401f07f340000000000000000

or:

	E0AAQh1AHwfzQAAAAAAAAAAA==

The first makes for a more readable name in the cache.  The real fun is with
NFS, where the name can be very long.  For one that's just 5 words in length:

	T81010001,1,20153e2,,a906194b

instead of:

	T8101000100000001020153e200000000a906194b

or:

	E0gQEAAQAAAAECAVPiAAAAAKkGGUs=

(The letter on the front represents the encoding scheme; in the base64 encoding
the second digit indicates the amount of padding).

I don't know how much difference it makes to the backing filesystem's
directory packing - and it may depend on the particular filesystem.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
