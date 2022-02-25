Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDAE4C521D
	for <lists+v9fs-developer@lfdr.de>; Sat, 26 Feb 2022 00:35:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nNk7g-0007HN-Fh; Fri, 25 Feb 2022 23:35:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nNk7f-0007HH-1E
 for v9fs-developer@lists.sourceforge.net; Fri, 25 Feb 2022 23:35:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=58rluPlCXjfXApMYo1FK1oQgv6LXnTC9OwMrKAGK+tM=; b=dIFE8pQSKmGcIZcyXxgmIOZQUF
 qF3VeYdwthcc1/YtD7seZNbxBJJNmJJQzR/yte5CRqc+W5NdUIZGh2bxlxiyUbUmOhrav15hB8VM0
 OQZ14m0NJATy0qzdfRPN6g9yiKjiXOJ4IA8xGf/le1WGjhuf9SRIynCfMEW41g0wh48c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=58rluPlCXjfXApMYo1FK1oQgv6LXnTC9OwMrKAGK+tM=; b=WL8pN+VaR03Gn7EXuOGLn/B8/a
 z9oB2NsRlSCeciKByxcqte5YoOVfxmNB/AJKEJGcs5Tvvn05BmmfVa/IfGlfOHvjsIXSII5rGKBdC
 utPV8eXi1x1uWlsp9FJUyvXEYlzrQPS8ueocvlco9Cka592njGVB1vB67bn2G0wi7Dys=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nNk7V-0004lZ-Rs
 for v9fs-developer@lists.sourceforge.net; Fri, 25 Feb 2022 23:35:37 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B07F5C01C; Sat, 26 Feb 2022 00:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1645832122; bh=58rluPlCXjfXApMYo1FK1oQgv6LXnTC9OwMrKAGK+tM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FIm2xW6T9ccCrkV5mSIwXsvjePX0iCMt1v4Gc1zPS9yFKEZsge4KdyyfFwJHPtw5A
 Js5lxwMnS9FEhen69J2Ib8DQrVeUr97LIzG+wCqQ7lzTlKeD7YGldnME1TH6LJLVxt
 dt4J39mnb6sKtlxBDuSt4L1gzTYrcJGOZTllinRhT6UIZDAMaySiGxFz90bUHsTPxD
 Vy/TyFozVcesq6NFjNQ3VFUTFlUmOHGtShgwaE4UblnmHvq5uIK65WdlGC5q7/Ccr3
 CL38LCaE1bMlLckVqWXusfaZkUEZpIQVQj/0QSIFlKVjS6IEgitC6oQunoYnabQUz/
 /t3DRl1duEYqQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AE294C009;
 Sat, 26 Feb 2022 00:35:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1645832122; bh=58rluPlCXjfXApMYo1FK1oQgv6LXnTC9OwMrKAGK+tM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FIm2xW6T9ccCrkV5mSIwXsvjePX0iCMt1v4Gc1zPS9yFKEZsge4KdyyfFwJHPtw5A
 Js5lxwMnS9FEhen69J2Ib8DQrVeUr97LIzG+wCqQ7lzTlKeD7YGldnME1TH6LJLVxt
 dt4J39mnb6sKtlxBDuSt4L1gzTYrcJGOZTllinRhT6UIZDAMaySiGxFz90bUHsTPxD
 Vy/TyFozVcesq6NFjNQ3VFUTFlUmOHGtShgwaE4UblnmHvq5uIK65WdlGC5q7/Ccr3
 CL38LCaE1bMlLckVqWXusfaZkUEZpIQVQj/0QSIFlKVjS6IEgitC6oQunoYnabQUz/
 /t3DRl1duEYqQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d4ce639c;
 Fri, 25 Feb 2022 23:35:16 +0000 (UTC)
