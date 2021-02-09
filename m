Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E383315905
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 22:55:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9azF-0003Pl-63; Tue, 09 Feb 2021 21:55:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l9azE-0003Pb-B9
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 21:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JtpFlXocz3kO5xx1cv2U4rE+tvnYS4ZliCWcM+gS1O4=; b=kj9AFIX04YpjP/PaCfhJJMcFZS
 FiDLhmKdvIkQfwhUhJGSFN9Lb9xQ19pLzlAAsn+HjaaZMFRad+lcED6zXyNF2jLU8j4mRv4bQ00hb
 HklN3YpD25qC8ZaGOzhMhI/AziDDGP+2I2g1al4/vpz5eJQh+HPNYwlA62NotnL3quT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JtpFlXocz3kO5xx1cv2U4rE+tvnYS4ZliCWcM+gS1O4=; b=L6z5zx35rir5IFYmu80WzK2VHI
 Y0n0a/t2pnzUQDdmqb7ZhYVFYa64znYQYy5/g3uLES5+9HmEXyVT2LWDcE6d57BfpgEqDyV7bTKJO
 jD6vp340syZmWSByZF4KdakLwHaw71Tkfqvz5ZI74fmtAqKs9OZP8mc64KiEI3Jfrx44=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l9az2-000lA7-Sc
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 21:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612907739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JtpFlXocz3kO5xx1cv2U4rE+tvnYS4ZliCWcM+gS1O4=;
 b=bxnSxoI73SHYN+M/MfIimG8Z/pe9Nprs8raUG5if7LbMmBJswvUp71GjLBcAuTzA0c1ARP
 KI9PLfLXWPD8D7ZbbyDiBqlohfMisBn5rDUCAfBcdmyMXRSrBXBHCq43XRGRWZCou5R+0L
 xF27ZI8mdgOEIK1B05ffQpUw/daaHNI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-542-0xBnI-LxOQq3zEJ47KXu9A-1; Tue, 09 Feb 2021 16:55:37 -0500
X-MC-Unique: 0xBnI-LxOQq3zEJ47KXu9A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6314C107ACE3;
 Tue,  9 Feb 2021 21:55:35 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E37C719C78;
 Tue,  9 Feb 2021 21:55:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com>
References: <CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <20210209202134.GA308988@casper.infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <620723.1612907726.1@warthog.procyon.org.uk>
Date: Tue, 09 Feb 2021 21:55:26 +0000
Message-ID: <620724.1612907726@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l9az2-000lA7-Sc
Subject: Re: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>, David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> > Yeah, I have trouble with the private2 vs fscache bit too.  I've been
> > trying to persuade David that he doesn't actually need an fscache
> > bit at all; he can just increment the page's refcount to prevent it
> > from being freed while he writes data to the cache.
> 
> Does the code not hold a refcount already?

AIUI, Willy wanted me to drop the refcount and rely on PG_locked alone during
I/O triggered by the new ->readahead() method, so when it comes to setting
PG_fscache after a successful read from the server, I don't hold any page refs
- the assumption being that the waits in releasepage and invalidatepage
suffice.  If that isn't sufficient, I can make it take page refs on the pages
to be written out - that should be easy enough to do.

> Honestly, the fact that writeback doesn't take a refcount, and then
> has magic "if writeback is set, don't free" code in other parts of the
> VM layer has been a problem already, when the wakeup ended up
> "leaking" from a previous page to a new allocation.
> 
> I very much hope the fscache bit does not make similar mistakes,
> because the rest of the VM will _not_ have special "if fscache is set,
> then we won't do X" the way we do for writeback.

The VM can't do that because PG_private_2 might not be being used for
PG_fscache.  It does, however, treat PG_private_2 like PG_private when
triggering calls to releasepage and invalidatepage.

> So I think the fscache code needs to hold a refcount regardless, and
> that the fscache bit is set the page has to have a reference.
> 
> So what are the current lifetime rules for the fscache bit?

It depends which 'current' you're referring to.

The old fscache I/O API (ie. what's upstream) - in which PG_fscache is set on
a page to note that fscache knows about the page - does not keep a separate
ref on such pages.

The new fscache I/O API simplifies things.  With that, pages are only known
about for the duration of a write to the cache.  I've tried to analogise the
way PG_writeback works[*], including waiting for it in places like
invalidation, releasepage, page_mkwrite (though in the netfs, not the core VM)
as it may represent DMA.

Note that with the new I/O API, fscache and cachefiles know nothing about the
PG_fscache bit or netfs pages; they just deal with an iov_iter and a
completion function.  Dealing with PG_fscache is done by the netfs and the new
netfs helper lib.

[*] Though I see that 073861ed77b6b made a change to end_page_writeback() for
    an issue that probably affects unlock_page_fscache() too[**].

[**] This may mean that both PG_fscache and PG_writeback need to hold a ref on
     the page.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
