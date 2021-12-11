Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1568347140B
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Dec 2021 14:38:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mw2Zj-0007G1-A8; Sat, 11 Dec 2021 13:38:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mw2Zi-0007Fv-3D
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Dec 2021 13:38:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Z8c8lX7Q347Z+4ORdcMYBofXUvb1OCWCHdF//k2AV4=; b=KYyJlvrhej8lXFBObc6XTujCj3
 msCQIPHmr7HWLGoCr61A00kCyf20oUUA25FU6nQgYQK8jY3Z4ROusLDcOoWiZBRwbhcEbvbLEQ5Tx
 vIjB+ium1qFBTWeJZJXcLBILZAhbWE/TIGZaz9WGfU5dmuKTpFHX9NQMqKEm0GWRO/JY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/Z8c8lX7Q347Z+4ORdcMYBofXUvb1OCWCHdF//k2AV4=; b=U3ZzmPzsvD2vOUDj6Gl8zF0t2q
 EKVMavBGmXSqtceY07GAIzeWjqAN2DUfOPDBBEFwfaWq4WbOozWU4UpgzRdPqtuVsOt4cbJAS1BEz
 25GKBV58NzLZAM4P9dxo097O2SP5iEa6tGv65b6WM45DyNbQXBRPgGwHFcQHeHn5ULv8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mw2Zi-0005SX-Ig
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Dec 2021 13:38:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639229878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/Z8c8lX7Q347Z+4ORdcMYBofXUvb1OCWCHdF//k2AV4=;
 b=DNli0noFqJ8lUPi7jbfZT67rQaCSs+19MVIEc5UYfulLowkQdCev5HwDr6eJIFkRHy9hYF
 ZpWFKUtDA6F+7Kzi9kJN5D0FtLeZa0oTeqopJBiU8l0IGOAvAWzX3rQQKZKcy+A58EgHov
 IC2SZCBaLsn21IEsrGTdpr5Q+J6+oLY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-557-qp91NnnxO2W56AfTygDTXQ-1; Sat, 11 Dec 2021 08:37:55 -0500
X-MC-Unique: qp91NnnxO2W56AfTygDTXQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F5FF801AAB;
 Sat, 11 Dec 2021 13:37:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7BBF188F7;
 Sat, 11 Dec 2021 13:37:45 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CALF+zOknSu_qkb9N0i4LY8tUtXmXirSsU7gGZsUOtLu8c88ieg@mail.gmail.com>
References: <CALF+zOknSu_qkb9N0i4LY8tUtXmXirSsU7gGZsUOtLu8c88ieg@mail.gmail.com>
 <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906979003.143852.2601189243864854724.stgit@warthog.procyon.org.uk>
To: David Wysochanski <dwysocha@redhat.com>
MIME-Version: 1.0
Content-ID: <353627.1639229864.1@warthog.procyon.org.uk>
Date: Sat, 11 Dec 2021 13:37:44 +0000
Message-ID: <353628.1639229864@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: David Wysochanski <dwysocha@redhat.com> wrote: > > (4)
 fscache_enable/disable_cookie()
 have been removed. > > > > Call fscache_use_cookie() and
 fscache_unuse_cookie()
 when a file is > > opened or closed to prevent a cache file from being culled
 an [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mw2Zi-0005SX-Ig
Subject: Re: [V9fs-developer] [PATCH v2 62/67] nfs: Convert to new fscache
 volume/cookie API
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
Cc: Steve French <sfrench@samba.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, linux-cifs <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, linux-cachefs <linux-cachefs@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Wysochanski <dwysocha@redhat.com> wrote:

> >  (4) fscache_enable/disable_cookie() have been removed.
> >
> >      Call fscache_use_cookie() and fscache_unuse_cookie() when a file is
> >      opened or closed to prevent a cache file from being culled and to keep
> >      resources to hand that are needed to do I/O.
> >
> >      Unuse the cookie when a file is opened for writing.  This is gated by
> >      the NFS_INO_FSCACHE flag on the nfs_inode.
> >
> >      A better way might be to invalidate it with FSCACHE_INVAL_DIO_WRITE
> >      which will keep it unused until all open files are closed.
> >
> 
> It looks like the comment doesn't match what was actually done inside
> nfs_fscache_open_file().  Is the code right and the comment just out of date?

The comment is out of date.  NFS_INO_FSCACHE isn't used now.

> I'm getting that kasan UAF firing periodically in this code path, and so it
> looks related to this change,though I don't have great info on it so far and
> it's hard to reproduce.

Can you copy the kasan UAF text into a reply?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