Date: Sat, 26 Feb 2022 08:35:01 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: ron minnich <rminnich@gmail.com>
Message-ID: <Yhlnpcata/r6oJg+@codewreck.org>
References: <CAP6exYLMoSENG2dthBCaMfWY1D_obLuzN+FAUOSpCsdxye4_GQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6exYLMoSENG2dthBCaMfWY1D_obLuzN+FAUOSpCsdxye4_GQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Ron! ron minnich wrote on Fri, Feb 25, 2022 at 09:35:50AM
 -0800: > I did a lot of measurement of 9p over the years. There is no >
 fundamental
 reason for it to be slow. Yes, honestly 9p itself shouldn't be that much
 slower -- I've been thinking the same when qemu came up with virtiofs, if
 the amount of work that had been poured into it would have gotten into
 improvin [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nNk7V-0004lZ-Rs
Subject: Re: [V9fs-developer] Make 9p fast
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Ron!

ron minnich wrote on Fri, Feb 25, 2022 at 09:35:50AM -0800:
> I did a lot of measurement of 9p over the years. There is no
> fundamental reason for it to be slow.

Yes, honestly 9p itself shouldn't be that much slower -- I've been
thinking the same when qemu came up with virtiofs, if the amount of work
that had been poured into it would have gotten into improving 9p we
would all have been much better off...
alas it seems that it was easier to start from scratch there.


> Further, there is no requirement, in the protocol, that IO operations
> be serialized.

I've played with that (in a userspace client):
https://github.com/martinetd/space9/blob/master/src/9p_libc.c#L820

It's been a while but you can definitely get wire speed with that.

This code takes advantage of the asynchronous part of my implementation
in this client, but there's no fondamental reason we couldn't do the
same in the kernel... If I actually ever finish my async implementation
https://lore.kernel.org/all/20181217110111.GB17466@nautica/T/
it shouldn't be too difficult -- just issue a bunch of requests and
collect them at the end of the IO or when we need to.

Now I'm digging there even was an older attempt from Stefano Stabellini:
https://lore.kernel.org/all/20161209072717.GD18158@nautica/T/#md24a33c0ee7636259f252d3baaa5f6cc14575576
...

(my implem introduced a regression I never had time to track, I don't
remember why Stefano's never got in but there have been feedback and no
follow up. If there is interest I guess I can take another look at
finishing my version... iirc just not waiting for reply on clunk gave a
small but noticeable speed boost, but I'm now not sure it's a good idea
if servers use clunk as a barrier...?)


> Is there interest in changing v9fs in this way?
> 
> The first step, in my view, would be to implement the kind of
> pre-fetching that NFS has always done (I measured that one too, a long
> time ago ...) and see if it helps. The additional extension, that a
> clunk serves as a sort of fence on pending operations, would need to
> be done at some point -- maybe. But maybe we could just use fsync on
> the client side to mean "wait for pending IOs to finish".

afaik with David's fscache rework we've gotten this for free if you
use any of the cache variant (fscache or loose).
One big point here is that the readahead IO size used to be 4k even if
msize was bigger, and we're now getting as much as we can since
b1843d23854a ("9p: set readahead and io size according to maxsize")
which is very recent (merged in 5.16)
I don't think it'd be as big as making the actual read requests
parallel for bulk IO, but for common file access I think users will
definitely notice a difference, that bunch of 4k reads was annoying me
for a while...

The write part of this is not finished afaik and I'm afraid it also
sends write 4k at a time? I remember bringing it up to David and it will
come with the rest of the move to netfs.


For cache=none we cannot prefetch, but each IO could parallelize in
itself -- although in my opinion if you want performance you need to
throw away coherency and work with a cached mode.
cache=none is horrible in terms of number of RPC and I think that's what
the gvisor milestone hints? "Implement a new protocol to replace 9P
which is more economical with RPCs and hence more performant." sounds
more like it's about this than parallelism to me.

On that regard, Chris has been making great improvements with this:
https://lore.kernel.org/all/783ba37c1566dd715b9a67d437efa3b77e3cd1a7.1640870037.git.linux_oss@crudebyte.com/T/#m80ef85e82fb57ae658000624752eafd44812ff5c
in particular, using bigger buffers for IO but small buffers for
metadata (stat/clunks etc) is a big win.
I need to finish reviewing and testing it but it should get in this side
of the year... the bigger msize part of these patches is waiting for a
virtio change, but the buffer size part is only waiting on me :(



Anyway there's definitely room for improvement, and any help is
appreciated! :)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
