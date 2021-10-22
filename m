Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECC7437ECA
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:40:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1me0PD-0007i0-Ox; Fri, 22 Oct 2021 19:40:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1me0PC-0007hp-PJ
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TXn+dNe02I1e9WL3b+8Rpc7Yy2ZUl284mKuARnxOrKM=; b=YvlY6xPy/kxOhm8sI1c7kPd0M9
 /p+QZGd6Wcej8zbuEnwhpc8ID/5or9srIxqe6yahE35QB2HYmfbI8vnx9f8mOee0P6XMHQNHZGsXR
 C/fOtj3lIKPf4347yw3ZcT6nzBpbXWRn9wlNMo/oar8Gj7mMMY8zaMEh53uycTagY3ko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TXn+dNe02I1e9WL3b+8Rpc7Yy2ZUl284mKuARnxOrKM=; b=hstW5PC2JB2xJLC/TbxMvIgj05
 /KZbqQDc9tQg0zxf0yrq6pO0+qJFl0P4PqHHgZ3Lk8W+hWJKocX8yWoiOmP7dHqZE3udHQl9nIA5E
 DZAcTDlq48aHx4Bf4mukYqNKi6OGCbrRQcqa2g11/kZgOSNGISo+xtGr75jDyfcPb4LE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1me0PC-00CJyD-7J
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634931635;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TXn+dNe02I1e9WL3b+8Rpc7Yy2ZUl284mKuARnxOrKM=;
 b=Z6qdVq18zN8Ebb4rnjV2X8PXR93cjhN/Jzug8j4vLAmpcOiPQgiwfae8dY1hUTryV5kVQt
 ZM+3fPnXOeCoNnt3NjjMcxA3xHZaofSvWGDLkOR18HaXyIhCorZVOgq5TamS83JjKAjiEU
 9bD92JuQ1t6keOpXuLTAuilL2aXttTw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-524-zGI3szvNO1-ZuOVh4-qMlA-1; Fri, 22 Oct 2021 15:40:32 -0400
X-MC-Unique: zGI3szvNO1-ZuOVh4-qMlA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1851B806689;
 Fri, 22 Oct 2021 19:40:30 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 592161346F;
 Fri, 22 Oct 2021 19:40:17 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wjmx7+PD0hzWj5Bg2b807xYD2KCZApTvFje=ufo+MxBMQ@mail.gmail.com>
References: <CAHk-=wjmx7+PD0hzWj5Bg2b807xYD2KCZApTvFje=ufo+MxBMQ@mail.gmail.com>
 <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <1041556.1634931616.1@warthog.procyon.org.uk>
Date: Fri, 22 Oct 2021 20:40:16 +0100
Message-ID: <1041557.1634931616@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Linus Torvalds <torvalds@linux-foundation.org> wrote: >
 Honestly, 
 I don't see the point of this when it ends up just being > dead code basically
 immediately. > > You don't actually support picking one or the other at build
 time, > just a hard switch-over [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1me0PC-00CJyD-7J
Subject: Re: [V9fs-developer] [PATCH v2 00/53] fscache: Rewrite index API
 and management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, dhowells@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, CIFS <linux-cifs@vger.kernel.org>,
 "Matthew
 Wilcox \(Oracle\)" <willy@infradead.org>, Jeff Layton <jlayton@kernel.com>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> Honestly, I don't see the point of this when it ends up just being
> dead code basically immediately.
> 
> You don't actually support picking one or the other at build time,
> just a hard switch-over.
> 
> That makes the old fscache driver useless. You can't say "use the old
> one because I don't trust the new". You just have a legacy
> implementation with no users.

What's the best way to do this?  Is it fine to disable caching in all the
network filesystems and then directly remove the fscache and cachefiles
drivers and replace them?  It won't stop the network filesystems actually
working - it'll just mean that they don't do any caching until converted and
have caching reenabled.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
