Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 236B831967D
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Feb 2021 00:21:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lALGo-0007f0-UC; Thu, 11 Feb 2021 23:21:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lALGo-0007eq-4a
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Feb 2021 23:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6IjqWhQ0S9zeiEfAx5Yk7ukP5YPF6bWEm9sEktZ4FzI=; b=h2PquOUvaE0m32uHR2wfZ7EfLh
 UVPmDjNYoobDdU3donRYH/EP7Gy1Odlifu4Pw0Iaqa/eVhyXpkwguk00nWQmKCVAIEmx2FTv/FuoO
 /EbgLCahD0Ok/WGy+1mkK6IEcpzccbo5PNdPaH1H+/Dk1sbaQozBXgT+VI4xo7Dshz4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6IjqWhQ0S9zeiEfAx5Yk7ukP5YPF6bWEm9sEktZ4FzI=; b=R5JtAin0nUR4Wkh6tnW9jyYD6z
 Ew8uql939GpPvaBToHlKAioLWg39aG+2huIDKuztUiJoJDQ/hK2njnOhFF8Wky0+XWVKsl6FgtZTF
 ausdikxZbsqgReJv28I6PPN3Gx6mTLwXjNVdmWLKa72PwGGZTC9tQSojhyAjE/0NCYIM=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lALGh-00020j-6f
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Feb 2021 23:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613085657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6IjqWhQ0S9zeiEfAx5Yk7ukP5YPF6bWEm9sEktZ4FzI=;
 b=Sv2BmASltM7RiVDYVB/AXsRQT6UrKqdNFOnmqKvQeExStUhs2rI/np2x8P/iMw5Ex4m1Jq
 a9GmjNG3+yuSu+2tGr79x9rsoTQNAj77U0BMbCAsTJt9kPLEWO9dMmT2n64BmzYneFGwRF
 XYlQb7aYElaa33OizY62ELvt6J8Dzhs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-vgOPstjGMz6AfI60Xa_BHQ-1; Thu, 11 Feb 2021 18:20:55 -0500
X-MC-Unique: vgOPstjGMz6AfI60Xa_BHQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66AA4107ACC7;
 Thu, 11 Feb 2021 23:20:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2932F60657;
 Thu, 11 Feb 2021 23:20:47 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com>
References: <CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
 <1330473.1612974547@warthog.procyon.org.uk>
 <1330751.1612974783@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <27815.1613085646.1@warthog.procyon.org.uk>
Date: Thu, 11 Feb 2021 23:20:46 +0000
Message-ID: <27816.1613085646@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1lALGh-00020j-6f
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

> Also, honestly, I really *REALLY* want your commit messages to talk
> about who has been cc'd, who has been part of development, and point
> to the PUBLIC MAILING LISTS WHERE THAT DISCUSSION WAS TAKING PLACE, so
> that I can actually see that "yes, other people were involved"

Most of the development discussion took place on IRC and waving snippets of
code about in pastebin rather than email - the latency of email is just too
high.  There's not a great deal I can do about that now as I haven't kept IRC
logs.  I can do that in future if you want.

> No, I don't require this in general, but exactly because of the
> history we have, I really really want to see that. I want to see a
>
>    Link: https://lore.kernel.org/r/....

I can add links to where I've posted the stuff for review.  Do you want this
on a per-patch basis or just in the cover for now?

Also, do you want things like these:

 https://lore.kernel.org/linux-fsdevel/3326.1579019665@warthog.procyon.org.uk/
 https://lore.kernel.org/linux-fsdevel/4467.1579020509@warthog.procyon.org.uk/

which pertain to the overall fscache rewrite, but where the relevant changes
didn't end up included in this particular patchset?  Or this:

 https://listman.redhat.com/archives/linux-cachefs/2020-December/msg00000.html

where someone was testing the overall patchset of which this is a subset?

> and the Cc's - or better yet, the Reviewed-by's etc - so that when I
> get a pull request, it really is very obvious to me when I look at it
> that others really have been involved.
> 
> So if I continue to see just
> 
>     Signed-off-by: David Howells <dhowells@redhat.com>
> 
> at the end of the commit messages, I will not pull.
> 
> Yes, in this thread a couple of people have piped up and said that
> they were part of the discussion and that they are interested, but if
> I have to start asking around just to see that, then it's too little,
> too late.
> 
> No more of this "it looks like David Howells did things in private". I
> want links I can follow to see the discussion, and I really want to
> see that others really have been involved.
> 
> Ok?

Sure.

I can go and edit in link pointers into the existing patches if you want and
add Jeff's Review-and-tested-by into the appropriate ones.  You would be able
to compare against the existing tag, so it wouldn't entirely invalidate the
testing.

Also, do you want links inserting into all the patches of the two keyrings
pull requests I've sent you?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
