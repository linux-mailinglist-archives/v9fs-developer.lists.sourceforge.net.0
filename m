Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B909E40B75B
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 20:59:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQDeW-0004nA-LK; Tue, 14 Sep 2021 18:59:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mQDeV-0004my-DQ
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 18:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3OUaDnOxKNbvKbqhxE7IAvlc8abcRFpZR5Sv/ym/5Ys=; b=Wxrt7/u8NwBYAZqW3bc9Njjmmt
 ShzR+W5DWXEOzFDAkPzpE9IGswn0IU/YrLjvGK0REKURrNzFfRZ5oLGKRjmI5H7nSAjcedf0PLTEl
 DVlLsZ9jM67+xs5BAJ28zRgs+H17Aj01COuh0Ab/n75qha8j0F/twUu7zOISDPJvWGxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3OUaDnOxKNbvKbqhxE7IAvlc8abcRFpZR5Sv/ym/5Ys=; b=DE5iOZzYxKVBN72tDoR1O8LGmO
 lmsM28rcbFz5WEuI5wmg4FhkyHIqwG5kXEnT15FfaIbY3zdaTuc0dbPgi2MCuMxnRastajFDzucVL
 8z9Wki3CFkpZ+GvUR7qXBizyKRMH6ceHgNBxoek13khEXNgYqJc9QO+3QKREIIEmj62s=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQDeU-00AiD7-Li
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 18:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631645957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3OUaDnOxKNbvKbqhxE7IAvlc8abcRFpZR5Sv/ym/5Ys=;
 b=TuoNLdAVxHonvf8be3WaeK6OOoNJg85imVPHsK+l/BBuv27VZ0zZQZ7tS6rsxxnqGj+0J/
 bWD2MK4UQWGnlWdH9VWmTayAHsuDjLp9kvigLr/E4v8z9cYlRirEb4EHNVQLvMBpVZ4Cbf
 Ycjz5cyJ+rkwdhJksFFxZEltkcLtS5U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-434-DTeW0HMUPTu9bfacEsuHNg-1; Tue, 14 Sep 2021 14:59:14 -0400
X-MC-Unique: DTeW0HMUPTu9bfacEsuHNg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DCC78100CC84;
 Tue, 14 Sep 2021 18:59:11 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 26FAE7A8D2;
 Tue, 14 Sep 2021 18:59:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wgR_unCDRZ+8iTb5gBO6bgRkuS4JYBpi25v12Yp6TzWVA@mail.gmail.com>
References: <CAHk-=wgR_unCDRZ+8iTb5gBO6bgRkuS4JYBpi25v12Yp6TzWVA@mail.gmail.com>
 <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
 <CAHk-=wiVK+1CyEjW8u71zVPK8msea=qPpznX35gnX+s8sXnJTg@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <738325.1631645944.1@warthog.procyon.org.uk>
Date: Tue, 14 Sep 2021 19:59:04 +0100
Message-ID: <738326.1631645944@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Linus Torvalds <torvalds@linux-foundation.org> wrote: > >
 Call it "fallback" or "simple" or something that shows the intent, but > >
 no, I'm not taking patches that introduce a _new_ interface and call > >
 it "deprecated". 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mQDeU-00AiD7-Li
Subject: Re: [V9fs-developer] [RFC PATCH 0/8] fscache: Replace and remove
 old I/O API
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, Steve French <sfrench@samba.org>,
 "open list:NFS, SUNRPC, 
 AND..." <linux-nfs@vger.kernel.org>, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> > Call it "fallback" or "simple" or something that shows the intent, but
> > no, I'm not taking patches that introduce a _new_ interface and call
> > it "deprecated".

Yeah, I'll change it to "fallback" - I started talking about it like that in
the docs anyway.

> Put another way: to call something "deprecated", you have to already
> have the replacement all ready to go.

We're not far off.  There's a fair distance (in number of patches) between
this patchset and the completion, hence why I marked them as deprecated here,
intending to remove them at the end.  Between myself, Jeff and Dave we have
fscache, cachefiles, afs, ceph and nfs (almost) covered.  I have patches for
9p and I've given a partial patch for cifs to Steve and Shyam.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
