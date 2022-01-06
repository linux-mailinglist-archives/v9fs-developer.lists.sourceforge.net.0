Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D4E4868FC
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Jan 2022 18:44:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n5WoM-0004ze-4s; Thu, 06 Jan 2022 17:44:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n5WoK-0004zY-QA
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 17:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zpIRZHdll9Kvd0nCHQ+ZsJmW/V2ZBc2nIIWedRx6PP0=; b=OwnukJgVwvhh5fwHqq7DuWvKoh
 0u/oFI6CK8zRKL4RxA7crTFgTdm9q4eViGUd7HBmc94ytpokqInFZ0q+YFvH3ECPUhcGFnKCIGHg0
 bxOBMY2IY4PaaJLlXdYhRtFhUg2Gqk9JSt4L4JPPAgPyOO8rc+eeQX9kSSdGubWVhajk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zpIRZHdll9Kvd0nCHQ+ZsJmW/V2ZBc2nIIWedRx6PP0=; b=bm8lyLqb4LfKJ0+K4yfiWApGMg
 QXwUEteUQ3TUly8wUmUF2STUmogEJ91oGt+oSvvX9FBqeoncyYFcNQrn5gndScui6BpgFQ1IiyKLL
 ZyuWGpfdmssZ+XQBQTuCrOFQGmkkXIiH6sbvaxl/CGDxX+Zc7Ci+58UlM3fLU8G/Xxgg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5WoG-0001w5-6y
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 17:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641491053;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zpIRZHdll9Kvd0nCHQ+ZsJmW/V2ZBc2nIIWedRx6PP0=;
 b=bR3GxVjSoIQeuEyk0+GzR8OPzb07fxDPWWxUYZjo4hocfhoZzSS1c27XPtLAsiCShLE2K9
 BfFATgMGjzqt3Od6gRkP6k4daNJh734/veEw0GCYgA8elaXCs60wthQnBArH2k6Z/3EXjr
 kv9S/yUiGzuJJbxOAQxSlsP/qfuiHVQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-332-Bg1iYB-BPxuii1R-44xhhw-1; Thu, 06 Jan 2022 12:44:10 -0500
X-MC-Unique: Bg1iYB-BPxuii1R-44xhhw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EF87190A7A0;
 Thu,  6 Jan 2022 17:44:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E22B777479;
 Thu,  6 Jan 2022 17:44:04 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <568749bd7cc02908ecf6f3d6a611b6f9cf5c4afd.camel@kernel.org>
References: <568749bd7cc02908ecf6f3d6a611b6f9cf5c4afd.camel@kernel.org>
 <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021543872.640689.14370017789605073222.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <2856723.1641491044.1@warthog.procyon.org.uk>
Date: Thu, 06 Jan 2022 17:44:04 +0000
Message-ID: <2856724.1641491044@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > > + /* check
 parameters */ > > + ret = -EOPNOTSUPP;
 > > + if (d_is_negative(root) || > > + !d_backing_inode(root)->i_op->lookup
 || > > + !d_backing_inode(root)->i_op->mkdir || > > + !(d_backing_inod [...]
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
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
X-Headers-End: 1n5WoG-0001w5-6y
Subject: Re: [V9fs-developer] [PATCH v4 40/68] cachefiles: Implement cache
 registration and withdrawal
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

> > +	/* check parameters */
> > +	ret = -EOPNOTSUPP;
> > +	if (d_is_negative(root) ||
> > +	    !d_backing_inode(root)->i_op->lookup ||
> > +	    !d_backing_inode(root)->i_op->mkdir ||
> > +	    !(d_backing_inode(root)->i_opflags & IOP_XATTR) ||
> > +	    !root->d_sb->s_op->statfs ||
> > +	    !root->d_sb->s_op->sync_fs ||
> > +	    root->d_sb->s_blocksize > PAGE_SIZE)
> > +		goto error_unsupported;
> > +
> 
> That's quite a collection of tests.
> 
> Most are obvious, but some comments explaining the need for others would
> not be a bad thing. In particular, why is s_blocksize > PAGE_SIZE
> unsupported?

It can't do page-sized DIO requests to a filesystem with a block size larger
than a page.  In the future I can work around that in conjunction with
netfslib by expanding read and write sizes.

> Also, should you vet whether the fs supports i_op->tmpfile here ?

That's a good idea.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
